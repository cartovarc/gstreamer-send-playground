export BROWSER_SDP=
# echo $BROWSER_SDP | go run main.go -video-src 'tcpclientsrc port=11112 host=192.168.100.210 ! h264parse ! avdec_h264 !'
echo $BROWSER_SDP | go run main.go -video-src "rtspsrc location=\"rtsp://admin:compuaras19@192.168.10.20:554/cam/realmonitor?channel=1&subtype=0\" ! rtph264depay ! h264parse ! omxh264dec ! nvvidconv "
