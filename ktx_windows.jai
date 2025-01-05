//
// This file was auto-generated using the following command:
//
// jai ./generate.jai
//



KTX_ANIMDATA_KEY :: "KTXanimData";

KTX_ORIENTATION_KEY :: "KTXorientation";

KTX_SWIZZLE_KEY :: "KTXswizzle";

KTX_WRITER_KEY :: "KTXwriter";

KTX_WRITER_SCPARAMS_KEY :: "KTXwriterScParams";

KTX_ORIENTATION1_FMT :: "S=%c";

KTX_ORIENTATION2_FMT :: "S=%c,T=%c";

KTX_ORIENTATION3_FMT :: "S=%c,T=%c,R=%c";

KTX_GL_UNPACK_ALIGNMENT :: 4;

KTX_error_code :: ktx_error_code_e;

KTX_ENDIAN_REF :: 0x04030201;
KTX_ENDIAN_REF_REV :: 0x01020304;
KTX_HEADER_SIZE :: 64;

/* Accessors */
_khr_word_e :: enum s32 {
    VENDORID             :: 0;
    DESCRIPTORTYPE       :: 0;
    VERSIONNUMBER        :: 1;
    DESCRIPTORBLOCKSIZE  :: 1;
    MODEL                :: 2;
    PRIMARIES            :: 2;
    TRANSFER             :: 2;
    FLAGS                :: 2;
    TEXELBLOCKDIMENSION0 :: 3;
    TEXELBLOCKDIMENSION1 :: 3;
    TEXELBLOCKDIMENSION2 :: 3;
    TEXELBLOCKDIMENSION3 :: 3;
    BYTESPLANE0          :: 4;
    BYTESPLANE1          :: 4;
    BYTESPLANE2          :: 4;
    BYTESPLANE3          :: 4;
    BYTESPLANE4          :: 5;
    BYTESPLANE5          :: 5;
    BYTESPLANE6          :: 5;
    BYTESPLANE7          :: 5;
    SAMPLESTART          :: 6;
    SAMPLEWORDS          :: 4;

    KHR_DF_WORD_VENDORID             :: VENDORID;
    KHR_DF_WORD_DESCRIPTORTYPE       :: DESCRIPTORTYPE;
    KHR_DF_WORD_VERSIONNUMBER        :: VERSIONNUMBER;
    KHR_DF_WORD_DESCRIPTORBLOCKSIZE  :: DESCRIPTORBLOCKSIZE;
    KHR_DF_WORD_MODEL                :: MODEL;
    KHR_DF_WORD_PRIMARIES            :: PRIMARIES;
    KHR_DF_WORD_TRANSFER             :: TRANSFER;
    KHR_DF_WORD_FLAGS                :: FLAGS;
    KHR_DF_WORD_TEXELBLOCKDIMENSION0 :: TEXELBLOCKDIMENSION0;
    KHR_DF_WORD_TEXELBLOCKDIMENSION1 :: TEXELBLOCKDIMENSION1;
    KHR_DF_WORD_TEXELBLOCKDIMENSION2 :: TEXELBLOCKDIMENSION2;
    KHR_DF_WORD_TEXELBLOCKDIMENSION3 :: TEXELBLOCKDIMENSION3;
    KHR_DF_WORD_BYTESPLANE0          :: BYTESPLANE0;
    KHR_DF_WORD_BYTESPLANE1          :: BYTESPLANE1;
    KHR_DF_WORD_BYTESPLANE2          :: BYTESPLANE2;
    KHR_DF_WORD_BYTESPLANE3          :: BYTESPLANE3;
    KHR_DF_WORD_BYTESPLANE4          :: BYTESPLANE4;
    KHR_DF_WORD_BYTESPLANE5          :: BYTESPLANE5;
    KHR_DF_WORD_BYTESPLANE6          :: BYTESPLANE6;
    KHR_DF_WORD_BYTESPLANE7          :: BYTESPLANE7;
    KHR_DF_WORD_SAMPLESTART          :: SAMPLESTART;
    KHR_DF_WORD_SAMPLEWORDS          :: SAMPLEWORDS;
}

/* Accessors */
khr_df_word_e :: _khr_word_e;

_khr_df_shift_e :: enum s32 {
    VENDORID             :: 0;
    DESCRIPTORTYPE       :: 17;
    VERSIONNUMBER        :: 0;
    DESCRIPTORBLOCKSIZE  :: 16;
    MODEL                :: 0;
    PRIMARIES            :: 8;
    TRANSFER             :: 16;
    FLAGS                :: 24;
    TEXELBLOCKDIMENSION0 :: 0;
    TEXELBLOCKDIMENSION1 :: 8;
    TEXELBLOCKDIMENSION2 :: 16;
    TEXELBLOCKDIMENSION3 :: 24;
    BYTESPLANE0          :: 0;
    BYTESPLANE1          :: 8;
    BYTESPLANE2          :: 16;
    BYTESPLANE3          :: 24;
    BYTESPLANE4          :: 0;
    BYTESPLANE5          :: 8;
    BYTESPLANE6          :: 16;
    BYTESPLANE7          :: 24;

    KHR_DF_SHIFT_VENDORID             :: VENDORID;
    KHR_DF_SHIFT_DESCRIPTORTYPE       :: DESCRIPTORTYPE;
    KHR_DF_SHIFT_VERSIONNUMBER        :: VERSIONNUMBER;
    KHR_DF_SHIFT_DESCRIPTORBLOCKSIZE  :: DESCRIPTORBLOCKSIZE;
    KHR_DF_SHIFT_MODEL                :: MODEL;
    KHR_DF_SHIFT_PRIMARIES            :: PRIMARIES;
    KHR_DF_SHIFT_TRANSFER             :: TRANSFER;
    KHR_DF_SHIFT_FLAGS                :: FLAGS;
    KHR_DF_SHIFT_TEXELBLOCKDIMENSION0 :: TEXELBLOCKDIMENSION0;
    KHR_DF_SHIFT_TEXELBLOCKDIMENSION1 :: TEXELBLOCKDIMENSION1;
    KHR_DF_SHIFT_TEXELBLOCKDIMENSION2 :: TEXELBLOCKDIMENSION2;
    KHR_DF_SHIFT_TEXELBLOCKDIMENSION3 :: TEXELBLOCKDIMENSION3;
    KHR_DF_SHIFT_BYTESPLANE0          :: BYTESPLANE0;
    KHR_DF_SHIFT_BYTESPLANE1          :: BYTESPLANE1;
    KHR_DF_SHIFT_BYTESPLANE2          :: BYTESPLANE2;
    KHR_DF_SHIFT_BYTESPLANE3          :: BYTESPLANE3;
    KHR_DF_SHIFT_BYTESPLANE4          :: BYTESPLANE4;
    KHR_DF_SHIFT_BYTESPLANE5          :: BYTESPLANE5;
    KHR_DF_SHIFT_BYTESPLANE6          :: BYTESPLANE6;
    KHR_DF_SHIFT_BYTESPLANE7          :: BYTESPLANE7;
}

khr_df_shift_e :: _khr_df_shift_e;

_khr_df_mask_e :: enum s32 {
    VENDORID             :: 131071;
    DESCRIPTORTYPE       :: 32767;
    VERSIONNUMBER        :: 65535;
    DESCRIPTORBLOCKSIZE  :: 65535;
    MODEL                :: 255;
    PRIMARIES            :: 255;
    TRANSFER             :: 255;
    FLAGS                :: 255;
    TEXELBLOCKDIMENSION0 :: 255;
    TEXELBLOCKDIMENSION1 :: 255;
    TEXELBLOCKDIMENSION2 :: 255;
    TEXELBLOCKDIMENSION3 :: 255;
    BYTESPLANE0          :: 255;
    BYTESPLANE1          :: 255;
    BYTESPLANE2          :: 255;
    BYTESPLANE3          :: 255;
    BYTESPLANE4          :: 255;
    BYTESPLANE5          :: 255;
    BYTESPLANE6          :: 255;
    BYTESPLANE7          :: 255;

    KHR_DF_MASK_VENDORID             :: VENDORID;
    KHR_DF_MASK_DESCRIPTORTYPE       :: DESCRIPTORTYPE;
    KHR_DF_MASK_VERSIONNUMBER        :: VERSIONNUMBER;
    KHR_DF_MASK_DESCRIPTORBLOCKSIZE  :: DESCRIPTORBLOCKSIZE;
    KHR_DF_MASK_MODEL                :: MODEL;
    KHR_DF_MASK_PRIMARIES            :: PRIMARIES;
    KHR_DF_MASK_TRANSFER             :: TRANSFER;
    KHR_DF_MASK_FLAGS                :: FLAGS;
    KHR_DF_MASK_TEXELBLOCKDIMENSION0 :: TEXELBLOCKDIMENSION0;
    KHR_DF_MASK_TEXELBLOCKDIMENSION1 :: TEXELBLOCKDIMENSION1;
    KHR_DF_MASK_TEXELBLOCKDIMENSION2 :: TEXELBLOCKDIMENSION2;
    KHR_DF_MASK_TEXELBLOCKDIMENSION3 :: TEXELBLOCKDIMENSION3;
    KHR_DF_MASK_BYTESPLANE0          :: BYTESPLANE0;
    KHR_DF_MASK_BYTESPLANE1          :: BYTESPLANE1;
    KHR_DF_MASK_BYTESPLANE2          :: BYTESPLANE2;
    KHR_DF_MASK_BYTESPLANE3          :: BYTESPLANE3;
    KHR_DF_MASK_BYTESPLANE4          :: BYTESPLANE4;
    KHR_DF_MASK_BYTESPLANE5          :: BYTESPLANE5;
    KHR_DF_MASK_BYTESPLANE6          :: BYTESPLANE6;
    KHR_DF_MASK_BYTESPLANE7          :: BYTESPLANE7;
}

khr_df_mask_e :: _khr_df_mask_e;

/* Offsets relative to the start of a sample */
_khr_df_sampleword_e :: enum s32 {
    BITOFFSET          :: 0;
    BITLENGTH          :: 0;
    CHANNELID          :: 0;
    QUALIFIERS         :: 0;
    SAMPLEPOSITION0    :: 1;
    SAMPLEPOSITION1    :: 1;
    SAMPLEPOSITION2    :: 1;
    SAMPLEPOSITION3    :: 1;
    SAMPLEPOSITION_ALL :: 1;
    SAMPLELOWER        :: 2;
    SAMPLEUPPER        :: 3;

    KHR_DF_SAMPLEWORD_BITOFFSET          :: BITOFFSET;
    KHR_DF_SAMPLEWORD_BITLENGTH          :: BITLENGTH;
    KHR_DF_SAMPLEWORD_CHANNELID          :: CHANNELID;
    KHR_DF_SAMPLEWORD_QUALIFIERS         :: QUALIFIERS;
    KHR_DF_SAMPLEWORD_SAMPLEPOSITION0    :: SAMPLEPOSITION0;
    KHR_DF_SAMPLEWORD_SAMPLEPOSITION1    :: SAMPLEPOSITION1;
    KHR_DF_SAMPLEWORD_SAMPLEPOSITION2    :: SAMPLEPOSITION2;
    KHR_DF_SAMPLEWORD_SAMPLEPOSITION3    :: SAMPLEPOSITION3;
    KHR_DF_SAMPLEWORD_SAMPLEPOSITION_ALL :: SAMPLEPOSITION_ALL;
    KHR_DF_SAMPLEWORD_SAMPLELOWER        :: SAMPLELOWER;
    KHR_DF_SAMPLEWORD_SAMPLEUPPER        :: SAMPLEUPPER;
}

/* Offsets relative to the start of a sample */
khr_df_sampleword_e :: _khr_df_sampleword_e;

_khr_df_sampleshift_e :: enum s32 {
    BITOFFSET          :: 0;
    BITLENGTH          :: 16;
    CHANNELID          :: 24;

    QUALIFIERS         :: 24;
    SAMPLEPOSITION0    :: 0;
    SAMPLEPOSITION1    :: 8;
    SAMPLEPOSITION2    :: 16;
    SAMPLEPOSITION3    :: 24;
    SAMPLEPOSITION_ALL :: 0;
    SAMPLELOWER        :: 0;
    SAMPLEUPPER        :: 0;

    KHR_DF_SAMPLESHIFT_BITOFFSET          :: BITOFFSET;
    KHR_DF_SAMPLESHIFT_BITLENGTH          :: BITLENGTH;
    KHR_DF_SAMPLESHIFT_CHANNELID          :: CHANNELID;

    KHR_DF_SAMPLESHIFT_QUALIFIERS         :: QUALIFIERS;
    KHR_DF_SAMPLESHIFT_SAMPLEPOSITION0    :: SAMPLEPOSITION0;
    KHR_DF_SAMPLESHIFT_SAMPLEPOSITION1    :: SAMPLEPOSITION1;
    KHR_DF_SAMPLESHIFT_SAMPLEPOSITION2    :: SAMPLEPOSITION2;
    KHR_DF_SAMPLESHIFT_SAMPLEPOSITION3    :: SAMPLEPOSITION3;
    KHR_DF_SAMPLESHIFT_SAMPLEPOSITION_ALL :: SAMPLEPOSITION_ALL;
    KHR_DF_SAMPLESHIFT_SAMPLELOWER        :: SAMPLELOWER;
    KHR_DF_SAMPLESHIFT_SAMPLEUPPER        :: SAMPLEUPPER;
}

khr_df_sampleshift_e :: _khr_df_sampleshift_e;

_khr_df_samplemask_e :: enum s32 {
    BITOFFSET          :: 65535;
    BITLENGTH          :: 255;
    CHANNELID          :: 15;

    QUALIFIERS         :: 240;
    SAMPLEPOSITION0    :: 255;
    SAMPLEPOSITION1    :: 255;
    SAMPLEPOSITION2    :: 255;
    SAMPLEPOSITION3    :: 255;

    SAMPLEPOSITION_ALL :: -1;
    SAMPLELOWER        :: -1;
    SAMPLEUPPER        :: -1;

    KHR_DF_SAMPLEMASK_BITOFFSET          :: BITOFFSET;
    KHR_DF_SAMPLEMASK_BITLENGTH          :: BITLENGTH;
    KHR_DF_SAMPLEMASK_CHANNELID          :: CHANNELID;

    KHR_DF_SAMPLEMASK_QUALIFIERS         :: QUALIFIERS;
    KHR_DF_SAMPLEMASK_SAMPLEPOSITION0    :: SAMPLEPOSITION0;
    KHR_DF_SAMPLEMASK_SAMPLEPOSITION1    :: SAMPLEPOSITION1;
    KHR_DF_SAMPLEMASK_SAMPLEPOSITION2    :: SAMPLEPOSITION2;
    KHR_DF_SAMPLEMASK_SAMPLEPOSITION3    :: SAMPLEPOSITION3;

    KHR_DF_SAMPLEMASK_SAMPLEPOSITION_ALL :: SAMPLEPOSITION_ALL;
    KHR_DF_SAMPLEMASK_SAMPLELOWER        :: SAMPLELOWER;
    KHR_DF_SAMPLEMASK_SAMPLEUPPER        :: SAMPLEUPPER;
}

khr_df_samplemask_e :: _khr_df_samplemask_e;

/* Vendor ids */
_khr_df_vendorid_e :: enum s32 {
    KHRONOS :: 0;
    MAX     :: 131071;

    KHR_DF_VENDORID_KHRONOS :: KHRONOS;
    KHR_DF_VENDORID_MAX     :: MAX;
}

/* Vendor ids */
khr_df_vendorid_e :: _khr_df_vendorid_e;

/* Descriptor types */
_khr_df_khr_descriptortype_e :: enum s32 {
    BASICFORMAT           :: 0;

    ADDITIONAL_PLANES     :: 24577;

    ADDITIONAL_DIMENSIONS :: 24578;

    NEEDED_FOR_WRITE_BIT  :: 8192;

    NEEDED_FOR_DECODE_BIT :: 16384;
    MAX                   :: 32767;

    KHR_DF_KHR_DESCRIPTORTYPE_BASICFORMAT           :: BASICFORMAT;

    KHR_DF_KHR_DESCRIPTORTYPE_ADDITIONAL_PLANES     :: ADDITIONAL_PLANES;

    KHR_DF_KHR_DESCRIPTORTYPE_ADDITIONAL_DIMENSIONS :: ADDITIONAL_DIMENSIONS;

    KHR_DF_KHR_DESCRIPTORTYPE_NEEDED_FOR_WRITE_BIT  :: NEEDED_FOR_WRITE_BIT;

    KHR_DF_KHR_DESCRIPTORTYPE_NEEDED_FOR_DECODE_BIT :: NEEDED_FOR_DECODE_BIT;
    KHR_DF_KHR_DESCRIPTORTYPE_MAX                   :: MAX;
}

/* Descriptor types */
khr_df_khr_descriptortype_e :: _khr_df_khr_descriptortype_e;

/* Descriptor block version */
_khr_df_versionnumber_e :: enum s32 {
    _1_0   :: 0;
    _1_1   :: 0;
    _1_2   :: 1;
    _1_3   :: 2;
    LATEST :: 2;
    MAX    :: 65535;

    KHR_DF_VERSIONNUMBER_1_0    :: _1_0;
    KHR_DF_VERSIONNUMBER_1_1    :: _1_1;
    KHR_DF_VERSIONNUMBER_1_2    :: _1_2;
    KHR_DF_VERSIONNUMBER_1_3    :: _1_3;
    KHR_DF_VERSIONNUMBER_LATEST :: LATEST;
    KHR_DF_VERSIONNUMBER_MAX    :: MAX;
}

/* Descriptor block version */
khr_df_versionnumber_e :: _khr_df_versionnumber_e;

