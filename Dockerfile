FROM python:3.5

RUN apt-get update && apt-get install -y \
    build-essential \
    gfortran \
    libblas-dev \
    liblapack-dev \
    libxft-dev \
    && rm -rf /var/lib/apt/lists/*

# order matters
RUN pip3 install --upgrade \
    numpy \
    scipy \
    scikit-learn \
    matplotlib \
    pandas

WORKDIR /app


ADD test.py /app/test.py
ADD setup.py /app/setup.py

RUN python3 setup.py develop
RUN python3 test.py
