#!/bin/bash

tools_dir=`pwd`

export USE_PROPRIETARY_CODECS=1
webrtc_src="$HOME/github"
mkdir -p $webrtc_src #&& \
python build-webrtc.py --setup --android $webrtc_src && \
cd $webrtc_src/webrtc/android/src/ && \
git checkout -b 100-sdk refs/remotes/branch-heads/4896 && \
cd $tools_dir && \
python build-webrtc.py --sync --android $webrtc_src && \
python build-webrtc.py --build --android --debug $webrtc_src

# git am --3way --ignore-space-change ../../patches/0001-fixed-h264-decoder-support-for-any-codecs.patch && \

# git checkout -b build-M100 refs/remotes/branch-heads/4896 && \
