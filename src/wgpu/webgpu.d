// BSD 3-Clause License
//
// Copyright (c) 2019, "WebGPU native" developers
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its
//    contributors may be used to endorse or promote products derived from
//    this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

module wgpu.webgpu;

import core.stdc.config;
import core.stdc.stdint;

extern (C):

// defined(_WIN32)

// defined(_WIN32)
// defined(WGPU_SHARED_LIBRARY)
// defined(WGPU_SHARED_LIBRARY)

enum WGPU_ARRAY_LAYER_COUNT_UNDEFINED = 0xffffffffUL;
enum WGPU_COPY_STRIDE_UNDEFINED = 0xffffffffUL;
enum WGPU_LIMIT_U32_UNDEFINED = 0xffffffffUL;
enum WGPU_LIMIT_U64_UNDEFINED = 0xffffffffffffffffUL;
enum WGPU_MIP_LEVEL_COUNT_UNDEFINED = 0xffffffffUL;
enum WGPU_WHOLE_MAP_SIZE = SIZE_MAX;
enum WGPU_WHOLE_SIZE = 0xffffffffffffffffUL;

alias WGPUFlags = uint;

struct WGPUAdapterImpl;
alias WGPUAdapter = WGPUAdapterImpl*;
struct WGPUBindGroupImpl;
alias WGPUBindGroup = WGPUBindGroupImpl*;
struct WGPUBindGroupLayoutImpl;
alias WGPUBindGroupLayout = WGPUBindGroupLayoutImpl*;
struct WGPUBufferImpl;
alias WGPUBuffer = WGPUBufferImpl*;
struct WGPUCommandBufferImpl;
alias WGPUCommandBuffer = WGPUCommandBufferImpl*;
struct WGPUCommandEncoderImpl;
alias WGPUCommandEncoder = WGPUCommandEncoderImpl*;
struct WGPUComputePassEncoderImpl;
alias WGPUComputePassEncoder = WGPUComputePassEncoderImpl*;
struct WGPUComputePipelineImpl;
alias WGPUComputePipeline = WGPUComputePipelineImpl*;
struct WGPUDeviceImpl;
alias WGPUDevice = WGPUDeviceImpl*;
struct WGPUInstanceImpl;
alias WGPUInstance = WGPUInstanceImpl*;
struct WGPUPipelineLayoutImpl;
alias WGPUPipelineLayout = WGPUPipelineLayoutImpl*;
struct WGPUQuerySetImpl;
alias WGPUQuerySet = WGPUQuerySetImpl*;
struct WGPUQueueImpl;
alias WGPUQueue = WGPUQueueImpl*;
struct WGPURenderBundleImpl;
alias WGPURenderBundle = WGPURenderBundleImpl*;
struct WGPURenderBundleEncoderImpl;
alias WGPURenderBundleEncoder = WGPURenderBundleEncoderImpl*;
struct WGPURenderPassEncoderImpl;
alias WGPURenderPassEncoder = WGPURenderPassEncoderImpl*;
struct WGPURenderPipelineImpl;
alias WGPURenderPipeline = WGPURenderPipelineImpl*;
struct WGPUSamplerImpl;
alias WGPUSampler = WGPUSamplerImpl*;
struct WGPUShaderModuleImpl;
alias WGPUShaderModule = WGPUShaderModuleImpl*;
struct WGPUSurfaceImpl;
alias WGPUSurface = WGPUSurfaceImpl*;
struct WGPUSwapChainImpl;
alias WGPUSwapChain = WGPUSwapChainImpl*;
struct WGPUTextureImpl;
alias WGPUTexture = WGPUTextureImpl*;
struct WGPUTextureViewImpl;
alias WGPUTextureView = WGPUTextureViewImpl*;

enum WGPUAdapterType
{
    WGPUAdapterType_DiscreteGPU = 0x00000000,
    WGPUAdapterType_IntegratedGPU = 0x00000001,
    WGPUAdapterType_CPU = 0x00000002,
    WGPUAdapterType_Unknown = 0x00000003,
    WGPUAdapterType_Force32 = 0x7FFFFFFF
}

enum WGPUAddressMode
{
    WGPUAddressMode_Repeat = 0x00000000,
    WGPUAddressMode_MirrorRepeat = 0x00000001,
    WGPUAddressMode_ClampToEdge = 0x00000002,
    WGPUAddressMode_Force32 = 0x7FFFFFFF
}

enum WGPUBackendType
{
    WGPUBackendType_Null = 0x00000000,
    WGPUBackendType_WebGPU = 0x00000001,
    WGPUBackendType_D3D11 = 0x00000002,
    WGPUBackendType_D3D12 = 0x00000003,
    WGPUBackendType_Metal = 0x00000004,
    WGPUBackendType_Vulkan = 0x00000005,
    WGPUBackendType_OpenGL = 0x00000006,
    WGPUBackendType_OpenGLES = 0x00000007,
    WGPUBackendType_Force32 = 0x7FFFFFFF
}

enum WGPUBlendFactor
{
    WGPUBlendFactor_Zero = 0x00000000,
    WGPUBlendFactor_One = 0x00000001,
    WGPUBlendFactor_Src = 0x00000002,
    WGPUBlendFactor_OneMinusSrc = 0x00000003,
    WGPUBlendFactor_SrcAlpha = 0x00000004,
    WGPUBlendFactor_OneMinusSrcAlpha = 0x00000005,
    WGPUBlendFactor_Dst = 0x00000006,
    WGPUBlendFactor_OneMinusDst = 0x00000007,
    WGPUBlendFactor_DstAlpha = 0x00000008,
    WGPUBlendFactor_OneMinusDstAlpha = 0x00000009,
    WGPUBlendFactor_SrcAlphaSaturated = 0x0000000A,
    WGPUBlendFactor_Constant = 0x0000000B,
    WGPUBlendFactor_OneMinusConstant = 0x0000000C,
    WGPUBlendFactor_Force32 = 0x7FFFFFFF
}

enum WGPUBlendOperation
{
    WGPUBlendOperation_Add = 0x00000000,
    WGPUBlendOperation_Subtract = 0x00000001,
    WGPUBlendOperation_ReverseSubtract = 0x00000002,
    WGPUBlendOperation_Min = 0x00000003,
    WGPUBlendOperation_Max = 0x00000004,
    WGPUBlendOperation_Force32 = 0x7FFFFFFF
}

enum WGPUBufferBindingType
{
    WGPUBufferBindingType_Undefined = 0x00000000,
    WGPUBufferBindingType_Uniform = 0x00000001,
    WGPUBufferBindingType_Storage = 0x00000002,
    WGPUBufferBindingType_ReadOnlyStorage = 0x00000003,
    WGPUBufferBindingType_Force32 = 0x7FFFFFFF
}

enum WGPUBufferMapAsyncStatus
{
    WGPUBufferMapAsyncStatus_Success = 0x00000000,
    WGPUBufferMapAsyncStatus_Error = 0x00000001,
    WGPUBufferMapAsyncStatus_Unknown = 0x00000002,
    WGPUBufferMapAsyncStatus_DeviceLost = 0x00000003,
    WGPUBufferMapAsyncStatus_DestroyedBeforeCallback = 0x00000004,
    WGPUBufferMapAsyncStatus_UnmappedBeforeCallback = 0x00000005,
    WGPUBufferMapAsyncStatus_Force32 = 0x7FFFFFFF
}

enum WGPUCompareFunction
{
    WGPUCompareFunction_Undefined = 0x00000000,
    WGPUCompareFunction_Never = 0x00000001,
    WGPUCompareFunction_Less = 0x00000002,
    WGPUCompareFunction_LessEqual = 0x00000003,
    WGPUCompareFunction_Greater = 0x00000004,
    WGPUCompareFunction_GreaterEqual = 0x00000005,
    WGPUCompareFunction_Equal = 0x00000006,
    WGPUCompareFunction_NotEqual = 0x00000007,
    WGPUCompareFunction_Always = 0x00000008,
    WGPUCompareFunction_Force32 = 0x7FFFFFFF
}

enum WGPUCompilationInfoRequestStatus
{
    WGPUCompilationInfoRequestStatus_Success = 0x00000000,
    WGPUCompilationInfoRequestStatus_Error = 0x00000001,
    WGPUCompilationInfoRequestStatus_DeviceLost = 0x00000002,
    WGPUCompilationInfoRequestStatus_Unknown = 0x00000003,
    WGPUCompilationInfoRequestStatus_Force32 = 0x7FFFFFFF
}

enum WGPUCompilationMessageType
{
    WGPUCompilationMessageType_Error = 0x00000000,
    WGPUCompilationMessageType_Warning = 0x00000001,
    WGPUCompilationMessageType_Info = 0x00000002,
    WGPUCompilationMessageType_Force32 = 0x7FFFFFFF
}

enum WGPUComputePassTimestampLocation
{
    WGPUComputePassTimestampLocation_Beginning = 0x00000000,
    WGPUComputePassTimestampLocation_End = 0x00000001,
    WGPUComputePassTimestampLocation_Force32 = 0x7FFFFFFF
}

enum WGPUCreatePipelineAsyncStatus
{
    WGPUCreatePipelineAsyncStatus_Success = 0x00000000,
    WGPUCreatePipelineAsyncStatus_Error = 0x00000001,
    WGPUCreatePipelineAsyncStatus_DeviceLost = 0x00000002,
    WGPUCreatePipelineAsyncStatus_DeviceDestroyed = 0x00000003,
    WGPUCreatePipelineAsyncStatus_Unknown = 0x00000004,
    WGPUCreatePipelineAsyncStatus_Force32 = 0x7FFFFFFF
}

enum WGPUCullMode
{
    WGPUCullMode_None = 0x00000000,
    WGPUCullMode_Front = 0x00000001,
    WGPUCullMode_Back = 0x00000002,
    WGPUCullMode_Force32 = 0x7FFFFFFF
}

