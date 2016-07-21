FROM alpine:3.2
ADD repositories /etc/apk/repositories
RUN apk add --update python python-dev gfortran py-pip build-base py-numpy@testing
RUN pip install web.py
RUN pip install numpy
RUN pip install sqlalchemy
RUN pip install sqlalchemy-migrate
RUN apk del python-dev gfortran build-base
RUN rm -rf /var/cache/apk/*
COPY galton /opt/galton
WORKDIR /opt/galton
CMD ["python","galton.py", "0.0.0.0:8080"]
