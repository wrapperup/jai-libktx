// Wrapper functions for accessing the vtbl functions.

ktxTexture_Destroy :: (This: *ktxTexture) -> void {
    return This.vtbl.Destroy(This);
}

ktxTexture_GetImageOffset :: (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, pOffset: *ktx_size_t) -> ktx_error_code_e {
    return This.vtbl.GetImageOffset(This, level, layer, faceSlice, pOffset);
}

ktxTexture_GetDataSizeUncompressed :: (This: *ktxTexture) -> ktx_size_t {
    return This.vtbl.GetDataSizeUncompressed(This);
}

ktxTexture_GetImageSize :: (This: *ktxTexture, level: ktx_uint32_t) -> ktx_size_t {
    return This.vtbl.GetImageSize(This, level);
}

ktxTexture_GetLevelSize :: (This: *ktxTexture, level: ktx_uint32_t) -> ktx_size_t {
    return This.vtbl.GetLevelSize(This, level);
}

ktxTexture_IterateLevels :: (This: *ktxTexture, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e {
    return This.vtbl.IterateLevels(This, iterCb, userdata);
}

ktxTexture_IterateLoadLevelFaces :: (This: *ktxTexture, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e {
    return This.vtbl.IterateLoadLevelFaces(This, iterCb, userdata);
}

ktxTexture_LoadImageData :: (This: *ktxTexture, pBuffer: *ktx_uint8_t, bufSize: ktx_size_t) -> ktx_error_code_e {
    return This.vtbl.LoadImageData(This, pBuffer, bufSize);
}

ktxTexture_NeedsTranscoding :: (This: *ktxTexture) -> ktx_bool_t {
    return This.vtbl.NeedsTranscoding(This);
}

ktxTexture_SetImageFromMemory :: (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *ktx_uint8_t, srcSize: ktx_size_t) -> ktx_error_code_e {
    return This.vtbl.SetImageFromMemory(This, level, layer, faceSlice, src, srcSize);
}

ktxTexture_SetImageFromStdioStream :: (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *FILE, srcSize: ktx_size_t) -> ktx_error_code_e {
    return This.vtbl.SetImageFromStdioStream(This, level, layer, faceSlice, src, srcSize);
}

ktxTexture_WriteToStdioStream :: (This: *ktxTexture, dstsstr: *FILE) -> ktx_error_code_e {
    return This.vtbl.WriteToStdioStream(This, dstsstr);
}

ktxTexture_WriteToNamedFile :: (This: *ktxTexture, dstname: *u8) -> ktx_error_code_e {
    return This.vtbl.WriteToNamedFile(This, dstname);
}

ktxTexture_WriteToMemory :: (This: *ktxTexture, bytes: **ktx_uint8_t, size: *ktx_size_t) -> ktx_error_code_e {
    return This.vtbl.WriteToMemory(This, bytes, size);
}

ktxTexture_WriteToStream :: (This: *ktxTexture, dststr: *ktxStream) -> ktx_error_code_e {
    return This.vtbl.WriteToStream(This, dststr);
}

// ktxTexture2 overloads.

ktxTexture_Destroy :: (This: *ktxTexture2) -> void {
    return ktxTexture_Destroy(cast(*ktxTexture, This));
}

ktxTexture_GetImageOffset :: (This: *ktxTexture2, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, pOffset: *ktx_size_t) -> ktx_error_code_e {
    return ktxTexture_GetImageOffset(cast(*ktxTexture, This), level, layer, faceSlice, pOffset);
}

ktxTexture_GetDataSizeUncompressed :: (This: *ktxTexture2) -> ktx_size_t {
    return ktxTexture_GetDataSizeUncompressed(cast(*ktxTexture, This));
}

ktxTexture_GetDataSize :: (This: *ktxTexture2) -> ktx_size_t {
    return ktxTexture_GetDataSize(cast(*ktxTexture, This));
}

ktxTexture_GetData :: (This: *ktxTexture2) -> *ktx_uint8_t {
    return ktxTexture_GetData(cast(*ktxTexture, This));
}

ktxTexture_GetImageSize :: (This: *ktxTexture2, level: ktx_uint32_t) -> ktx_size_t {
    return ktxTexture_GetImageSize(cast(*ktxTexture, This), level);
}

ktxTexture_GetLevelSize :: (This: *ktxTexture2, level: ktx_uint32_t) -> ktx_size_t {
    return ktxTexture_GetLevelSize(cast(*ktxTexture, This), level);
}

ktxTexture_IterateLevels :: (This: *ktxTexture2, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e {
    return ktxTexture_IterateLevels(cast(*ktxTexture, This), iterCb, userdata);
}

ktxTexture_IterateLoadLevelFaces :: (This: *ktxTexture2, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e {
    return ktxTexture_IterateLoadLevelFaces(cast(*ktxTexture, This), iterCb, userdata);
}

ktxTexture_LoadImageData :: (This: *ktxTexture2, pBuffer: *ktx_uint8_t, bufSize: ktx_size_t) -> ktx_error_code_e {
    return ktxTexture_LoadImageData(cast(*ktxTexture, This), pBuffer, bufSize);
}

ktxTexture_NeedsTranscoding :: (This: *ktxTexture2) -> ktx_bool_t {
    return ktxTexture_NeedsTranscoding(cast(*ktxTexture, This));
}

ktxTexture_SetImageFromMemory :: (This: *ktxTexture2, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *ktx_uint8_t, srcSize: ktx_size_t) -> ktx_error_code_e {
    return ktxTexture_SetImageFromMemory(cast(*ktxTexture, This), level, layer, faceSlice, src, srcSize);
}

ktxTexture_SetImageFromStdioStream :: (This: *ktxTexture2, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *FILE, srcSize: ktx_size_t) -> ktx_error_code_e {
    return ktxTexture_SetImageFromStdioStream(cast(*ktxTexture, This), level, layer, faceSlice, src, srcSize);
}

ktxTexture_WriteToStdioStream :: (This: *ktxTexture2, dstsstr: *FILE) -> ktx_error_code_e {
    return ktxTexture_WriteToStdioStream(cast(*ktxTexture, This), dstsstr);
}

ktxTexture_WriteToNamedFile :: (This: *ktxTexture2, dstname: *u8) -> ktx_error_code_e {
    return ktxTexture_WriteToNamedFile(cast(*ktxTexture, This), dstname);
}

ktxTexture_WriteToMemory :: (This: *ktxTexture2, bytes: **ktx_uint8_t, size: *ktx_size_t) -> ktx_error_code_e {
    return ktxTexture_WriteToMemory(cast(*ktxTexture, This), bytes, size);
}

ktxTexture_WriteToStream :: (This: *ktxTexture2, dststr: *ktxStream) -> ktx_error_code_e {
    return ktxTexture_WriteToStream(cast(*ktxTexture, This), dststr);
}
