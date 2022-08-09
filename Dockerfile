FROM python:3.7-alpine
ARG USER
ARG PASS
RUN echo "machine api.packagr.app \
  "    login ${USER} \
  "    password ${PASS}" > /root/.netrc
RUN chown root ~/.netrc
RUN chmod 0600 ~/.netrc
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
CMD make-person