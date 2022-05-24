FROM pytorch/pytorch:1.8.1-cuda11.1-cudnn8-devel

RUN apt-get update \ 
    && apt-get upgrade -y \
    && python -m pip install --upgrade pip

RUN pip install torch-scatter==2.0.6 \
                torch-sparse==0.6.12 \
                torch-geometric==1.7.1 \
                pytorch-lightning==1.3.6 \
                -f https://data.pyg.org/whl/torch-1.8.1+cu111.html
                
RUN pip install matplotlib \
                deepchem \
                lifelines 

WORKDIR /src/