/** @~English
@brief Model in which the color coordinate space is defined.
There is no requirement that a color format use all the
channel types that are defined in the color model. */
_khr_df_model_e :: enum s32 {
    UNSPECIFIED :: 0;

    RGBSDA      :: 1;

    YUVSDA      :: 2;

    YIQSDA      :: 3;

    LABSDA      :: 4;

    CMYKA       :: 5;

    XYZW        :: 6;

    HSVA_ANG    :: 7;

    HSLA_ANG    :: 8;

    HSVA_HEX    :: 9;

    HSLA_HEX    :: 10;

    YCGCOA      :: 11;

    YCCBCCRC    :: 12;

    ICTCP       :: 13;

    CIEXYZ      :: 14;

    CIEXYY      :: 15;

    DXT1A       :: 128;
    BC1A        :: 128;

    DXT2        :: 129;
    DXT3        :: 129;
    BC2         :: 129;

    DXT4        :: 130;
    DXT5        :: 130;
    BC3         :: 130;

    BC4         :: 131;

    BC5         :: 132;

    BC6H        :: 133;

    BC7         :: 134;

    ETC1        :: 160;

    ETC2        :: 161;

    ASTC        :: 162;

    ETC1S       :: 163;

    PVRTC       :: 164;

    PVRTC2      :: 165;

    UASTC       :: 166;

    MAX         :: 255;

    KHR_DF_MODEL_UNSPECIFIED :: UNSPECIFIED;

    KHR_DF_MODEL_RGBSDA      :: RGBSDA;

    KHR_DF_MODEL_YUVSDA      :: YUVSDA;

    KHR_DF_MODEL_YIQSDA      :: YIQSDA;

    KHR_DF_MODEL_LABSDA      :: LABSDA;

    KHR_DF_MODEL_CMYKA       :: CMYKA;

    KHR_DF_MODEL_XYZW        :: XYZW;

    KHR_DF_MODEL_HSVA_ANG    :: HSVA_ANG;

    KHR_DF_MODEL_HSLA_ANG    :: HSLA_ANG;

    KHR_DF_MODEL_HSVA_HEX    :: HSVA_HEX;

    KHR_DF_MODEL_HSLA_HEX    :: HSLA_HEX;

    KHR_DF_MODEL_YCGCOA      :: YCGCOA;

    KHR_DF_MODEL_YCCBCCRC    :: YCCBCCRC;

    KHR_DF_MODEL_ICTCP       :: ICTCP;

    KHR_DF_MODEL_CIEXYZ      :: CIEXYZ;

    KHR_DF_MODEL_CIEXYY      :: CIEXYY;

    KHR_DF_MODEL_DXT1A       :: DXT1A;
    KHR_DF_MODEL_BC1A        :: BC1A;

    KHR_DF_MODEL_DXT2        :: DXT2;
    KHR_DF_MODEL_DXT3        :: DXT3;
    KHR_DF_MODEL_BC2         :: BC2;

    KHR_DF_MODEL_DXT4        :: DXT4;
    KHR_DF_MODEL_DXT5        :: DXT5;
    KHR_DF_MODEL_BC3         :: BC3;

    KHR_DF_MODEL_BC4         :: BC4;

    KHR_DF_MODEL_BC5         :: BC5;

    KHR_DF_MODEL_BC6H        :: BC6H;

    KHR_DF_MODEL_BC7         :: BC7;

    KHR_DF_MODEL_ETC1        :: ETC1;

    KHR_DF_MODEL_ETC2        :: ETC2;

    KHR_DF_MODEL_ASTC        :: ASTC;

    KHR_DF_MODEL_ETC1S       :: ETC1S;

    KHR_DF_MODEL_PVRTC       :: PVRTC;

    KHR_DF_MODEL_PVRTC2      :: PVRTC2;

    KHR_DF_MODEL_UASTC       :: UASTC;

    KHR_DF_MODEL_MAX         :: MAX;
}

/** @~English
@brief Model in which the color coordinate space is defined.
There is no requirement that a color format use all the
channel types that are defined in the color model. */
khr_df_model_e :: _khr_df_model_e;

/* Definition of channel names for each color model */
_khr_df_model_channels_e :: enum s32 {
    UNSPECIFIED_0       :: 0;
    UNSPECIFIED_1       :: 1;
    UNSPECIFIED_2       :: 2;
    UNSPECIFIED_3       :: 3;
    UNSPECIFIED_4       :: 4;
    UNSPECIFIED_5       :: 5;
    UNSPECIFIED_6       :: 6;
    UNSPECIFIED_7       :: 7;
    UNSPECIFIED_8       :: 8;
    UNSPECIFIED_9       :: 9;
    UNSPECIFIED_10      :: 10;
    UNSPECIFIED_11      :: 11;
    UNSPECIFIED_12      :: 12;
    UNSPECIFIED_13      :: 13;
    UNSPECIFIED_14      :: 14;
    UNSPECIFIED_15      :: 15;

    RGBSDA_RED          :: 0;
    RGBSDA_R            :: 0;
    RGBSDA_GREEN        :: 1;
    RGBSDA_G            :: 1;
    RGBSDA_BLUE         :: 2;
    RGBSDA_B            :: 2;
    RGBSDA_STENCIL      :: 13;
    RGBSDA_S            :: 13;
    RGBSDA_DEPTH        :: 14;
    RGBSDA_D            :: 14;
    RGBSDA_ALPHA        :: 15;
    RGBSDA_A            :: 15;

    YUVSDA_Y            :: 0;
    YUVSDA_CB           :: 1;
    YUVSDA_U            :: 1;
    YUVSDA_CR           :: 2;
    YUVSDA_V            :: 2;
    YUVSDA_STENCIL      :: 13;
    YUVSDA_S            :: 13;
    YUVSDA_DEPTH        :: 14;
    YUVSDA_D            :: 14;
    YUVSDA_ALPHA        :: 15;
    YUVSDA_A            :: 15;

    YIQSDA_Y            :: 0;
    YIQSDA_I            :: 1;
    YIQSDA_Q            :: 2;
    YIQSDA_STENCIL      :: 13;
    YIQSDA_S            :: 13;
    YIQSDA_DEPTH        :: 14;
    YIQSDA_D            :: 14;
    YIQSDA_ALPHA        :: 15;
    YIQSDA_A            :: 15;

    LABSDA_L            :: 0;
    LABSDA_A            :: 1;
    LABSDA_B            :: 2;
    LABSDA_STENCIL      :: 13;
    LABSDA_S            :: 13;
    LABSDA_DEPTH        :: 14;
    LABSDA_D            :: 14;
    LABSDA_ALPHA        :: 15;

    CMYKSDA_CYAN        :: 0;
    CMYKSDA_C           :: 0;
    CMYKSDA_MAGENTA     :: 1;
    CMYKSDA_M           :: 1;
    CMYKSDA_YELLOW      :: 2;
    CMYKSDA_Y           :: 2;
    CMYKSDA_KEY         :: 3;
    CMYKSDA_BLACK       :: 3;
    CMYKSDA_K           :: 3;
    CMYKSDA_ALPHA       :: 15;
    CMYKSDA_A           :: 15;

    XYZW_X              :: 0;
    XYZW_Y              :: 1;
    XYZW_Z              :: 2;
    XYZW_W              :: 3;

    HSVA_ANG_VALUE      :: 0;
    HSVA_ANG_V          :: 0;
    HSVA_ANG_SATURATION :: 1;
    HSVA_ANG_S          :: 1;
    HSVA_ANG_HUE        :: 2;
    HSVA_ANG_H          :: 2;
    HSVA_ANG_ALPHA      :: 15;
    HSVA_ANG_A          :: 15;

    HSLA_ANG_LIGHTNESS  :: 0;
    HSLA_ANG_L          :: 0;
    HSLA_ANG_SATURATION :: 1;
    HSLA_ANG_S          :: 1;
    HSLA_ANG_HUE        :: 2;
    HSLA_ANG_H          :: 2;
    HSLA_ANG_ALPHA      :: 15;
    HSLA_ANG_A          :: 15;

    HSVA_HEX_VALUE      :: 0;
    HSVA_HEX_V          :: 0;
    HSVA_HEX_SATURATION :: 1;
    HSVA_HEX_S          :: 1;
    HSVA_HEX_HUE        :: 2;
    HSVA_HEX_H          :: 2;
    HSVA_HEX_ALPHA      :: 15;
    HSVA_HEX_A          :: 15;

    HSLA_HEX_LIGHTNESS  :: 0;
    HSLA_HEX_L          :: 0;
    HSLA_HEX_SATURATION :: 1;
    HSLA_HEX_S          :: 1;
    HSLA_HEX_HUE        :: 2;
    HSLA_HEX_H          :: 2;
    HSLA_HEX_ALPHA      :: 15;
    HSLA_HEX_A          :: 15;

    YCGCOA_Y            :: 0;
    YCGCOA_CG           :: 1;
    YCGCOA_CO           :: 2;
    YCGCOA_ALPHA        :: 15;
    YCGCOA_A            :: 15;

    CIEXYZ_X            :: 0;
    CIEXYZ_Y            :: 1;
    CIEXYZ_Z            :: 2;

    CIEXYY_X            :: 0;
    CIEXYY_YCHROMA      :: 1;
    CIEXYY_YLUMA        :: 2;

    DXT1A_COLOR         :: 0;
    BC1A_COLOR          :: 0;
    DXT1A_ALPHAPRESENT  :: 1;
    DXT1A_ALPHA         :: 1;
    BC1A_ALPHAPRESENT   :: 1;
    BC1A_ALPHA          :: 1;

    DXT2_COLOR          :: 0;
    DXT3_COLOR          :: 0;
    BC2_COLOR           :: 0;
    DXT2_ALPHA          :: 15;
    DXT3_ALPHA          :: 15;
    BC2_ALPHA           :: 15;

    DXT4_COLOR          :: 0;
    DXT5_COLOR          :: 0;
    BC3_COLOR           :: 0;
    DXT4_ALPHA          :: 15;
    DXT5_ALPHA          :: 15;
    BC3_ALPHA           :: 15;

    BC4_DATA            :: 0;

    BC5_RED             :: 0;
    BC5_R               :: 0;
    BC5_GREEN           :: 1;
    BC5_G               :: 1;

    BC6H_COLOR          :: 0;
    BC6H_DATA           :: 0;

    BC7_DATA            :: 0;
    BC7_COLOR           :: 0;

    ETC1_DATA           :: 0;
    ETC1_COLOR          :: 0;

    ETC2_RED            :: 0;
    ETC2_R              :: 0;
    ETC2_GREEN          :: 1;
    ETC2_G              :: 1;
    ETC2_COLOR          :: 2;
    ETC2_ALPHA          :: 15;
    ETC2_A              :: 15;

    ASTC_DATA           :: 0;

    ETC1S_RGB           :: 0;
    ETC1S_RRR           :: 3;
    ETC1S_GGG           :: 4;
    ETC1S_AAA           :: 15;

    PVRTC_DATA          :: 0;
    PVRTC_COLOR         :: 0;

    PVRTC2_DATA         :: 0;
    PVRTC2_COLOR        :: 0;

    UASTC_DATA          :: 0;
    UASTC_RGB           :: 0;
    UASTC_RGBA          :: 3;
    UASTC_RRR           :: 4;
    UASTC_RRRG          :: 5;
    UASTC_RG            :: 6;

    COMMON_LUMA         :: 0;
    COMMON_L            :: 0;
    COMMON_STENCIL      :: 13;
    COMMON_S            :: 13;
    COMMON_DEPTH        :: 14;
    COMMON_D            :: 14;
    COMMON_ALPHA        :: 15;
    COMMON_A            :: 15;

    KHR_DF_CHANNEL_UNSPECIFIED_0       :: UNSPECIFIED_0;
    KHR_DF_CHANNEL_UNSPECIFIED_1       :: UNSPECIFIED_1;
    KHR_DF_CHANNEL_UNSPECIFIED_2       :: UNSPECIFIED_2;
    KHR_DF_CHANNEL_UNSPECIFIED_3       :: UNSPECIFIED_3;
    KHR_DF_CHANNEL_UNSPECIFIED_4       :: UNSPECIFIED_4;
    KHR_DF_CHANNEL_UNSPECIFIED_5       :: UNSPECIFIED_5;
    KHR_DF_CHANNEL_UNSPECIFIED_6       :: UNSPECIFIED_6;
    KHR_DF_CHANNEL_UNSPECIFIED_7       :: UNSPECIFIED_7;
    KHR_DF_CHANNEL_UNSPECIFIED_8       :: UNSPECIFIED_8;
    KHR_DF_CHANNEL_UNSPECIFIED_9       :: UNSPECIFIED_9;
    KHR_DF_CHANNEL_UNSPECIFIED_10      :: UNSPECIFIED_10;
    KHR_DF_CHANNEL_UNSPECIFIED_11      :: UNSPECIFIED_11;
    KHR_DF_CHANNEL_UNSPECIFIED_12      :: UNSPECIFIED_12;
    KHR_DF_CHANNEL_UNSPECIFIED_13      :: UNSPECIFIED_13;
    KHR_DF_CHANNEL_UNSPECIFIED_14      :: UNSPECIFIED_14;
    KHR_DF_CHANNEL_UNSPECIFIED_15      :: UNSPECIFIED_15;

    KHR_DF_CHANNEL_RGBSDA_RED          :: RGBSDA_RED;
    KHR_DF_CHANNEL_RGBSDA_R            :: RGBSDA_R;
    KHR_DF_CHANNEL_RGBSDA_GREEN        :: RGBSDA_GREEN;
    KHR_DF_CHANNEL_RGBSDA_G            :: RGBSDA_G;
    KHR_DF_CHANNEL_RGBSDA_BLUE         :: RGBSDA_BLUE;
    KHR_DF_CHANNEL_RGBSDA_B            :: RGBSDA_B;
    KHR_DF_CHANNEL_RGBSDA_STENCIL      :: RGBSDA_STENCIL;
    KHR_DF_CHANNEL_RGBSDA_S            :: RGBSDA_S;
    KHR_DF_CHANNEL_RGBSDA_DEPTH        :: RGBSDA_DEPTH;
    KHR_DF_CHANNEL_RGBSDA_D            :: RGBSDA_D;
    KHR_DF_CHANNEL_RGBSDA_ALPHA        :: RGBSDA_ALPHA;
    KHR_DF_CHANNEL_RGBSDA_A            :: RGBSDA_A;

    KHR_DF_CHANNEL_YUVSDA_Y            :: YUVSDA_Y;
    KHR_DF_CHANNEL_YUVSDA_CB           :: YUVSDA_CB;
    KHR_DF_CHANNEL_YUVSDA_U            :: YUVSDA_U;
    KHR_DF_CHANNEL_YUVSDA_CR           :: YUVSDA_CR;
    KHR_DF_CHANNEL_YUVSDA_V            :: YUVSDA_V;
    KHR_DF_CHANNEL_YUVSDA_STENCIL      :: YUVSDA_STENCIL;
    KHR_DF_CHANNEL_YUVSDA_S            :: YUVSDA_S;
    KHR_DF_CHANNEL_YUVSDA_DEPTH        :: YUVSDA_DEPTH;
    KHR_DF_CHANNEL_YUVSDA_D            :: YUVSDA_D;
    KHR_DF_CHANNEL_YUVSDA_ALPHA        :: YUVSDA_ALPHA;
    KHR_DF_CHANNEL_YUVSDA_A            :: YUVSDA_A;

    KHR_DF_CHANNEL_YIQSDA_Y            :: YIQSDA_Y;
    KHR_DF_CHANNEL_YIQSDA_I            :: YIQSDA_I;
    KHR_DF_CHANNEL_YIQSDA_Q            :: YIQSDA_Q;
    KHR_DF_CHANNEL_YIQSDA_STENCIL      :: YIQSDA_STENCIL;
    KHR_DF_CHANNEL_YIQSDA_S            :: YIQSDA_S;
    KHR_DF_CHANNEL_YIQSDA_DEPTH        :: YIQSDA_DEPTH;
    KHR_DF_CHANNEL_YIQSDA_D            :: YIQSDA_D;
    KHR_DF_CHANNEL_YIQSDA_ALPHA        :: YIQSDA_ALPHA;
    KHR_DF_CHANNEL_YIQSDA_A            :: YIQSDA_A;

    KHR_DF_CHANNEL_LABSDA_L            :: LABSDA_L;
    KHR_DF_CHANNEL_LABSDA_A            :: LABSDA_A;
    KHR_DF_CHANNEL_LABSDA_B            :: LABSDA_B;
    KHR_DF_CHANNEL_LABSDA_STENCIL      :: LABSDA_STENCIL;
    KHR_DF_CHANNEL_LABSDA_S            :: LABSDA_S;
    KHR_DF_CHANNEL_LABSDA_DEPTH        :: LABSDA_DEPTH;
    KHR_DF_CHANNEL_LABSDA_D            :: LABSDA_D;
    KHR_DF_CHANNEL_LABSDA_ALPHA        :: LABSDA_ALPHA;

    KHR_DF_CHANNEL_CMYKSDA_CYAN        :: CMYKSDA_CYAN;
    KHR_DF_CHANNEL_CMYKSDA_C           :: CMYKSDA_C;
    KHR_DF_CHANNEL_CMYKSDA_MAGENTA     :: CMYKSDA_MAGENTA;
    KHR_DF_CHANNEL_CMYKSDA_M           :: CMYKSDA_M;
    KHR_DF_CHANNEL_CMYKSDA_YELLOW      :: CMYKSDA_YELLOW;
    KHR_DF_CHANNEL_CMYKSDA_Y           :: CMYKSDA_Y;
    KHR_DF_CHANNEL_CMYKSDA_KEY         :: CMYKSDA_KEY;
    KHR_DF_CHANNEL_CMYKSDA_BLACK       :: CMYKSDA_BLACK;
    KHR_DF_CHANNEL_CMYKSDA_K           :: CMYKSDA_K;
    KHR_DF_CHANNEL_CMYKSDA_ALPHA       :: CMYKSDA_ALPHA;
    KHR_DF_CHANNEL_CMYKSDA_A           :: CMYKSDA_A;

    KHR_DF_CHANNEL_XYZW_X              :: XYZW_X;
    KHR_DF_CHANNEL_XYZW_Y              :: XYZW_Y;
    KHR_DF_CHANNEL_XYZW_Z              :: XYZW_Z;
    KHR_DF_CHANNEL_XYZW_W              :: XYZW_W;

    KHR_DF_CHANNEL_HSVA_ANG_VALUE      :: HSVA_ANG_VALUE;
    KHR_DF_CHANNEL_HSVA_ANG_V          :: HSVA_ANG_V;
    KHR_DF_CHANNEL_HSVA_ANG_SATURATION :: HSVA_ANG_SATURATION;
    KHR_DF_CHANNEL_HSVA_ANG_S          :: HSVA_ANG_S;
    KHR_DF_CHANNEL_HSVA_ANG_HUE        :: HSVA_ANG_HUE;
    KHR_DF_CHANNEL_HSVA_ANG_H          :: HSVA_ANG_H;
    KHR_DF_CHANNEL_HSVA_ANG_ALPHA      :: HSVA_ANG_ALPHA;
    KHR_DF_CHANNEL_HSVA_ANG_A          :: HSVA_ANG_A;

    KHR_DF_CHANNEL_HSLA_ANG_LIGHTNESS  :: HSLA_ANG_LIGHTNESS;
    KHR_DF_CHANNEL_HSLA_ANG_L          :: HSLA_ANG_L;
    KHR_DF_CHANNEL_HSLA_ANG_SATURATION :: HSLA_ANG_SATURATION;
    KHR_DF_CHANNEL_HSLA_ANG_S          :: HSLA_ANG_S;
    KHR_DF_CHANNEL_HSLA_ANG_HUE        :: HSLA_ANG_HUE;
    KHR_DF_CHANNEL_HSLA_ANG_H          :: HSLA_ANG_H;
    KHR_DF_CHANNEL_HSLA_ANG_ALPHA      :: HSLA_ANG_ALPHA;
    KHR_DF_CHANNEL_HSLA_ANG_A          :: HSLA_ANG_A;

    KHR_DF_CHANNEL_HSVA_HEX_VALUE      :: HSVA_HEX_VALUE;
    KHR_DF_CHANNEL_HSVA_HEX_V          :: HSVA_HEX_V;
    KHR_DF_CHANNEL_HSVA_HEX_SATURATION :: HSVA_HEX_SATURATION;
    KHR_DF_CHANNEL_HSVA_HEX_S          :: HSVA_HEX_S;
    KHR_DF_CHANNEL_HSVA_HEX_HUE        :: HSVA_HEX_HUE;
    KHR_DF_CHANNEL_HSVA_HEX_H          :: HSVA_HEX_H;
    KHR_DF_CHANNEL_HSVA_HEX_ALPHA      :: HSVA_HEX_ALPHA;
    KHR_DF_CHANNEL_HSVA_HEX_A          :: HSVA_HEX_A;

    KHR_DF_CHANNEL_HSLA_HEX_LIGHTNESS  :: HSLA_HEX_LIGHTNESS;
    KHR_DF_CHANNEL_HSLA_HEX_L          :: HSLA_HEX_L;
    KHR_DF_CHANNEL_HSLA_HEX_SATURATION :: HSLA_HEX_SATURATION;
    KHR_DF_CHANNEL_HSLA_HEX_S          :: HSLA_HEX_S;
    KHR_DF_CHANNEL_HSLA_HEX_HUE        :: HSLA_HEX_HUE;
    KHR_DF_CHANNEL_HSLA_HEX_H          :: HSLA_HEX_H;
    KHR_DF_CHANNEL_HSLA_HEX_ALPHA      :: HSLA_HEX_ALPHA;
    KHR_DF_CHANNEL_HSLA_HEX_A          :: HSLA_HEX_A;

    KHR_DF_CHANNEL_YCGCOA_Y            :: YCGCOA_Y;
    KHR_DF_CHANNEL_YCGCOA_CG           :: YCGCOA_CG;
    KHR_DF_CHANNEL_YCGCOA_CO           :: YCGCOA_CO;
    KHR_DF_CHANNEL_YCGCOA_ALPHA        :: YCGCOA_ALPHA;
    KHR_DF_CHANNEL_YCGCOA_A            :: YCGCOA_A;

    KHR_DF_CHANNEL_CIEXYZ_X            :: CIEXYZ_X;
    KHR_DF_CHANNEL_CIEXYZ_Y            :: CIEXYZ_Y;
    KHR_DF_CHANNEL_CIEXYZ_Z            :: CIEXYZ_Z;

    KHR_DF_CHANNEL_CIEXYY_X            :: CIEXYY_X;
    KHR_DF_CHANNEL_CIEXYY_YCHROMA      :: CIEXYY_YCHROMA;
    KHR_DF_CHANNEL_CIEXYY_YLUMA        :: CIEXYY_YLUMA;

    KHR_DF_CHANNEL_DXT1A_COLOR         :: DXT1A_COLOR;
    KHR_DF_CHANNEL_BC1A_COLOR          :: BC1A_COLOR;
    KHR_DF_CHANNEL_DXT1A_ALPHAPRESENT  :: DXT1A_ALPHAPRESENT;
    KHR_DF_CHANNEL_DXT1A_ALPHA         :: DXT1A_ALPHA;
    KHR_DF_CHANNEL_BC1A_ALPHAPRESENT   :: BC1A_ALPHAPRESENT;
    KHR_DF_CHANNEL_BC1A_ALPHA          :: BC1A_ALPHA;

    KHR_DF_CHANNEL_DXT2_COLOR          :: DXT2_COLOR;
    KHR_DF_CHANNEL_DXT3_COLOR          :: DXT3_COLOR;
    KHR_DF_CHANNEL_BC2_COLOR           :: BC2_COLOR;
    KHR_DF_CHANNEL_DXT2_ALPHA          :: DXT2_ALPHA;
    KHR_DF_CHANNEL_DXT3_ALPHA          :: DXT3_ALPHA;
    KHR_DF_CHANNEL_BC2_ALPHA           :: BC2_ALPHA;

    KHR_DF_CHANNEL_DXT4_COLOR          :: DXT4_COLOR;
    KHR_DF_CHANNEL_DXT5_COLOR          :: DXT5_COLOR;
    KHR_DF_CHANNEL_BC3_COLOR           :: BC3_COLOR;
    KHR_DF_CHANNEL_DXT4_ALPHA          :: DXT4_ALPHA;
    KHR_DF_CHANNEL_DXT5_ALPHA          :: DXT5_ALPHA;
    KHR_DF_CHANNEL_BC3_ALPHA           :: BC3_ALPHA;

    KHR_DF_CHANNEL_BC4_DATA            :: BC4_DATA;

    KHR_DF_CHANNEL_BC5_RED             :: BC5_RED;
    KHR_DF_CHANNEL_BC5_R               :: BC5_R;
    KHR_DF_CHANNEL_BC5_GREEN           :: BC5_GREEN;
    KHR_DF_CHANNEL_BC5_G               :: BC5_G;

    KHR_DF_CHANNEL_BC6H_COLOR          :: BC6H_COLOR;
    KHR_DF_CHANNEL_BC6H_DATA           :: BC6H_DATA;

    KHR_DF_CHANNEL_BC7_DATA            :: BC7_DATA;
    KHR_DF_CHANNEL_BC7_COLOR           :: BC7_COLOR;

    KHR_DF_CHANNEL_ETC1_DATA           :: ETC1_DATA;
    KHR_DF_CHANNEL_ETC1_COLOR          :: ETC1_COLOR;

    KHR_DF_CHANNEL_ETC2_RED            :: ETC2_RED;
    KHR_DF_CHANNEL_ETC2_R              :: ETC2_R;
    KHR_DF_CHANNEL_ETC2_GREEN          :: ETC2_GREEN;
    KHR_DF_CHANNEL_ETC2_G              :: ETC2_G;
    KHR_DF_CHANNEL_ETC2_COLOR          :: ETC2_COLOR;
    KHR_DF_CHANNEL_ETC2_ALPHA          :: ETC2_ALPHA;
    KHR_DF_CHANNEL_ETC2_A              :: ETC2_A;

    KHR_DF_CHANNEL_ASTC_DATA           :: ASTC_DATA;

    KHR_DF_CHANNEL_ETC1S_RGB           :: ETC1S_RGB;
    KHR_DF_CHANNEL_ETC1S_RRR           :: ETC1S_RRR;
    KHR_DF_CHANNEL_ETC1S_GGG           :: ETC1S_GGG;
    KHR_DF_CHANNEL_ETC1S_AAA           :: ETC1S_AAA;

    KHR_DF_CHANNEL_PVRTC_DATA          :: PVRTC_DATA;
    KHR_DF_CHANNEL_PVRTC_COLOR         :: PVRTC_COLOR;

    KHR_DF_CHANNEL_PVRTC2_DATA         :: PVRTC2_DATA;
    KHR_DF_CHANNEL_PVRTC2_COLOR        :: PVRTC2_COLOR;

    KHR_DF_CHANNEL_UASTC_DATA          :: UASTC_DATA;
    KHR_DF_CHANNEL_UASTC_RGB           :: UASTC_RGB;
    KHR_DF_CHANNEL_UASTC_RGBA          :: UASTC_RGBA;
    KHR_DF_CHANNEL_UASTC_RRR           :: UASTC_RRR;
    KHR_DF_CHANNEL_UASTC_RRRG          :: UASTC_RRRG;
    KHR_DF_CHANNEL_UASTC_RG            :: UASTC_RG;

    KHR_DF_CHANNEL_COMMON_LUMA         :: COMMON_LUMA;
    KHR_DF_CHANNEL_COMMON_L            :: COMMON_L;
    KHR_DF_CHANNEL_COMMON_STENCIL      :: COMMON_STENCIL;
    KHR_DF_CHANNEL_COMMON_S            :: COMMON_S;
    KHR_DF_CHANNEL_COMMON_DEPTH        :: COMMON_DEPTH;
    KHR_DF_CHANNEL_COMMON_D            :: COMMON_D;
    KHR_DF_CHANNEL_COMMON_ALPHA        :: COMMON_ALPHA;
    KHR_DF_CHANNEL_COMMON_A            :: COMMON_A;
}

