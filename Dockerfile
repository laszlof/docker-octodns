FROM python:3-alpine
COPY requirements.txt .
RUN apk add --no-cache --update \
	gcc \
    cargo \
	musl-dev \
	libffi-dev \
	openssl-dev
RUN pip install -r requirements.txt
CMD ["/bin/sh"]