enum WGPUDeviceLostReason
{
    WGPUDeviceLostReason_Undefined = 0x00000000,
    WGPUDeviceLostReason_Destroyed = 0x00000001,
    WGPUDeviceLostReason_Force32 = 0x7FFFFFFF
}

enum WGPUErrorFilter
{
    WGPUErrorFilter_Validation = 0x00000000,
    WGPUErrorFilter_OutOfMemory = 0x00000001,
    WGPUErrorFilter_Force32 = 0x7FFFFFFF
}

enum WGPUErrorType
{
    WGPUErrorType_NoError = 0x00000000,
    WGPUErrorType_Validation = 0x00000001,
    WGPUErrorType_OutOfMemory = 0x00000002,
    WGPUErrorType_Unknown = 0x00000003,
    WGPUErrorType_DeviceLost = 0x00000004,
    WGPUErrorType_Force32 = 0x7FFFFFFF
}

enum WGPUFeatureName
{
    WGPUFeatureName_Undefined = 0x00000000,
    WGPUFeatureName_DepthClipControl = 0x00000001,
    WGPUFeatureName_Depth24UnormStencil8 = 0x00000002,
    WGPUFeatureName_Depth32FloatStencil8 = 0x00000003,
    WGPUFeatureName_TimestampQuery = 0x00000004,
    WGPUFeatureName_PipelineStatisticsQuery = 0x00000005,
    WGPUFeatureName_TextureCompressionBC = 0x00000006,
    WGPUFeatureName_TextureCompressionETC2 = 0x00000007,
    WGPUFeatureName_TextureCompressionASTC = 0x00000008,
    WGPUFeatureName_IndirectFirstInstance = 0x00000009,
    WGPUFeatureName_Force32 = 0x7FFFFFFF
}

enum WGPUFilterMode
{
    WGPUFilterMode_Nearest = 0x00000000,
    WGPUFilterMode_Linear = 0x00000001,
    WGPUFilterMode_Force32 = 0x7FFFFFFF
}

enum WGPUFrontFace
{
    WGPUFrontFace_CCW = 0x00000000,
    WGPUFrontFace_CW = 0x00000001,
    WGPUFrontFace_Force32 = 0x7FFFFFFF
}

enum WGPUIndexFormat
{
    WGPUIndexFormat_Undefined = 0x00000000,
    WGPUIndexFormat_Uint16 = 0x00000001,
    WGPUIndexFormat_Uint32 = 0x00000002,
    WGPUIndexFormat_Force32 = 0x7FFFFFFF
}

enum WGPULoadOp
{
    WGPULoadOp_Undefined = 0x00000000,
    WGPULoadOp_Clear = 0x00000001,
    WGPULoadOp_Load = 0x00000002,
    WGPULoadOp_Force32 = 0x7FFFFFFF
}

enum WGPUMipmapFilterMode
{
    WGPUMipmapFilterMode_Nearest = 0x00000000,
    WGPUMipmapFilterMode_Linear = 0x00000001,
    WGPUMipmapFilterMode_Force32 = 0x7FFFFFFF
}

enum WGPUPipelineStatisticName
{
    WGPUPipelineStatisticName_VertexShaderInvocations = 0x00000000,
    WGPUPipelineStatisticName_ClipperInvocations = 0x00000001,
    WGPUPipelineStatisticName_ClipperPrimitivesOut = 0x00000002,
    WGPUPipelineStatisticName_FragmentShaderInvocations = 0x00000003,
    WGPUPipelineStatisticName_ComputeShaderInvocations = 0x00000004,
    WGPUPipelineStatisticName_Force32 = 0x7FFFFFFF
}

enum WGPUPowerPreference
{
    WGPUPowerPreference_Undefined = 0x00000000,
    WGPUPowerPreference_LowPower = 0x00000001,
    WGPUPowerPreference_HighPerformance = 0x00000002,
    WGPUPowerPreference_Force32 = 0x7FFFFFFF
}

enum WGPUPredefinedColorSpace
{
    WGPUPredefinedColorSpace_Undefined = 0x00000000,
    WGPUPredefinedColorSpace_Srgb = 0x00000001,
    WGPUPredefinedColorSpace_Force32 = 0x7FFFFFFF
}

enum WGPUPresentMode
{
    WGPUPresentMode_Immediate = 0x00000000,
    WGPUPresentMode_Mailbox = 0x00000001,
    WGPUPresentMode_Fifo = 0x00000002,
    WGPUPresentMode_Force32 = 0x7FFFFFFF
}

enum WGPUPrimitiveTopology
{
    WGPUPrimitiveTopology_PointList = 0x00000000,
    WGPUPrimitiveTopology_LineList = 0x00000001,
    WGPUPrimitiveTopology_LineStrip = 0x00000002,
    WGPUPrimitiveTopology_TriangleList = 0x00000003,
    WGPUPrimitiveTopology_TriangleStrip = 0x00000004,
    WGPUPrimitiveTopology_Force32 = 0x7FFFFFFF
}

enum WGPUQueryType
{
    WGPUQueryType_Occlusion = 0x00000000,
    WGPUQueryType_PipelineStatistics = 0x00000001,
    WGPUQueryType_Timestamp = 0x00000002,
    WGPUQueryType_Force32 = 0x7FFFFFFF
}

enum WGPUQueueWorkDoneStatus
{
    WGPUQueueWorkDoneStatus_Success = 0x00000000,
    WGPUQueueWorkDoneStatus_Error = 0x00000001,
    WGPUQueueWorkDoneStatus_Unknown = 0x00000002,
    WGPUQueueWorkDoneStatus_DeviceLost = 0x00000003,
    WGPUQueueWorkDoneStatus_Force32 = 0x7FFFFFFF
}

enum WGPURenderPassTimestampLocation
{
    WGPURenderPassTimestampLocation_Beginning = 0x00000000,
    WGPURenderPassTimestampLocation_End = 0x00000001,
    WGPURenderPassTimestampLocation_Force32 = 0x7FFFFFFF
}

enum WGPURequestAdapterStatus
{
    WGPURequestAdapterStatus_Success = 0x00000000,
    WGPURequestAdapterStatus_Unavailable = 0x00000001,
    WGPURequestAdapterStatus_Error = 0x00000002,
    WGPURequestAdapterStatus_Unknown = 0x00000003,
    WGPURequestAdapterStatus_Force32 = 0x7FFFFFFF
}

enum WGPURequestDeviceStatus
{
    WGPURequestDeviceStatus_Success = 0x00000000,
    WGPURequestDeviceStatus_Error = 0x00000001,
    WGPURequestDeviceStatus_Unknown = 0x00000002,
    WGPURequestDeviceStatus_Force32 = 0x7FFFFFFF
}

enum WGPUSType
{
    WGPUSType_Invalid = 0x00000000,
    WGPUSType_SurfaceDescriptorFromMetalLayer = 0x00000001,
    WGPUSType_SurfaceDescriptorFromWindowsHWND = 0x00000002,
    WGPUSType_SurfaceDescriptorFromXlibWindow = 0x00000003,
    WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector = 0x00000004,
    WGPUSType_ShaderModuleSPIRVDescriptor = 0x00000005,
    WGPUSType_ShaderModuleWGSLDescriptor = 0x00000006,
    WGPUSType_PrimitiveDepthClipControl = 0x00000007,
    WGPUSType_SurfaceDescriptorFromWaylandSurface = 0x00000008,
    WGPUSType_SurfaceDescriptorFromAndroidNativeWindow = 0x00000009,
    WGPUSType_SurfaceDescriptorFromXcbWindow = 0x0000000A,
    WGPUSType_Force32 = 0x7FFFFFFF
}

enum WGPUSamplerBindingType
{
    WGPUSamplerBindingType_Undefined = 0x00000000,
    WGPUSamplerBindingType_Filtering = 0x00000001,
    WGPUSamplerBindingType_NonFiltering = 0x00000002,
    WGPUSamplerBindingType_Comparison = 0x00000003,
    WGPUSamplerBindingType_Force32 = 0x7FFFFFFF
}

enum WGPUStencilOperation
{
    WGPUStencilOperation_Keep = 0x00000000,
    WGPUStencilOperation_Zero = 0x00000001,
    WGPUStencilOperation_Replace = 0x00000002,
    WGPUStencilOperation_Invert = 0x00000003,
    WGPUStencilOperation_IncrementClamp = 0x00000004,
    WGPUStencilOperation_DecrementClamp = 0x00000005,
    WGPUStencilOperation_IncrementWrap = 0x00000006,
    WGPUStencilOperation_DecrementWrap = 0x00000007,
    WGPUStencilOperation_Force32 = 0x7FFFFFFF
}

enum WGPUStorageTextureAccess
{
    WGPUStorageTextureAccess_Undefined = 0x00000000,
    WGPUStorageTextureAccess_WriteOnly = 0x00000001,
    WGPUStorageTextureAccess_Force32 = 0x7FFFFFFF
}

enum WGPUStoreOp
{
    WGPUStoreOp_Undefined = 0x00000000,
    WGPUStoreOp_Store = 0x00000001,
    WGPUStoreOp_Discard = 0x00000002,
    WGPUStoreOp_Force32 = 0x7FFFFFFF
}

enum WGPUTextureAspect
{
    WGPUTextureAspect_All = 0x00000000,
    WGPUTextureAspect_StencilOnly = 0x00000001,
    WGPUTextureAspect_DepthOnly = 0x00000002,
    WGPUTextureAspect_Force32 = 0x7FFFFFFF
}

enum WGPUTextureComponentType
{
    WGPUTextureComponentType_Float = 0x00000000,
    WGPUTextureComponentType_Sint = 0x00000001,
    WGPUTextureComponentType_Uint = 0x00000002,
    WGPUTextureComponentType_DepthComparison = 0x00000003,
    WGPUTextureComponentType_Force32 = 0x7FFFFFFF
}

enum WGPUTextureDimension
{
    WGPUTextureDimension_1D = 0x00000000,
    WGPUTextureDimension_2D = 0x00000001,
    WGPUTextureDimension_3D = 0x00000002,
    WGPUTextureDimension_Force32 = 0x7FFFFFFF
}

