/*
#!/usr/bin/env dub
/+ dub.sdl:
	name "d-wgpu-sdl"
	dependency "bindbc-sdl" version="*"
	versions "SDL_2010"
	lflags "-L./wgpu.so"
	dflags "-L./wgpu.so"
	libs "wgpu"
	importPaths "wgpu"
+/
*/

import std.stdio;
import std.string;
import std.conv;
import std.file;

import core.time;
import core.thread.osthread;

import bindbc.sdl;

import arsd.simpledisplay;

import wgpu.wgpu;
import wgpu.webgpu;

pragma(lib, "wgpu");

uint WIDTH = 640;
uint HEIGHT = 480;

bool USE_SDL_OR_ARSD = 0;

WGPUSurface surface;

WGPUSurface init_surface() {
if (USE_SDL_OR_ARSD) { // use SDL
	const SDLSupport ret = loadSDL();
	if (ret != sdlSupport)
	{
		writeln("Error loading SDL dll");
		return null;
	}

	if (SDL_Init(SDL_INIT_VIDEO) != 0)
	{
		writeln("SDL_Init: ", fromStringz(SDL_GetError()));
	}
	scope (exit)
	{
		SDL_Quit();
	}

	SDL_version compiled;
	SDL_version linked;

	SDL_VERSION(&compiled);
	SDL_GetVersion(&linked);
	SDL_Log("We compiled against SDL version %u.%u.%u ...\n",
		compiled.major, compiled.minor, compiled.patch);
	SDL_Log("But we are linking against SDL version %u.%u.%u.\n",
		linked.major, linked.minor, linked.patch);

	static SDL_Window* win;
    win = SDL_CreateWindow(
		"d-wgpu-sdl",
		SDL_WINDOWPOS_UNDEFINED,
		SDL_WINDOWPOS_UNDEFINED,
		WIDTH,
		HEIGHT,
		SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE);

	SDL_SysWMinfo wmInfo;
	SDL_GetWindowWMInfo(win, &wmInfo);
	writeln("Subsystem: ", wmInfo.subsystem);

	void* x11_display = wmInfo.info.x11.display;
	uint x11_window = wmInfo.info.x11.window;
	WGPUSurfaceDescriptorFromXlibWindow sfdX11 = {
		chain: WGPUChainedStruct(
			null, //next
			WGPUSType.WGPUSType_SurfaceDescriptorFromXlibWindow
		),
		display: x11_display,
		window: x11_window
	};
	WGPUSurfaceDescriptor sfd = {
		label: null,
		nextInChain: cast(const(WGPUChainedStruct)*)&sfdX11
	};
	return wgpuInstanceCreateSurface(null, &sfd);
}else{ // use ASRD
    static SimpleWindow window;
    window = new SimpleWindow();

        WGPUSurfaceDescriptorFromXlibWindow x11;

    x11.chain.sType = WGPUSType.WGPUSType_SurfaceDescriptorFromXlibWindow;
    x11.display = XDisplayConnection.get;
    x11.window = cast(uint) window.impl.window;

    WGPUSurfaceDescriptor desc;
    with(desc) {
        desc.nextInChain = cast(const WGPUChainedStruct*) &x11;
    }

    return wgpuInstanceCreateSurface(null, &desc);
}
}

