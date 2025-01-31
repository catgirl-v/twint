FROM python:3.8-bullseye
LABEL maintainer="codyzacharias@pm.me"

WORKDIR /root

RUN git clone --depth=1 https://github.com/twintproject/twint.git && \
	cd /root/twint && \
	pip3.8 install -r py3.8-requirements.txt -e .

CMD /bin/bash
