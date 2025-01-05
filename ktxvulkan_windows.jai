//
// This file was auto-generated using the following command:
//
// jai ./generate.jai
//



/**
* @struct ktxVulkanFunctions
* @~English
* @brief Struct for applications to pass Vulkan function pointers to the
*        ktxTexture_VkUpload functions via a ktxVulkanDeviceInfo struct.
*
* @c vkGetInstanceProcAddr and @c vkGetDeviceProcAddr should be set, others
* are optional.
*/
ktxVulkanFunctions :: struct {
    // These are functions pointers we need to perform our vulkan duties.
    vkGetInstanceProcAddr:                    PFN_vkGetInstanceProcAddr;
    vkGetDeviceProcAddr:                      PFN_vkGetDeviceProcAddr;

    // These we optionally specify
    vkAllocateCommandBuffers:                 PFN_vkAllocateCommandBuffers;
    vkAllocateMemory:                         PFN_vkAllocateMemory;
    vkBeginCommandBuffer:                     PFN_vkBeginCommandBuffer;
    vkBindBufferMemory:                       PFN_vkBindBufferMemory;
    vkBindImageMemory:                        PFN_vkBindImageMemory;
    vkCmdBlitImage:                           PFN_vkCmdBlitImage;
    vkCmdCopyBufferToImage:                   PFN_vkCmdCopyBufferToImage;
    vkCmdPipelineBarrier:                     PFN_vkCmdPipelineBarrier;
    vkCreateImage:                            PFN_vkCreateImage;
    vkDestroyImage:                           PFN_vkDestroyImage;
    vkCreateBuffer:                           PFN_vkCreateBuffer;
    vkDestroyBuffer:                          PFN_vkDestroyBuffer;
    vkCreateFence:                            PFN_vkCreateFence;
    vkDestroyFence:                           PFN_vkDestroyFence;
    vkEndCommandBuffer:                       PFN_vkEndCommandBuffer;
    vkFreeCommandBuffers:                     PFN_vkFreeCommandBuffers;
    vkFreeMemory:                             PFN_vkFreeMemory;
    vkGetBufferMemoryRequirements:            PFN_vkGetBufferMemoryRequirements;
    vkGetImageMemoryRequirements:             PFN_vkGetImageMemoryRequirements;
    vkGetImageSubresourceLayout:              PFN_vkGetImageSubresourceLayout;
    vkGetPhysicalDeviceImageFormatProperties: PFN_vkGetPhysicalDeviceImageFormatProperties;
    vkGetPhysicalDeviceFormatProperties:      PFN_vkGetPhysicalDeviceFormatProperties;
    vkGetPhysicalDeviceMemoryProperties:      PFN_vkGetPhysicalDeviceMemoryProperties;
    vkMapMemory:                              PFN_vkMapMemory;
    vkQueueSubmit:                            PFN_vkQueueSubmit;
    vkQueueWaitIdle:                          PFN_vkQueueWaitIdle;
    vkUnmapMemory:                            PFN_vkUnmapMemory;
    vkWaitForFences:                          PFN_vkWaitForFences;
}

/**
* @class ktxVulkanTexture
* @~English
* @brief Struct for returning information about the Vulkan texture image
*        created by the ktxTexture_VkUpload* functions.
*
* Creation of these objects is internal to the upload functions.
*/
ktxVulkanTexture :: struct {
    vkDestroyImage: PFN_vkDestroyImage; /*!< Pointer to vkDestroyImage function */
    vkFreeMemory:   PFN_vkFreeMemory; /*!< Pointer to vkFreeMemory function */

    image:          VkImage; /*!< Handle to the Vulkan image created by the loader. */
    imageFormat:    VkFormat; /*!< Format of the image data. */
    /*!< Layout of the created image. Has the same
    value as @p layout parameter passed to the
    loader. */
    imageLayout:    VkImageLayout;

    /*!< The memory (sub)allocation for the
    image on the Vulkan device. Will not be
    used with suballocators.*/
    deviceMemory:   VkDeviceMemory;

    /*!< ViewType corresponding to @p image. Reflects
    the dimensionality, cubeness and arrayness
    of the image. */
    viewType:       VkImageViewType;

    width:          u32; /*!< The width of the image. */
    height:         u32; /*!< The height of the image. */
    depth:          u32; /*!< The depth of the image. */
    levelCount:     u32; /*!< The number of MIP levels in the image. */
    layerCount:     u32; /*!< The number of array layers in the image. */
    allocationId:   u64; /*!< An id referencing suballocation(s). */
}

