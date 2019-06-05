FROM continuumio/miniconda3

MAINTAINER gwangmin <ygm.gwangmin@gmail.com>

RUN conda install -y python=3.6
RUN conda install -y matplotlib
RUN conda install -y seaborn
RUN conda install -y pandas
RUN conda install -y keras
RUN conda install -y scikit-learn
RUN conda install -y requests
RUN conda install -y beautifulsoup4
RUN conda install -y -c menpo opencv
RUN conda install -y gensim
RUN conda install -y jupyterlab
RUN conda install -c conda-forge nodejs
RUN jupyter labextension install @jupyterlab/toc

WORKDIR /root

VOLUME /root/docker_shared_dir

EXPOSE 8888

CMD ["jupyter","lab","--allow-root","--ip","0.0.0.0","--port","8888"]

