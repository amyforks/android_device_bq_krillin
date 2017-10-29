#!/bin/bash
cd ../../../../..
cd system/core
git checkout *
git apply -v ../../device/bq/krillin/mtk/patches/system_core/surfaceflinger.patch
cd ../..
cd bionic
git checkout *
git apply -v ../device/bq/krillin/mtk/patches/bionic/libc.patch
cd ..
cd frameworks/av
git checkout *
git apply -v ../../device/bq/krillin/mtk/patches/frameworks_av/fix_wvm.patch
git apply -v ../../device/bq/krillin/mtk/patches/frameworks_av/capture.patch
git apply -v ../../device/bq/krillin/mtk/patches/frameworks_av/encoders_n.patch
git apply -v ../../device/bq/krillin/mtk/patches/frameworks_av/mtk_color_support.patch
cd ../..
