#!/bin/bash

tools_dir=`pwd`

export USE_PROPRIETARY_CODECS=1
export rtc_use_h264=1
export rtc_use_h265=1
export ffmpeg_branding="Chrome"
webrtc_src="$HOME/github/webrtc_src"
# mkdir -p $webrtc_src && \
# python build-webrtc.py --setup --android $webrtc_src && \
# cd $webrtc_src/build_webrtc/webrtc/android/src/ && \
# git checkout -b 88-sdk refs/remotes/branch-heads/88-sdk && \
# cd $tools_dir && \
python build-webrtc.py --sync --android $webrtc_src && \
python build-webrtc.py --build --android --debug $webrtc_src


# git checkout -b build-M100 refs/remotes/branch-heads/4896 && \
