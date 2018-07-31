For ($i=0; $i -le 10; $i++) {
    ffmpeg -f rtsp -rtsp_transport tcp -i rtsp://admin:HuaWei123@10.7.1.65:554/LiveMedia/ch1/Media1 -an -f mpegts -codec:v mpeg1video -s 1280x720 -b:v 1000k -bf 0 http://54.213.226.202:909$i/nodeflux
    }