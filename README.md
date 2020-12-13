# Jeson_NX_pytorch_superpoint

> https://github.com/eric-yyjau/pytorch-superpoint

Because the superpoint does not work properly on the Jetson NX, the installation should be carried out in this way.
It is fast to use the docker to develop conveniently.

### Installation
if you are running the latest JetPack 4.4.1 (L4T R32.4.4) release:
```
docker pull nvcr.io/nvidia/l4t-pytorch:r32.4.4-pth1.6-py3
sudo docker run -it --rm --runtime nvidia --network host nvcr.io/nvidia/l4t-pytorch:r32.4.4-pth1.6-py3
```

### No docker setting in Python 3.6
```
wget https://nvidia.box.com/shared/static/wa34qwrwtk9njtyarwt5nvo6imenfy26.whl -O torch-1.7.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev 
pip3 install Cython
pip3 install numpy torch-1.7.0-cp36-cp36m-linux_aarch64.whl
```

### Install Torchvision
```
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch <version> https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
export BUILD_VERSION=0.x.0  # where 0.x.0 is the torchvision version  
sudo python setup.py install     # use python3 if installing for Python 3.6
cd ../  # attempting to load torchvision from build dir will result in import error
pip3 install 'pillow<7' # always needed for Python 2.7, not needed torchvision v0.5.0+ with Python 3.6
```

- PyTorch v1.6 - torchvision v0.7.0
- PyTorch v1.7 - torchvision v0.8.1

### Pytorch_Superpoint Original Docs Requirements
- python == 3.6
- pytorch >= 1.1 (tested in 1.3.1)
- torchvision >= 0.3.0 (tested in 0.4.2)
- cuda (tested in cuda10)

### Jetson NX Requirements (pip3 doesn't install everything.)
- dev-tools
- upgrade setuptools
- install Scipy
- Tiff
- scikit-learn
- scikit-image
- imagecodecs
- shapely

### Install dev-tools
```
sudo apt-get update
sudo apt-get -y install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
sudo pip3 install -U pip testresources setuptools==49.6.0
sudo pip3 install -U numpy==1.16.5 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
```

### upgrade setuptools
```
# sudo pip3 install --upgrade setuptools
# sudo pip3 install -U setuptools
sudo apt-get install -y libpcap-dev libpq-dev
sudo apt-get install -y build-essential gfortran libatlas-base-dev liblapack-dev
sudo pip3 install numpy cython sklearn
```

### Install Scipy
```
sudo wget https://github.com/scipy/scipy/releases/download/v1.3.3/scipy-1.3.3.tar.gz
tar -xzvf scipy-1.3.3.tar.gz scipy-1.3.3
cd scipy-1.3.3/
python3 setup.py install --user
sudo rm -rf scipy-1.3.3.tar.gz
sudo rm -rf scipy-1.3.3
```

### Install Tiff
```
sudo wget https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz
sudo tar -xzvf tiff-4.1.0.tar.gz
cd tiff-4.1.0/
sudo ./configure
sudo make
sudo make install
sudo rm -rf tiff-4.1.0.tar.gz
sudo rm -rf tiff-4.1.0
```

### Install scikit-learn
```
sudo pip3 install git+https://github.com/scikit-learn/scikit-learn.git
sudo apt-get install -y libaec-dev libblosc-dev libffi-dev libbrotli-dev libboost-all-dev libbz2-dev
sudo apt-get install -y libgif-dev libopenjp2-7-dev liblcms2-dev libjpeg-dev libjxr-dev liblz4-dev liblzma-dev libpng-dev libsnappy-dev libwebp-dev libzopfli-dev libzstd-dev
```

### Install scikit-image
```
sudo pip3 install imagecodecs
# pip3 install imagecodecs==2020.2.18 -i https://pypi.tuna.tsinghua.edu.cn/simple
# sudo pip3 install scikit-image
sudo git clone https://github.com/scikit-image/scikit-image.git
sudo cd scikit-image
sudo pip3 install -e .
```

### Install shapely
```
sudo apt-get install python3-shapely
sudo pip3 install imgaug
```

### Install tensorflow
Install TensorFlow using the pip3 command. This command will install the latest version of TensorFlow compatible with JetPack 4.4.x.
```
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow
```

help to https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html

### Install tensorboard
```
pip3 install tensorboard
```