/* Definition of channel names for each color model */
khr_df_model_channels_e :: _khr_df_model_channels_e;

/** @~English
@brief Definition of the primary colors in color coordinates.
This is implicitly responsible for defining the conversion
between RGB an YUV color spaces.
LAB and related absolute color models should use
KHR_DF_PRIMARIES_CIEXYZ. */
_khr_df_primaries_e :: enum s32 {
    UNSPECIFIED :: 0;

    BT709       :: 1;

    SRGB        :: 1;

    BT601_EBU   :: 2;

    BT601_SMPTE :: 3;

    BT2020      :: 4;

    CIEXYZ      :: 5;

    ACES        :: 6;

    ACESCC      :: 7;

    NTSC1953    :: 8;

    PAL525      :: 9;

    DISPLAYP3   :: 10;

    ADOBERGB    :: 11;
    MAX         :: 255;

    KHR_DF_PRIMARIES_UNSPECIFIED :: UNSPECIFIED;

    KHR_DF_PRIMARIES_BT709       :: BT709;

    KHR_DF_PRIMARIES_SRGB        :: SRGB;

    KHR_DF_PRIMARIES_BT601_EBU   :: BT601_EBU;

    KHR_DF_PRIMARIES_BT601_SMPTE :: BT601_SMPTE;

    KHR_DF_PRIMARIES_BT2020      :: BT2020;

    KHR_DF_PRIMARIES_CIEXYZ      :: CIEXYZ;

    KHR_DF_PRIMARIES_ACES        :: ACES;

    KHR_DF_PRIMARIES_ACESCC      :: ACESCC;

    KHR_DF_PRIMARIES_NTSC1953    :: NTSC1953;

    KHR_DF_PRIMARIES_PAL525      :: PAL525;

    KHR_DF_PRIMARIES_DISPLAYP3   :: DISPLAYP3;

    KHR_DF_PRIMARIES_ADOBERGB    :: ADOBERGB;
    KHR_DF_PRIMARIES_MAX         :: MAX;
}

/** @~English
@brief Definition of the primary colors in color coordinates.
This is implicitly responsible for defining the conversion
between RGB an YUV color spaces.
LAB and related absolute color models should use
KHR_DF_PRIMARIES_CIEXYZ. */
khr_df_primaries_e :: _khr_df_primaries_e;

/** @~English
@brief Definition of the optical to digital transfer function
("gamma correction"). Most transfer functions are not a pure
power function and also include a linear element.
LAB and related absolute color representations should use
KHR_DF_TRANSFER_UNSPECIFIED. */
_khr_df_transfer_e :: enum s32 {
    UNSPECIFIED :: 0;

    LINEAR      :: 1;

    SRGB        :: 2;

    ITU         :: 3;

    SMTPE170M   :: 3;

    NTSC        :: 4;

    SLOG        :: 5;

    SLOG2       :: 6;

    BT1886      :: 7;

    HLG_OETF    :: 8;

    HLG_EOTF    :: 9;

    PQ_EOTF     :: 10;

    PQ_OETF     :: 11;

    DCIP3       :: 12;

    PAL_OETF    :: 13;

    PAL625_EOTF :: 14;

    ST240       :: 15;

    ACESCC      :: 16;

    ACESCCT     :: 17;

    ADOBERGB    :: 18;
    MAX         :: 255;

    KHR_DF_TRANSFER_UNSPECIFIED :: UNSPECIFIED;

    KHR_DF_TRANSFER_LINEAR      :: LINEAR;

    KHR_DF_TRANSFER_SRGB        :: SRGB;

    KHR_DF_TRANSFER_ITU         :: ITU;

    KHR_DF_TRANSFER_SMTPE170M   :: SMTPE170M;

    KHR_DF_TRANSFER_NTSC        :: NTSC;

    KHR_DF_TRANSFER_SLOG        :: SLOG;

    KHR_DF_TRANSFER_SLOG2       :: SLOG2;

    KHR_DF_TRANSFER_BT1886      :: BT1886;

    KHR_DF_TRANSFER_HLG_OETF    :: HLG_OETF;

    KHR_DF_TRANSFER_HLG_EOTF    :: HLG_EOTF;

    KHR_DF_TRANSFER_PQ_EOTF     :: PQ_EOTF;

    KHR_DF_TRANSFER_PQ_OETF     :: PQ_OETF;

    KHR_DF_TRANSFER_DCIP3       :: DCIP3;

    KHR_DF_TRANSFER_PAL_OETF    :: PAL_OETF;

    KHR_DF_TRANSFER_PAL625_EOTF :: PAL625_EOTF;

    KHR_DF_TRANSFER_ST240       :: ST240;

    KHR_DF_TRANSFER_ACESCC      :: ACESCC;

    KHR_DF_TRANSFER_ACESCCT     :: ACESCCT;

    KHR_DF_TRANSFER_ADOBERGB    :: ADOBERGB;
    KHR_DF_TRANSFER_MAX         :: MAX;
}

/** @~English
@brief Definition of the optical to digital transfer function
("gamma correction"). Most transfer functions are not a pure
power function and also include a linear element.
LAB and related absolute color representations should use
KHR_DF_TRANSFER_UNSPECIFIED. */
khr_df_transfer_e :: _khr_df_transfer_e;

_khr_df_flags_e :: enum s32 {
    STRAIGHT      :: 0;
    PREMULTIPLIED :: 1;

    KHR_DF_FLAG_ALPHA_STRAIGHT      :: STRAIGHT;
    KHR_DF_FLAG_ALPHA_PREMULTIPLIED :: PREMULTIPLIED;
}

khr_df_flags_e :: _khr_df_flags_e;

_khr_df_sample_datatype_qualifiers_e :: enum s32 {
    LINEAR   :: 16;
    EXPONENT :: 32;
    SIGNED   :: 64;
    FLOAT    :: 128;

    KHR_DF_SAMPLE_DATATYPE_LINEAR   :: LINEAR;
    KHR_DF_SAMPLE_DATATYPE_EXPONENT :: EXPONENT;
    KHR_DF_SAMPLE_DATATYPE_SIGNED   :: SIGNED;
    KHR_DF_SAMPLE_DATATYPE_FLOAT    :: FLOAT;
}

khr_df_sample_datatype_qualifiers_e :: _khr_df_sample_datatype_qualifiers_e;

/* To avoid including <KHR/khrplatform.h> define our own types. */
ktx_uint8_t :: u8;
ktx_bool_t :: bool;

ktx_uint16_t :: u16;
ktx_int16_t :: s16;
ktx_uint32_t :: u32;
ktx_int32_t :: s32;
ktx_size_t :: u64;
ktx_uint64_t :: u64;
ktx_int64_t :: s64;

/* This will cause compilation to fail if size of uint32 != 4. */
ktx_uint32_t_SIZE_ASSERT :: [1] u8;

/*
* To avoid having to including gl.h ...
*/
GLboolean :: u8;
GLenum :: u32;
GLint :: s32;
GLsizei :: s32;
GLuint :: u32;
GLubyte :: u8;

/**
* @~English
* @brief Error codes returned by library functions.
*/
ktx_error_code_e :: enum s32 {
    SUCCESS                   :: 0;
    FILE_DATA_ERROR           :: 1;
    FILE_ISPIPE               :: 2;
    FILE_OPEN_FAILED          :: 3;
    FILE_OVERFLOW             :: 4;
    FILE_READ_ERROR           :: 5;
    FILE_SEEK_ERROR           :: 6;
    FILE_UNEXPECTED_EOF       :: 7;
    FILE_WRITE_ERROR          :: 8;
    GL_ERROR                  :: 9;
    INVALID_OPERATION         :: 10;
    INVALID_VALUE             :: 11;
    NOT_FOUND                 :: 12;
    OUT_OF_MEMORY             :: 13;
    TRANSCODE_FAILED          :: 14;
    UNKNOWN_FILE_FORMAT       :: 15;
    UNSUPPORTED_TEXTURE_TYPE  :: 16;
    UNSUPPORTED_FEATURE       :: 17;
    LIBRARY_NOT_LINKED        :: 18;
    DECOMPRESS_LENGTH_ERROR   :: 19;
    DECOMPRESS_CHECKSUM_ERROR :: 20;
    ERROR_MAX_ENUM            :: 20;

    KTX_SUCCESS                   :: SUCCESS;
    KTX_FILE_DATA_ERROR           :: FILE_DATA_ERROR;
    KTX_FILE_ISPIPE               :: FILE_ISPIPE;
    KTX_FILE_OPEN_FAILED          :: FILE_OPEN_FAILED;
    KTX_FILE_OVERFLOW             :: FILE_OVERFLOW;
    KTX_FILE_READ_ERROR           :: FILE_READ_ERROR;
    KTX_FILE_SEEK_ERROR           :: FILE_SEEK_ERROR;
    KTX_FILE_UNEXPECTED_EOF       :: FILE_UNEXPECTED_EOF;
    KTX_FILE_WRITE_ERROR          :: FILE_WRITE_ERROR;
    KTX_GL_ERROR                  :: GL_ERROR;
    KTX_INVALID_OPERATION         :: INVALID_OPERATION;
    KTX_INVALID_VALUE             :: INVALID_VALUE;
    KTX_NOT_FOUND                 :: NOT_FOUND;
    KTX_OUT_OF_MEMORY             :: OUT_OF_MEMORY;
    KTX_TRANSCODE_FAILED          :: TRANSCODE_FAILED;
    KTX_UNKNOWN_FILE_FORMAT       :: UNKNOWN_FILE_FORMAT;
    KTX_UNSUPPORTED_TEXTURE_TYPE  :: UNSUPPORTED_TEXTURE_TYPE;
    KTX_UNSUPPORTED_FEATURE       :: UNSUPPORTED_FEATURE;
    KTX_LIBRARY_NOT_LINKED        :: LIBRARY_NOT_LINKED;
    KTX_DECOMPRESS_LENGTH_ERROR   :: DECOMPRESS_LENGTH_ERROR;
    KTX_DECOMPRESS_CHECKSUM_ERROR :: DECOMPRESS_CHECKSUM_ERROR;
    KTX_ERROR_MAX_ENUM            :: ERROR_MAX_ENUM;
}

/**
* @~English
* @brief Result codes returned by library functions.
*/
ktxResult :: ktx_error_code_e;

ktxKVListEntry :: struct {}
/**
* @class ktxHashList
* @~English
* @brief Opaque handle to a ktxHashList.
*/
ktxHashList :: *ktxKVListEntry;

/**
* @class ktxHashListEntry
* @~English
* @brief Opaque handle to an entry in a @ref ktxHashList.
*/
ktxHashListEntry :: ktxKVListEntry;

ktxOrientationX :: enum s32 {
    LEFT  :: 108;
    RIGHT :: 114;
    KTX_ORIENT_X_LEFT  :: LEFT;
    KTX_ORIENT_X_RIGHT :: RIGHT;
}

ktxOrientationY :: enum s32 {
    UP   :: 117;
    DOWN :: 100;
    KTX_ORIENT_Y_UP   :: UP;
    KTX_ORIENT_Y_DOWN :: DOWN;
}

ktxOrientationZ :: enum s32 {
    IN  :: 105;
    OUT :: 111;
    KTX_ORIENT_Z_IN  :: IN;
    KTX_ORIENT_Z_OUT :: OUT;
}

class_id :: enum s32 {
    _1_c :: 1;
    _2_c :: 2;

    ktxTexture1_c :: _1_c;
    ktxTexture2_c :: _2_c;
}

