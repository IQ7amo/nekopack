FROM vtvit/iquser:slim-buster

#clonning repo 
RUN git clone https://github.com/vtvit/iquser.git /root/iquser 
#working directory 
WORKDIR /root/iquser

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/iquser/bin:$PATH"

CMD ["python3","-m","iquser"]
