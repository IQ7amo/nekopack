FROM vtvit/iquser:alpine

#clonning repo 
RUN git clone https://github.com/vtvit/iquser/tree/master.git /root/iquser
#working directory 
WORKDIR /root/iquser

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/iquser/bin:$PATH"

CMD ["python3","-m","iquser"]