enum WGPUTextureFormat
{
    WGPUTextureFormat_Undefined = 0x00000000,
    WGPUTextureFormat_R8Unorm = 0x00000001,
    WGPUTextureFormat_R8Snorm = 0x00000002,
    WGPUTextureFormat_R8Uint = 0x00000003,
    WGPUTextureFormat_R8Sint = 0x00000004,
    WGPUTextureFormat_R16Uint = 0x00000005,
    WGPUTextureFormat_R16Sint = 0x00000006,
    WGPUTextureFormat_R16Float = 0x00000007,
    WGPUTextureFormat_RG8Unorm = 0x00000008,
    WGPUTextureFormat_RG8Snorm = 0x00000009,
    WGPUTextureFormat_RG8Uint = 0x0000000A,
    WGPUTextureFormat_RG8Sint = 0x0000000B,
    WGPUTextureFormat_R32Float = 0x0000000C,
    WGPUTextureFormat_R32Uint = 0x0000000D,
    WGPUTextureFormat_R32Sint = 0x0000000E,
    WGPUTextureFormat_RG16Uint = 0x0000000F,
    WGPUTextureFormat_RG16Sint = 0x00000010,
    WGPUTextureFormat_RG16Float = 0x00000011,
    WGPUTextureFormat_RGBA8Unorm = 0x00000012,
    WGPUTextureFormat_RGBA8UnormSrgb = 0x00000013,
    WGPUTextureFormat_RGBA8Snorm = 0x00000014,
    WGPUTextureFormat_RGBA8Uint = 0x00000015,
    WGPUTextureFormat_RGBA8Sint = 0x00000016,
    WGPUTextureFormat_BGRA8Unorm = 0x00000017,
    WGPUTextureFormat_BGRA8UnormSrgb = 0x00000018,
    WGPUTextureFormat_RGB10A2Unorm = 0x00000019,
    WGPUTextureFormat_RG11B10Ufloat = 0x0000001A,
    WGPUTextureFormat_RGB9E5Ufloat = 0x0000001B,
    WGPUTextureFormat_RG32Float = 0x0000001C,
    WGPUTextureFormat_RG32Uint = 0x0000001D,
    WGPUTextureFormat_RG32Sint = 0x0000001E,
    WGPUTextureFormat_RGBA16Uint = 0x0000001F,
    WGPUTextureFormat_RGBA16Sint = 0x00000020,
    WGPUTextureFormat_RGBA16Float = 0x00000021,
    WGPUTextureFormat_RGBA32Float = 0x00000022,
    WGPUTextureFormat_RGBA32Uint = 0x00000023,
    WGPUTextureFormat_RGBA32Sint = 0x00000024,
    WGPUTextureFormat_Stencil8 = 0x00000025,
    WGPUTextureFormat_Depth16Unorm = 0x00000026,
    WGPUTextureFormat_Depth24Plus = 0x00000027,
    WGPUTextureFormat_Depth24PlusStencil8 = 0x00000028,
    WGPUTextureFormat_Depth24UnormStencil8 = 0x00000029,
    WGPUTextureFormat_Depth32Float = 0x0000002A,
    WGPUTextureFormat_Depth32FloatStencil8 = 0x0000002B,
    WGPUTextureFormat_BC1RGBAUnorm = 0x0000002C,
    WGPUTextureFormat_BC1RGBAUnormSrgb = 0x0000002D,
    WGPUTextureFormat_BC2RGBAUnorm = 0x0000002E,
    WGPUTextureFormat_BC2RGBAUnormSrgb = 0x0000002F,
    WGPUTextureFormat_BC3RGBAUnorm = 0x00000030,
    WGPUTextureFormat_BC3RGBAUnormSrgb = 0x00000031,
    WGPUTextureFormat_BC4RUnorm = 0x00000032,
    WGPUTextureFormat_BC4RSnorm = 0x00000033,
    WGPUTextureFormat_BC5RGUnorm = 0x00000034,
    WGPUTextureFormat_BC5RGSnorm = 0x00000035,
    WGPUTextureFormat_BC6HRGBUfloat = 0x00000036,
    WGPUTextureFormat_BC6HRGBFloat = 0x00000037,
    WGPUTextureFormat_BC7RGBAUnorm = 0x00000038,
    WGPUTextureFormat_BC7RGBAUnormSrgb = 0x00000039,
    WGPUTextureFormat_ETC2RGB8Unorm = 0x0000003A,
    WGPUTextureFormat_ETC2RGB8UnormSrgb = 0x0000003B,
    WGPUTextureFormat_ETC2RGB8A1Unorm = 0x0000003C,
    WGPUTextureFormat_ETC2RGB8A1UnormSrgb = 0x0000003D,
    WGPUTextureFormat_ETC2RGBA8Unorm = 0x0000003E,
    WGPUTextureFormat_ETC2RGBA8UnormSrgb = 0x0000003F,
    WGPUTextureFormat_EACR11Unorm = 0x00000040,
    WGPUTextureFormat_EACR11Snorm = 0x00000041,
    WGPUTextureFormat_EACRG11Unorm = 0x00000042,
    WGPUTextureFormat_EACRG11Snorm = 0x00000043,
    WGPUTextureFormat_ASTC4x4Unorm = 0x00000044,
    WGPUTextureFormat_ASTC4x4UnormSrgb = 0x00000045,
    WGPUTextureFormat_ASTC5x4Unorm = 0x00000046,
    WGPUTextureFormat_ASTC5x4UnormSrgb = 0x00000047,
    WGPUTextureFormat_ASTC5x5Unorm = 0x00000048,
    WGPUTextureFormat_ASTC5x5UnormSrgb = 0x00000049,
    WGPUTextureFormat_ASTC6x5Unorm = 0x0000004A,
    WGPUTextureFormat_ASTC6x5UnormSrgb = 0x0000004B,
    WGPUTextureFormat_ASTC6x6Unorm = 0x0000004C,
    WGPUTextureFormat_ASTC6x6UnormSrgb = 0x0000004D,
    WGPUTextureFormat_ASTC8x5Unorm = 0x0000004E,
    WGPUTextureFormat_ASTC8x5UnormSrgb = 0x0000004F,
    WGPUTextureFormat_ASTC8x6Unorm = 0x00000050,
    WGPUTextureFormat_ASTC8x6UnormSrgb = 0x00000051,
    WGPUTextureFormat_ASTC8x8Unorm = 0x00000052,
    WGPUTextureFormat_ASTC8x8UnormSrgb = 0x00000053,
    WGPUTextureFormat_ASTC10x5Unorm = 0x00000054,
    WGPUTextureFormat_ASTC10x5UnormSrgb = 0x00000055,
    WGPUTextureFormat_ASTC10x6Unorm = 0x00000056,
    WGPUTextureFormat_ASTC10x6UnormSrgb = 0x00000057,
    WGPUTextureFormat_ASTC10x8Unorm = 0x00000058,
    WGPUTextureFormat_ASTC10x8UnormSrgb = 0x00000059,
    WGPUTextureFormat_ASTC10x10Unorm = 0x0000005A,
    WGPUTextureFormat_ASTC10x10UnormSrgb = 0x0000005B,
    WGPUTextureFormat_ASTC12x10Unorm = 0x0000005C,
    WGPUTextureFormat_ASTC12x10UnormSrgb = 0x0000005D,
    WGPUTextureFormat_ASTC12x12Unorm = 0x0000005E,
    WGPUTextureFormat_ASTC12x12UnormSrgb = 0x0000005F,
    WGPUTextureFormat_Force32 = 0x7FFFFFFF
}

enum WGPUTextureSampleType
{
    WGPUTextureSampleType_Undefined = 0x00000000,
    WGPUTextureSampleType_Float = 0x00000001,
    WGPUTextureSampleType_UnfilterableFloat = 0x00000002,
    WGPUTextureSampleType_Depth = 0x00000003,
    WGPUTextureSampleType_Sint = 0x00000004,
    WGPUTextureSampleType_Uint = 0x00000005,
    WGPUTextureSampleType_Force32 = 0x7FFFFFFF
}

enum WGPUTextureViewDimension
{
    WGPUTextureViewDimension_Undefined = 0x00000000,
    WGPUTextureViewDimension_1D = 0x00000001,
    WGPUTextureViewDimension_2D = 0x00000002,
    WGPUTextureViewDimension_2DArray = 0x00000003,
    WGPUTextureViewDimension_Cube = 0x00000004,
    WGPUTextureViewDimension_CubeArray = 0x00000005,
    WGPUTextureViewDimension_3D = 0x00000006,
    WGPUTextureViewDimension_Force32 = 0x7FFFFFFF
}

enum WGPUVertexFormat
{
    WGPUVertexFormat_Undefined = 0x00000000,
    WGPUVertexFormat_Uint8x2 = 0x00000001,
    WGPUVertexFormat_Uint8x4 = 0x00000002,
    WGPUVertexFormat_Sint8x2 = 0x00000003,
    WGPUVertexFormat_Sint8x4 = 0x00000004,
    WGPUVertexFormat_Unorm8x2 = 0x00000005,
    WGPUVertexFormat_Unorm8x4 = 0x00000006,
    WGPUVertexFormat_Snorm8x2 = 0x00000007,
    WGPUVertexFormat_Snorm8x4 = 0x00000008,
    WGPUVertexFormat_Uint16x2 = 0x00000009,
    WGPUVertexFormat_Uint16x4 = 0x0000000A,
    WGPUVertexFormat_Sint16x2 = 0x0000000B,
    WGPUVertexFormat_Sint16x4 = 0x0000000C,
    WGPUVertexFormat_Unorm16x2 = 0x0000000D,
    WGPUVertexFormat_Unorm16x4 = 0x0000000E,
    WGPUVertexFormat_Snorm16x2 = 0x0000000F,
    WGPUVertexFormat_Snorm16x4 = 0x00000010,
    WGPUVertexFormat_Float16x2 = 0x00000011,
    WGPUVertexFormat_Float16x4 = 0x00000012,
    WGPUVertexFormat_Float32 = 0x00000013,
    WGPUVertexFormat_Float32x2 = 0x00000014,
    WGPUVertexFormat_Float32x3 = 0x00000015,
    WGPUVertexFormat_Float32x4 = 0x00000016,
    WGPUVertexFormat_Uint32 = 0x00000017,
    WGPUVertexFormat_Uint32x2 = 0x00000018,
    WGPUVertexFormat_Uint32x3 = 0x00000019,
    WGPUVertexFormat_Uint32x4 = 0x0000001A,
    WGPUVertexFormat_Sint32 = 0x0000001B,
    WGPUVertexFormat_Sint32x2 = 0x0000001C,
    WGPUVertexFormat_Sint32x3 = 0x0000001D,
    WGPUVertexFormat_Sint32x4 = 0x0000001E,
    WGPUVertexFormat_Force32 = 0x7FFFFFFF
}

