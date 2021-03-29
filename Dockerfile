FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel

LABEL author="Marcelo Garcia"

RUN apt-get update --fix-missing && apt-get install -y \
    ffmpeg \
    git \
    git-core \ 
    pkg-config \
    python3-pip \
    unzip \
    vim \
    wget \
    zip \
    zlib1g-dev

RUN cd /home/A01375067/MRGE_workspace/Sensor_Fusion_and_Tracking/ && pip3 install -r requirements.txt

WORKDIR /home/A01375067/app

CMD ["printf", "***************************************\nSensor Fusion and Tracking Docker\nAuthor: Marcelo Garcia\n***************************************\n"]



