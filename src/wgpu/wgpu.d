module wgpu.wgpu;

import wgpu.webgpu;

extern (C):

enum WGPUNativeSType
{
    // Start at 6 to prevent collisions with webgpu STypes
    WGPUSType_DeviceExtras = 0x60000001,
    WGPUSType_AdapterExtras = 0x60000002,
    WGPUSType_RequiredLimitsExtras = 0x60000003,
    WGPUSType_PipelineLayoutExtras = 0x60000004,
    WGPUNativeSType_Force32 = 0x7FFFFFFF
}

enum WGPUNativeFeature
{
    WGPUNativeFeature_PUSH_CONSTANTS = 0x04000000,
    WGPUNativeFeature_TEXTURE_ADAPTER_SPECIFIC_FORMAT_FEATURES = 0x10000000
}

enum WGPULogLevel
{
    WGPULogLevel_Off = 0x00000000,
    WGPULogLevel_Error = 0x00000001,
    WGPULogLevel_Warn = 0x00000002,
    WGPULogLevel_Info = 0x00000003,
    WGPULogLevel_Debug = 0x00000004,
    WGPULogLevel_Trace = 0x00000005,
    WGPULogLevel_Force32 = 0x7FFFFFFF
}

struct WGPUAdapterExtras
{
    WGPUChainedStruct chain;
    WGPUBackendType backend;
}

struct WGPUDeviceExtras
{
    WGPUChainedStruct chain;
    WGPUNativeFeature nativeFeatures;
    const(char)* label;
    const(char)* tracePath;
}

struct WGPURequiredLimitsExtras
{
    WGPUChainedStruct chain;
    uint maxPushConstantSize;
}

struct WGPUPushConstantRange
{
    WGPUShaderStageFlags stages;
    uint start;
    uint end;
}

struct WGPUPipelineLayoutExtras
{
    WGPUChainedStruct chain;
    uint pushConstantRangeCount;
    WGPUPushConstantRange* pushConstantRanges;
}

alias WGPULogCallback = void function (WGPULogLevel level, const(char)* msg);

void wgpuDevicePoll (WGPUDevice device, bool force_wait);

void wgpuSetLogCallback (WGPULogCallback callback);

void wgpuSetLogLevel (WGPULogLevel level);

uint wgpuGetVersion ();

void wgpuRenderPassEncoderSetPushConstants (WGPURenderPassEncoder encoder, WGPUShaderStageFlags stages, uint offset, uint sizeBytes, void* data);

void wgpuBufferDrop (WGPUBuffer buffer);
void wgpuCommandEncoderDrop (WGPUCommandEncoder commandEncoder);
void wgpuDeviceDrop (WGPUDevice device);
void wgpuQuerySetDrop (WGPUQuerySet querySet);
void wgpuRenderPipelineDrop (WGPURenderPipeline renderPipeline);
void wgpuTextureDrop (WGPUTexture texture);
void wgpuTextureViewDrop (WGPUTextureView textureView);
void wgpuSamplerDrop (WGPUSampler sampler);
void wgpuBindGroupLayoutDrop (WGPUBindGroupLayout bindGroupLayout);
void wgpuPipelineLayoutDrop (WGPUPipelineLayout pipelineLayout);
void wgpuBindGroupDrop (WGPUBindGroup bindGroup);
void wgpuShaderModuleDrop (WGPUShaderModule shaderModule);
void wgpuCommandBufferDrop (WGPUCommandBuffer commandBuffer);
void wgpuRenderBundleDrop (WGPURenderBundle renderBundle);
void wgpuComputePipelineDrop (WGPUComputePipeline computePipeline);

// extern "C"