enum WGPUVertexStepMode
{
    WGPUVertexStepMode_Vertex = 0x00000000,
    WGPUVertexStepMode_Instance = 0x00000001,
    WGPUVertexStepMode_Force32 = 0x7FFFFFFF
}

enum WGPUBufferUsage
{
    WGPUBufferUsage_None = 0x00000000,
    WGPUBufferUsage_MapRead = 0x00000001,
    WGPUBufferUsage_MapWrite = 0x00000002,
    WGPUBufferUsage_CopySrc = 0x00000004,
    WGPUBufferUsage_CopyDst = 0x00000008,
    WGPUBufferUsage_Index = 0x00000010,
    WGPUBufferUsage_Vertex = 0x00000020,
    WGPUBufferUsage_Uniform = 0x00000040,
    WGPUBufferUsage_Storage = 0x00000080,
    WGPUBufferUsage_Indirect = 0x00000100,
    WGPUBufferUsage_QueryResolve = 0x00000200,
    WGPUBufferUsage_Force32 = 0x7FFFFFFF
}

alias WGPUBufferUsageFlags = uint;

enum WGPUColorWriteMask
{
    WGPUColorWriteMask_None = 0x00000000,
    WGPUColorWriteMask_Red = 0x00000001,
    WGPUColorWriteMask_Green = 0x00000002,
    WGPUColorWriteMask_Blue = 0x00000004,
    WGPUColorWriteMask_Alpha = 0x00000008,
    WGPUColorWriteMask_All = 0x0000000F,
    WGPUColorWriteMask_Force32 = 0x7FFFFFFF
}

alias WGPUColorWriteMaskFlags = uint;

enum WGPUMapMode
{
    WGPUMapMode_None = 0x00000000,
    WGPUMapMode_Read = 0x00000001,
    WGPUMapMode_Write = 0x00000002,
    WGPUMapMode_Force32 = 0x7FFFFFFF
}

alias WGPUMapModeFlags = uint;

enum WGPUShaderStage
{
    WGPUShaderStage_None = 0x00000000,
    WGPUShaderStage_Vertex = 0x00000001,
    WGPUShaderStage_Fragment = 0x00000002,
    WGPUShaderStage_Compute = 0x00000004,
    WGPUShaderStage_Force32 = 0x7FFFFFFF
}

alias WGPUShaderStageFlags = uint;

enum WGPUTextureUsage
{
    WGPUTextureUsage_None = 0x00000000,
    WGPUTextureUsage_CopySrc = 0x00000001,
    WGPUTextureUsage_CopyDst = 0x00000002,
    WGPUTextureUsage_TextureBinding = 0x00000004,
    WGPUTextureUsage_StorageBinding = 0x00000008,
    WGPUTextureUsage_RenderAttachment = 0x00000010,
    WGPUTextureUsage_Force32 = 0x7FFFFFFF
}

alias WGPUTextureUsageFlags = uint;

struct WGPUChainedStruct
{
    const(WGPUChainedStruct)* next;
    WGPUSType sType;
}

struct WGPUChainedStructOut
{
    WGPUChainedStructOut* next;
    WGPUSType sType;
}

struct WGPUAdapterProperties
{
    WGPUChainedStructOut* nextInChain;
    uint vendorID;
    uint deviceID;
    const(char)* name;
    const(char)* driverDescription;
    WGPUAdapterType adapterType;
    WGPUBackendType backendType;
}

struct WGPUBindGroupEntry
{
    const(WGPUChainedStruct)* nextInChain;
    uint binding;
    WGPUBuffer buffer;
    ulong offset;
    ulong size;
    WGPUSampler sampler;
    WGPUTextureView textureView;
}

struct WGPUBlendComponent
{
    WGPUBlendOperation operation;
    WGPUBlendFactor srcFactor;
    WGPUBlendFactor dstFactor;
}

struct WGPUBufferBindingLayout
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUBufferBindingType type;
    bool hasDynamicOffset;
    ulong minBindingSize;
}

struct WGPUBufferDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUBufferUsageFlags usage;
    ulong size;
    bool mappedAtCreation;
}

struct WGPUColor
{
    double r;
    double g;
    double b;
    double a;
}

struct WGPUCommandBufferDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
}

struct WGPUCommandEncoderDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
}

struct WGPUCompilationMessage
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* message;
    WGPUCompilationMessageType type;
    ulong lineNum;
    ulong linePos;
    ulong offset;
    ulong length;
}

struct WGPUComputePassTimestampWrite
{
    WGPUQuerySet querySet;
    uint queryIndex;
    WGPUComputePassTimestampLocation location;
}

struct WGPUConstantEntry
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* key;
    double value;
}

struct WGPUExtent3D
{
    uint width;
    uint height;
    uint depthOrArrayLayers;
}

struct WGPUInstanceDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
}

struct WGPULimits
{
    uint maxTextureDimension1D;
    uint maxTextureDimension2D;
    uint maxTextureDimension3D;
    uint maxTextureArrayLayers;
    uint maxBindGroups;
    uint maxDynamicUniformBuffersPerPipelineLayout;
    uint maxDynamicStorageBuffersPerPipelineLayout;
    uint maxSampledTexturesPerShaderStage;
    uint maxSamplersPerShaderStage;
    uint maxStorageBuffersPerShaderStage;
    uint maxStorageTexturesPerShaderStage;
    uint maxUniformBuffersPerShaderStage;
    ulong maxUniformBufferBindingSize;
    ulong maxStorageBufferBindingSize;
    uint minUniformBufferOffsetAlignment;
    uint minStorageBufferOffsetAlignment;
    uint maxVertexBuffers;
    uint maxVertexAttributes;
    uint maxVertexBufferArrayStride;
    uint maxInterStageShaderComponents;
    uint maxComputeWorkgroupStorageSize;
    uint maxComputeInvocationsPerWorkgroup;
    uint maxComputeWorkgroupSizeX;
    uint maxComputeWorkgroupSizeY;
    uint maxComputeWorkgroupSizeZ;
    uint maxComputeWorkgroupsPerDimension;
}

struct WGPUMultisampleState
{
    const(WGPUChainedStruct)* nextInChain;
    uint count;
    uint mask;
    bool alphaToCoverageEnabled;
}

struct WGPUOrigin3D
{
    uint x;
    uint y;
    uint z;
}

struct WGPUPipelineLayoutDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint bindGroupLayoutCount;
    const(WGPUBindGroupLayout)* bindGroupLayouts;
}

struct WGPUPrimitiveDepthClipControl
{
    WGPUChainedStruct chain;
    bool unclippedDepth;
}

struct WGPUPrimitiveState
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUPrimitiveTopology topology;
    WGPUIndexFormat stripIndexFormat;
    WGPUFrontFace frontFace;
    WGPUCullMode cullMode;
}

struct WGPUQuerySetDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUQueryType type;
    uint count;
    const(WGPUPipelineStatisticName)* pipelineStatistics;
    uint pipelineStatisticsCount;
}

struct WGPUQueueDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
}

struct WGPURenderBundleDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
}

struct WGPURenderBundleEncoderDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint colorFormatsCount;
    const(WGPUTextureFormat)* colorFormats;
    WGPUTextureFormat depthStencilFormat;
    uint sampleCount;
    bool depthReadOnly;
    bool stencilReadOnly;
}

struct WGPURenderPassDepthStencilAttachment
{
    WGPUTextureView view;
    WGPULoadOp depthLoadOp;
    WGPUStoreOp depthStoreOp;
    float depthClearValue;
    bool depthReadOnly;
    WGPULoadOp stencilLoadOp;
    WGPUStoreOp stencilStoreOp;
    uint stencilClearValue;
    bool stencilReadOnly;
}

struct WGPURenderPassTimestampWrite
{
    WGPUQuerySet querySet;
    uint queryIndex;
    WGPURenderPassTimestampLocation location;
}

struct WGPURequestAdapterOptions
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUSurface compatibleSurface;
    WGPUPowerPreference powerPreference;
    bool forceFallbackAdapter;
}

struct WGPUSamplerBindingLayout
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUSamplerBindingType type;
}

struct WGPUSamplerDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUAddressMode addressModeU;
    WGPUAddressMode addressModeV;
    WGPUAddressMode addressModeW;
    WGPUFilterMode magFilter;
    WGPUFilterMode minFilter;
    WGPUMipmapFilterMode mipmapFilter;
    float lodMinClamp;
    float lodMaxClamp;
    WGPUCompareFunction compare;
    ushort maxAnisotropy;
}

struct WGPUShaderModuleCompilationHint
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* entryPoint;
    WGPUPipelineLayout layout;
}

struct WGPUShaderModuleSPIRVDescriptor
{
    WGPUChainedStruct chain;
    uint codeSize;
    const(uint)* code;
}

struct WGPUShaderModuleWGSLDescriptor
{
    WGPUChainedStruct chain;
    const(char)* code;
}

struct WGPUStencilFaceState
{
    WGPUCompareFunction compare;
    WGPUStencilOperation failOp;
    WGPUStencilOperation depthFailOp;
    WGPUStencilOperation passOp;
}

