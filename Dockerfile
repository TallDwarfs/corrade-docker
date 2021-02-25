FROM mono:6

RUN useradd -d /home/container -m container
RUN apt update
RUN apt install -y unzip wget
RUN mkdir -p /home/container
RUN wget --no-check-certificate https://corrade.grimore.org/download/corrade/linux-x64/LATEST.zip
RUN unzip -d /home/container LATEST.zip

WORKDIR /home/container

ENTRYPOINT [ "/home/container/Corrade" ]