void main()
{
    wgpuSetLogLevel(WGPULogLevel.WGPULogLevel_Trace);
    wgpuSetLogCallback( (level, msg) {
        writeln(to!string(msg));
    });

    surface = init_surface();
    assert(surface !is null);

    writeln("cake1");

	WGPUAdapter adapter;
	wgpuInstanceRequestAdapter(
		null,
		new WGPURequestAdapterOptions(
			null, //nextInChain
			surface //compatibleSurface
	    ),
	    (status, received, message, userdata) {
            //writeln("from request_adapter_callback()");
            *cast(WGPUAdapter*) userdata = received;

            if (status == WGPURequestAdapterStatus.WGPURequestAdapterStatus_Success){
                //*cast(WGPUAdapter*) userdata = received;
            }else
            {
                //writeln(status);
                //writeln(to!string(message));
            }
        },
	    &adapter
	);

    writeln("cake2");

	WGPUDevice device;
	wgpuAdapterRequestDevice(
		adapter,
		new WGPUDeviceDescriptor(
            cast(const WGPUChainedStruct*) new WGPUDeviceExtras( //nextInChain
                WGPUChainedStruct( //chain
                    null, //next
                    cast(WGPUSType) WGPUNativeSType.WGPUSType_DeviceExtras
                ),
                WGPUNativeFeature.WGPUNativeFeature_TEXTURE_ADAPTER_SPECIFIC_FORMAT_FEATURES,
                "Device", //label
                null //tracePath
            ),
            "something",
            8,
            null,
            new WGPURequiredLimits(
                null, //nextInChain
                WGPULimits()
            ),
            WGPUQueueDescriptor( //defaultQueue
                null, //nextInChain
                null  //label
            )
        ),
        (status, recieved, message, userdata) {
            WGPUDevice* device = cast(WGPUDevice*) userdata;
            *device = recieved;
        },
        &device
	);

    writeln("cake3");

    wgpuDeviceSetUncapturedErrorCallback(device, (type, message, userdata){
        writeln("UNCAPTURED ERROR {}: {}", type, message);
    }, null);
    wgpuDeviceSetDeviceLostCallback(device, (reason, message, userdata){
        writeln("DEVICE LOST {}: {}", reason, message);
    }, null);

    WGPUShaderModuleDescriptor shaderSource = load_wgsl("shader.wgsl");
    WGPUShaderModule shader = wgpuDeviceCreateShaderModule(device, &shaderSource);

    WGPUPipelineLayout pipelineLayout = wgpuDeviceCreatePipelineLayout(
        device,
        new WGPUPipelineLayoutDescriptor(
            null, //nextInChain
            "wow",
            0,     //bindGroupLayoutCount
            null //bindGroupLayouts
        )
    );

    WGPUTextureFormat swapChainFormat =
        wgpuSurfaceGetPreferredFormat(surface, adapter);

    WGPURenderPipeline pipeline = wgpuDeviceCreateRenderPipeline(
        device,
        new WGPURenderPipelineDescriptor(
            null, //nextInChain
            "render pipeline", //label
            pipelineLayout,
            WGPUVertexState(
                null, //nextInChain
                shader, //module
                "vs_main", //entryPoint
                0, //constantCount
                null, //constants
                0, //bufferCount
                null //buffers
            ),
            WGPUPrimitiveState(
                null, //nextInChain
                WGPUPrimitiveTopology.WGPUPrimitiveTopology_TriangleList,
                WGPUIndexFormat.WGPUIndexFormat_Undefined,
                WGPUFrontFace.WGPUFrontFace_CCW,
                WGPUCullMode.WGPUCullMode_None
            ),
            null, //depthStencil
            WGPUMultisampleState(
                null, //nextInChain
                1, //count
                ~0, //mask
                false //alphaToCoverageEnabled
            ),
            new WGPUFragmentState(
                null, //nextInChain
                shader, //module
                "fs_main", //entryPoint
                0, //constantCount
                null, //constants
                1, //targetCount
                new WGPUColorTargetState( //targets
                    null, //nextInChain
                    swapChainFormat, //format
                    new WGPUBlendState( //targets
                        WGPUBlendComponent( //color
                            WGPUBlendOperation.WGPUBlendOperation_Add, //operation
                            WGPUBlendFactor.WGPUBlendFactor_One, //srcFactor
                            WGPUBlendFactor.WGPUBlendFactor_Zero //dstFactor
                        ),
                        WGPUBlendComponent( //alpha
                            WGPUBlendOperation.WGPUBlendOperation_Add, //operation
                            WGPUBlendFactor.WGPUBlendFactor_One, //srcFactor
                            WGPUBlendFactor.WGPUBlendFactor_Zero //dstFactor
                        )
                    ),
                    WGPUColorWriteMask.WGPUColorWriteMask_All
                )
            )
        )
    );

    WGPUSwapChain swapChain = wgpuDeviceCreateSwapChain(device, surface,
        new WGPUSwapChainDescriptor(
            null, //nextInChain
            "a swapchain descriptor",
            WGPUTextureUsage.WGPUTextureUsage_RenderAttachment,
            swapChainFormat,
            WIDTH, HEIGHT,
            WGPUPresentMode.WGPUPresentMode_Fifo
        )
    );


    /*
    for (int attempt=0; attempt<2; attempt++) {
    }
    */

    WGPUTextureView nextTexture = wgpuSwapChainGetCurrentTextureView(swapChain);

    assert(nextTexture !is null);

    WGPUCommandEncoder encoder = wgpuDeviceCreateCommandEncoder(
        device,
        new WGPUCommandEncoderDescriptor(
            null, //nextInChain
            "command encoder" //label
        )
    );

    WGPURenderPassEncoder renderPass = wgpuCommandEncoderBeginRenderPass(
        encoder,
        new WGPURenderPassDescriptor(
            null, //nextInChain
            "a render pass descriptor", //label
            1, //colorAttachmentCount
            new WGPURenderPassColorAttachment( //colorAttachments
                nextTexture, //view
                null, //resolveTarget
                WGPULoadOp.WGPULoadOp_Clear,
                WGPUStoreOp.WGPUStoreOp_Store,
                WGPUColor( //clearValue
                    0.0, 1.0, 0.0, 1.0
                )
            ),
            null, //depthStencilAttachment
            null, //occlusionQuerySet
            0, //timestampWriteCount
            null //timestampWrites
        )
    );

    wgpuRenderPassEncoderSetPipeline(renderPass, pipeline);
    wgpuRenderPassEncoderDraw(renderPass, 3, 1, 0, 0);
    wgpuRenderPassEncoderEnd(renderPass);

    WGPUQueue queue = wgpuDeviceGetQueue(device);
    WGPUCommandBuffer cmdBuffer = wgpuCommandEncoderFinish(encoder,
        new WGPUCommandBufferDescriptor(
            null, //nextInChain
            "fun" //label
        )
    );
    wgpuQueueSubmit(queue, 1, &cmdBuffer);

    wgpuSwapChainPresent(swapChain);

    //SDL_Delay(4000);
    Thread.sleep( dur!("seconds")(3) );
};

WGPUShaderModuleDescriptor load_wgsl(string name) {
    const char* src = readText(name).toStringz;

    auto wgslDescriptor = new WGPUShaderModuleWGSLDescriptor();
    wgslDescriptor.chain.next = null;
    wgslDescriptor.chain.sType = WGPUSType.WGPUSType_ShaderModuleWGSLDescriptor;
    wgslDescriptor.code = src;

    return WGPUShaderModuleDescriptor(
        cast(const WGPUChainedStruct*)wgslDescriptor, //nextInChain
        toStringz(name) //label
    );
    
}

extern (C)
{
	void request_adapter_callback(WGPURequestAdapterStatus status,
		WGPUAdapter adapter, const(char)* message, void* userdata)
	{
		writeln("from request_adapter_callback()");

		if (status == WGPURequestAdapterStatus.WGPURequestAdapterStatus_Success)

			*cast(WGPUAdapter*) userdata = adapter;
		else
		{
			writeln(status);
			writeln(to!string(message));
		}
	}
}

T* nref(T)(scope void delegate(T*) initialize)
{
	T* t = new T;
	initialize(t);
	return t;
}