struct WGPUStorageTextureBindingLayout
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUStorageTextureAccess access;
    WGPUTextureFormat format;
    WGPUTextureViewDimension viewDimension;
}

struct WGPUSurfaceDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
}

struct WGPUSurfaceDescriptorFromAndroidNativeWindow
{
    WGPUChainedStruct chain;
    void* window;
}

struct WGPUSurfaceDescriptorFromCanvasHTMLSelector
{
    WGPUChainedStruct chain;
    const(char)* selector;
}

struct WGPUSurfaceDescriptorFromMetalLayer
{
    WGPUChainedStruct chain;
    void* layer;
}

struct WGPUSurfaceDescriptorFromWaylandSurface
{
    WGPUChainedStruct chain;
    void* display;
    void* surface;
}

struct WGPUSurfaceDescriptorFromWindowsHWND
{
    WGPUChainedStruct chain;
    void* hinstance;
    void* hwnd;
}

struct WGPUSurfaceDescriptorFromXcbWindow
{
    WGPUChainedStruct chain;
    void* connection;
    uint window;
}

struct WGPUSurfaceDescriptorFromXlibWindow
{
    WGPUChainedStruct chain;
    void* display;
    uint window;
}

struct WGPUSwapChainDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUTextureUsageFlags usage;
    WGPUTextureFormat format;
    uint width;
    uint height;
    WGPUPresentMode presentMode;
}

struct WGPUTextureBindingLayout
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUTextureSampleType sampleType;
    WGPUTextureViewDimension viewDimension;
    bool multisampled;
}

struct WGPUTextureDataLayout
{
    const(WGPUChainedStruct)* nextInChain;
    ulong offset;
    uint bytesPerRow;
    uint rowsPerImage;
}

struct WGPUTextureViewDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUTextureFormat format;
    WGPUTextureViewDimension dimension;
    uint baseMipLevel;
    uint mipLevelCount;
    uint baseArrayLayer;
    uint arrayLayerCount;
    WGPUTextureAspect aspect;
}

struct WGPUVertexAttribute
{
    WGPUVertexFormat format;
    ulong offset;
    uint shaderLocation;
}

struct WGPUBindGroupDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUBindGroupLayout layout;
    uint entryCount;
    const(WGPUBindGroupEntry)* entries;
}

struct WGPUBindGroupLayoutEntry
{
    const(WGPUChainedStruct)* nextInChain;
    uint binding;
    WGPUShaderStageFlags visibility;
    WGPUBufferBindingLayout buffer;
    WGPUSamplerBindingLayout sampler;
    WGPUTextureBindingLayout texture;
    WGPUStorageTextureBindingLayout storageTexture;
}

struct WGPUBlendState
{
    WGPUBlendComponent color;
    WGPUBlendComponent alpha;
}

struct WGPUCompilationInfo
{
    const(WGPUChainedStruct)* nextInChain;
    uint messageCount;
    const(WGPUCompilationMessage)* messages;
}

struct WGPUComputePassDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint timestampWriteCount;
    const(WGPUComputePassTimestampWrite)* timestampWrites;
}

struct WGPUDepthStencilState
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUTextureFormat format;
    bool depthWriteEnabled;
    WGPUCompareFunction depthCompare;
    WGPUStencilFaceState stencilFront;
    WGPUStencilFaceState stencilBack;
    uint stencilReadMask;
    uint stencilWriteMask;
    int depthBias;
    float depthBiasSlopeScale;
    float depthBiasClamp;
}

struct WGPUImageCopyBuffer
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUTextureDataLayout layout;
    WGPUBuffer buffer;
}

struct WGPUImageCopyTexture
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUTexture texture;
    uint mipLevel;
    WGPUOrigin3D origin;
    WGPUTextureAspect aspect;
}

struct WGPUProgrammableStageDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUShaderModule module_;
    const(char)* entryPoint;
    uint constantCount;
    const(WGPUConstantEntry)* constants;
}

struct WGPURenderPassColorAttachment
{
    WGPUTextureView view;
    WGPUTextureView resolveTarget;
    WGPULoadOp loadOp;
    WGPUStoreOp storeOp;
    WGPUColor clearValue;
}

struct WGPURequiredLimits
{
    const(WGPUChainedStruct)* nextInChain;
    WGPULimits limits;
}

struct WGPUShaderModuleDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint hintCount;
    const(WGPUShaderModuleCompilationHint)* hints;
}

struct WGPUSupportedLimits
{
    WGPUChainedStructOut* nextInChain;
    WGPULimits limits;
}

struct WGPUTextureDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUTextureUsageFlags usage;
    WGPUTextureDimension dimension;
    WGPUExtent3D size;
    WGPUTextureFormat format;
    uint mipLevelCount;
    uint sampleCount;
    uint viewFormatCount;
    const(WGPUTextureFormat)* viewFormats;
}

struct WGPUVertexBufferLayout
{
    ulong arrayStride;
    WGPUVertexStepMode stepMode;
    uint attributeCount;
    const(WGPUVertexAttribute)* attributes;
}

struct WGPUBindGroupLayoutDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint entryCount;
    const(WGPUBindGroupLayoutEntry)* entries;
}

struct WGPUColorTargetState
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUTextureFormat format;
    const(WGPUBlendState)* blend;
    WGPUColorWriteMaskFlags writeMask;
}

struct WGPUComputePipelineDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUPipelineLayout layout;
    WGPUProgrammableStageDescriptor compute;
}

struct WGPUDeviceDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint requiredFeaturesCount;
    const(WGPUFeatureName)* requiredFeatures;
    const(WGPURequiredLimits)* requiredLimits;
    WGPUQueueDescriptor defaultQueue;
}

struct WGPURenderPassDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    uint colorAttachmentCount;
    const(WGPURenderPassColorAttachment)* colorAttachments;
    const(WGPURenderPassDepthStencilAttachment)* depthStencilAttachment;
    WGPUQuerySet occlusionQuerySet;
    uint timestampWriteCount;
    const(WGPURenderPassTimestampWrite)* timestampWrites;
}

struct WGPUVertexState
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUShaderModule module_;
    const(char)* entryPoint;
    uint constantCount;
    const(WGPUConstantEntry)* constants;
    uint bufferCount;
    const(WGPUVertexBufferLayout)* buffers;
}

struct WGPUFragmentState
{
    const(WGPUChainedStruct)* nextInChain;
    WGPUShaderModule module_;
    const(char)* entryPoint;
    uint constantCount;
    const(WGPUConstantEntry)* constants;
    uint targetCount;
    const(WGPUColorTargetState)* targets;
}

struct WGPURenderPipelineDescriptor
{
    const(WGPUChainedStruct)* nextInChain;
    const(char)* label;
    WGPUPipelineLayout layout;
    WGPUVertexState vertex;
    WGPUPrimitiveState primitive;
    const(WGPUDepthStencilState)* depthStencil;
    WGPUMultisampleState multisample;
    const(WGPUFragmentState)* fragment;
}

alias WGPUBufferMapCallback = void function (WGPUBufferMapAsyncStatus status, void* userdata);
alias WGPUCompilationInfoCallback = void function (WGPUCompilationInfoRequestStatus status, const(WGPUCompilationInfo)* compilationInfo, void* userdata);
alias WGPUCreateComputePipelineAsyncCallback = void function (WGPUCreatePipelineAsyncStatus status, WGPUComputePipeline pipeline, const(char)* message, void* userdata);
alias WGPUCreateRenderPipelineAsyncCallback = void function (WGPUCreatePipelineAsyncStatus status, WGPURenderPipeline pipeline, const(char)* message, void* userdata);
alias WGPUDeviceLostCallback = void function (WGPUDeviceLostReason reason, const(char)* message, void* userdata);
alias WGPUErrorCallback = void function (WGPUErrorType type, const(char)* message, void* userdata);
alias WGPUProc = void function ();
alias WGPUQueueWorkDoneCallback = void function (WGPUQueueWorkDoneStatus status, void* userdata);
alias WGPURequestAdapterCallback = void function (WGPURequestAdapterStatus status, WGPUAdapter adapter, const(char)* message, void* userdata);
alias WGPURequestDeviceCallback = void function (WGPURequestDeviceStatus status, WGPUDevice device, const(char)* message, void* userdata);

alias WGPUProcCreateInstance = WGPUInstanceImpl* function (const(WGPUInstanceDescriptor)* descriptor);
alias WGPUProcGetProcAddress = void function (WGPUDevice device, const(char)* procName) function (WGPUDevice device, const(char)* procName);

// Procs of Adapter
alias WGPUProcAdapterEnumerateFeatures = c_ulong function (WGPUAdapter adapter, WGPUFeatureName* features);
alias WGPUProcAdapterGetLimits = bool function (WGPUAdapter adapter, WGPUSupportedLimits* limits);
alias WGPUProcAdapterGetProperties = void function (WGPUAdapter adapter, WGPUAdapterProperties* properties);
alias WGPUProcAdapterHasFeature = bool function (WGPUAdapter adapter, WGPUFeatureName feature);
alias WGPUProcAdapterRequestDevice = void function (WGPUAdapter adapter, const(WGPUDeviceDescriptor)* descriptor, WGPURequestDeviceCallback callback, void* userdata);

// Procs of Buffer
alias WGPUProcBufferDestroy = void function (WGPUBuffer buffer);
alias WGPUProcBufferGetConstMappedRange = const(void)* function (WGPUBuffer buffer, size_t offset, size_t size);
alias WGPUProcBufferGetMappedRange = void* function (WGPUBuffer buffer, size_t offset, size_t size);
alias WGPUProcBufferMapAsync = void function (WGPUBuffer buffer, WGPUMapModeFlags mode, size_t offset, size_t size, WGPUBufferMapCallback callback, void* userdata);
alias WGPUProcBufferUnmap = void function (WGPUBuffer buffer);

