FROM fronteo/fhcjupytertf:v0.3.2
MAINTAINER Wu Tong

RUN pip install ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension

# Install JupyterLab
RUN pip install jupyterlab && jupyter serverextension enable --py jupyterlab

# To run jupyter lab, argument need be changed
COPY run_jupyter.sh /

CMD ["/run_jupyter.sh", "--allow-root"]