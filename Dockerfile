FROM fedora:latest

RUN mkdir /app && dnf install -y python3 python3-pip python3-pandas python3-numpy python3-matplotlib python3-ipython python3-sympy && \
    pip3 install --upgrade pip jupyter pandarallel qgrid

WORKDIR /app

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"]