// Procs of CommandEncoder
alias WGPUProcCommandEncoderBeginComputePass = WGPUComputePassEncoderImpl* function (WGPUCommandEncoder commandEncoder, const(WGPUComputePassDescriptor)* descriptor);
alias WGPUProcCommandEncoderBeginRenderPass = WGPURenderPassEncoderImpl* function (WGPUCommandEncoder commandEncoder, const(WGPURenderPassDescriptor)* descriptor);
alias WGPUProcCommandEncoderClearBuffer = void function (WGPUCommandEncoder commandEncoder, WGPUBuffer buffer, ulong offset, ulong size);
alias WGPUProcCommandEncoderCopyBufferToBuffer = void function (WGPUCommandEncoder commandEncoder, WGPUBuffer source, ulong sourceOffset, WGPUBuffer destination, ulong destinationOffset, ulong size);
alias WGPUProcCommandEncoderCopyBufferToTexture = void function (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyBuffer)* source, const(WGPUImageCopyTexture)* destination, const(WGPUExtent3D)* copySize);
alias WGPUProcCommandEncoderCopyTextureToBuffer = void function (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyTexture)* source, const(WGPUImageCopyBuffer)* destination, const(WGPUExtent3D)* copySize);
alias WGPUProcCommandEncoderCopyTextureToTexture = void function (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyTexture)* source, const(WGPUImageCopyTexture)* destination, const(WGPUExtent3D)* copySize);
alias WGPUProcCommandEncoderFinish = WGPUCommandBufferImpl* function (WGPUCommandEncoder commandEncoder, const(WGPUCommandBufferDescriptor)* descriptor);
alias WGPUProcCommandEncoderInsertDebugMarker = void function (WGPUCommandEncoder commandEncoder, const(char)* markerLabel);
alias WGPUProcCommandEncoderPopDebugGroup = void function (WGPUCommandEncoder commandEncoder);
alias WGPUProcCommandEncoderPushDebugGroup = void function (WGPUCommandEncoder commandEncoder, const(char)* groupLabel);
alias WGPUProcCommandEncoderResolveQuerySet = void function (WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint firstQuery, uint queryCount, WGPUBuffer destination, ulong destinationOffset);
alias WGPUProcCommandEncoderWriteTimestamp = void function (WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint queryIndex);

