FROM ubuntu:18.04
RUN mkdir -p /onebyte
COPY . /onebyte
RUN pip install -r /onebyte/requirements.txt
VOLUME /onebyte
WORKDIR /onebyte
RUN chmod a+x  /onebyte/app.py
CMD ["python","app.py"]
EXPOSE 5000:5000

