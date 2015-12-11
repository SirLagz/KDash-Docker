FROM ubuntu

ENV SNINSTANCE <instance>
ENV SNUSERNAME <username>
ENV SNPASSWORD <password>
ENV SNTABLE <table>

EXPOSE 27017

RUN apt-get update && apt-get install -y mongodb git python3-requests python3-pymongo

RUN sed -i s/127.0.0.1/0.0.0.0/ /etc/mongodb.conf

RUN git clone https://github.com/SirLagz/KDash-Pipeline.git
RUN cd /KDash-Pipeline

CMD ["/KDash-Pipeline/core.py"]