/**
* @~English
* @brief Struct describing the logical orientation of an image.
*/
ktxOrientation :: struct {
    x: ktxOrientationX; /*!< Orientation in X */
    y: ktxOrientationY; /*!< Orientation in Y */
    z: ktxOrientationZ; /*!< Orientation in Z */
}

/**
* @class ktxTexture
* @~English
* @brief Base class representing a texture.
*
* ktxTextures should be created only by one of the provided
* functions and these fields should be considered read-only.
*/
ktxTexture :: struct {
    classId:         class_id;
    vtbl:            *ktxTexture_vtbl;
    ktxTexture_vvtbl :: struct {}
    vvtbl:           *ktxTexture_vvtbl;
    ktxTexture_protected :: struct {}
    _protected:      *ktxTexture_protected;
    isArray:         ktx_bool_t;
    isCubemap:       ktx_bool_t;
    isCompressed:    ktx_bool_t;
    generateMipmaps: ktx_bool_t;
    baseWidth:       ktx_uint32_t;
    baseHeight:      ktx_uint32_t;
    baseDepth:       ktx_uint32_t;
    numDimensions:   ktx_uint32_t;
    numLevels:       ktx_uint32_t;
    numLayers:       ktx_uint32_t;
    numFaces:        ktx_uint32_t;
    orientation:     ktxOrientation;
    kvDataHead:      ktxHashList;
    kvDataLen:       ktx_uint32_t;
    kvData:          *ktx_uint8_t;
    dataSize:        ktx_size_t;
    pData:           *ktx_uint8_t;
}

/**
* @memberof ktxTexture
* @~English
* @brief Signature of function called by the <tt>ktxTexture_Iterate*</tt>
*        functions to receive image data.
*
* The function parameters are used to pass values which change for each image.
* Obtain values which are uniform across all images from the @c ktxTexture
* object.
*
* @param [in] miplevel        MIP level from 0 to the max level which is
*                             dependent on the texture size.
* @param [in] face            usually 0; for cube maps, one of the 6 cube
*                             faces in the order +X, -X, +Y, -Y, +Z, -Z,
*                             0 to 5.
* @param [in] width           width of the image.
* @param [in] height          height of the image or, for 1D textures
*                             textures, 1.
* @param [in] depth           depth of the image or, for 1D & 2D
*                             textures, 1.
* @param [in] faceLodSize     number of bytes of data pointed at by
*                             @p pixels.
* @param [in] pixels          pointer to the image data.
* @param [in,out] userdata    pointer for the application to pass data to and
*                             from the callback function.
*/
PFNKTXITERCB :: #type (miplevel: s32, face: s32, width: s32, height: s32, depth: s32, faceLodSize: ktx_uint64_t, pixels: *void, userdata: *void) -> ktx_error_code_e #c_call;

/* Don't use KTX_APIENTRYP to avoid a Doxygen bug. */
PFNKTEXDESTROY :: #type (This: *ktxTexture) -> void #c_call;

PFNKTEXGETIMAGEOFFSET :: #type (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, pOffset: *ktx_size_t) -> ktx_error_code_e #c_call;

PFNKTEXGETDATASIZEUNCOMPRESSED :: #type (This: *ktxTexture) -> ktx_size_t #c_call;

PFNKTEXGETIMAGESIZE :: #type (This: *ktxTexture, level: ktx_uint32_t) -> ktx_size_t #c_call;

PFNKTEXGETLEVELSIZE :: #type (This: *ktxTexture, level: ktx_uint32_t) -> ktx_size_t #c_call;

PFNKTEXITERATELEVELS :: #type (This: *ktxTexture, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e #c_call;

PFNKTEXITERATELOADLEVELFACES :: #type (This: *ktxTexture, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e #c_call;

PFNKTEXLOADIMAGEDATA :: #type (This: *ktxTexture, pBuffer: *ktx_uint8_t, bufSize: ktx_size_t) -> ktx_error_code_e #c_call;

PFNKTEXNEEDSTRANSCODING :: #type (This: *ktxTexture) -> ktx_bool_t #c_call;

PFNKTEXSETIMAGEFROMMEMORY :: #type (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *ktx_uint8_t, srcSize: ktx_size_t) -> ktx_error_code_e #c_call;

PFNKTEXSETIMAGEFROMSTDIOSTREAM :: #type (This: *ktxTexture, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, src: *FILE, srcSize: ktx_size_t) -> ktx_error_code_e #c_call;

PFNKTEXWRITETOSTDIOSTREAM :: #type (This: *ktxTexture, dstsstr: *FILE) -> ktx_error_code_e #c_call;

PFNKTEXWRITETONAMEDFILE :: #type (This: *ktxTexture, dstname: *u8) -> ktx_error_code_e #c_call;

PFNKTEXWRITETOMEMORY :: #type (This: *ktxTexture, bytes: **ktx_uint8_t, size: *ktx_size_t) -> ktx_error_code_e #c_call;

PFNKTEXWRITETOSTREAM :: #type (This: *ktxTexture, dststr: *ktxStream) -> ktx_error_code_e #c_call;

/**
* @memberof ktxTexture
* @~English
* @brief Table of virtual ktxTexture methods.
*/
ktxTexture_vtbl :: struct {
    Destroy:                 PFNKTEXDESTROY;
    GetImageOffset:          PFNKTEXGETIMAGEOFFSET;
    GetDataSizeUncompressed: PFNKTEXGETDATASIZEUNCOMPRESSED;
    GetImageSize:            PFNKTEXGETIMAGESIZE;
    GetLevelSize:            PFNKTEXGETLEVELSIZE;
    IterateLevels:           PFNKTEXITERATELEVELS;
    IterateLoadLevelFaces:   PFNKTEXITERATELOADLEVELFACES;
    NeedsTranscoding:        PFNKTEXNEEDSTRANSCODING;
    LoadImageData:           PFNKTEXLOADIMAGEDATA;
    SetImageFromMemory:      PFNKTEXSETIMAGEFROMMEMORY;
    SetImageFromStdioStream: PFNKTEXSETIMAGEFROMSTDIOSTREAM;
    WriteToStdioStream:      PFNKTEXWRITETOSTDIOSTREAM;
    WriteToNamedFile:        PFNKTEXWRITETONAMEDFILE;
    WriteToMemory:           PFNKTEXWRITETOMEMORY;
    WriteToStream:           PFNKTEXWRITETOSTREAM;
}

/**
* @class ktxTexture1
* @~English
* @brief Class representing a KTX version 1 format texture.
*
* ktxTextures should be created only by one of the ktxTexture_Create*
* functions and these fields should be considered read-only.
*/
ktxTexture1 :: struct {
    classId:              class_id;
    vtbl:                 *ktxTexture_vtbl;
    vvtbl:                *ktxTexture.ktxTexture_vvtbl;
    _protected:           *ktxTexture.ktxTexture_protected;
    isArray:              ktx_bool_t;
    isCubemap:            ktx_bool_t;
    isCompressed:         ktx_bool_t;
    generateMipmaps:      ktx_bool_t;
    baseWidth:            ktx_uint32_t;
    baseHeight:           ktx_uint32_t;
    baseDepth:            ktx_uint32_t;
    numDimensions:        ktx_uint32_t;
    numLevels:            ktx_uint32_t;
    numLayers:            ktx_uint32_t;
    numFaces:             ktx_uint32_t;
    orientation:          ktxOrientation;
    kvDataHead:           ktxHashList;
    kvDataLen:            ktx_uint32_t;
    kvData:               *ktx_uint8_t;
    dataSize:             ktx_size_t;
    pData:                *ktx_uint8_t;
    glFormat:             ktx_uint32_t; /*!< Format of the texture data, e.g., GL_RGB. */
    /*!< Internal format of the texture data,
    e.g., GL_RGB8. */
    glInternalformat:     ktx_uint32_t;

    /*!< Base format of the texture data,
    e.g., GL_RGB. */
    glBaseInternalformat: ktx_uint32_t;

    glType:               ktx_uint32_t; /*!< Type of the texture data, e.g, GL_UNSIGNED_BYTE.*/
    ktxTexture1_private :: struct {}
    _private:             *ktxTexture1_private; /*!< Private data. */
}

/**
* @~English
* @brief Enumerators identifying the supercompression scheme.
*/
ktxSupercmpScheme :: enum s32 {
    NONE               :: 0;
    BASIS_LZ           :: 1;
    ZSTD               :: 2;
    ZLIB               :: 3;
    BEGIN_RANGE        :: 0;
    END_RANGE          :: 3;
    BEGIN_VENDOR_RANGE :: 65536;
    END_VENDOR_RANGE   :: 131071;
    BEGIN_RESERVED     :: 131072;

    KTX_SS_NONE               :: NONE;
    KTX_SS_BASIS_LZ           :: BASIS_LZ;
    KTX_SS_ZSTD               :: ZSTD;
    KTX_SS_ZLIB               :: ZLIB;
    KTX_SS_BEGIN_RANGE        :: BEGIN_RANGE;
    KTX_SS_END_RANGE          :: END_RANGE;
    KTX_SS_BEGIN_VENDOR_RANGE :: BEGIN_VENDOR_RANGE;
    KTX_SS_END_VENDOR_RANGE   :: END_VENDOR_RANGE;
    KTX_SS_BEGIN_RESERVED     :: BEGIN_RESERVED;
}

/**
* @class ktxTexture2
* @~English
* @brief Class representing a KTX version 2 format texture.
*
* ktxTextures should be created only by one of the ktxTexture_Create*
* functions and these fields should be considered read-only.
*/
ktxTexture2 :: struct {
    classId:                class_id;
    vtbl:                   *ktxTexture_vtbl;
    vvtbl:                  *ktxTexture.ktxTexture_vvtbl;
    _protected:             *ktxTexture.ktxTexture_protected;
    isArray:                ktx_bool_t;
    isCubemap:              ktx_bool_t;
    isCompressed:           ktx_bool_t;
    generateMipmaps:        ktx_bool_t;
    baseWidth:              ktx_uint32_t;
    baseHeight:             ktx_uint32_t;
    baseDepth:              ktx_uint32_t;
    numDimensions:          ktx_uint32_t;
    numLevels:              ktx_uint32_t;
    numLayers:              ktx_uint32_t;
    numFaces:               ktx_uint32_t;
    orientation:            ktxOrientation;
    kvDataHead:             ktxHashList;
    kvDataLen:              ktx_uint32_t;
    kvData:                 *ktx_uint8_t;
    dataSize:               ktx_size_t;
    pData:                  *ktx_uint8_t;
    vkFormat:               ktx_uint32_t;
    pDfd:                   *ktx_uint32_t;
    supercompressionScheme: ktxSupercmpScheme;
    isVideo:                ktx_bool_t;
    duration:               ktx_uint32_t;
    timescale:              ktx_uint32_t;
    loopcount:              ktx_uint32_t;
    ktxTexture2_private :: struct {}
    _private:               *ktxTexture2_private; /*!< Private data. */
}

/**
* @memberof ktxTexture
* @~English
* @brief Structure for passing texture information to ktxTexture1\_Create() and
*        ktxTexture2\_Create().
*
* @sa @ref ktxTexture1::ktxTexture1\_Create() "ktxTexture1_Create()"
* @sa @ref ktxTexture2::ktxTexture2\_Create() "ktxTexture2_Create()"
*/
ktxTextureCreateInfo :: struct {
    /*!< Internal format for the texture, e.g.,
    GL_RGB8. Ignored when creating a
    ktxTexture2. */
    glInternalformat: ktx_uint32_t;

    /*!< VkFormat for texture. Ignored when creating a
    ktxTexture1. */
    vkFormat:         ktx_uint32_t;

    /*!< Pointer to DFD. Used only when creating a
    ktxTexture2 and only if vkFormat is
    VK_FORMAT_UNDEFINED. */
    pDfd:             *ktx_uint32_t;

    baseWidth:        ktx_uint32_t; /*!< Width of the base level of the texture. */
    baseHeight:       ktx_uint32_t; /*!< Height of the base level of the texture. */
    baseDepth:        ktx_uint32_t; /*!< Depth of the base level of the texture. */
    /*!< Number of dimensions in the texture, 1, 2
    or 3. */
    numDimensions:    ktx_uint32_t;

    /*!< Number of mip levels in the texture. Should be
    1 if @c generateMipmaps is KTX_TRUE; */
    numLevels:        ktx_uint32_t;

    numLayers:        ktx_uint32_t; /*!< Number of array layers in the texture. */
    numFaces:         ktx_uint32_t; /*!< Number of faces: 6 for cube maps, 1 otherwise. */
    /*!< Set to KTX_TRUE if the texture is to be an
    array texture. Means OpenGL will use a
    GL_TEXTURE_*_ARRAY target. */
    isArray:          ktx_bool_t;

    /*!< Set to KTX_TRUE if mipmaps should be
    generated for the texture when loading
    into a 3D API. */
    generateMipmaps:  ktx_bool_t;
}

/**
* @memberof ktxTexture
* @~English
* @brief Enum for requesting, or not, allocation of storage for images.
*
* @sa ktxTexture1_Create() and ktxTexture2_Create().
*/
ktxTextureCreateStorageEnum :: enum s32 {
    NO_STORAGE    :: 0;
    ALLOC_STORAGE :: 1;

    KTX_TEXTURE_CREATE_NO_STORAGE    :: NO_STORAGE;
    KTX_TEXTURE_CREATE_ALLOC_STORAGE :: ALLOC_STORAGE;
}

/**
* @memberof ktxTexture
* @~English
* @brief Flags for requesting services during creation.
*
* @sa ktxTexture_CreateFrom*
*/
ktxTextureCreateFlagBits :: enum_flags u32 {
    NO_FLAGS              :: 0x0;
    LOAD_IMAGE_DATA_BIT   :: 0x1;

    RAW_KVDATA_BIT        :: 0x2;

    SKIP_KVDATA_BIT       :: 0x4;

    CHECK_GLTF_BASISU_BIT :: 0x8;

    KTX_TEXTURE_CREATE_NO_FLAGS              :: NO_FLAGS;
    KTX_TEXTURE_CREATE_LOAD_IMAGE_DATA_BIT   :: LOAD_IMAGE_DATA_BIT;

    KTX_TEXTURE_CREATE_RAW_KVDATA_BIT        :: RAW_KVDATA_BIT;

    KTX_TEXTURE_CREATE_SKIP_KVDATA_BIT       :: SKIP_KVDATA_BIT;

    KTX_TEXTURE_CREATE_CHECK_GLTF_BASISU_BIT :: CHECK_GLTF_BASISU_BIT;
}

/**
* @memberof ktxTexture
* @~English
* @brief Type for TextureCreateFlags parameters.
*
* @sa ktxTexture_CreateFrom*()
*/
ktxTextureCreateFlags :: ktxTextureCreateFlagBits;

ktx_off_t :: u64;

ktxMem :: struct {}

streamType :: enum s32 {
    File   :: 1;
    Memory :: 2;
    Custom :: 3;
    eStreamTypeFile   :: File;
    eStreamTypeMemory :: Memory;
    eStreamTypeCustom :: Custom;
}

/**
* @~English
* @brief type for a pointer to a stream reading function
*/
ktxStream_read :: #type (str: *ktxStream, dst: *void, count: ktx_size_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief type for a pointer to a stream skipping function
*/
ktxStream_skip :: #type (str: *ktxStream, count: ktx_size_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief type for a pointer to a stream writing function
*/
ktxStream_write :: #type (str: *ktxStream, src: *void, size: ktx_size_t, count: ktx_size_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief type for a pointer to a stream position query function
*/
ktxStream_getpos :: #type (str: *ktxStream, offset: *ktx_off_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief type for a pointer to a stream position query function
*/
ktxStream_setpos :: #type (str: *ktxStream, offset: ktx_off_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief type for a pointer to a stream size query function
*/
ktxStream_getsize :: #type (str: *ktxStream, size: *ktx_size_t) -> ktx_error_code_e #c_call;

/**
* @~English
* @brief Destruct a stream
*/
ktxStream_destruct :: #type (str: *ktxStream) -> void #c_call;

/**
* @~English
*
* @brief Interface of ktxStream.
*
* @author Maksim Kolesin
* @author Georg Kolling, Imagination Technology
* @author Mark Callow, HI Corporation
*/
ktxStream :: struct {
    read:            ktxStream_read; /*!< pointer to function for reading bytes. */
    skip:            ktxStream_skip; /*!< pointer to function for skipping bytes. */
    write:           ktxStream_write; /*!< pointer to function for writing bytes. */
    getpos:          ktxStream_getpos; /*!< pointer to function for getting current position in stream. */
    setpos:          ktxStream_setpos; /*!< pointer to function for setting current position in stream. */
    getsize:         ktxStream_getsize; /*!< pointer to function for querying size. */
    destruct:        ktxStream_destruct; /*!< destruct the stream. */

    type:            streamType;
    data:            union {
        file:       *FILE; /**< a stdio FILE pointer for a ktxFileStream. */
        mem:        *ktxMem; /**< a pointer to a ktxMem struct for a ktxMemStream. */
        custom_ptr: struct {
            address:          *void; /**< pointer to the data. */
            allocatorAddress: *void; /**< pointer to a memory allocator. */
            size:             ktx_size_t; /**< size of the data. */
        }; /**< pointer to a struct for custom streams. */
    }; /**< pointer to the stream data. */

    readpos:         ktx_off_t; /**< used by FileStream for stdin. */
    closeOnDestruct: ktx_bool_t; /**< Close FILE* or dispose of memory on destruct. */
}

/**
* @~English
* @brief typedef of function pointer returned by GLGetProcAddress functions.
*/
PFNVOIDFUNCTION :: #type () -> void #c_call;

/**
* @~English
* @brief typedef of pointer to function for retrieving OpenGL function pointers.
*/
PFNGLGETPROCADDRESS :: #type (proc: *u8) -> PFNVOIDFUNCTION #c_call;

/*
* Load pointers for the OpenGL functions needed by ktxTexture_GLUpload.
*/
ktxLoadOpenGL :: (pfnGLGetProcAddress: PFNGLGETPROCADDRESS) -> ktx_error_code_e #foreign ktx;

