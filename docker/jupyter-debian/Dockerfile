# This Dockerfile containers Jupyter Notebook server with many
# SQLFlow tutorials and SQLFlow magic command.

FROM python:3.8-buster

#ARG FIND_FASTED_MIRROR=true
RUN apt-get update && apt-get install -y wget mariadb-client libmariadb-dev

# Install IPythono Notebook tutorials
COPY /docker/jupyter-debian/js /jupyter/js/
COPY build/tutorial /workspace
# Remove non-interactive tutorials
RUN rm /workspace/energe_lstmbasedtimeseries.ipynb \
     /workspace/cora-gcn.ipynb \
     /workspace/imdb-stackedbilstm.ipynb

COPY docker/jupyter-debian/install-jupyter.sh /jupyter/install-jupyter.sh
RUN ./jupyter/install-jupyter.sh

# The following SQLFlow gRPC server endpoint implies the server runs in a container,
# and if container has the option --net=container:sqlflow_server_container, SQLFlow magic
# command can access the SQLFlow gRPC server running in another container as it runs
# in the same container.
ARG SQLFLOW_SERVER="0.0.0.0:50051"
ENV SQLFLOW_SERVER=${SQLFLOW_SERVER}

# The following data source URL implies that the MySQL server runs in
# a container, the data source will be retrieved by SQLFlow magic command
# and be sent to SQLFLow server in each request. The SQLFlow server compiles this
# value into each step container, so these step container knews data source.
ARG SQLFLOW_DATASOURCE="mysql://root:root@tcp(0.0.0.0:3306)/?maxAllowedPacket=0"
ENV SQLFLOW_DATASOURCE=${SQLFLOW_DATASOURCE}

WORKDIR /workspace
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''"]