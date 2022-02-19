#!/bin/bash

tools_dir=`pwd`

webrtc_src="$HOME/github/webrtc_src"
mkdir -p $webrtc_src && \
python build-webrtc.py --setup --android $webrtc_src && \
cd $webrtc_src/build_webrtc/webrtc/android/src/ && \
git checkout -b build-M100 refs/remotes/branch-heads/4896 && \
cd $tools_dir && \
python build-webrtc.py --sync --android $webrtc_src && \
python build-webrtc.py --build --android --debug $webrtc_src
