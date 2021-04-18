## Install GO for NVIDIA Jetson NANO (https://golang.org/dl/)
- Download Go for ARM64 linux, example go1.16.3.linux-arm64.tar.gz
- sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.3.linux-arm64.tar.gz
- echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile

## Test this project

### Download Pion examples
```bash
cd $HOME/Desktop
git clone https://github.com/pion/example-webrtc-applications.git
export GO111MODULE=on
go get github.com/pion/example-webrtc-applications/v3/gstreamer-send
```

### Replace gstreamer-send Pion example by our own
```bash
rm -rf $HOME/Desktop/example-webrtc-applications/gstreamer-send
git clone https://github.com/cartovarc/gstreamer-send-playground.git
mv $HOME/Desktop/gstreamer-send-playground $HOME/Desktop/example-webrtc-applications/gstreamer-send
```

### Open with VS Code
```bash
code $HOME/example-webrtc-applications/gstreamer-send
```

### Run
- Open html/demo.html on a browser
- Copy SDP to activate.sh
- source activate.sh
- Copy terminal SDP in browser and "Start Session"


## Utils

### Discover devices on same net
```bash
nmap -T5 -sP 192.168.10.*
```