ktxVulkanTexture_subAllocatorAllocMemFuncPtr :: #type (allocInfo: *VkMemoryAllocateInfo, memReq: *VkMemoryRequirements, pageCount: *u64) -> u64 #c_call;
ktxVulkanTexture_subAllocatorBindBufferFuncPtr :: #type (buffer: VkBuffer, allocId: u64) -> VkResult #c_call;
ktxVulkanTexture_subAllocatorBindImageFuncPtr :: #type (image: VkImage, allocId: u64) -> VkResult #c_call;
ktxVulkanTexture_subAllocatorMemoryMapFuncPtr :: #type (allocId: u64, pageNumber: u64, mapLength: *VkDeviceSize, dataPtr: **void) -> VkResult #c_call;
ktxVulkanTexture_subAllocatorMemoryUnmapFuncPtr :: #type (allocId: u64, pageNumber: u64) -> void #c_call;
ktxVulkanTexture_subAllocatorFreeMemFuncPtr :: #type (allocId: u64) -> void #c_call;

/**
* @class ktxVulkanTexture_subAllocatorCallbacks
* @~English
* @brief Struct that contains all callbacks necessary for suballocation.
*
* These pointers must all be provided for upload or destroy to occur using suballocator callbacks.
*/
ktxVulkanTexture_subAllocatorCallbacks :: struct {
    allocMemFuncPtr:    ktxVulkanTexture_subAllocatorAllocMemFuncPtr; /*!< Pointer to the memory procurement function. Can suballocate one or more pages. */
    bindBufferFuncPtr:  ktxVulkanTexture_subAllocatorBindBufferFuncPtr; /*!< Pointer to bind-buffer-to-suballocation(s) function. */
    bindImageFuncPtr:   ktxVulkanTexture_subAllocatorBindImageFuncPtr; /*!< Pointer to bind-image-to-suballocation(s) function. */
    memoryMapFuncPtr:   ktxVulkanTexture_subAllocatorMemoryMapFuncPtr; /*!< Pointer to function for mapping the memory of a specific page. */
    memoryUnmapFuncPtr: ktxVulkanTexture_subAllocatorMemoryUnmapFuncPtr; /*!< Pointer to function for unmapping the memory of a specific page. */
    freeMemFuncPtr:     ktxVulkanTexture_subAllocatorFreeMemFuncPtr; /*!< Pointer to the free procurement function. */
}

ktxVulkanTexture_Destruct_WithSuballocator :: (This: *ktxVulkanTexture, device: VkDevice, pAllocator: *VkAllocationCallbacks, subAllocatorCallbacks: *ktxVulkanTexture_subAllocatorCallbacks) -> ktx_error_code_e #foreign ktx;

ktxVulkanTexture_Destruct :: (This: *ktxVulkanTexture, device: VkDevice, pAllocator: *VkAllocationCallbacks) -> void #foreign ktx;

/**
* @class ktxVulkanDeviceInfo
* @~English
* @brief Struct for passing information about the Vulkan device on which
*        to create images to the texture image loading functions.
*
* Avoids passing a large number of parameters to each loading function.
* Use of ktxVulkanDeviceInfo_create() or ktxVulkanDeviceInfo_construct() to
* populate this structure is highly recommended.
*
* @code
ktxVulkanDeviceInfo vdi;
ktxVulkanTexture texture;

vdi = ktxVulkanDeviceInfo_create(physicalDevice,
device,
queue,
cmdPool,
&allocator);
ktxLoadVkTextureN("texture_1.ktx", vdi, &texture, NULL, NULL);
// ...
ktxLoadVkTextureN("texture_n.ktx", vdi, &texture, NULL, NULL);
ktxVulkanDeviceInfo_destroy(vdi);
* @endcode
*/
ktxVulkanDeviceInfo :: struct {
    instance:               VkInstance; /*!< Instance used to communicate with vulkan. */
    physicalDevice:         VkPhysicalDevice; /*!< Handle of the physical device. */
    device:                 VkDevice; /*!< Handle of the logical device. */
    queue:                  VkQueue; /*!< Handle to the queue to which to submit commands. */
    cmdBuffer:              VkCommandBuffer; /*!< Handle of the cmdBuffer to use. */

    /** Handle of the command pool from which to allocate the command buffer. */
    cmdPool:                VkCommandPool;

    /** Pointer to the allocator to use for the command buffer and created
    * images.
    */
    pAllocator:             *VkAllocationCallbacks;

    /** Memory properties of the Vulkan physical device. */
    deviceMemoryProperties: VkPhysicalDeviceMemoryProperties;

    /** The functions needed to operate functions */
    vkFuncs:                ktxVulkanFunctions;
}

