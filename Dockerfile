FROM dmiyamoto/neuron:jupyter

COPY ./mod/*.mod /mod/

ENV NRN_NMODL_PATH=/mod

USER root
RUN cd /mod && nrnivmodl
RUN pip install h5py

USER neuron
