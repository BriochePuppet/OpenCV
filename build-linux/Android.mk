#
# Copyright (C) YuqiaoZhang(HanetakaChou)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# https://developer.android.com/ndk/guides/android_mk

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := FFmpeg-AVCodec

LOCAL_SRC_FILES := $(LOCAL_PATH)/../thirdparty/FFmpeg/build-linux/bin/x86_64/libavcodec.57.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := FFmpeg-AVFormat

LOCAL_SRC_FILES := $(LOCAL_PATH)/../thirdparty/FFmpeg/build-linux/bin/x86_64/libavformat.57.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := FFmpeg-AVUtil

LOCAL_SRC_FILES := $(LOCAL_PATH)/../thirdparty/FFmpeg/build-linux/bin/x86_64/libavutil.55.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := FFmpeg-SWResample

LOCAL_SRC_FILES := $(LOCAL_PATH)/../thirdparty/FFmpeg/build-linux/bin/x86_64/libswresample.2.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := FFmpeg-SWScale

LOCAL_SRC_FILES := $(LOCAL_PATH)/../thirdparty/FFmpeg/build-linux/bin/x86_64/libswscale.4.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := OpenCV

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../modules/core/src/algorithm.cpp \
	$(LOCAL_PATH)/../modules/core/src/alloc.cpp \
	$(LOCAL_PATH)/../modules/core/src/arithm.cpp \
	$(LOCAL_PATH)/../modules/core/src/arithm.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/array.cpp \
	$(LOCAL_PATH)/../modules/core/src/async.cpp \
	$(LOCAL_PATH)/../modules/core/src/batch_distance.cpp \
	$(LOCAL_PATH)/../modules/core/src/bindings_utils.cpp \
	$(LOCAL_PATH)/../modules/core/src/buffer_area.cpp \
	$(LOCAL_PATH)/../modules/core/src/channels.cpp \
	$(LOCAL_PATH)/../modules/core/src/check.cpp \
	$(LOCAL_PATH)/../modules/core/src/command_line_parser.cpp \
	$(LOCAL_PATH)/../modules/core/src/conjugate_gradient.cpp \
	$(LOCAL_PATH)/../modules/core/src/convert.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/convert_c.cpp \
	$(LOCAL_PATH)/../modules/core/src/convert_scale.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/copy.cpp \
	$(LOCAL_PATH)/../modules/core/src/count_non_zero.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/cuda_gpu_mat.cpp \
	$(LOCAL_PATH)/../modules/core/src/cuda_host_mem.cpp \
	$(LOCAL_PATH)/../modules/core/src/cuda_info.cpp \
	$(LOCAL_PATH)/../modules/core/src/cuda_stream.cpp \
	$(LOCAL_PATH)/../modules/core/src/datastructs.cpp \
	$(LOCAL_PATH)/../modules/core/src/directx.cpp \
	$(LOCAL_PATH)/../modules/core/src/downhill_simplex.cpp \
	$(LOCAL_PATH)/../modules/core/src/dxt.cpp \
	$(LOCAL_PATH)/../modules/core/src/glob.cpp \
	$(LOCAL_PATH)/../modules/core/src/gl_core_3_1.cpp \
	$(LOCAL_PATH)/../modules/core/src/hal_internal.cpp \
	$(LOCAL_PATH)/../modules/core/src/kmeans.cpp \
	$(LOCAL_PATH)/../modules/core/src/lapack.cpp \
	$(LOCAL_PATH)/../modules/core/src/lda.cpp \
	$(LOCAL_PATH)/../modules/core/src/logger.cpp \
	$(LOCAL_PATH)/../modules/core/src/lpsolver.cpp \
	$(LOCAL_PATH)/../modules/core/src/lut.cpp \
	$(LOCAL_PATH)/../modules/core/src/mathfuncs.cpp \
	$(LOCAL_PATH)/../modules/core/src/mathfuncs_core.avx.cpp \
	$(LOCAL_PATH)/../modules/core/src/mathfuncs_core.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/matmul.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_c.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_decomp.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_expressions.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_iterator.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_operations.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_sparse.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_transform.cpp \
	$(LOCAL_PATH)/../modules/core/src/matrix_wrap.cpp \
	$(LOCAL_PATH)/../modules/core/src/mean.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/merge.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/minmax.cpp \
	$(LOCAL_PATH)/../modules/core/src/norm.cpp \
	$(LOCAL_PATH)/../modules/core/src/ocl.cpp \
	$(LOCAL_PATH)/../modules/core/src/opengl.cpp \
	$(LOCAL_PATH)/../modules/core/src/out.cpp \
	$(LOCAL_PATH)/../modules/core/src/ovx.cpp \
	$(LOCAL_PATH)/../modules/core/src/parallel.cpp \
	$(LOCAL_PATH)/../modules/core/src/parallel_impl.cpp \
	$(LOCAL_PATH)/../modules/core/src/pca.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_base64.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_c.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_cpp.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_json.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_types.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_xml.cpp \
	$(LOCAL_PATH)/../modules/core/src/persistence_yml.cpp \
	$(LOCAL_PATH)/../modules/core/src/rand.cpp \
	$(LOCAL_PATH)/../modules/core/src/softfloat.cpp \
	$(LOCAL_PATH)/../modules/core/src/split.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/stat.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/stat_c.cpp \
	$(LOCAL_PATH)/../modules/core/src/stl.cpp \
	$(LOCAL_PATH)/../modules/core/src/sum.dispatch.cpp \
	$(LOCAL_PATH)/../modules/core/src/system.cpp \
	$(LOCAL_PATH)/../modules/core/src/tables.cpp \
	$(LOCAL_PATH)/../modules/core/src/trace.cpp \
	$(LOCAL_PATH)/../modules/core/src/types.cpp \
	$(LOCAL_PATH)/../modules/core/src/umatrix.cpp \
	$(LOCAL_PATH)/../modules/core/src/utils/datafile.cpp \
	$(LOCAL_PATH)/../modules/core/src/utils/filesystem.cpp \
	$(LOCAL_PATH)/../modules/core/src/utils/samples.cpp \
	$(LOCAL_PATH)/../modules/core/src/va_intel.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/accum.avx.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/accum.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/accum.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/approx.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/bilateral_filter.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/blend.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/box_filter.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/canny.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/clahe.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/color.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/colormap.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/color_hsv.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/color_lab.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/color_rgb.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/color_yuv.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/connectedcomponents.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/contours.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/convhull.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/corner.avx.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/corner.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/cornersubpix.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/demosaicing.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/deriv.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/distransform.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/drawing.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/emd.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/featureselect.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/filter.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/floodfill.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/gabor.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/generalized_hough.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/geometry.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/grabcut.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/hershey_fonts.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/histogram.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/hough.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/imgwarp.avx2.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/imgwarp.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/imgwarp.sse4_1.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/intersection.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/linefit.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/lsd.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/main.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/matchcontours.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/median_blur.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/min_enclosing_triangle.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/moments.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/morph.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/phasecorr.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/pyramids.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/resize.avx2.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/resize.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/resize.sse4_1.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/rotcalipers.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/samplers.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/segmentation.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/shapedescr.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/smooth.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/spatialgradient.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/subdivision2d.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/sumpixels.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/tables.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/templmatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/thresh.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/undistort.dispatch.cpp \
	$(LOCAL_PATH)/../modules/imgproc/src/utils.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/cap.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/cap_cmu.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/cap_ffmpeg.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/cap_v4l.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/container_avi.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/videoio_c.cpp \
	$(LOCAL_PATH)/../modules/videoio/src/videoio_registry.cpp

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_CFLAGS += -D__OPENCV_BUILD=1
LOCAL_CFLAGS += -DOPENCV_ALLOCATOR_STATS_COUNTER_TYPE=long\ long
LOCAL_CFLAGS += -DZ_SOLO=1

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../modules/core/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../modules/imgproc/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../modules/videoio/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../thirdparty/FFmpeg/include

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++17

LOCAL_CPP_FEATURES := 
LOCAL_CPP_FEATURES += rtti
LOCAL_CPP_FEATURES += exceptions

include $(BUILD_STATIC_LIBRARY)
