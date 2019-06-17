FROM postgres:12

# Install pgserver and py3
RUN apt-get update && \
    apt-get install -y postgresql-server-dev-12 python3-pip && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

# Install pgxn
RUN pip3 install pgxnclient --verbose --no-cache-dir

# Install pgtap
RUN pgxnclient install pgtap --verbose

# RUN pgxnclient install plv8
