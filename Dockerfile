FROM python:alpine
RUN set -ex \
  && pip install https://github.com/EKT1/valence/archive/master.zip \
  && pip download --no-deps https://github.com/EKT1/valence_server/archive/master.zip \
  && unzip master.zip \
  && rm master.zip \
  && cd valence_server-master && python setup.py install

WORKDIR /valence_server-master/valence_server
CMD ["python","server.py"]
EXPOSE 80/tcp
