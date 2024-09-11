FROM jupyter/datascience-notebook:latest

# wget con usuario poderoso y arreglando permisos por si acaso
USER root
RUN apt-get update && \
    apt-get install -y git wget && \
    fix-permissions /home/jovyan

# Volver a usuario normal
USER jovyan

# Sin contraseña
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

# Puerto
EXPOSE 8888