// Procs of ComputePassEncoder
alias WGPUProcComputePassEncoderBeginPipelineStatisticsQuery = void function (WGPUComputePassEncoder computePassEncoder, WGPUQuerySet querySet, uint queryIndex);
alias WGPUProcComputePassEncoderDispatch = void function (WGPUComputePassEncoder computePassEncoder, uint workgroupCountX, uint workgroupCountY, uint workgroupCountZ);
alias WGPUProcComputePassEncoderDispatchIndirect = void function (WGPUComputePassEncoder computePassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
alias WGPUProcComputePassEncoderEnd = void function (WGPUComputePassEncoder computePassEncoder);
alias WGPUProcComputePassEncoderEndPipelineStatisticsQuery = void function (WGPUComputePassEncoder computePassEncoder);
alias WGPUProcComputePassEncoderInsertDebugMarker = void function (WGPUComputePassEncoder computePassEncoder, const(char)* markerLabel);
alias WGPUProcComputePassEncoderPopDebugGroup = void function (WGPUComputePassEncoder computePassEncoder);
alias WGPUProcComputePassEncoderPushDebugGroup = void function (WGPUComputePassEncoder computePassEncoder, const(char)* groupLabel);
alias WGPUProcComputePassEncoderSetBindGroup = void function (WGPUComputePassEncoder computePassEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
alias WGPUProcComputePassEncoderSetPipeline = void function (WGPUComputePassEncoder computePassEncoder, WGPUComputePipeline pipeline);

// Procs of ComputePipeline
alias WGPUProcComputePipelineGetBindGroupLayout = WGPUBindGroupLayoutImpl* function (WGPUComputePipeline computePipeline, uint groupIndex);
alias WGPUProcComputePipelineSetLabel = void function (WGPUComputePipeline computePipeline, const(char)* label);

// Procs of Device
alias WGPUProcDeviceCreateBindGroup = WGPUBindGroupImpl* function (WGPUDevice device, const(WGPUBindGroupDescriptor)* descriptor);
alias WGPUProcDeviceCreateBindGroupLayout = WGPUBindGroupLayoutImpl* function (WGPUDevice device, const(WGPUBindGroupLayoutDescriptor)* descriptor);
alias WGPUProcDeviceCreateBuffer = WGPUBufferImpl* function (WGPUDevice device, const(WGPUBufferDescriptor)* descriptor);
alias WGPUProcDeviceCreateCommandEncoder = WGPUCommandEncoderImpl* function (WGPUDevice device, const(WGPUCommandEncoderDescriptor)* descriptor);
alias WGPUProcDeviceCreateComputePipeline = WGPUComputePipelineImpl* function (WGPUDevice device, const(WGPUComputePipelineDescriptor)* descriptor);
alias WGPUProcDeviceCreateComputePipelineAsync = void function (WGPUDevice device, const(WGPUComputePipelineDescriptor)* descriptor, WGPUCreateComputePipelineAsyncCallback callback, void* userdata);
alias WGPUProcDeviceCreatePipelineLayout = WGPUPipelineLayoutImpl* function (WGPUDevice device, const(WGPUPipelineLayoutDescriptor)* descriptor);
alias WGPUProcDeviceCreateQuerySet = WGPUQuerySetImpl* function (WGPUDevice device, const(WGPUQuerySetDescriptor)* descriptor);
alias WGPUProcDeviceCreateRenderBundleEncoder = WGPURenderBundleEncoderImpl* function (WGPUDevice device, const(WGPURenderBundleEncoderDescriptor)* descriptor);
alias WGPUProcDeviceCreateRenderPipeline = WGPURenderPipelineImpl* function (WGPUDevice device, const(WGPURenderPipelineDescriptor)* descriptor);
alias WGPUProcDeviceCreateRenderPipelineAsync = void function (WGPUDevice device, const(WGPURenderPipelineDescriptor)* descriptor, WGPUCreateRenderPipelineAsyncCallback callback, void* userdata);
alias WGPUProcDeviceCreateSampler = WGPUSamplerImpl* function (WGPUDevice device, const(WGPUSamplerDescriptor)* descriptor);
alias WGPUProcDeviceCreateShaderModule = WGPUShaderModuleImpl* function (WGPUDevice device, const(WGPUShaderModuleDescriptor)* descriptor);
alias WGPUProcDeviceCreateSwapChain = WGPUSwapChainImpl* function (WGPUDevice device, WGPUSurface surface, const(WGPUSwapChainDescriptor)* descriptor);
alias WGPUProcDeviceCreateTexture = WGPUTextureImpl* function (WGPUDevice device, const(WGPUTextureDescriptor)* descriptor);
alias WGPUProcDeviceDestroy = void function (WGPUDevice device);
alias WGPUProcDeviceEnumerateFeatures = c_ulong function (WGPUDevice device, WGPUFeatureName* features);
alias WGPUProcDeviceGetLimits = bool function (WGPUDevice device, WGPUSupportedLimits* limits);
alias WGPUProcDeviceGetQueue = WGPUQueueImpl* function (WGPUDevice device);
alias WGPUProcDeviceHasFeature = bool function (WGPUDevice device, WGPUFeatureName feature);
alias WGPUProcDevicePopErrorScope = bool function (WGPUDevice device, WGPUErrorCallback callback, void* userdata);
alias WGPUProcDevicePushErrorScope = void function (WGPUDevice device, WGPUErrorFilter filter);
alias WGPUProcDeviceSetDeviceLostCallback = void function (WGPUDevice device, WGPUDeviceLostCallback callback, void* userdata);
alias WGPUProcDeviceSetUncapturedErrorCallback = void function (WGPUDevice device, WGPUErrorCallback callback, void* userdata);

// Procs of Instance
alias WGPUProcInstanceCreateSurface = WGPUSurfaceImpl* function (WGPUInstance instance, const(WGPUSurfaceDescriptor)* descriptor);
alias WGPUProcInstanceProcessEvents = void function (WGPUInstance instance);
alias WGPUProcInstanceRequestAdapter = void function (WGPUInstance instance, const(WGPURequestAdapterOptions)* options, WGPURequestAdapterCallback callback, void* userdata);

// Procs of QuerySet
alias WGPUProcQuerySetDestroy = void function (WGPUQuerySet querySet);

// Procs of Queue
alias WGPUProcQueueOnSubmittedWorkDone = void function (WGPUQueue queue, WGPUQueueWorkDoneCallback callback, void* userdata);
alias WGPUProcQueueSubmit = void function (WGPUQueue queue, uint commandCount, const(WGPUCommandBuffer)* commands);
alias WGPUProcQueueWriteBuffer = void function (WGPUQueue queue, WGPUBuffer buffer, ulong bufferOffset, const(void)* data, size_t size);
alias WGPUProcQueueWriteTexture = void function (WGPUQueue queue, const(WGPUImageCopyTexture)* destination, const(void)* data, size_t dataSize, const(WGPUTextureDataLayout)* dataLayout, const(WGPUExtent3D)* writeSize);

// Procs of RenderBundleEncoder
alias WGPUProcRenderBundleEncoderDraw = void function (WGPURenderBundleEncoder renderBundleEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
alias WGPUProcRenderBundleEncoderDrawIndexed = void function (WGPURenderBundleEncoder renderBundleEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
alias WGPUProcRenderBundleEncoderDrawIndexedIndirect = void function (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
alias WGPUProcRenderBundleEncoderDrawIndirect = void function (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
alias WGPUProcRenderBundleEncoderFinish = WGPURenderBundleImpl* function (WGPURenderBundleEncoder renderBundleEncoder, const(WGPURenderBundleDescriptor)* descriptor);
alias WGPUProcRenderBundleEncoderInsertDebugMarker = void function (WGPURenderBundleEncoder renderBundleEncoder, const(char)* markerLabel);
alias WGPUProcRenderBundleEncoderPopDebugGroup = void function (WGPURenderBundleEncoder renderBundleEncoder);
alias WGPUProcRenderBundleEncoderPushDebugGroup = void function (WGPURenderBundleEncoder renderBundleEncoder, const(char)* groupLabel);
alias WGPUProcRenderBundleEncoderSetBindGroup = void function (WGPURenderBundleEncoder renderBundleEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
alias WGPUProcRenderBundleEncoderSetIndexBuffer = void function (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
alias WGPUProcRenderBundleEncoderSetPipeline = void function (WGPURenderBundleEncoder renderBundleEncoder, WGPURenderPipeline pipeline);
alias WGPUProcRenderBundleEncoderSetVertexBuffer = void function (WGPURenderBundleEncoder renderBundleEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);

// Procs of RenderPassEncoder
alias WGPUProcRenderPassEncoderBeginOcclusionQuery = void function (WGPURenderPassEncoder renderPassEncoder, uint queryIndex);
alias WGPUProcRenderPassEncoderBeginPipelineStatisticsQuery = void function (WGPURenderPassEncoder renderPassEncoder, WGPUQuerySet querySet, uint queryIndex);
alias WGPUProcRenderPassEncoderDraw = void function (WGPURenderPassEncoder renderPassEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
alias WGPUProcRenderPassEncoderDrawIndexed = void function (WGPURenderPassEncoder renderPassEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
alias WGPUProcRenderPassEncoderDrawIndexedIndirect = void function (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
alias WGPUProcRenderPassEncoderDrawIndirect = void function (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
alias WGPUProcRenderPassEncoderEnd = void function (WGPURenderPassEncoder renderPassEncoder);
alias WGPUProcRenderPassEncoderEndOcclusionQuery = void function (WGPURenderPassEncoder renderPassEncoder);
alias WGPUProcRenderPassEncoderEndPipelineStatisticsQuery = void function (WGPURenderPassEncoder renderPassEncoder);
alias WGPUProcRenderPassEncoderExecuteBundles = void function (WGPURenderPassEncoder renderPassEncoder, uint bundlesCount, const(WGPURenderBundle)* bundles);
alias WGPUProcRenderPassEncoderInsertDebugMarker = void function (WGPURenderPassEncoder renderPassEncoder, const(char)* markerLabel);
alias WGPUProcRenderPassEncoderPopDebugGroup = void function (WGPURenderPassEncoder renderPassEncoder);
alias WGPUProcRenderPassEncoderPushDebugGroup = void function (WGPURenderPassEncoder renderPassEncoder, const(char)* groupLabel);
alias WGPUProcRenderPassEncoderSetBindGroup = void function (WGPURenderPassEncoder renderPassEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
alias WGPUProcRenderPassEncoderSetBlendConstant = void function (WGPURenderPassEncoder renderPassEncoder, const(WGPUColor)* color);
alias WGPUProcRenderPassEncoderSetIndexBuffer = void function (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
alias WGPUProcRenderPassEncoderSetPipeline = void function (WGPURenderPassEncoder renderPassEncoder, WGPURenderPipeline pipeline);
alias WGPUProcRenderPassEncoderSetScissorRect = void function (WGPURenderPassEncoder renderPassEncoder, uint x, uint y, uint width, uint height);
alias WGPUProcRenderPassEncoderSetStencilReference = void function (WGPURenderPassEncoder renderPassEncoder, uint reference);
alias WGPUProcRenderPassEncoderSetVertexBuffer = void function (WGPURenderPassEncoder renderPassEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);
alias WGPUProcRenderPassEncoderSetViewport = void function (WGPURenderPassEncoder renderPassEncoder, float x, float y, float width, float height, float minDepth, float maxDepth);

// Procs of RenderPipeline
alias WGPUProcRenderPipelineGetBindGroupLayout = WGPUBindGroupLayoutImpl* function (WGPURenderPipeline renderPipeline, uint groupIndex);
alias WGPUProcRenderPipelineSetLabel = void function (WGPURenderPipeline renderPipeline, const(char)* label);

// Procs of ShaderModule
alias WGPUProcShaderModuleGetCompilationInfo = void function (WGPUShaderModule shaderModule, WGPUCompilationInfoCallback callback, void* userdata);
alias WGPUProcShaderModuleSetLabel = void function (WGPUShaderModule shaderModule, const(char)* label);

// Procs of Surface
alias WGPUProcSurfaceGetPreferredFormat = WGPUTextureFormat function (WGPUSurface surface, WGPUAdapter adapter);

// Procs of SwapChain
alias WGPUProcSwapChainGetCurrentTextureView = WGPUTextureViewImpl* function (WGPUSwapChain swapChain);
alias WGPUProcSwapChainPresent = void function (WGPUSwapChain swapChain);

// Procs of Texture
alias WGPUProcTextureCreateView = WGPUTextureViewImpl* function (WGPUTexture texture, const(WGPUTextureViewDescriptor)* descriptor);
alias WGPUProcTextureDestroy = void function (WGPUTexture texture);

// !defined(WGPU_SKIP_PROCS)

WGPUInstance wgpuCreateInstance (const(WGPUInstanceDescriptor)* descriptor);
WGPUProc wgpuGetProcAddress (WGPUDevice device, const(char)* procName);

// Methods of Adapter
size_t wgpuAdapterEnumerateFeatures (WGPUAdapter adapter, WGPUFeatureName* features);
bool wgpuAdapterGetLimits (WGPUAdapter adapter, WGPUSupportedLimits* limits);
void wgpuAdapterGetProperties (WGPUAdapter adapter, WGPUAdapterProperties* properties);
bool wgpuAdapterHasFeature (WGPUAdapter adapter, WGPUFeatureName feature);
void wgpuAdapterRequestDevice (WGPUAdapter adapter, const(WGPUDeviceDescriptor)* descriptor, WGPURequestDeviceCallback callback, void* userdata);

// Methods of Buffer
void wgpuBufferDestroy (WGPUBuffer buffer);
const(void)* wgpuBufferGetConstMappedRange (WGPUBuffer buffer, size_t offset, size_t size);
void* wgpuBufferGetMappedRange (WGPUBuffer buffer, size_t offset, size_t size);
void wgpuBufferMapAsync (WGPUBuffer buffer, WGPUMapModeFlags mode, size_t offset, size_t size, WGPUBufferMapCallback callback, void* userdata);
void wgpuBufferUnmap (WGPUBuffer buffer);

// Methods of CommandEncoder
WGPUComputePassEncoder wgpuCommandEncoderBeginComputePass (WGPUCommandEncoder commandEncoder, const(WGPUComputePassDescriptor)* descriptor);
WGPURenderPassEncoder wgpuCommandEncoderBeginRenderPass (WGPUCommandEncoder commandEncoder, const(WGPURenderPassDescriptor)* descriptor);
void wgpuCommandEncoderClearBuffer (WGPUCommandEncoder commandEncoder, WGPUBuffer buffer, ulong offset, ulong size);
void wgpuCommandEncoderCopyBufferToBuffer (WGPUCommandEncoder commandEncoder, WGPUBuffer source, ulong sourceOffset, WGPUBuffer destination, ulong destinationOffset, ulong size);
void wgpuCommandEncoderCopyBufferToTexture (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyBuffer)* source, const(WGPUImageCopyTexture)* destination, const(WGPUExtent3D)* copySize);
void wgpuCommandEncoderCopyTextureToBuffer (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyTexture)* source, const(WGPUImageCopyBuffer)* destination, const(WGPUExtent3D)* copySize);
void wgpuCommandEncoderCopyTextureToTexture (WGPUCommandEncoder commandEncoder, const(WGPUImageCopyTexture)* source, const(WGPUImageCopyTexture)* destination, const(WGPUExtent3D)* copySize);
WGPUCommandBuffer wgpuCommandEncoderFinish (WGPUCommandEncoder commandEncoder, const(WGPUCommandBufferDescriptor)* descriptor);
void wgpuCommandEncoderInsertDebugMarker (WGPUCommandEncoder commandEncoder, const(char)* markerLabel);
void wgpuCommandEncoderPopDebugGroup (WGPUCommandEncoder commandEncoder);
void wgpuCommandEncoderPushDebugGroup (WGPUCommandEncoder commandEncoder, const(char)* groupLabel);
void wgpuCommandEncoderResolveQuerySet (WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint firstQuery, uint queryCount, WGPUBuffer destination, ulong destinationOffset);
void wgpuCommandEncoderWriteTimestamp (WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint queryIndex);

// Methods of ComputePassEncoder
void wgpuComputePassEncoderBeginPipelineStatisticsQuery (WGPUComputePassEncoder computePassEncoder, WGPUQuerySet querySet, uint queryIndex);
void wgpuComputePassEncoderDispatch (WGPUComputePassEncoder computePassEncoder, uint workgroupCountX, uint workgroupCountY, uint workgroupCountZ);
void wgpuComputePassEncoderDispatchIndirect (WGPUComputePassEncoder computePassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
void wgpuComputePassEncoderEnd (WGPUComputePassEncoder computePassEncoder);
void wgpuComputePassEncoderEndPipelineStatisticsQuery (WGPUComputePassEncoder computePassEncoder);
void wgpuComputePassEncoderInsertDebugMarker (WGPUComputePassEncoder computePassEncoder, const(char)* markerLabel);
void wgpuComputePassEncoderPopDebugGroup (WGPUComputePassEncoder computePassEncoder);
void wgpuComputePassEncoderPushDebugGroup (WGPUComputePassEncoder computePassEncoder, const(char)* groupLabel);
void wgpuComputePassEncoderSetBindGroup (WGPUComputePassEncoder computePassEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
void wgpuComputePassEncoderSetPipeline (WGPUComputePassEncoder computePassEncoder, WGPUComputePipeline pipeline);

// Methods of ComputePipeline
WGPUBindGroupLayout wgpuComputePipelineGetBindGroupLayout (WGPUComputePipeline computePipeline, uint groupIndex);
void wgpuComputePipelineSetLabel (WGPUComputePipeline computePipeline, const(char)* label);

// Methods of Device
WGPUBindGroup wgpuDeviceCreateBindGroup (WGPUDevice device, const(WGPUBindGroupDescriptor)* descriptor);
WGPUBindGroupLayout wgpuDeviceCreateBindGroupLayout (WGPUDevice device, const(WGPUBindGroupLayoutDescriptor)* descriptor);
WGPUBuffer wgpuDeviceCreateBuffer (WGPUDevice device, const(WGPUBufferDescriptor)* descriptor);
WGPUCommandEncoder wgpuDeviceCreateCommandEncoder (WGPUDevice device, const(WGPUCommandEncoderDescriptor)* descriptor);
WGPUComputePipeline wgpuDeviceCreateComputePipeline (WGPUDevice device, const(WGPUComputePipelineDescriptor)* descriptor);
void wgpuDeviceCreateComputePipelineAsync (WGPUDevice device, const(WGPUComputePipelineDescriptor)* descriptor, WGPUCreateComputePipelineAsyncCallback callback, void* userdata);
WGPUPipelineLayout wgpuDeviceCreatePipelineLayout (WGPUDevice device, const(WGPUPipelineLayoutDescriptor)* descriptor);
WGPUQuerySet wgpuDeviceCreateQuerySet (WGPUDevice device, const(WGPUQuerySetDescriptor)* descriptor);
WGPURenderBundleEncoder wgpuDeviceCreateRenderBundleEncoder (WGPUDevice device, const(WGPURenderBundleEncoderDescriptor)* descriptor);
WGPURenderPipeline wgpuDeviceCreateRenderPipeline (WGPUDevice device, const(WGPURenderPipelineDescriptor)* descriptor);
void wgpuDeviceCreateRenderPipelineAsync (WGPUDevice device, const(WGPURenderPipelineDescriptor)* descriptor, WGPUCreateRenderPipelineAsyncCallback callback, void* userdata);
WGPUSampler wgpuDeviceCreateSampler (WGPUDevice device, const(WGPUSamplerDescriptor)* descriptor);
WGPUShaderModule wgpuDeviceCreateShaderModule (WGPUDevice device, const(WGPUShaderModuleDescriptor)* descriptor);
WGPUSwapChain wgpuDeviceCreateSwapChain (WGPUDevice device, WGPUSurface surface, const(WGPUSwapChainDescriptor)* descriptor);
WGPUTexture wgpuDeviceCreateTexture (WGPUDevice device, const(WGPUTextureDescriptor)* descriptor);
void wgpuDeviceDestroy (WGPUDevice device);
size_t wgpuDeviceEnumerateFeatures (WGPUDevice device, WGPUFeatureName* features);
bool wgpuDeviceGetLimits (WGPUDevice device, WGPUSupportedLimits* limits);
WGPUQueue wgpuDeviceGetQueue (WGPUDevice device);
bool wgpuDeviceHasFeature (WGPUDevice device, WGPUFeatureName feature);
bool wgpuDevicePopErrorScope (WGPUDevice device, WGPUErrorCallback callback, void* userdata);
void wgpuDevicePushErrorScope (WGPUDevice device, WGPUErrorFilter filter);
void wgpuDeviceSetDeviceLostCallback (WGPUDevice device, WGPUDeviceLostCallback callback, void* userdata);
void wgpuDeviceSetUncapturedErrorCallback (WGPUDevice device, WGPUErrorCallback callback, void* userdata);

// Methods of Instance
WGPUSurface wgpuInstanceCreateSurface (WGPUInstance instance, const(WGPUSurfaceDescriptor)* descriptor);
void wgpuInstanceProcessEvents (WGPUInstance instance);
void wgpuInstanceRequestAdapter (WGPUInstance instance, const(WGPURequestAdapterOptions)* options, WGPURequestAdapterCallback callback, void* userdata);

// Methods of QuerySet
void wgpuQuerySetDestroy (WGPUQuerySet querySet);

// Methods of Queue
void wgpuQueueOnSubmittedWorkDone (WGPUQueue queue, WGPUQueueWorkDoneCallback callback, void* userdata);
void wgpuQueueSubmit (WGPUQueue queue, uint commandCount, const(WGPUCommandBuffer)* commands);
void wgpuQueueWriteBuffer (WGPUQueue queue, WGPUBuffer buffer, ulong bufferOffset, const(void)* data, size_t size);
void wgpuQueueWriteTexture (WGPUQueue queue, const(WGPUImageCopyTexture)* destination, const(void)* data, size_t dataSize, const(WGPUTextureDataLayout)* dataLayout, const(WGPUExtent3D)* writeSize);

// Methods of RenderBundleEncoder
void wgpuRenderBundleEncoderDraw (WGPURenderBundleEncoder renderBundleEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
void wgpuRenderBundleEncoderDrawIndexed (WGPURenderBundleEncoder renderBundleEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
void wgpuRenderBundleEncoderDrawIndexedIndirect (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
void wgpuRenderBundleEncoderDrawIndirect (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
WGPURenderBundle wgpuRenderBundleEncoderFinish (WGPURenderBundleEncoder renderBundleEncoder, const(WGPURenderBundleDescriptor)* descriptor);
void wgpuRenderBundleEncoderInsertDebugMarker (WGPURenderBundleEncoder renderBundleEncoder, const(char)* markerLabel);
void wgpuRenderBundleEncoderPopDebugGroup (WGPURenderBundleEncoder renderBundleEncoder);
void wgpuRenderBundleEncoderPushDebugGroup (WGPURenderBundleEncoder renderBundleEncoder, const(char)* groupLabel);
void wgpuRenderBundleEncoderSetBindGroup (WGPURenderBundleEncoder renderBundleEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
void wgpuRenderBundleEncoderSetIndexBuffer (WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
void wgpuRenderBundleEncoderSetPipeline (WGPURenderBundleEncoder renderBundleEncoder, WGPURenderPipeline pipeline);
void wgpuRenderBundleEncoderSetVertexBuffer (WGPURenderBundleEncoder renderBundleEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);

// Methods of RenderPassEncoder
void wgpuRenderPassEncoderBeginOcclusionQuery (WGPURenderPassEncoder renderPassEncoder, uint queryIndex);
void wgpuRenderPassEncoderBeginPipelineStatisticsQuery (WGPURenderPassEncoder renderPassEncoder, WGPUQuerySet querySet, uint queryIndex);
void wgpuRenderPassEncoderDraw (WGPURenderPassEncoder renderPassEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
void wgpuRenderPassEncoderDrawIndexed (WGPURenderPassEncoder renderPassEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
void wgpuRenderPassEncoderDrawIndexedIndirect (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
void wgpuRenderPassEncoderDrawIndirect (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
void wgpuRenderPassEncoderEnd (WGPURenderPassEncoder renderPassEncoder);
void wgpuRenderPassEncoderEndOcclusionQuery (WGPURenderPassEncoder renderPassEncoder);
void wgpuRenderPassEncoderEndPipelineStatisticsQuery (WGPURenderPassEncoder renderPassEncoder);
void wgpuRenderPassEncoderExecuteBundles (WGPURenderPassEncoder renderPassEncoder, uint bundlesCount, const(WGPURenderBundle)* bundles);
void wgpuRenderPassEncoderInsertDebugMarker (WGPURenderPassEncoder renderPassEncoder, const(char)* markerLabel);
void wgpuRenderPassEncoderPopDebugGroup (WGPURenderPassEncoder renderPassEncoder);
void wgpuRenderPassEncoderPushDebugGroup (WGPURenderPassEncoder renderPassEncoder, const(char)* groupLabel);
void wgpuRenderPassEncoderSetBindGroup (WGPURenderPassEncoder renderPassEncoder, uint groupIndex, WGPUBindGroup group, uint dynamicOffsetCount, const(uint)* dynamicOffsets);
void wgpuRenderPassEncoderSetBlendConstant (WGPURenderPassEncoder renderPassEncoder, const(WGPUColor)* color);
void wgpuRenderPassEncoderSetIndexBuffer (WGPURenderPassEncoder renderPassEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
void wgpuRenderPassEncoderSetPipeline (WGPURenderPassEncoder renderPassEncoder, WGPURenderPipeline pipeline);
void wgpuRenderPassEncoderSetScissorRect (WGPURenderPassEncoder renderPassEncoder, uint x, uint y, uint width, uint height);
void wgpuRenderPassEncoderSetStencilReference (WGPURenderPassEncoder renderPassEncoder, uint reference);
void wgpuRenderPassEncoderSetVertexBuffer (WGPURenderPassEncoder renderPassEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);
void wgpuRenderPassEncoderSetViewport (WGPURenderPassEncoder renderPassEncoder, float x, float y, float width, float height, float minDepth, float maxDepth);

// Methods of RenderPipeline
WGPUBindGroupLayout wgpuRenderPipelineGetBindGroupLayout (WGPURenderPipeline renderPipeline, uint groupIndex);
void wgpuRenderPipelineSetLabel (WGPURenderPipeline renderPipeline, const(char)* label);

// Methods of ShaderModule
void wgpuShaderModuleGetCompilationInfo (WGPUShaderModule shaderModule, WGPUCompilationInfoCallback callback, void* userdata);
void wgpuShaderModuleSetLabel (WGPUShaderModule shaderModule, const(char)* label);

// Methods of Surface
WGPUTextureFormat wgpuSurfaceGetPreferredFormat (WGPUSurface surface, WGPUAdapter adapter);

// Methods of SwapChain
WGPUTextureView wgpuSwapChainGetCurrentTextureView (WGPUSwapChain swapChain);
void wgpuSwapChainPresent (WGPUSwapChain swapChain);

// Methods of Texture
WGPUTextureView wgpuTextureCreateView (WGPUTexture texture, const(WGPUTextureViewDescriptor)* descriptor);
void wgpuTextureDestroy (WGPUTexture texture);

// !defined(WGPU_SKIP_DECLARATIONS)

// extern "C"

// WEBGPU_H_
