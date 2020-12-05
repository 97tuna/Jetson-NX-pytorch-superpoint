echo "** install dev-tools"
sudo apt-get update
sudo apt-get -y install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
sudo pip3 install -U pip testresources setuptools==49.6.0
sudo pip3 install -U numpy==1.16.5 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11


echo "** upgrade setuptools"

sudo pip3 install --upgrade setuptools
sudo pip3 install -U setuptools
sudo apt-get install -y libpcap-dev libpq-dev
sudo apt-get install -y build-essential gfortran libatlas-base-dev liblapack-dev
sudo pip3 install numpy cython sklearn

echo "** install Scipy"

sudo wget https://github.com/scipy/scipy/releases/download/v1.3.3/scipy-1.3.3.tar.gz
tar -xzvf scipy-1.3.3.tar.gz scipy-1.3.3
cd scipy-1.3.3/
python3 setup.py install --user
sudo rm -rf scipy-1.3.3.tar.gz
sudo rm -rf scipy-1.3.3

echo "** install Tiff"

sudo wget https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz
sudo tar -xzvf tiff-4.1.0.tar.gz
cd tiff-4.1.0/
sudo ./configure
sudo make
sudo make install
sudo rm -rf tiff-4.1.0.tar.gz
sudo rm -rf tiff-4.1.0

echo "** install scikit-learn"

sudo pip3 install git+https://github.com/scikit-learn/scikit-learn.git
sudo apt-get install -y libaec-dev libblosc-dev libffi-dev libbrotli-dev libboost-all-dev libbz2-dev
sudo apt-get install -y libgif-dev libopenjp2-7-dev liblcms2-dev libjpeg-dev libjxr-dev liblz4-dev liblzma-dev libpng-dev libsnappy-dev libwebp-dev libzopfli-dev libzstd-dev

echo "** install scikit-image"  

sudo pip3 install imagecodecs
# pip3 install imagecodecs==2020.2.18 -i https://pypi.tuna.tsinghua.edu.cn/simple
# sudo pip3 install scikit-image
sudo git clone https://github.com/scikit-image/scikit-image.git
sudo cd scikit-image
sudo pip3 install -e .

echo "** install shapely"
sudo apt-get install python3-shapely