/*
* These four create a ktxTexture1 or ktxTexture2 according to the data
* header, and return a pointer to the base ktxTexture class.
*/
ktxTexture_CreateFromStdioStream :: (stdioStream: *FILE, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture_CreateFromNamedFile :: (filename: *u8, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture_CreateFromMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture) -> ktx_error_code_e #foreign ktx;

ktxTexture_CreateFromStream :: (stream: *ktxStream, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture) -> ktx_error_code_e #foreign ktx;

/*
* Returns a pointer to the image data of a ktxTexture object.
*/
ktxTexture_GetData :: (This: *ktxTexture) -> *ktx_uint8_t #foreign ktx;

/*
* Returns the pitch of a row of an image at the specified level.
* Similar to the rowPitch in a VkSubResourceLayout.
*/
ktxTexture_GetRowPitch :: (This: *ktxTexture, level: ktx_uint32_t) -> ktx_uint32_t #foreign ktx;

/*
* Return the element size of the texture's images.
*/
ktxTexture_GetElementSize :: (This: *ktxTexture) -> ktx_uint32_t #foreign ktx;

/*
* Returns the size of all the image data of a ktxTexture object in bytes.
*/
ktxTexture_GetDataSize :: (This: *ktxTexture) -> ktx_size_t #foreign ktx;

/* Uploads a texture to OpenGL {,ES}. */
ktxTexture_GLUpload :: (This: *ktxTexture, pTexture: *GLuint, pTarget: *GLenum, pGlerror: *GLenum) -> ktx_error_code_e #foreign ktx;

/*
* Iterate over the levels or faces in a ktxTexture object.
*/
ktxTexture_IterateLevelFaces :: (This: *ktxTexture, iterCb: PFNKTXITERCB, userdata: *void) -> ktx_error_code_e #foreign ktx;

/*
* Create a new ktxTexture1.
*/
ktxTexture1_Create :: (createInfo: *ktxTextureCreateInfo, storageAllocation: ktxTextureCreateStorageEnum, newTex: **ktxTexture1) -> ktx_error_code_e #foreign ktx;

/*
* These four create a ktxTexture1 provided the data is in KTX format.
*/
ktxTexture1_CreateFromStdioStream :: (stdioStream: *FILE, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture1) -> ktx_error_code_e #foreign ktx;

ktxTexture1_CreateFromNamedFile :: (filename: *u8, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture1) -> ktx_error_code_e #foreign ktx;

ktxTexture1_CreateFromMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture1) -> ktx_error_code_e #foreign ktx;

ktxTexture1_CreateFromStream :: (stream: *ktxStream, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture1) -> ktx_error_code_e #foreign ktx;

ktxTexture1_Destroy :: (This: *ktxTexture1) -> void #foreign ktx;

ktxTexture1_NeedsTranscoding :: (This: *ktxTexture1) -> ktx_bool_t #foreign ktx;

/*
* Write a ktxTexture object to a stdio stream in KTX format.
*/
ktxTexture1_WriteKTX2ToStdioStream :: (This: *ktxTexture1, dstsstr: *FILE) -> ktx_error_code_e #foreign ktx;

/*
* Write a ktxTexture object to a named file in KTX format.
*/
ktxTexture1_WriteKTX2ToNamedFile :: (This: *ktxTexture1, dstname: *u8) -> ktx_error_code_e #foreign ktx;

/*
* Write a ktxTexture object to a block of memory in KTX format.
*/
ktxTexture1_WriteKTX2ToMemory :: (This: *ktxTexture1, bytes: **ktx_uint8_t, size: *ktx_size_t) -> ktx_error_code_e #foreign ktx;

/*
* Write a ktxTexture object to a ktxStream in KTX format.
*/
ktxTexture1_WriteKTX2ToStream :: (This: *ktxTexture1, dststr: *ktxStream) -> ktx_error_code_e #foreign ktx;