ktxVulkanDeviceInfo_CreateEx :: (instance: VkInstance, physicalDevice: VkPhysicalDevice, device: VkDevice, queue: VkQueue, cmdPool: VkCommandPool, pAllocator: *VkAllocationCallbacks, pFunctions: *ktxVulkanFunctions) -> *ktxVulkanDeviceInfo #foreign ktx;

ktxVulkanDeviceInfo_Create :: (physicalDevice: VkPhysicalDevice, device: VkDevice, queue: VkQueue, cmdPool: VkCommandPool, pAllocator: *VkAllocationCallbacks) -> *ktxVulkanDeviceInfo #foreign ktx;

ktxVulkanDeviceInfo_Construct :: (This: *ktxVulkanDeviceInfo, physicalDevice: VkPhysicalDevice, device: VkDevice, queue: VkQueue, cmdPool: VkCommandPool, pAllocator: *VkAllocationCallbacks) -> ktx_error_code_e #foreign ktx;

ktxVulkanDeviceInfo_ConstructEx :: (This: *ktxVulkanDeviceInfo, instance: VkInstance, physicalDevice: VkPhysicalDevice, device: VkDevice, queue: VkQueue, cmdPool: VkCommandPool, pAllocator: *VkAllocationCallbacks, pFunctions: *ktxVulkanFunctions) -> ktx_error_code_e #foreign ktx;

ktxVulkanDeviceInfo_Destruct :: (This: *ktxVulkanDeviceInfo) -> void #foreign ktx;

ktxVulkanDeviceInfo_Destroy :: (This: *ktxVulkanDeviceInfo) -> void #foreign ktx;

ktxTexture_VkUploadEx_WithSuballocator :: (This: *ktxTexture, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout, subAllocatorCallbacks: *ktxVulkanTexture_subAllocatorCallbacks) -> ktx_error_code_e #foreign ktx;

ktxTexture_VkUploadEx :: (This: *ktxTexture, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout) -> ktx_error_code_e #foreign ktx;

