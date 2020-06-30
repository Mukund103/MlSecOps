FROM centos
RUN yum install python36 -y
RUN pip3 install pandas
RUN pip3 install scikit-learn
MAINTAINER Mukund
RUN mkdir mlops
WORKDIR mlops
COPY weblog1.csv    .
COPY weblog_kmean.py  .
ENTRYPOINT ["python3"]