/*
* Create a new ktxTexture2.
*/
ktxTexture2_Create :: (createInfo: *ktxTextureCreateInfo, storageAllocation: ktxTextureCreateStorageEnum, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

/*
* Create a new ktxTexture2 as a copy of an existing texture.
*/
ktxTexture2_CreateCopy :: (orig: *ktxTexture2, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

/*
* These four create a ktxTexture2 provided the data is in KTX2 format.
*/
ktxTexture2_CreateFromStdioStream :: (stdioStream: *FILE, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

ktxTexture2_CreateFromNamedFile :: (filename: *u8, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

ktxTexture2_CreateFromMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

ktxTexture2_CreateFromStream :: (stream: *ktxStream, createFlags: ktxTextureCreateFlags, newTex: **ktxTexture2) -> ktx_error_code_e #foreign ktx;

ktxTexture2_Destroy :: (This: *ktxTexture2) -> void #foreign ktx;

ktxTexture2_CompressBasis :: (This: *ktxTexture2, quality: ktx_uint32_t) -> ktx_error_code_e #foreign ktx;

ktxTexture2_DeflateZstd :: (This: *ktxTexture2, level: ktx_uint32_t) -> ktx_error_code_e #foreign ktx;

ktxTexture2_DeflateZLIB :: (This: *ktxTexture2, level: ktx_uint32_t) -> ktx_error_code_e #foreign ktx;

ktxTexture2_GetComponentInfo :: (This: *ktxTexture2, numComponents: *ktx_uint32_t, componentByteLength: *ktx_uint32_t) -> void #foreign ktx;

ktxTexture2_GetImageOffset :: (This: *ktxTexture2, level: ktx_uint32_t, layer: ktx_uint32_t, faceSlice: ktx_uint32_t, pOffset: *ktx_size_t) -> ktx_error_code_e #foreign ktx;

ktxTexture2_GetNumComponents :: (This: *ktxTexture2) -> ktx_uint32_t #foreign ktx;

ktxTexture2_GetOETF_e :: (This: *ktxTexture2) -> khr_df_transfer_e #foreign ktx;

// For backward compatibility
ktxTexture2_GetOETF :: (This: *ktxTexture2) -> ktx_uint32_t #foreign ktx;

ktxTexture2_GetColorModel_e :: (This: *ktxTexture2) -> khr_df_model_e #foreign ktx;

ktxTexture2_GetPremultipliedAlpha :: (This: *ktxTexture2) -> ktx_bool_t #foreign ktx;

ktxTexture2_GetPrimaries_e :: (This: *ktxTexture2) -> khr_df_primaries_e #foreign ktx;

ktxTexture2_NeedsTranscoding :: (This: *ktxTexture2) -> ktx_bool_t #foreign ktx;

ktxTexture2_SetOETF :: (This: *ktxTexture2, oetf: khr_df_transfer_e) -> ktx_error_code_e #foreign ktx;

ktxTexture2_SetPrimaries :: (This: *ktxTexture2, primaries: khr_df_primaries_e) -> ktx_error_code_e #foreign ktx;

/**
* @~English
* @brief Flags specifiying UASTC encoding options.
*/
ktx_pack_uastc_flag_bits_e :: enum_flags u32 {
    LEVEL_FASTEST                    :: 0x0;

    LEVEL_FASTER                     :: 0x1;

    LEVEL_DEFAULT                    :: 0x2;

    LEVEL_SLOWER                     :: 0x3;

    LEVEL_VERYSLOW                   :: 0x4;

    MAX_LEVEL                        :: 0x4;

    LEVEL_MASK                       :: 0xf;

    FAVOR_UASTC_ERROR                :: 0x8;

    FAVOR_BC7_ERROR                  :: 0x10;

    ETC1_FASTER_HINTS                :: 0x40;

    ETC1_FASTEST_HINTS               :: 0x80;

    ETC1_DISABLE_FLIP_AND_INDIVIDUAL :: 0x100;

    KTX_PACK_UASTC_LEVEL_FASTEST                     :: LEVEL_FASTEST;

    KTX_PACK_UASTC_LEVEL_FASTER                      :: LEVEL_FASTER;

    KTX_PACK_UASTC_LEVEL_DEFAULT                     :: LEVEL_DEFAULT;

    KTX_PACK_UASTC_LEVEL_SLOWER                      :: LEVEL_SLOWER;

    KTX_PACK_UASTC_LEVEL_VERYSLOW                    :: LEVEL_VERYSLOW;

    KTX_PACK_UASTC_MAX_LEVEL                         :: MAX_LEVEL;

    KTX_PACK_UASTC_LEVEL_MASK                        :: LEVEL_MASK;

    KTX_PACK_UASTC_FAVOR_UASTC_ERROR                 :: FAVOR_UASTC_ERROR;

    KTX_PACK_UASTC_FAVOR_BC7_ERROR                   :: FAVOR_BC7_ERROR;

    KTX_PACK_UASTC_ETC1_FASTER_HINTS                 :: ETC1_FASTER_HINTS;

    KTX_PACK_UASTC_ETC1_FASTEST_HINTS                :: ETC1_FASTEST_HINTS;

    KTX_PACK_UASTC__ETC1_DISABLE_FLIP_AND_INDIVIDUAL :: ETC1_DISABLE_FLIP_AND_INDIVIDUAL;
}

ktx_pack_uastc_flags :: ktx_pack_uastc_flag_bits_e;

/**
* @~English
* @brief Options specifiying ASTC encoding quality levels.
*/
ktx_pack_astc_quality_levels_e :: enum s32 {
    FASTEST    :: 0;

    FAST       :: 10;

    MEDIUM     :: 60;

    THOROUGH   :: 98;

    EXHAUSTIVE :: 100;

    MAX        :: 100;

    KTX_PACK_ASTC_QUALITY_LEVEL_FASTEST    :: FASTEST;

    KTX_PACK_ASTC_QUALITY_LEVEL_FAST       :: FAST;

    KTX_PACK_ASTC_QUALITY_LEVEL_MEDIUM     :: MEDIUM;

    KTX_PACK_ASTC_QUALITY_LEVEL_THOROUGH   :: THOROUGH;

    KTX_PACK_ASTC_QUALITY_LEVEL_EXHAUSTIVE :: EXHAUSTIVE;

    KTX_PACK_ASTC_QUALITY_LEVEL_MAX        :: MAX;
}

/**
* @~English
* @brief Options specifiying ASTC encoding block dimensions
*/
ktx_pack_astc_block_dimension_e :: enum s32 {
    _4x4   :: 0;
    _5x4   :: 1;
    _5x5   :: 2;
    _6x5   :: 3;
    _6x6   :: 4;
    _8x5   :: 5;
    _8x6   :: 6;
    _10x5  :: 7;
    _10x6  :: 8;
    _8x8   :: 9;
    _10x8  :: 10;
    _10x10 :: 11;
    _12x10 :: 12;
    _12x12 :: 13;

    _3x3x3 :: 14;
    _4x3x3 :: 15;
    _4x4x3 :: 16;
    _4x4x4 :: 17;
    _5x4x4 :: 18;
    _5x5x4 :: 19;
    _5x5x5 :: 20;
    _6x5x5 :: 21;
    _6x6x5 :: 22;
    _6x6x6 :: 23;
    MAX    :: 23;

    KTX_PACK_ASTC_BLOCK_DIMENSION_4x4   :: _4x4;
    KTX_PACK_ASTC_BLOCK_DIMENSION_5x4   :: _5x4;
    KTX_PACK_ASTC_BLOCK_DIMENSION_5x5   :: _5x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_6x5   :: _6x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_6x6   :: _6x6;
    KTX_PACK_ASTC_BLOCK_DIMENSION_8x5   :: _8x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_8x6   :: _8x6;
    KTX_PACK_ASTC_BLOCK_DIMENSION_10x5  :: _10x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_10x6  :: _10x6;
    KTX_PACK_ASTC_BLOCK_DIMENSION_8x8   :: _8x8;
    KTX_PACK_ASTC_BLOCK_DIMENSION_10x8  :: _10x8;
    KTX_PACK_ASTC_BLOCK_DIMENSION_10x10 :: _10x10;
    KTX_PACK_ASTC_BLOCK_DIMENSION_12x10 :: _12x10;
    KTX_PACK_ASTC_BLOCK_DIMENSION_12x12 :: _12x12;

    KTX_PACK_ASTC_BLOCK_DIMENSION_3x3x3 :: _3x3x3;
    KTX_PACK_ASTC_BLOCK_DIMENSION_4x3x3 :: _4x3x3;
    KTX_PACK_ASTC_BLOCK_DIMENSION_4x4x3 :: _4x4x3;
    KTX_PACK_ASTC_BLOCK_DIMENSION_4x4x4 :: _4x4x4;
    KTX_PACK_ASTC_BLOCK_DIMENSION_5x4x4 :: _5x4x4;
    KTX_PACK_ASTC_BLOCK_DIMENSION_5x5x4 :: _5x5x4;
    KTX_PACK_ASTC_BLOCK_DIMENSION_5x5x5 :: _5x5x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_6x5x5 :: _6x5x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_6x6x5 :: _6x6x5;
    KTX_PACK_ASTC_BLOCK_DIMENSION_6x6x6 :: _6x6x6;
    KTX_PACK_ASTC_BLOCK_DIMENSION_MAX   :: MAX;
}

/**
* @~English
* @brief Options specifying ASTC encoder profile mode
*        This and function is used later to derive the profile.
*/
ktx_pack_astc_encoder_mode_e :: enum s32 {
    DEFAULT :: 0;
    LDR     :: 1;
    HDR     :: 2;
    MAX     :: 2;

    KTX_PACK_ASTC_ENCODER_MODE_DEFAULT :: DEFAULT;
    KTX_PACK_ASTC_ENCODER_MODE_LDR     :: LDR;
    KTX_PACK_ASTC_ENCODER_MODE_HDR     :: HDR;
    KTX_PACK_ASTC_ENCODER_MODE_MAX     :: MAX;
}

/**
* @memberof ktxTexture
* @~English
* @brief Structure for passing extended parameters to
*        ktxTexture_CompressAstc.
*
* Passing a struct initialized to 0 (e.g. " = {0};") will use blockDimension
* 4x4, mode LDR and qualityLevel FASTEST. Setting qualityLevel to
* KTX_PACK_ASTC_QUALITY_LEVEL_MEDIUM is recommended.
*/
ktxAstcParams :: struct {
    structSize:     ktx_uint32_t;

    verbose:        ktx_bool_t;

    threadCount:    ktx_uint32_t;

    /* astcenc params */
    blockDimension: ktx_uint32_t;

    mode:           ktx_uint32_t;

    qualityLevel:   ktx_uint32_t;

    normalMap:      ktx_bool_t;

    perceptual:     ktx_bool_t;

    inputSwizzle:   [4] u8;
}

ktxTexture2_CompressAstcEx :: (This: *ktxTexture2, params: *ktxAstcParams) -> ktx_error_code_e #foreign ktx;

ktxTexture2_CompressAstc :: (This: *ktxTexture2, quality: ktx_uint32_t) -> ktx_error_code_e #foreign ktx;

ktxTexture2_DecodeAstc :: (This: *ktxTexture2, vkformat: ktx_uint32_t) -> ktx_error_code_e #foreign ktx;

/**
* @memberof ktxTexture2
* @~English
* @brief Structure for passing extended parameters to
*        ktxTexture2_CompressBasisEx().
*
* If you only want default values, use ktxTexture2_CompressBasis(). Here, at a minimum you
* must initialize the structure as follows:
* @code
*  ktxBasisParams params = {0};
*  params.structSize = sizeof(params);
*  params.compressionLevel = KTX_ETC1S_DEFAULT_COMPRESSION_LEVEL;
* @endcode
*
* @e compressionLevel has to be explicitly set because 0 is a valid @e compressionLevel
* but is not the default used by the BasisU encoder when no value is set. Only the other
* settings that are to be non-default must be non-zero.
*/
ktxBasisParams :: struct {
    structSize:                       ktx_uint32_t;

    uastc:                            ktx_bool_t;

    verbose:                          ktx_bool_t;

    noSSE:                            ktx_bool_t;

    threadCount:                      ktx_uint32_t;

    /* ETC1S params */
    compressionLevel:                 ktx_uint32_t;

    qualityLevel:                     ktx_uint32_t;

    maxEndpoints:                     ktx_uint32_t;

    endpointRDOThreshold:             float;

    maxSelectors:                     ktx_uint32_t;

    selectorRDOThreshold:             float;

    inputSwizzle:                     [4] u8;

    normalMap:                        ktx_bool_t;

    separateRGToRGB_A:                ktx_bool_t;

    preSwizzle:                       ktx_bool_t;

    noEndpointRDO:                    ktx_bool_t;

    noSelectorRDO:                    ktx_bool_t;

    /* UASTC params */
    uastcFlags:                       ktx_pack_uastc_flags;

    uastcRDO:                         ktx_bool_t;

    uastcRDOQualityScalar:            float;

    uastcRDODictSize:                 ktx_uint32_t;

    uastcRDOMaxSmoothBlockErrorScale: float;

    uastcRDOMaxSmoothBlockStdDev:     float;

    uastcRDODontFavorSimplerModes:    ktx_bool_t;

    uastcRDONoMultithreading:         ktx_bool_t;
}

ktxTexture2_CompressBasisEx :: (This: *ktxTexture2, params: *ktxBasisParams) -> ktx_error_code_e #foreign ktx;

/**
* @~English
* @brief Enumerators for specifying the transcode target format.
*
* For BasisU/ETC1S format, @e Opaque and @e alpha here refer to 2 separate
* RGB images, a.k.a slices within the BasisU compressed data. For UASTC
* format they refer to the RGB and the alpha components of the UASTC data. If
* the original image had only 2 components, R will be in the opaque portion
* and G in the alpha portion. The R value will be replicated in the RGB
* components. In the case of BasisU the G value will be replicated in all 3
* components of the alpha slice. If the original image had only 1 component
* it's value is replicated in all 3 components of the opaque portion and
* there is no alpha.
*
* @note You should not transcode sRGB encoded data to @c KTX_TTF_BC4_R,
* @c KTX_TTF_BC5_RG, @c KTX_TTF_ETC2_EAC_R{,G}11, @c KTX_TTF_RGB565,
* @c KTX_TTF_BGR565 or @c KTX_TTF_RGBA4444 formats as neither OpenGL nor
* Vulkan support sRGB variants of these. Doing sRGB decoding in the shader
* will not produce correct results if any texture filtering is being used.
*/
ktx_transcode_fmt_e :: enum s32 {
    TTF_ETC1_RGB            :: 0;

    TTF_ETC2_RGBA           :: 1;

    TTF_BC1_RGB             :: 2;

    TTF_BC3_RGBA            :: 3;

    TTF_BC4_R               :: 4;

    TTF_BC5_RG              :: 5;

    TTF_BC7_RGBA            :: 6;

    TTF_PVRTC1_4_RGB        :: 8;

    TTF_PVRTC1_4_RGBA       :: 9;

    TTF_ASTC_4x4_RGBA       :: 10;

    TTF_PVRTC2_4_RGB        :: 18;

    TTF_PVRTC2_4_RGBA       :: 19;

    TTF_ETC2_EAC_R11        :: 20;

    TTF_ETC2_EAC_RG11       :: 21;

    TTF_RGBA32              :: 13;

    TTF_RGB565              :: 14;

    TTF_BGR565              :: 15;

    TTF_RGBA4444            :: 16;

    TTF_ETC                 :: 22;

    TTF_BC1_OR_3            :: 23;

    TTF_NOSELECTION         :: 2147483647;

    TF_ETC1                 :: 0;

    TF_ETC2                 :: 22;

    TF_BC1                  :: 2;

    TF_BC3                  :: 3;

    TF_BC4                  :: 4;

    TF_BC5                  :: 5;

    TTF_BC7_M6_RGB          :: 6;

    TTF_BC7_M5_RGBA         :: 6;

    TF_BC7_M6_OPAQUE_ONLY   :: 6;

    TF_PVRTC1_4_OPAQUE_ONLY :: 8;

    KTX_TTF_ETC1_RGB            :: TTF_ETC1_RGB;

    KTX_TTF_ETC2_RGBA           :: TTF_ETC2_RGBA;

    KTX_TTF_BC1_RGB             :: TTF_BC1_RGB;

    KTX_TTF_BC3_RGBA            :: TTF_BC3_RGBA;

    KTX_TTF_BC4_R               :: TTF_BC4_R;

    KTX_TTF_BC5_RG              :: TTF_BC5_RG;

    KTX_TTF_BC7_RGBA            :: TTF_BC7_RGBA;

    KTX_TTF_PVRTC1_4_RGB        :: TTF_PVRTC1_4_RGB;

    KTX_TTF_PVRTC1_4_RGBA       :: TTF_PVRTC1_4_RGBA;

    KTX_TTF_ASTC_4x4_RGBA       :: TTF_ASTC_4x4_RGBA;

    KTX_TTF_PVRTC2_4_RGB        :: TTF_PVRTC2_4_RGB;

    KTX_TTF_PVRTC2_4_RGBA       :: TTF_PVRTC2_4_RGBA;

    KTX_TTF_ETC2_EAC_R11        :: TTF_ETC2_EAC_R11;

    KTX_TTF_ETC2_EAC_RG11       :: TTF_ETC2_EAC_RG11;

    KTX_TTF_RGBA32              :: TTF_RGBA32;

    KTX_TTF_RGB565              :: TTF_RGB565;

    KTX_TTF_BGR565              :: TTF_BGR565;

    KTX_TTF_RGBA4444            :: TTF_RGBA4444;

    KTX_TTF_ETC                 :: TTF_ETC;

    KTX_TTF_BC1_OR_3            :: TTF_BC1_OR_3;

    KTX_TTF_NOSELECTION         :: TTF_NOSELECTION;

    KTX_TF_ETC1                 :: TF_ETC1;

    KTX_TF_ETC2                 :: TF_ETC2;

    KTX_TF_BC1                  :: TF_BC1;

    KTX_TF_BC3                  :: TF_BC3;

    KTX_TF_BC4                  :: TF_BC4;

    KTX_TF_BC5                  :: TF_BC5;

    KTX_TTF_BC7_M6_RGB          :: TTF_BC7_M6_RGB;

    KTX_TTF_BC7_M5_RGBA         :: TTF_BC7_M5_RGBA;

    KTX_TF_BC7_M6_OPAQUE_ONLY   :: TF_BC7_M6_OPAQUE_ONLY;

    KTX_TF_PVRTC1_4_OPAQUE_ONLY :: TF_PVRTC1_4_OPAQUE_ONLY;
}

/**
* @~English
* @brief Flags guiding transcoding of Basis Universal compressed textures.
*/
ktx_transcode_flag_bits_e :: enum_flags u32 {
    PVRTC_DECODE_TO_NEXT_POW2              :: 0x2;

    TRANSCODE_ALPHA_DATA_TO_OPAQUE_FORMATS :: 0x4;

    HIGH_QUALITY                           :: 0x20;

    KTX_TF_PVRTC_DECODE_TO_NEXT_POW2              :: PVRTC_DECODE_TO_NEXT_POW2;

    KTX_TF_TRANSCODE_ALPHA_DATA_TO_OPAQUE_FORMATS :: TRANSCODE_ALPHA_DATA_TO_OPAQUE_FORMATS;

    KTX_TF_HIGH_QUALITY                           :: HIGH_QUALITY;
}

ktx_transcode_flags :: ktx_transcode_flag_bits_e;

ktxTexture2_TranscodeBasis :: (This: *ktxTexture2, fmt: ktx_transcode_fmt_e, transcodeFlags: ktx_transcode_flags) -> ktx_error_code_e #foreign ktx;

/*
* Returns a string corresponding to a KTX error code.
*/
ktxErrorString :: (error: ktx_error_code_e) -> *u8 #foreign ktx;

/*
* Returns a string corresponding to a supercompression scheme.
*/
ktxSupercompressionSchemeString :: (scheme: ktxSupercmpScheme) -> *u8 #foreign ktx;

/*
* Returns a string corresponding to a transcode target format.
*/
ktxTranscodeFormatString :: (format: ktx_transcode_fmt_e) -> *u8 #foreign ktx;

ktxHashList_Create :: (ppHl: **ktxHashList) -> ktx_error_code_e #foreign ktx;

ktxHashList_CreateCopy :: (ppHl: **ktxHashList, orig: ktxHashList) -> ktx_error_code_e #foreign ktx;
ktxHashList_Construct :: (pHl: *ktxHashList) -> void #foreign ktx;

ktxHashList_ConstructCopy :: (pHl: *ktxHashList, orig: ktxHashList) -> void #foreign ktx;
ktxHashList_Destroy :: (head: *ktxHashList) -> void #foreign ktx;
ktxHashList_Destruct :: (head: *ktxHashList) -> void #foreign ktx;

/*
* Adds a key-value pair to a hash list.
*/
ktxHashList_AddKVPair :: (pHead: *ktxHashList, key: *u8, valueLen: u32, value: *void) -> ktx_error_code_e #foreign ktx;

/*
* Deletes a ktxHashListEntry from a ktxHashList.
*/
ktxHashList_DeleteEntry :: (pHead: *ktxHashList, pEntry: *ktxHashListEntry) -> ktx_error_code_e #foreign ktx;

/*
* Finds the entry for a key in a ktxHashList and deletes it.
*/
ktxHashList_DeleteKVPair :: (pHead: *ktxHashList, key: *u8) -> ktx_error_code_e #foreign ktx;

/*
* Looks up a key and returns the ktxHashListEntry.
*/
ktxHashList_FindEntry :: (pHead: *ktxHashList, key: *u8, ppEntry: **ktxHashListEntry) -> ktx_error_code_e #foreign ktx;

/*
* Looks up a key and returns the value.
*/
ktxHashList_FindValue :: (pHead: *ktxHashList, key: *u8, pValueLen: *u32, pValue: **void) -> ktx_error_code_e #foreign ktx;

/*
* Return the next entry in a ktxHashList.
*/
ktxHashList_Next :: (entry: *ktxHashListEntry) -> *ktxHashListEntry #foreign ktx;

/*
* Sorts a ktxHashList into order of the key codepoints.
*/
ktxHashList_Sort :: (pHead: *ktxHashList) -> ktx_error_code_e #foreign ktx;

/*
* Serializes a ktxHashList to a block of memory suitable for
* writing to a KTX file.
*/
ktxHashList_Serialize :: (pHead: *ktxHashList, kvdLen: *u32, kvd: **u8) -> ktx_error_code_e #foreign ktx;

/*
* Creates a hash table from the serialized data read from a
* a KTX file.
*/
ktxHashList_Deserialize :: (pHead: *ktxHashList, kvdLen: u32, kvd: *void) -> ktx_error_code_e #foreign ktx;

/*
* Get the key from a ktxHashListEntry
*/
ktxHashListEntry_GetKey :: (This: *ktxHashListEntry, pKeyLen: *u32, ppKey: **u8) -> ktx_error_code_e #foreign ktx;

/*
* Get the value from a ktxHashListEntry
*/
ktxHashListEntry_GetValue :: (This: *ktxHashListEntry, pValueLen: *u32, ppValue: **void) -> ktx_error_code_e #foreign ktx;

/*===========================================================*
* Utilities for printing info about a KTX file.             *
*===========================================================*/
ktxPrintInfoForStdioStream :: (stdioStream: *FILE) -> ktx_error_code_e #foreign ktx;
ktxPrintInfoForNamedFile :: (filename: *u8) -> ktx_error_code_e #foreign ktx;
ktxPrintInfoForMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t) -> ktx_error_code_e #foreign ktx;

/*===========================================================*
* Utilities for printing info about a KTX2 file.            *
*===========================================================*/
ktxPrintKTX2InfoTextForMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoTextForNamedFile :: (filename: *u8) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoTextForStdioStream :: (stdioStream: *FILE) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoTextForStream :: (stream: *ktxStream) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoJSONForMemory :: (bytes: *ktx_uint8_t, size: ktx_size_t, base_indent: ktx_uint32_t, indent_width: ktx_uint32_t, minified: bool) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoJSONForNamedFile :: (filename: *u8, base_indent: ktx_uint32_t, indent_width: ktx_uint32_t, minified: bool) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoJSONForStdioStream :: (stdioStream: *FILE, base_indent: ktx_uint32_t, indent_width: ktx_uint32_t, minified: bool) -> ktx_error_code_e #foreign ktx;
ktxPrintKTX2InfoJSONForStream :: (stream: *ktxStream, base_indent: ktx_uint32_t, indent_width: ktx_uint32_t, minified: bool) -> ktx_error_code_e #foreign ktx;

#scope_file

#import "Basic"; // For assert

ktx :: #library "windows/ktx";

#run {
    {
        instance: ktxOrientation;
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 0, "ktxOrientation.x has unexpected offset % instead of 0", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxOrientation.x)) == 4, "ktxOrientation.x has unexpected size % instead of 4", size_of(type_of(ktxOrientation.x)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 4, "ktxOrientation.y has unexpected offset % instead of 4", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxOrientation.y)) == 4, "ktxOrientation.y has unexpected size % instead of 4", size_of(type_of(ktxOrientation.y)));
        assert(((cast(*void)(*instance.z)) - cast(*void)(*instance)) == 8, "ktxOrientation.z has unexpected offset % instead of 8", ((cast(*void)(*instance.z)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxOrientation.z)) == 4, "ktxOrientation.z has unexpected size % instead of 4", size_of(type_of(ktxOrientation.z)));
        assert(size_of(ktxOrientation) == 12, "ktxOrientation has size % instead of 12", size_of(ktxOrientation));
    }

    {
        instance: ktxTexture;
        assert(((cast(*void)(*instance.classId)) - cast(*void)(*instance)) == 0, "ktxTexture.classId has unexpected offset % instead of 0", ((cast(*void)(*instance.classId)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.classId)) == 4, "ktxTexture.classId has unexpected size % instead of 4", size_of(type_of(ktxTexture.classId)));
        assert(((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)) == 8, "ktxTexture.vtbl has unexpected offset % instead of 8", ((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.vtbl)) == 8, "ktxTexture.vtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture.vtbl)));
        assert(((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)) == 16, "ktxTexture.vvtbl has unexpected offset % instead of 16", ((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.vvtbl)) == 8, "ktxTexture.vvtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture.vvtbl)));
        assert(((cast(*void)(*instance._protected)) - cast(*void)(*instance)) == 24, "ktxTexture._protected has unexpected offset % instead of 24", ((cast(*void)(*instance._protected)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture._protected)) == 8, "ktxTexture._protected has unexpected size % instead of 8", size_of(type_of(ktxTexture._protected)));
        assert(((cast(*void)(*instance.isArray)) - cast(*void)(*instance)) == 32, "ktxTexture.isArray has unexpected offset % instead of 32", ((cast(*void)(*instance.isArray)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.isArray)) == 1, "ktxTexture.isArray has unexpected size % instead of 1", size_of(type_of(ktxTexture.isArray)));
        assert(((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)) == 33, "ktxTexture.isCubemap has unexpected offset % instead of 33", ((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.isCubemap)) == 1, "ktxTexture.isCubemap has unexpected size % instead of 1", size_of(type_of(ktxTexture.isCubemap)));
        assert(((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)) == 34, "ktxTexture.isCompressed has unexpected offset % instead of 34", ((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.isCompressed)) == 1, "ktxTexture.isCompressed has unexpected size % instead of 1", size_of(type_of(ktxTexture.isCompressed)));
        assert(((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)) == 35, "ktxTexture.generateMipmaps has unexpected offset % instead of 35", ((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.generateMipmaps)) == 1, "ktxTexture.generateMipmaps has unexpected size % instead of 1", size_of(type_of(ktxTexture.generateMipmaps)));
        assert(((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)) == 36, "ktxTexture.baseWidth has unexpected offset % instead of 36", ((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.baseWidth)) == 4, "ktxTexture.baseWidth has unexpected size % instead of 4", size_of(type_of(ktxTexture.baseWidth)));
        assert(((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)) == 40, "ktxTexture.baseHeight has unexpected offset % instead of 40", ((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.baseHeight)) == 4, "ktxTexture.baseHeight has unexpected size % instead of 4", size_of(type_of(ktxTexture.baseHeight)));
        assert(((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)) == 44, "ktxTexture.baseDepth has unexpected offset % instead of 44", ((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.baseDepth)) == 4, "ktxTexture.baseDepth has unexpected size % instead of 4", size_of(type_of(ktxTexture.baseDepth)));
        assert(((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)) == 48, "ktxTexture.numDimensions has unexpected offset % instead of 48", ((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.numDimensions)) == 4, "ktxTexture.numDimensions has unexpected size % instead of 4", size_of(type_of(ktxTexture.numDimensions)));
        assert(((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)) == 52, "ktxTexture.numLevels has unexpected offset % instead of 52", ((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.numLevels)) == 4, "ktxTexture.numLevels has unexpected size % instead of 4", size_of(type_of(ktxTexture.numLevels)));
        assert(((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)) == 56, "ktxTexture.numLayers has unexpected offset % instead of 56", ((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.numLayers)) == 4, "ktxTexture.numLayers has unexpected size % instead of 4", size_of(type_of(ktxTexture.numLayers)));
        assert(((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)) == 60, "ktxTexture.numFaces has unexpected offset % instead of 60", ((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.numFaces)) == 4, "ktxTexture.numFaces has unexpected size % instead of 4", size_of(type_of(ktxTexture.numFaces)));
        assert(((cast(*void)(*instance.orientation)) - cast(*void)(*instance)) == 64, "ktxTexture.orientation has unexpected offset % instead of 64", ((cast(*void)(*instance.orientation)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.orientation)) == 12, "ktxTexture.orientation has unexpected size % instead of 12", size_of(type_of(ktxTexture.orientation)));
        assert(((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)) == 80, "ktxTexture.kvDataHead has unexpected offset % instead of 80", ((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.kvDataHead)) == 8, "ktxTexture.kvDataHead has unexpected size % instead of 8", size_of(type_of(ktxTexture.kvDataHead)));
        assert(((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)) == 88, "ktxTexture.kvDataLen has unexpected offset % instead of 88", ((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.kvDataLen)) == 4, "ktxTexture.kvDataLen has unexpected size % instead of 4", size_of(type_of(ktxTexture.kvDataLen)));
        assert(((cast(*void)(*instance.kvData)) - cast(*void)(*instance)) == 96, "ktxTexture.kvData has unexpected offset % instead of 96", ((cast(*void)(*instance.kvData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.kvData)) == 8, "ktxTexture.kvData has unexpected size % instead of 8", size_of(type_of(ktxTexture.kvData)));
        assert(((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)) == 104, "ktxTexture.dataSize has unexpected offset % instead of 104", ((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.dataSize)) == 8, "ktxTexture.dataSize has unexpected size % instead of 8", size_of(type_of(ktxTexture.dataSize)));
        assert(((cast(*void)(*instance.pData)) - cast(*void)(*instance)) == 112, "ktxTexture.pData has unexpected offset % instead of 112", ((cast(*void)(*instance.pData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture.pData)) == 8, "ktxTexture.pData has unexpected size % instead of 8", size_of(type_of(ktxTexture.pData)));
        assert(size_of(ktxTexture) == 120, "ktxTexture has size % instead of 120", size_of(ktxTexture));
    }

    {
        instance: ktxTexture_vtbl;
        assert(((cast(*void)(*instance.Destroy)) - cast(*void)(*instance)) == 0, "ktxTexture_vtbl.Destroy has unexpected offset % instead of 0", ((cast(*void)(*instance.Destroy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.Destroy)) == 8, "ktxTexture_vtbl.Destroy has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.Destroy)));
        assert(((cast(*void)(*instance.GetImageOffset)) - cast(*void)(*instance)) == 8, "ktxTexture_vtbl.GetImageOffset has unexpected offset % instead of 8", ((cast(*void)(*instance.GetImageOffset)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.GetImageOffset)) == 8, "ktxTexture_vtbl.GetImageOffset has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.GetImageOffset)));
        assert(((cast(*void)(*instance.GetDataSizeUncompressed)) - cast(*void)(*instance)) == 16, "ktxTexture_vtbl.GetDataSizeUncompressed has unexpected offset % instead of 16", ((cast(*void)(*instance.GetDataSizeUncompressed)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.GetDataSizeUncompressed)) == 8, "ktxTexture_vtbl.GetDataSizeUncompressed has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.GetDataSizeUncompressed)));
        assert(((cast(*void)(*instance.GetImageSize)) - cast(*void)(*instance)) == 24, "ktxTexture_vtbl.GetImageSize has unexpected offset % instead of 24", ((cast(*void)(*instance.GetImageSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.GetImageSize)) == 8, "ktxTexture_vtbl.GetImageSize has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.GetImageSize)));
        assert(((cast(*void)(*instance.GetLevelSize)) - cast(*void)(*instance)) == 32, "ktxTexture_vtbl.GetLevelSize has unexpected offset % instead of 32", ((cast(*void)(*instance.GetLevelSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.GetLevelSize)) == 8, "ktxTexture_vtbl.GetLevelSize has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.GetLevelSize)));
        assert(((cast(*void)(*instance.IterateLevels)) - cast(*void)(*instance)) == 40, "ktxTexture_vtbl.IterateLevels has unexpected offset % instead of 40", ((cast(*void)(*instance.IterateLevels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.IterateLevels)) == 8, "ktxTexture_vtbl.IterateLevels has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.IterateLevels)));
        assert(((cast(*void)(*instance.IterateLoadLevelFaces)) - cast(*void)(*instance)) == 48, "ktxTexture_vtbl.IterateLoadLevelFaces has unexpected offset % instead of 48", ((cast(*void)(*instance.IterateLoadLevelFaces)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.IterateLoadLevelFaces)) == 8, "ktxTexture_vtbl.IterateLoadLevelFaces has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.IterateLoadLevelFaces)));
        assert(((cast(*void)(*instance.NeedsTranscoding)) - cast(*void)(*instance)) == 56, "ktxTexture_vtbl.NeedsTranscoding has unexpected offset % instead of 56", ((cast(*void)(*instance.NeedsTranscoding)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.NeedsTranscoding)) == 8, "ktxTexture_vtbl.NeedsTranscoding has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.NeedsTranscoding)));
        assert(((cast(*void)(*instance.LoadImageData)) - cast(*void)(*instance)) == 64, "ktxTexture_vtbl.LoadImageData has unexpected offset % instead of 64", ((cast(*void)(*instance.LoadImageData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.LoadImageData)) == 8, "ktxTexture_vtbl.LoadImageData has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.LoadImageData)));
        assert(((cast(*void)(*instance.SetImageFromMemory)) - cast(*void)(*instance)) == 72, "ktxTexture_vtbl.SetImageFromMemory has unexpected offset % instead of 72", ((cast(*void)(*instance.SetImageFromMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.SetImageFromMemory)) == 8, "ktxTexture_vtbl.SetImageFromMemory has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.SetImageFromMemory)));
        assert(((cast(*void)(*instance.SetImageFromStdioStream)) - cast(*void)(*instance)) == 80, "ktxTexture_vtbl.SetImageFromStdioStream has unexpected offset % instead of 80", ((cast(*void)(*instance.SetImageFromStdioStream)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.SetImageFromStdioStream)) == 8, "ktxTexture_vtbl.SetImageFromStdioStream has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.SetImageFromStdioStream)));
        assert(((cast(*void)(*instance.WriteToStdioStream)) - cast(*void)(*instance)) == 88, "ktxTexture_vtbl.WriteToStdioStream has unexpected offset % instead of 88", ((cast(*void)(*instance.WriteToStdioStream)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.WriteToStdioStream)) == 8, "ktxTexture_vtbl.WriteToStdioStream has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.WriteToStdioStream)));
        assert(((cast(*void)(*instance.WriteToNamedFile)) - cast(*void)(*instance)) == 96, "ktxTexture_vtbl.WriteToNamedFile has unexpected offset % instead of 96", ((cast(*void)(*instance.WriteToNamedFile)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.WriteToNamedFile)) == 8, "ktxTexture_vtbl.WriteToNamedFile has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.WriteToNamedFile)));
        assert(((cast(*void)(*instance.WriteToMemory)) - cast(*void)(*instance)) == 104, "ktxTexture_vtbl.WriteToMemory has unexpected offset % instead of 104", ((cast(*void)(*instance.WriteToMemory)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.WriteToMemory)) == 8, "ktxTexture_vtbl.WriteToMemory has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.WriteToMemory)));
        assert(((cast(*void)(*instance.WriteToStream)) - cast(*void)(*instance)) == 112, "ktxTexture_vtbl.WriteToStream has unexpected offset % instead of 112", ((cast(*void)(*instance.WriteToStream)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture_vtbl.WriteToStream)) == 8, "ktxTexture_vtbl.WriteToStream has unexpected size % instead of 8", size_of(type_of(ktxTexture_vtbl.WriteToStream)));
        assert(size_of(ktxTexture_vtbl) == 120, "ktxTexture_vtbl has size % instead of 120", size_of(ktxTexture_vtbl));
    }

    {
        instance: ktxTexture1;
        assert(((cast(*void)(*instance.classId)) - cast(*void)(*instance)) == 0, "ktxTexture1.classId has unexpected offset % instead of 0", ((cast(*void)(*instance.classId)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.classId)) == 4, "ktxTexture1.classId has unexpected size % instead of 4", size_of(type_of(ktxTexture1.classId)));
        assert(((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)) == 8, "ktxTexture1.vtbl has unexpected offset % instead of 8", ((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.vtbl)) == 8, "ktxTexture1.vtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture1.vtbl)));
        assert(((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)) == 16, "ktxTexture1.vvtbl has unexpected offset % instead of 16", ((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.vvtbl)) == 8, "ktxTexture1.vvtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture1.vvtbl)));
        assert(((cast(*void)(*instance._protected)) - cast(*void)(*instance)) == 24, "ktxTexture1._protected has unexpected offset % instead of 24", ((cast(*void)(*instance._protected)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1._protected)) == 8, "ktxTexture1._protected has unexpected size % instead of 8", size_of(type_of(ktxTexture1._protected)));
        assert(((cast(*void)(*instance.isArray)) - cast(*void)(*instance)) == 32, "ktxTexture1.isArray has unexpected offset % instead of 32", ((cast(*void)(*instance.isArray)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.isArray)) == 1, "ktxTexture1.isArray has unexpected size % instead of 1", size_of(type_of(ktxTexture1.isArray)));
        assert(((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)) == 33, "ktxTexture1.isCubemap has unexpected offset % instead of 33", ((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.isCubemap)) == 1, "ktxTexture1.isCubemap has unexpected size % instead of 1", size_of(type_of(ktxTexture1.isCubemap)));
        assert(((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)) == 34, "ktxTexture1.isCompressed has unexpected offset % instead of 34", ((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.isCompressed)) == 1, "ktxTexture1.isCompressed has unexpected size % instead of 1", size_of(type_of(ktxTexture1.isCompressed)));
        assert(((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)) == 35, "ktxTexture1.generateMipmaps has unexpected offset % instead of 35", ((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.generateMipmaps)) == 1, "ktxTexture1.generateMipmaps has unexpected size % instead of 1", size_of(type_of(ktxTexture1.generateMipmaps)));
        assert(((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)) == 36, "ktxTexture1.baseWidth has unexpected offset % instead of 36", ((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.baseWidth)) == 4, "ktxTexture1.baseWidth has unexpected size % instead of 4", size_of(type_of(ktxTexture1.baseWidth)));
        assert(((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)) == 40, "ktxTexture1.baseHeight has unexpected offset % instead of 40", ((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.baseHeight)) == 4, "ktxTexture1.baseHeight has unexpected size % instead of 4", size_of(type_of(ktxTexture1.baseHeight)));
        assert(((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)) == 44, "ktxTexture1.baseDepth has unexpected offset % instead of 44", ((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.baseDepth)) == 4, "ktxTexture1.baseDepth has unexpected size % instead of 4", size_of(type_of(ktxTexture1.baseDepth)));
        assert(((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)) == 48, "ktxTexture1.numDimensions has unexpected offset % instead of 48", ((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.numDimensions)) == 4, "ktxTexture1.numDimensions has unexpected size % instead of 4", size_of(type_of(ktxTexture1.numDimensions)));
        assert(((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)) == 52, "ktxTexture1.numLevels has unexpected offset % instead of 52", ((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.numLevels)) == 4, "ktxTexture1.numLevels has unexpected size % instead of 4", size_of(type_of(ktxTexture1.numLevels)));
        assert(((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)) == 56, "ktxTexture1.numLayers has unexpected offset % instead of 56", ((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.numLayers)) == 4, "ktxTexture1.numLayers has unexpected size % instead of 4", size_of(type_of(ktxTexture1.numLayers)));
        assert(((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)) == 60, "ktxTexture1.numFaces has unexpected offset % instead of 60", ((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.numFaces)) == 4, "ktxTexture1.numFaces has unexpected size % instead of 4", size_of(type_of(ktxTexture1.numFaces)));
        assert(((cast(*void)(*instance.orientation)) - cast(*void)(*instance)) == 64, "ktxTexture1.orientation has unexpected offset % instead of 64", ((cast(*void)(*instance.orientation)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.orientation)) == 12, "ktxTexture1.orientation has unexpected size % instead of 12", size_of(type_of(ktxTexture1.orientation)));
        assert(((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)) == 80, "ktxTexture1.kvDataHead has unexpected offset % instead of 80", ((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.kvDataHead)) == 8, "ktxTexture1.kvDataHead has unexpected size % instead of 8", size_of(type_of(ktxTexture1.kvDataHead)));
        assert(((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)) == 88, "ktxTexture1.kvDataLen has unexpected offset % instead of 88", ((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.kvDataLen)) == 4, "ktxTexture1.kvDataLen has unexpected size % instead of 4", size_of(type_of(ktxTexture1.kvDataLen)));
        assert(((cast(*void)(*instance.kvData)) - cast(*void)(*instance)) == 96, "ktxTexture1.kvData has unexpected offset % instead of 96", ((cast(*void)(*instance.kvData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.kvData)) == 8, "ktxTexture1.kvData has unexpected size % instead of 8", size_of(type_of(ktxTexture1.kvData)));
        assert(((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)) == 104, "ktxTexture1.dataSize has unexpected offset % instead of 104", ((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.dataSize)) == 8, "ktxTexture1.dataSize has unexpected size % instead of 8", size_of(type_of(ktxTexture1.dataSize)));
        assert(((cast(*void)(*instance.pData)) - cast(*void)(*instance)) == 112, "ktxTexture1.pData has unexpected offset % instead of 112", ((cast(*void)(*instance.pData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.pData)) == 8, "ktxTexture1.pData has unexpected size % instead of 8", size_of(type_of(ktxTexture1.pData)));
        assert(((cast(*void)(*instance.glFormat)) - cast(*void)(*instance)) == 120, "ktxTexture1.glFormat has unexpected offset % instead of 120", ((cast(*void)(*instance.glFormat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.glFormat)) == 4, "ktxTexture1.glFormat has unexpected size % instead of 4", size_of(type_of(ktxTexture1.glFormat)));
        assert(((cast(*void)(*instance.glInternalformat)) - cast(*void)(*instance)) == 124, "ktxTexture1.glInternalformat has unexpected offset % instead of 124", ((cast(*void)(*instance.glInternalformat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.glInternalformat)) == 4, "ktxTexture1.glInternalformat has unexpected size % instead of 4", size_of(type_of(ktxTexture1.glInternalformat)));
        assert(((cast(*void)(*instance.glBaseInternalformat)) - cast(*void)(*instance)) == 128, "ktxTexture1.glBaseInternalformat has unexpected offset % instead of 128", ((cast(*void)(*instance.glBaseInternalformat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.glBaseInternalformat)) == 4, "ktxTexture1.glBaseInternalformat has unexpected size % instead of 4", size_of(type_of(ktxTexture1.glBaseInternalformat)));
        assert(((cast(*void)(*instance.glType)) - cast(*void)(*instance)) == 132, "ktxTexture1.glType has unexpected offset % instead of 132", ((cast(*void)(*instance.glType)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1.glType)) == 4, "ktxTexture1.glType has unexpected size % instead of 4", size_of(type_of(ktxTexture1.glType)));
        assert(((cast(*void)(*instance._private)) - cast(*void)(*instance)) == 136, "ktxTexture1._private has unexpected offset % instead of 136", ((cast(*void)(*instance._private)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture1._private)) == 8, "ktxTexture1._private has unexpected size % instead of 8", size_of(type_of(ktxTexture1._private)));
        assert(size_of(ktxTexture1) == 144, "ktxTexture1 has size % instead of 144", size_of(ktxTexture1));
    }

    {
        instance: ktxTexture2;
        assert(((cast(*void)(*instance.classId)) - cast(*void)(*instance)) == 0, "ktxTexture2.classId has unexpected offset % instead of 0", ((cast(*void)(*instance.classId)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.classId)) == 4, "ktxTexture2.classId has unexpected size % instead of 4", size_of(type_of(ktxTexture2.classId)));
        assert(((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)) == 8, "ktxTexture2.vtbl has unexpected offset % instead of 8", ((cast(*void)(*instance.vtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.vtbl)) == 8, "ktxTexture2.vtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture2.vtbl)));
        assert(((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)) == 16, "ktxTexture2.vvtbl has unexpected offset % instead of 16", ((cast(*void)(*instance.vvtbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.vvtbl)) == 8, "ktxTexture2.vvtbl has unexpected size % instead of 8", size_of(type_of(ktxTexture2.vvtbl)));
        assert(((cast(*void)(*instance._protected)) - cast(*void)(*instance)) == 24, "ktxTexture2._protected has unexpected offset % instead of 24", ((cast(*void)(*instance._protected)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2._protected)) == 8, "ktxTexture2._protected has unexpected size % instead of 8", size_of(type_of(ktxTexture2._protected)));
        assert(((cast(*void)(*instance.isArray)) - cast(*void)(*instance)) == 32, "ktxTexture2.isArray has unexpected offset % instead of 32", ((cast(*void)(*instance.isArray)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.isArray)) == 1, "ktxTexture2.isArray has unexpected size % instead of 1", size_of(type_of(ktxTexture2.isArray)));
        assert(((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)) == 33, "ktxTexture2.isCubemap has unexpected offset % instead of 33", ((cast(*void)(*instance.isCubemap)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.isCubemap)) == 1, "ktxTexture2.isCubemap has unexpected size % instead of 1", size_of(type_of(ktxTexture2.isCubemap)));
        assert(((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)) == 34, "ktxTexture2.isCompressed has unexpected offset % instead of 34", ((cast(*void)(*instance.isCompressed)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.isCompressed)) == 1, "ktxTexture2.isCompressed has unexpected size % instead of 1", size_of(type_of(ktxTexture2.isCompressed)));
        assert(((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)) == 35, "ktxTexture2.generateMipmaps has unexpected offset % instead of 35", ((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.generateMipmaps)) == 1, "ktxTexture2.generateMipmaps has unexpected size % instead of 1", size_of(type_of(ktxTexture2.generateMipmaps)));
        assert(((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)) == 36, "ktxTexture2.baseWidth has unexpected offset % instead of 36", ((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.baseWidth)) == 4, "ktxTexture2.baseWidth has unexpected size % instead of 4", size_of(type_of(ktxTexture2.baseWidth)));
        assert(((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)) == 40, "ktxTexture2.baseHeight has unexpected offset % instead of 40", ((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.baseHeight)) == 4, "ktxTexture2.baseHeight has unexpected size % instead of 4", size_of(type_of(ktxTexture2.baseHeight)));
        assert(((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)) == 44, "ktxTexture2.baseDepth has unexpected offset % instead of 44", ((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.baseDepth)) == 4, "ktxTexture2.baseDepth has unexpected size % instead of 4", size_of(type_of(ktxTexture2.baseDepth)));
        assert(((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)) == 48, "ktxTexture2.numDimensions has unexpected offset % instead of 48", ((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.numDimensions)) == 4, "ktxTexture2.numDimensions has unexpected size % instead of 4", size_of(type_of(ktxTexture2.numDimensions)));
        assert(((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)) == 52, "ktxTexture2.numLevels has unexpected offset % instead of 52", ((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.numLevels)) == 4, "ktxTexture2.numLevels has unexpected size % instead of 4", size_of(type_of(ktxTexture2.numLevels)));
        assert(((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)) == 56, "ktxTexture2.numLayers has unexpected offset % instead of 56", ((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.numLayers)) == 4, "ktxTexture2.numLayers has unexpected size % instead of 4", size_of(type_of(ktxTexture2.numLayers)));
        assert(((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)) == 60, "ktxTexture2.numFaces has unexpected offset % instead of 60", ((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.numFaces)) == 4, "ktxTexture2.numFaces has unexpected size % instead of 4", size_of(type_of(ktxTexture2.numFaces)));
        assert(((cast(*void)(*instance.orientation)) - cast(*void)(*instance)) == 64, "ktxTexture2.orientation has unexpected offset % instead of 64", ((cast(*void)(*instance.orientation)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.orientation)) == 12, "ktxTexture2.orientation has unexpected size % instead of 12", size_of(type_of(ktxTexture2.orientation)));
        assert(((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)) == 80, "ktxTexture2.kvDataHead has unexpected offset % instead of 80", ((cast(*void)(*instance.kvDataHead)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.kvDataHead)) == 8, "ktxTexture2.kvDataHead has unexpected size % instead of 8", size_of(type_of(ktxTexture2.kvDataHead)));
        assert(((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)) == 88, "ktxTexture2.kvDataLen has unexpected offset % instead of 88", ((cast(*void)(*instance.kvDataLen)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.kvDataLen)) == 4, "ktxTexture2.kvDataLen has unexpected size % instead of 4", size_of(type_of(ktxTexture2.kvDataLen)));
        assert(((cast(*void)(*instance.kvData)) - cast(*void)(*instance)) == 96, "ktxTexture2.kvData has unexpected offset % instead of 96", ((cast(*void)(*instance.kvData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.kvData)) == 8, "ktxTexture2.kvData has unexpected size % instead of 8", size_of(type_of(ktxTexture2.kvData)));
        assert(((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)) == 104, "ktxTexture2.dataSize has unexpected offset % instead of 104", ((cast(*void)(*instance.dataSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.dataSize)) == 8, "ktxTexture2.dataSize has unexpected size % instead of 8", size_of(type_of(ktxTexture2.dataSize)));
        assert(((cast(*void)(*instance.pData)) - cast(*void)(*instance)) == 112, "ktxTexture2.pData has unexpected offset % instead of 112", ((cast(*void)(*instance.pData)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.pData)) == 8, "ktxTexture2.pData has unexpected size % instead of 8", size_of(type_of(ktxTexture2.pData)));
        assert(((cast(*void)(*instance.vkFormat)) - cast(*void)(*instance)) == 120, "ktxTexture2.vkFormat has unexpected offset % instead of 120", ((cast(*void)(*instance.vkFormat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.vkFormat)) == 4, "ktxTexture2.vkFormat has unexpected size % instead of 4", size_of(type_of(ktxTexture2.vkFormat)));
        assert(((cast(*void)(*instance.pDfd)) - cast(*void)(*instance)) == 128, "ktxTexture2.pDfd has unexpected offset % instead of 128", ((cast(*void)(*instance.pDfd)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.pDfd)) == 8, "ktxTexture2.pDfd has unexpected size % instead of 8", size_of(type_of(ktxTexture2.pDfd)));
        assert(((cast(*void)(*instance.supercompressionScheme)) - cast(*void)(*instance)) == 136, "ktxTexture2.supercompressionScheme has unexpected offset % instead of 136", ((cast(*void)(*instance.supercompressionScheme)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.supercompressionScheme)) == 4, "ktxTexture2.supercompressionScheme has unexpected size % instead of 4", size_of(type_of(ktxTexture2.supercompressionScheme)));
        assert(((cast(*void)(*instance.isVideo)) - cast(*void)(*instance)) == 140, "ktxTexture2.isVideo has unexpected offset % instead of 140", ((cast(*void)(*instance.isVideo)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.isVideo)) == 1, "ktxTexture2.isVideo has unexpected size % instead of 1", size_of(type_of(ktxTexture2.isVideo)));
        assert(((cast(*void)(*instance.duration)) - cast(*void)(*instance)) == 144, "ktxTexture2.duration has unexpected offset % instead of 144", ((cast(*void)(*instance.duration)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.duration)) == 4, "ktxTexture2.duration has unexpected size % instead of 4", size_of(type_of(ktxTexture2.duration)));
        assert(((cast(*void)(*instance.timescale)) - cast(*void)(*instance)) == 148, "ktxTexture2.timescale has unexpected offset % instead of 148", ((cast(*void)(*instance.timescale)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.timescale)) == 4, "ktxTexture2.timescale has unexpected size % instead of 4", size_of(type_of(ktxTexture2.timescale)));
        assert(((cast(*void)(*instance.loopcount)) - cast(*void)(*instance)) == 152, "ktxTexture2.loopcount has unexpected offset % instead of 152", ((cast(*void)(*instance.loopcount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2.loopcount)) == 4, "ktxTexture2.loopcount has unexpected size % instead of 4", size_of(type_of(ktxTexture2.loopcount)));
        assert(((cast(*void)(*instance._private)) - cast(*void)(*instance)) == 160, "ktxTexture2._private has unexpected offset % instead of 160", ((cast(*void)(*instance._private)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTexture2._private)) == 8, "ktxTexture2._private has unexpected size % instead of 8", size_of(type_of(ktxTexture2._private)));
        assert(size_of(ktxTexture2) == 168, "ktxTexture2 has size % instead of 168", size_of(ktxTexture2));
    }

    {
        instance: ktxTextureCreateInfo;
        assert(((cast(*void)(*instance.glInternalformat)) - cast(*void)(*instance)) == 0, "ktxTextureCreateInfo.glInternalformat has unexpected offset % instead of 0", ((cast(*void)(*instance.glInternalformat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.glInternalformat)) == 4, "ktxTextureCreateInfo.glInternalformat has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.glInternalformat)));
        assert(((cast(*void)(*instance.vkFormat)) - cast(*void)(*instance)) == 4, "ktxTextureCreateInfo.vkFormat has unexpected offset % instead of 4", ((cast(*void)(*instance.vkFormat)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.vkFormat)) == 4, "ktxTextureCreateInfo.vkFormat has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.vkFormat)));
        assert(((cast(*void)(*instance.pDfd)) - cast(*void)(*instance)) == 8, "ktxTextureCreateInfo.pDfd has unexpected offset % instead of 8", ((cast(*void)(*instance.pDfd)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.pDfd)) == 8, "ktxTextureCreateInfo.pDfd has unexpected size % instead of 8", size_of(type_of(ktxTextureCreateInfo.pDfd)));
        assert(((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)) == 16, "ktxTextureCreateInfo.baseWidth has unexpected offset % instead of 16", ((cast(*void)(*instance.baseWidth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.baseWidth)) == 4, "ktxTextureCreateInfo.baseWidth has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.baseWidth)));
        assert(((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)) == 20, "ktxTextureCreateInfo.baseHeight has unexpected offset % instead of 20", ((cast(*void)(*instance.baseHeight)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.baseHeight)) == 4, "ktxTextureCreateInfo.baseHeight has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.baseHeight)));
        assert(((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)) == 24, "ktxTextureCreateInfo.baseDepth has unexpected offset % instead of 24", ((cast(*void)(*instance.baseDepth)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.baseDepth)) == 4, "ktxTextureCreateInfo.baseDepth has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.baseDepth)));
        assert(((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)) == 28, "ktxTextureCreateInfo.numDimensions has unexpected offset % instead of 28", ((cast(*void)(*instance.numDimensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.numDimensions)) == 4, "ktxTextureCreateInfo.numDimensions has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.numDimensions)));
        assert(((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)) == 32, "ktxTextureCreateInfo.numLevels has unexpected offset % instead of 32", ((cast(*void)(*instance.numLevels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.numLevels)) == 4, "ktxTextureCreateInfo.numLevels has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.numLevels)));
        assert(((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)) == 36, "ktxTextureCreateInfo.numLayers has unexpected offset % instead of 36", ((cast(*void)(*instance.numLayers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.numLayers)) == 4, "ktxTextureCreateInfo.numLayers has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.numLayers)));
        assert(((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)) == 40, "ktxTextureCreateInfo.numFaces has unexpected offset % instead of 40", ((cast(*void)(*instance.numFaces)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.numFaces)) == 4, "ktxTextureCreateInfo.numFaces has unexpected size % instead of 4", size_of(type_of(ktxTextureCreateInfo.numFaces)));
        assert(((cast(*void)(*instance.isArray)) - cast(*void)(*instance)) == 44, "ktxTextureCreateInfo.isArray has unexpected offset % instead of 44", ((cast(*void)(*instance.isArray)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.isArray)) == 1, "ktxTextureCreateInfo.isArray has unexpected size % instead of 1", size_of(type_of(ktxTextureCreateInfo.isArray)));
        assert(((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)) == 45, "ktxTextureCreateInfo.generateMipmaps has unexpected offset % instead of 45", ((cast(*void)(*instance.generateMipmaps)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxTextureCreateInfo.generateMipmaps)) == 1, "ktxTextureCreateInfo.generateMipmaps has unexpected size % instead of 1", size_of(type_of(ktxTextureCreateInfo.generateMipmaps)));
        assert(size_of(ktxTextureCreateInfo) == 48, "ktxTextureCreateInfo has size % instead of 48", size_of(ktxTextureCreateInfo));
    }

    {
        instance: ktxStream;
        assert(((cast(*void)(*instance.read)) - cast(*void)(*instance)) == 0, "ktxStream.read has unexpected offset % instead of 0", ((cast(*void)(*instance.read)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.read)) == 8, "ktxStream.read has unexpected size % instead of 8", size_of(type_of(ktxStream.read)));
        assert(((cast(*void)(*instance.skip)) - cast(*void)(*instance)) == 8, "ktxStream.skip has unexpected offset % instead of 8", ((cast(*void)(*instance.skip)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.skip)) == 8, "ktxStream.skip has unexpected size % instead of 8", size_of(type_of(ktxStream.skip)));
        assert(((cast(*void)(*instance.write)) - cast(*void)(*instance)) == 16, "ktxStream.write has unexpected offset % instead of 16", ((cast(*void)(*instance.write)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.write)) == 8, "ktxStream.write has unexpected size % instead of 8", size_of(type_of(ktxStream.write)));
        assert(((cast(*void)(*instance.getpos)) - cast(*void)(*instance)) == 24, "ktxStream.getpos has unexpected offset % instead of 24", ((cast(*void)(*instance.getpos)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.getpos)) == 8, "ktxStream.getpos has unexpected size % instead of 8", size_of(type_of(ktxStream.getpos)));
        assert(((cast(*void)(*instance.setpos)) - cast(*void)(*instance)) == 32, "ktxStream.setpos has unexpected offset % instead of 32", ((cast(*void)(*instance.setpos)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.setpos)) == 8, "ktxStream.setpos has unexpected size % instead of 8", size_of(type_of(ktxStream.setpos)));
        assert(((cast(*void)(*instance.getsize)) - cast(*void)(*instance)) == 40, "ktxStream.getsize has unexpected offset % instead of 40", ((cast(*void)(*instance.getsize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.getsize)) == 8, "ktxStream.getsize has unexpected size % instead of 8", size_of(type_of(ktxStream.getsize)));
        assert(((cast(*void)(*instance.destruct)) - cast(*void)(*instance)) == 48, "ktxStream.destruct has unexpected offset % instead of 48", ((cast(*void)(*instance.destruct)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.destruct)) == 8, "ktxStream.destruct has unexpected size % instead of 8", size_of(type_of(ktxStream.destruct)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 56, "ktxStream.type has unexpected offset % instead of 56", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.type)) == 4, "ktxStream.type has unexpected size % instead of 4", size_of(type_of(ktxStream.type)));
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 64, "ktxStream.data has unexpected offset % instead of 64", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.data)) == 24, "ktxStream.data has unexpected size % instead of 24", size_of(type_of(ktxStream.data)));
        assert(((cast(*void)(*instance.readpos)) - cast(*void)(*instance)) == 88, "ktxStream.readpos has unexpected offset % instead of 88", ((cast(*void)(*instance.readpos)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.readpos)) == 8, "ktxStream.readpos has unexpected size % instead of 8", size_of(type_of(ktxStream.readpos)));
        assert(((cast(*void)(*instance.closeOnDestruct)) - cast(*void)(*instance)) == 96, "ktxStream.closeOnDestruct has unexpected offset % instead of 96", ((cast(*void)(*instance.closeOnDestruct)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxStream.closeOnDestruct)) == 1, "ktxStream.closeOnDestruct has unexpected size % instead of 1", size_of(type_of(ktxStream.closeOnDestruct)));
        assert(size_of(ktxStream) == 104, "ktxStream has size % instead of 104", size_of(ktxStream));
    }

    {
        instance: ktxAstcParams;
        assert(((cast(*void)(*instance.structSize)) - cast(*void)(*instance)) == 0, "ktxAstcParams.structSize has unexpected offset % instead of 0", ((cast(*void)(*instance.structSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.structSize)) == 4, "ktxAstcParams.structSize has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.structSize)));
        assert(((cast(*void)(*instance.verbose)) - cast(*void)(*instance)) == 4, "ktxAstcParams.verbose has unexpected offset % instead of 4", ((cast(*void)(*instance.verbose)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.verbose)) == 1, "ktxAstcParams.verbose has unexpected size % instead of 1", size_of(type_of(ktxAstcParams.verbose)));
        assert(((cast(*void)(*instance.threadCount)) - cast(*void)(*instance)) == 8, "ktxAstcParams.threadCount has unexpected offset % instead of 8", ((cast(*void)(*instance.threadCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.threadCount)) == 4, "ktxAstcParams.threadCount has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.threadCount)));
        assert(((cast(*void)(*instance.blockDimension)) - cast(*void)(*instance)) == 12, "ktxAstcParams.blockDimension has unexpected offset % instead of 12", ((cast(*void)(*instance.blockDimension)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.blockDimension)) == 4, "ktxAstcParams.blockDimension has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.blockDimension)));
        assert(((cast(*void)(*instance.mode)) - cast(*void)(*instance)) == 16, "ktxAstcParams.mode has unexpected offset % instead of 16", ((cast(*void)(*instance.mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.mode)) == 4, "ktxAstcParams.mode has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.mode)));
        assert(((cast(*void)(*instance.qualityLevel)) - cast(*void)(*instance)) == 20, "ktxAstcParams.qualityLevel has unexpected offset % instead of 20", ((cast(*void)(*instance.qualityLevel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.qualityLevel)) == 4, "ktxAstcParams.qualityLevel has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.qualityLevel)));
        assert(((cast(*void)(*instance.normalMap)) - cast(*void)(*instance)) == 24, "ktxAstcParams.normalMap has unexpected offset % instead of 24", ((cast(*void)(*instance.normalMap)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.normalMap)) == 1, "ktxAstcParams.normalMap has unexpected size % instead of 1", size_of(type_of(ktxAstcParams.normalMap)));
        assert(((cast(*void)(*instance.perceptual)) - cast(*void)(*instance)) == 25, "ktxAstcParams.perceptual has unexpected offset % instead of 25", ((cast(*void)(*instance.perceptual)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.perceptual)) == 1, "ktxAstcParams.perceptual has unexpected size % instead of 1", size_of(type_of(ktxAstcParams.perceptual)));
        assert(((cast(*void)(*instance.inputSwizzle)) - cast(*void)(*instance)) == 26, "ktxAstcParams.inputSwizzle has unexpected offset % instead of 26", ((cast(*void)(*instance.inputSwizzle)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxAstcParams.inputSwizzle)) == 4, "ktxAstcParams.inputSwizzle has unexpected size % instead of 4", size_of(type_of(ktxAstcParams.inputSwizzle)));
        assert(size_of(ktxAstcParams) == 32, "ktxAstcParams has size % instead of 32", size_of(ktxAstcParams));
    }

    {
        instance: ktxBasisParams;
        assert(((cast(*void)(*instance.structSize)) - cast(*void)(*instance)) == 0, "ktxBasisParams.structSize has unexpected offset % instead of 0", ((cast(*void)(*instance.structSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.structSize)) == 4, "ktxBasisParams.structSize has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.structSize)));
        assert(((cast(*void)(*instance.uastc)) - cast(*void)(*instance)) == 4, "ktxBasisParams.uastc has unexpected offset % instead of 4", ((cast(*void)(*instance.uastc)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastc)) == 1, "ktxBasisParams.uastc has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.uastc)));
        assert(((cast(*void)(*instance.verbose)) - cast(*void)(*instance)) == 5, "ktxBasisParams.verbose has unexpected offset % instead of 5", ((cast(*void)(*instance.verbose)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.verbose)) == 1, "ktxBasisParams.verbose has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.verbose)));
        assert(((cast(*void)(*instance.noSSE)) - cast(*void)(*instance)) == 6, "ktxBasisParams.noSSE has unexpected offset % instead of 6", ((cast(*void)(*instance.noSSE)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.noSSE)) == 1, "ktxBasisParams.noSSE has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.noSSE)));
        assert(((cast(*void)(*instance.threadCount)) - cast(*void)(*instance)) == 8, "ktxBasisParams.threadCount has unexpected offset % instead of 8", ((cast(*void)(*instance.threadCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.threadCount)) == 4, "ktxBasisParams.threadCount has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.threadCount)));
        assert(((cast(*void)(*instance.compressionLevel)) - cast(*void)(*instance)) == 12, "ktxBasisParams.compressionLevel has unexpected offset % instead of 12", ((cast(*void)(*instance.compressionLevel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.compressionLevel)) == 4, "ktxBasisParams.compressionLevel has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.compressionLevel)));
        assert(((cast(*void)(*instance.qualityLevel)) - cast(*void)(*instance)) == 16, "ktxBasisParams.qualityLevel has unexpected offset % instead of 16", ((cast(*void)(*instance.qualityLevel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.qualityLevel)) == 4, "ktxBasisParams.qualityLevel has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.qualityLevel)));
        assert(((cast(*void)(*instance.maxEndpoints)) - cast(*void)(*instance)) == 20, "ktxBasisParams.maxEndpoints has unexpected offset % instead of 20", ((cast(*void)(*instance.maxEndpoints)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.maxEndpoints)) == 4, "ktxBasisParams.maxEndpoints has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.maxEndpoints)));
        assert(((cast(*void)(*instance.endpointRDOThreshold)) - cast(*void)(*instance)) == 24, "ktxBasisParams.endpointRDOThreshold has unexpected offset % instead of 24", ((cast(*void)(*instance.endpointRDOThreshold)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.endpointRDOThreshold)) == 4, "ktxBasisParams.endpointRDOThreshold has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.endpointRDOThreshold)));
        assert(((cast(*void)(*instance.maxSelectors)) - cast(*void)(*instance)) == 28, "ktxBasisParams.maxSelectors has unexpected offset % instead of 28", ((cast(*void)(*instance.maxSelectors)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.maxSelectors)) == 4, "ktxBasisParams.maxSelectors has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.maxSelectors)));
        assert(((cast(*void)(*instance.selectorRDOThreshold)) - cast(*void)(*instance)) == 32, "ktxBasisParams.selectorRDOThreshold has unexpected offset % instead of 32", ((cast(*void)(*instance.selectorRDOThreshold)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.selectorRDOThreshold)) == 4, "ktxBasisParams.selectorRDOThreshold has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.selectorRDOThreshold)));
        assert(((cast(*void)(*instance.inputSwizzle)) - cast(*void)(*instance)) == 36, "ktxBasisParams.inputSwizzle has unexpected offset % instead of 36", ((cast(*void)(*instance.inputSwizzle)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.inputSwizzle)) == 4, "ktxBasisParams.inputSwizzle has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.inputSwizzle)));
        assert(((cast(*void)(*instance.normalMap)) - cast(*void)(*instance)) == 40, "ktxBasisParams.normalMap has unexpected offset % instead of 40", ((cast(*void)(*instance.normalMap)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.normalMap)) == 1, "ktxBasisParams.normalMap has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.normalMap)));
        assert(((cast(*void)(*instance.separateRGToRGB_A)) - cast(*void)(*instance)) == 41, "ktxBasisParams.separateRGToRGB_A has unexpected offset % instead of 41", ((cast(*void)(*instance.separateRGToRGB_A)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.separateRGToRGB_A)) == 1, "ktxBasisParams.separateRGToRGB_A has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.separateRGToRGB_A)));
        assert(((cast(*void)(*instance.preSwizzle)) - cast(*void)(*instance)) == 42, "ktxBasisParams.preSwizzle has unexpected offset % instead of 42", ((cast(*void)(*instance.preSwizzle)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.preSwizzle)) == 1, "ktxBasisParams.preSwizzle has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.preSwizzle)));
        assert(((cast(*void)(*instance.noEndpointRDO)) - cast(*void)(*instance)) == 43, "ktxBasisParams.noEndpointRDO has unexpected offset % instead of 43", ((cast(*void)(*instance.noEndpointRDO)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.noEndpointRDO)) == 1, "ktxBasisParams.noEndpointRDO has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.noEndpointRDO)));
        assert(((cast(*void)(*instance.noSelectorRDO)) - cast(*void)(*instance)) == 44, "ktxBasisParams.noSelectorRDO has unexpected offset % instead of 44", ((cast(*void)(*instance.noSelectorRDO)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.noSelectorRDO)) == 1, "ktxBasisParams.noSelectorRDO has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.noSelectorRDO)));
        assert(((cast(*void)(*instance.uastcFlags)) - cast(*void)(*instance)) == 48, "ktxBasisParams.uastcFlags has unexpected offset % instead of 48", ((cast(*void)(*instance.uastcFlags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcFlags)) == 4, "ktxBasisParams.uastcFlags has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.uastcFlags)));
        assert(((cast(*void)(*instance.uastcRDO)) - cast(*void)(*instance)) == 52, "ktxBasisParams.uastcRDO has unexpected offset % instead of 52", ((cast(*void)(*instance.uastcRDO)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDO)) == 1, "ktxBasisParams.uastcRDO has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.uastcRDO)));
        assert(((cast(*void)(*instance.uastcRDOQualityScalar)) - cast(*void)(*instance)) == 56, "ktxBasisParams.uastcRDOQualityScalar has unexpected offset % instead of 56", ((cast(*void)(*instance.uastcRDOQualityScalar)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDOQualityScalar)) == 4, "ktxBasisParams.uastcRDOQualityScalar has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.uastcRDOQualityScalar)));
        assert(((cast(*void)(*instance.uastcRDODictSize)) - cast(*void)(*instance)) == 60, "ktxBasisParams.uastcRDODictSize has unexpected offset % instead of 60", ((cast(*void)(*instance.uastcRDODictSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDODictSize)) == 4, "ktxBasisParams.uastcRDODictSize has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.uastcRDODictSize)));
        assert(((cast(*void)(*instance.uastcRDOMaxSmoothBlockErrorScale)) - cast(*void)(*instance)) == 64, "ktxBasisParams.uastcRDOMaxSmoothBlockErrorScale has unexpected offset % instead of 64", ((cast(*void)(*instance.uastcRDOMaxSmoothBlockErrorScale)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDOMaxSmoothBlockErrorScale)) == 4, "ktxBasisParams.uastcRDOMaxSmoothBlockErrorScale has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.uastcRDOMaxSmoothBlockErrorScale)));
        assert(((cast(*void)(*instance.uastcRDOMaxSmoothBlockStdDev)) - cast(*void)(*instance)) == 68, "ktxBasisParams.uastcRDOMaxSmoothBlockStdDev has unexpected offset % instead of 68", ((cast(*void)(*instance.uastcRDOMaxSmoothBlockStdDev)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDOMaxSmoothBlockStdDev)) == 4, "ktxBasisParams.uastcRDOMaxSmoothBlockStdDev has unexpected size % instead of 4", size_of(type_of(ktxBasisParams.uastcRDOMaxSmoothBlockStdDev)));
        assert(((cast(*void)(*instance.uastcRDODontFavorSimplerModes)) - cast(*void)(*instance)) == 72, "ktxBasisParams.uastcRDODontFavorSimplerModes has unexpected offset % instead of 72", ((cast(*void)(*instance.uastcRDODontFavorSimplerModes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDODontFavorSimplerModes)) == 1, "ktxBasisParams.uastcRDODontFavorSimplerModes has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.uastcRDODontFavorSimplerModes)));
        assert(((cast(*void)(*instance.uastcRDONoMultithreading)) - cast(*void)(*instance)) == 73, "ktxBasisParams.uastcRDONoMultithreading has unexpected offset % instead of 73", ((cast(*void)(*instance.uastcRDONoMultithreading)) - cast(*void)(*instance)));
        assert(size_of(type_of(ktxBasisParams.uastcRDONoMultithreading)) == 1, "ktxBasisParams.uastcRDONoMultithreading has unexpected size % instead of 1", size_of(type_of(ktxBasisParams.uastcRDONoMultithreading)));
        assert(size_of(ktxBasisParams) == 76, "ktxBasisParams has size % instead of 76", size_of(ktxBasisParams));
    }
}