ktxTexture_VkUpload :: (texture: *ktxTexture, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture1_VkUploadEx_WithSuballocator :: (This: *ktxTexture1, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout, subAllocatorCallbacks: *ktxVulkanTexture_subAllocatorCallbacks) -> ktx_error_code_e #foreign ktx;

ktxTexture1_VkUploadEx :: (This: *ktxTexture1, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout) -> ktx_error_code_e #foreign ktx;

ktxTexture1_VkUpload :: (texture: *ktxTexture1, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture2_VkUploadEx_WithSuballocator :: (This: *ktxTexture2, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout, subAllocatorCallbacks: *ktxVulkanTexture_subAllocatorCallbacks) -> ktx_error_code_e #foreign ktx;

ktxTexture2_VkUploadEx :: (This: *ktxTexture2, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture, tiling: VkImageTiling, usageFlags: VkImageUsageFlags, finalLayout: VkImageLayout) -> ktx_error_code_e #foreign ktx;

ktxTexture2_VkUpload :: (texture: *ktxTexture2, vdi: *ktxVulkanDeviceInfo, vkTexture: *ktxVulkanTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture_GetVkFormat :: (This: *ktxTexture) -> VkFormat #foreign ktx;

ktxTexture1_GetVkFormat :: (This: *ktxTexture1) -> VkFormat #foreign ktx;

ktxTexture2_GetVkFormat :: (This: *ktxTexture2) -> VkFormat #foreign ktx;

#scope_file

#import "Basic"; // For assert

ktx :: #library "windows/ktx";

#run {
    {
        instance: ktxVulkanFunctions;
        assert(((cast(*void)(*instance.vkGetInstanceProcAddr)) - cast(*void)(*instance)) == 0, "ktxVulkanFunctions.vkGetInstanceProcAddr has unexpected offset % instead of 0", ((cast(*void)(*instance.vkGetInstanceProcAddr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetInstanceProcAddr)) == 8, "ktxVulkanFunctions.vkGetInstanceProcAddr has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetInstanceProcAddr)));
        assert(((cast(*void)(*instance.vkGetDeviceProcAddr)) - cast(*void)(*instance)) == 8, "ktxVulkanFunctions.vkGetDeviceProcAddr has unexpected offset % instead of 8", ((cast(*void)(*instance.vkGetDeviceProcAddr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetDeviceProcAddr)) == 8, "ktxVulkanFunctions.vkGetDeviceProcAddr has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetDeviceProcAddr)));
        assert(((cast(*void)(*instance.vkAllocateCommandBuffers)) - cast(*void)(*instance)) == 16, "ktxVulkanFunctions.vkAllocateCommandBuffers has unexpected offset % instead of 16", ((cast(*void)(*instance.vkAllocateCommandBuffers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkAllocateCommandBuffers)) == 8, "ktxVulkanFunctions.vkAllocateCommandBuffers has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkAllocateCommandBuffers)));
        assert(((cast(*void)(*instance.vkAllocateMemory)) - cast(*void)(*instance)) == 24, "ktxVulkanFunctions.vkAllocateMemory has unexpected offset % instead of 24", ((cast(*void)(*instance.vkAllocateMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkAllocateMemory)) == 8, "ktxVulkanFunctions.vkAllocateMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkAllocateMemory)));
        assert(((cast(*void)(*instance.vkBeginCommandBuffer)) - cast(*void)(*instance)) == 32, "ktxVulkanFunctions.vkBeginCommandBuffer has unexpected offset % instead of 32", ((cast(*void)(*instance.vkBeginCommandBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkBeginCommandBuffer)) == 8, "ktxVulkanFunctions.vkBeginCommandBuffer has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkBeginCommandBuffer)));
        assert(((cast(*void)(*instance.vkBindBufferMemory)) - cast(*void)(*instance)) == 40, "ktxVulkanFunctions.vkBindBufferMemory has unexpected offset % instead of 40", ((cast(*void)(*instance.vkBindBufferMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkBindBufferMemory)) == 8, "ktxVulkanFunctions.vkBindBufferMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkBindBufferMemory)));
        assert(((cast(*void)(*instance.vkBindImageMemory)) - cast(*void)(*instance)) == 48, "ktxVulkanFunctions.vkBindImageMemory has unexpected offset % instead of 48", ((cast(*void)(*instance.vkBindImageMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkBindImageMemory)) == 8, "ktxVulkanFunctions.vkBindImageMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkBindImageMemory)));
        assert(((cast(*void)(*instance.vkCmdBlitImage)) - cast(*void)(*instance)) == 56, "ktxVulkanFunctions.vkCmdBlitImage has unexpected offset % instead of 56", ((cast(*void)(*instance.vkCmdBlitImage)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCmdBlitImage)) == 8, "ktxVulkanFunctions.vkCmdBlitImage has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCmdBlitImage)));
        assert(((cast(*void)(*instance.vkCmdCopyBufferToImage)) - cast(*void)(*instance)) == 64, "ktxVulkanFunctions.vkCmdCopyBufferToImage has unexpected offset % instead of 64", ((cast(*void)(*instance.vkCmdCopyBufferToImage)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCmdCopyBufferToImage)) == 8, "ktxVulkanFunctions.vkCmdCopyBufferToImage has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCmdCopyBufferToImage)));
        assert(((cast(*void)(*instance.vkCmdPipelineBarrier)) - cast(*void)(*instance)) == 72, "ktxVulkanFunctions.vkCmdPipelineBarrier has unexpected offset % instead of 72", ((cast(*void)(*instance.vkCmdPipelineBarrier)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCmdPipelineBarrier)) == 8, "ktxVulkanFunctions.vkCmdPipelineBarrier has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCmdPipelineBarrier)));
        assert(((cast(*void)(*instance.vkCreateImage)) - cast(*void)(*instance)) == 80, "ktxVulkanFunctions.vkCreateImage has unexpected offset % instead of 80", ((cast(*void)(*instance.vkCreateImage)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCreateImage)) == 8, "ktxVulkanFunctions.vkCreateImage has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCreateImage)));
        assert(((cast(*void)(*instance.vkDestroyImage)) - cast(*void)(*instance)) == 88, "ktxVulkanFunctions.vkDestroyImage has unexpected offset % instead of 88", ((cast(*void)(*instance.vkDestroyImage)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkDestroyImage)) == 8, "ktxVulkanFunctions.vkDestroyImage has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkDestroyImage)));
        assert(((cast(*void)(*instance.vkCreateBuffer)) - cast(*void)(*instance)) == 96, "ktxVulkanFunctions.vkCreateBuffer has unexpected offset % instead of 96", ((cast(*void)(*instance.vkCreateBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCreateBuffer)) == 8, "ktxVulkanFunctions.vkCreateBuffer has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCreateBuffer)));
        assert(((cast(*void)(*instance.vkDestroyBuffer)) - cast(*void)(*instance)) == 104, "ktxVulkanFunctions.vkDestroyBuffer has unexpected offset % instead of 104", ((cast(*void)(*instance.vkDestroyBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkDestroyBuffer)) == 8, "ktxVulkanFunctions.vkDestroyBuffer has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkDestroyBuffer)));
        assert(((cast(*void)(*instance.vkCreateFence)) - cast(*void)(*instance)) == 112, "ktxVulkanFunctions.vkCreateFence has unexpected offset % instead of 112", ((cast(*void)(*instance.vkCreateFence)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkCreateFence)) == 8, "ktxVulkanFunctions.vkCreateFence has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkCreateFence)));
        assert(((cast(*void)(*instance.vkDestroyFence)) - cast(*void)(*instance)) == 120, "ktxVulkanFunctions.vkDestroyFence has unexpected offset % instead of 120", ((cast(*void)(*instance.vkDestroyFence)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkDestroyFence)) == 8, "ktxVulkanFunctions.vkDestroyFence has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkDestroyFence)));
        assert(((cast(*void)(*instance.vkEndCommandBuffer)) - cast(*void)(*instance)) == 128, "ktxVulkanFunctions.vkEndCommandBuffer has unexpected offset % instead of 128", ((cast(*void)(*instance.vkEndCommandBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkEndCommandBuffer)) == 8, "ktxVulkanFunctions.vkEndCommandBuffer has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkEndCommandBuffer)));
        assert(((cast(*void)(*instance.vkFreeCommandBuffers)) - cast(*void)(*instance)) == 136, "ktxVulkanFunctions.vkFreeCommandBuffers has unexpected offset % instead of 136", ((cast(*void)(*instance.vkFreeCommandBuffers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkFreeCommandBuffers)) == 8, "ktxVulkanFunctions.vkFreeCommandBuffers has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkFreeCommandBuffers)));
        assert(((cast(*void)(*instance.vkFreeMemory)) - cast(*void)(*instance)) == 144, "ktxVulkanFunctions.vkFreeMemory has unexpected offset % instead of 144", ((cast(*void)(*instance.vkFreeMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkFreeMemory)) == 8, "ktxVulkanFunctions.vkFreeMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkFreeMemory)));
        assert(((cast(*void)(*instance.vkGetBufferMemoryRequirements)) - cast(*void)(*instance)) == 152, "ktxVulkanFunctions.vkGetBufferMemoryRequirements has unexpected offset % instead of 152", ((cast(*void)(*instance.vkGetBufferMemoryRequirements)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetBufferMemoryRequirements)) == 8, "ktxVulkanFunctions.vkGetBufferMemoryRequirements has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetBufferMemoryRequirements)));
        assert(((cast(*void)(*instance.vkGetImageMemoryRequirements)) - cast(*void)(*instance)) == 160, "ktxVulkanFunctions.vkGetImageMemoryRequirements has unexpected offset % instead of 160", ((cast(*void)(*instance.vkGetImageMemoryRequirements)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetImageMemoryRequirements)) == 8, "ktxVulkanFunctions.vkGetImageMemoryRequirements has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetImageMemoryRequirements)));
        assert(((cast(*void)(*instance.vkGetImageSubresourceLayout)) - cast(*void)(*instance)) == 168, "ktxVulkanFunctions.vkGetImageSubresourceLayout has unexpected offset % instead of 168", ((cast(*void)(*instance.vkGetImageSubresourceLayout)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetImageSubresourceLayout)) == 8, "ktxVulkanFunctions.vkGetImageSubresourceLayout has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetImageSubresourceLayout)));
        assert(((cast(*void)(*instance.vkGetPhysicalDeviceImageFormatProperties)) - cast(*void)(*instance)) == 176, "ktxVulkanFunctions.vkGetPhysicalDeviceImageFormatProperties has unexpected offset % instead of 176", ((cast(*void)(*instance.vkGetPhysicalDeviceImageFormatProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceImageFormatProperties)) == 8, "ktxVulkanFunctions.vkGetPhysicalDeviceImageFormatProperties has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceImageFormatProperties)));
        assert(((cast(*void)(*instance.vkGetPhysicalDeviceFormatProperties)) - cast(*void)(*instance)) == 184, "ktxVulkanFunctions.vkGetPhysicalDeviceFormatProperties has unexpected offset % instead of 184", ((cast(*void)(*instance.vkGetPhysicalDeviceFormatProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceFormatProperties)) == 8, "ktxVulkanFunctions.vkGetPhysicalDeviceFormatProperties has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceFormatProperties)));
        assert(((cast(*void)(*instance.vkGetPhysicalDeviceMemoryProperties)) - cast(*void)(*instance)) == 192, "ktxVulkanFunctions.vkGetPhysicalDeviceMemoryProperties has unexpected offset % instead of 192", ((cast(*void)(*instance.vkGetPhysicalDeviceMemoryProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceMemoryProperties)) == 8, "ktxVulkanFunctions.vkGetPhysicalDeviceMemoryProperties has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkGetPhysicalDeviceMemoryProperties)));
        assert(((cast(*void)(*instance.vkMapMemory)) - cast(*void)(*instance)) == 200, "ktxVulkanFunctions.vkMapMemory has unexpected offset % instead of 200", ((cast(*void)(*instance.vkMapMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkMapMemory)) == 8, "ktxVulkanFunctions.vkMapMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkMapMemory)));
        assert(((cast(*void)(*instance.vkQueueSubmit)) - cast(*void)(*instance)) == 208, "ktxVulkanFunctions.vkQueueSubmit has unexpected offset % instead of 208", ((cast(*void)(*instance.vkQueueSubmit)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkQueueSubmit)) == 8, "ktxVulkanFunctions.vkQueueSubmit has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkQueueSubmit)));
        assert(((cast(*void)(*instance.vkQueueWaitIdle)) - cast(*void)(*instance)) == 216, "ktxVulkanFunctions.vkQueueWaitIdle has unexpected offset % instead of 216", ((cast(*void)(*instance.vkQueueWaitIdle)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkQueueWaitIdle)) == 8, "ktxVulkanFunctions.vkQueueWaitIdle has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkQueueWaitIdle)));
        assert(((cast(*void)(*instance.vkUnmapMemory)) - cast(*void)(*instance)) == 224, "ktxVulkanFunctions.vkUnmapMemory has unexpected offset % instead of 224", ((cast(*void)(*instance.vkUnmapMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkUnmapMemory)) == 8, "ktxVulkanFunctions.vkUnmapMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkUnmapMemory)));
        assert(((cast(*void)(*instance.vkWaitForFences)) - cast(*void)(*instance)) == 232, "ktxVulkanFunctions.vkWaitForFences has unexpected offset % instead of 232", ((cast(*void)(*instance.vkWaitForFences)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanFunctions.vkWaitForFences)) == 8, "ktxVulkanFunctions.vkWaitForFences has unexpected size % instead of 8", size_of(type_of(ktxVulkanFunctions.vkWaitForFences)));
        assert(size_of(ktxVulkanFunctions) == 240, "ktxVulkanFunctions has size % instead of 240", size_of(ktxVulkanFunctions));
    }

    {
        instance: ktxVulkanTexture;
        assert(((cast(*void)(*instance.vkDestroyImage)) - cast(*void)(*instance)) == 0, "ktxVulkanTexture.vkDestroyImage has unexpected offset % instead of 0", ((cast(*void)(*instance.vkDestroyImage)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.vkDestroyImage)) == 8, "ktxVulkanTexture.vkDestroyImage has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture.vkDestroyImage)));
        assert(((cast(*void)(*instance.vkFreeMemory)) - cast(*void)(*instance)) == 8, "ktxVulkanTexture.vkFreeMemory has unexpected offset % instead of 8", ((cast(*void)(*instance.vkFreeMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.vkFreeMemory)) == 8, "ktxVulkanTexture.vkFreeMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture.vkFreeMemory)));
        assert(((cast(*void)(*instance.image)) - cast(*void)(*instance)) == 16, "ktxVulkanTexture.image has unexpected offset % instead of 16", ((cast(*void)(*instance.image)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.image)) == 8, "ktxVulkanTexture.image has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture.image)));
        assert(((cast(*void)(*instance.imageFormat)) - cast(*void)(*instance)) == 24, "ktxVulkanTexture.imageFormat has unexpected offset % instead of 24", ((cast(*void)(*instance.imageFormat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.imageFormat)) == 4, "ktxVulkanTexture.imageFormat has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.imageFormat)));
        assert(((cast(*void)(*instance.imageLayout)) - cast(*void)(*instance)) == 28, "ktxVulkanTexture.imageLayout has unexpected offset % instead of 28", ((cast(*void)(*instance.imageLayout)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.imageLayout)) == 4, "ktxVulkanTexture.imageLayout has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.imageLayout)));
        assert(((cast(*void)(*instance.deviceMemory)) - cast(*void)(*instance)) == 32, "ktxVulkanTexture.deviceMemory has unexpected offset % instead of 32", ((cast(*void)(*instance.deviceMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.deviceMemory)) == 8, "ktxVulkanTexture.deviceMemory has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture.deviceMemory)));
        assert(((cast(*void)(*instance.viewType)) - cast(*void)(*instance)) == 40, "ktxVulkanTexture.viewType has unexpected offset % instead of 40", ((cast(*void)(*instance.viewType)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.viewType)) == 4, "ktxVulkanTexture.viewType has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.viewType)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 44, "ktxVulkanTexture.width has unexpected offset % instead of 44", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.width)) == 4, "ktxVulkanTexture.width has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.width)));
        assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 48, "ktxVulkanTexture.height has unexpected offset % instead of 48", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.height)) == 4, "ktxVulkanTexture.height has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.height)));
        assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 52, "ktxVulkanTexture.depth has unexpected offset % instead of 52", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.depth)) == 4, "ktxVulkanTexture.depth has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.depth)));
        assert(((cast(*void)(*instance.levelCount)) - cast(*void)(*instance)) == 56, "ktxVulkanTexture.levelCount has unexpected offset % instead of 56", ((cast(*void)(*instance.levelCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.levelCount)) == 4, "ktxVulkanTexture.levelCount has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.levelCount)));
        assert(((cast(*void)(*instance.layerCount)) - cast(*void)(*instance)) == 60, "ktxVulkanTexture.layerCount has unexpected offset % instead of 60", ((cast(*void)(*instance.layerCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.layerCount)) == 4, "ktxVulkanTexture.layerCount has unexpected size % instead of 4", size_of(type_of(ktxVulkanTexture.layerCount)));
        assert(((cast(*void)(*instance.allocationId)) - cast(*void)(*instance)) == 64, "ktxVulkanTexture.allocationId has unexpected offset % instead of 64", ((cast(*void)(*instance.allocationId)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture.allocationId)) == 8, "ktxVulkanTexture.allocationId has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture.allocationId)));
        assert(size_of(ktxVulkanTexture) == 72, "ktxVulkanTexture has size % instead of 72", size_of(ktxVulkanTexture));
    }

    {
        instance: ktxVulkanTexture_subAllocatorCallbacks;
        assert(((cast(*void)(*instance.allocMemFuncPtr)) - cast(*void)(*instance)) == 0, "ktxVulkanTexture_subAllocatorCallbacks.allocMemFuncPtr has unexpected offset % instead of 0", ((cast(*void)(*instance.allocMemFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.allocMemFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.allocMemFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.allocMemFuncPtr)));
        assert(((cast(*void)(*instance.bindBufferFuncPtr)) - cast(*void)(*instance)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.bindBufferFuncPtr has unexpected offset % instead of 8", ((cast(*void)(*instance.bindBufferFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.bindBufferFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.bindBufferFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.bindBufferFuncPtr)));
        assert(((cast(*void)(*instance.bindImageFuncPtr)) - cast(*void)(*instance)) == 16, "ktxVulkanTexture_subAllocatorCallbacks.bindImageFuncPtr has unexpected offset % instead of 16", ((cast(*void)(*instance.bindImageFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.bindImageFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.bindImageFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.bindImageFuncPtr)));
        assert(((cast(*void)(*instance.memoryMapFuncPtr)) - cast(*void)(*instance)) == 24, "ktxVulkanTexture_subAllocatorCallbacks.memoryMapFuncPtr has unexpected offset % instead of 24", ((cast(*void)(*instance.memoryMapFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.memoryMapFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.memoryMapFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.memoryMapFuncPtr)));
        assert(((cast(*void)(*instance.memoryUnmapFuncPtr)) - cast(*void)(*instance)) == 32, "ktxVulkanTexture_subAllocatorCallbacks.memoryUnmapFuncPtr has unexpected offset % instead of 32", ((cast(*void)(*instance.memoryUnmapFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.memoryUnmapFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.memoryUnmapFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.memoryUnmapFuncPtr)));
        assert(((cast(*void)(*instance.freeMemFuncPtr)) - cast(*void)(*instance)) == 40, "ktxVulkanTexture_subAllocatorCallbacks.freeMemFuncPtr has unexpected offset % instead of 40", ((cast(*void)(*instance.freeMemFuncPtr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.freeMemFuncPtr)) == 8, "ktxVulkanTexture_subAllocatorCallbacks.freeMemFuncPtr has unexpected size % instead of 8", size_of(type_of(ktxVulkanTexture_subAllocatorCallbacks.freeMemFuncPtr)));
        assert(size_of(ktxVulkanTexture_subAllocatorCallbacks) == 48, "ktxVulkanTexture_subAllocatorCallbacks has size % instead of 48", size_of(ktxVulkanTexture_subAllocatorCallbacks));
    }

    {
        instance: ktxVulkanDeviceInfo;
        assert(((cast(*void)(*instance.instance)) - cast(*void)(*instance)) == 0, "ktxVulkanDeviceInfo.instance has unexpected offset % instead of 0", ((cast(*void)(*instance.instance)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.instance)) == 8, "ktxVulkanDeviceInfo.instance has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.instance)));
        assert(((cast(*void)(*instance.physicalDevice)) - cast(*void)(*instance)) == 8, "ktxVulkanDeviceInfo.physicalDevice has unexpected offset % instead of 8", ((cast(*void)(*instance.physicalDevice)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.physicalDevice)) == 8, "ktxVulkanDeviceInfo.physicalDevice has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.physicalDevice)));
        assert(((cast(*void)(*instance.device)) - cast(*void)(*instance)) == 16, "ktxVulkanDeviceInfo.device has unexpected offset % instead of 16", ((cast(*void)(*instance.device)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.device)) == 8, "ktxVulkanDeviceInfo.device has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.device)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 24, "ktxVulkanDeviceInfo.queue has unexpected offset % instead of 24", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.queue)) == 8, "ktxVulkanDeviceInfo.queue has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.queue)));
        assert(((cast(*void)(*instance.cmdBuffer)) - cast(*void)(*instance)) == 32, "ktxVulkanDeviceInfo.cmdBuffer has unexpected offset % instead of 32", ((cast(*void)(*instance.cmdBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.cmdBuffer)) == 8, "ktxVulkanDeviceInfo.cmdBuffer has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.cmdBuffer)));
        assert(((cast(*void)(*instance.cmdPool)) - cast(*void)(*instance)) == 40, "ktxVulkanDeviceInfo.cmdPool has unexpected offset % instead of 40", ((cast(*void)(*instance.cmdPool)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.cmdPool)) == 8, "ktxVulkanDeviceInfo.cmdPool has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.cmdPool)));
        assert(((cast(*void)(*instance.pAllocator)) - cast(*void)(*instance)) == 48, "ktxVulkanDeviceInfo.pAllocator has unexpected offset % instead of 48", ((cast(*void)(*instance.pAllocator)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.pAllocator)) == 8, "ktxVulkanDeviceInfo.pAllocator has unexpected size % instead of 8", size_of(type_of(ktxVulkanDeviceInfo.pAllocator)));
        assert(((cast(*void)(*instance.deviceMemoryProperties)) - cast(*void)(*instance)) == 56, "ktxVulkanDeviceInfo.deviceMemoryProperties has unexpected offset % instead of 56", ((cast(*void)(*instance.deviceMemoryProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.deviceMemoryProperties)) == 520, "ktxVulkanDeviceInfo.deviceMemoryProperties has unexpected size % instead of 520", size_of(type_of(ktxVulkanDeviceInfo.deviceMemoryProperties)));
        assert(((cast(*void)(*instance.vkFuncs)) - cast(*void)(*instance)) == 576, "ktxVulkanDeviceInfo.vkFuncs has unexpected offset % instead of 576", ((cast(*void)(*instance.vkFuncs)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxVulkanDeviceInfo.vkFuncs)) == 240, "ktxVulkanDeviceInfo.vkFuncs has unexpected size % instead of 240", size_of(type_of(ktxVulkanDeviceInfo.vkFuncs)));
        assert(size_of(ktxVulkanDeviceInfo) == 816, "ktxVulkanDeviceInfo has size % instead of 816", size_of(ktxVulkanDeviceInfo));
    }
}

