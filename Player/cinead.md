wget https://storage.googleapis.com/cinemataztic-public/player/cinead-d_0.2.1_all.deb && sudo apt-get install ./cinead-d_0.2.1_all.deb \
&& wget https://storage.googleapis.com/cinemataztic-public/player/cinead-p_0.2.1_amd64.deb && sudo apt-get install ./cinead-p_0.2.1_amd64.deb \
&& sudo systemctl enable cinead-d \
&& sudo systemctl restart cinead-d \
&& rm*.deb \
&& sudo systemctl status cinead-d



