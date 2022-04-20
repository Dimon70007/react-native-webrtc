#!/bin/bash

tools_dir=`pwd`

export USE_PROPRIETARY_CODECS=1
webrtc_src="$HOME/github"
mkdir -p $webrtc_src && \
test -d $webrtc_src/depot_tools || python build-webrtc.py --setup --android $webrtc_src && \
cd $webrtc_src/webrtc/android/src/ && \
git checkout dg-h264-m100 refs/remotes/branch-heads/dg-h264-m100
cd $tools_dir && \
python build-webrtc.py --sync --android $webrtc_src && \
python build-webrtc.py --build --android --debug $webrtc_src

# git checkout -b build-M100 refs/remotes/branch-heads/4896 && \
