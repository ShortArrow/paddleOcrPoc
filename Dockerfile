FROM paddlepaddle/paddle:2.4.0-cpu

WORKDIR /work
RUN python3 -m pip install paddlepaddle -i https://mirror.baidu.com/pypi/simple
RUN python -m pip install --upgrade pip
RUN pip install "paddleocr>=2.0.1"

ENTRYPOINT ["paddleocr"]

