FROM debian:latest
RUN apt-get clean && apt-get update
RUN apt-get update && apt-get install -y curl unzip vim mysql-server liblapack3 git && rm -rf /var/lib/apt/lists/*
RUN curl -LO 'http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20190304.zip' && unzip plink_linux_x86_64_20190304.zip && rm plink_linux_x86_64_20190304.zip && mv plink /usr/local/bin/
RUN curl 'https://mathgen.stats.ox.ac.uk/impute/impute_v2.3.2_x86_64_dynamic.tgz'> impute_v2.3.2_x86_64_dynamic.tgz && \ 
  tar zxvf impute_v2.3.2_x86_64_dynamic.tgz && rm impute_v2.3.2_x86_64_dynamic.tgz && mv impute_v2.3.2_x86_64_dynamic/* /usr/local/bin/
RUN curl 'https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.v2.r904.glibcv2.17.linux.tar.gz'> shapeit.v2.r904.glibcv2.17.linux.tar.gz && \
 tar zxvf shapeit.v2.r904.glibcv2.17.linux.tar.gz && rm shapeit.v2.r904.glibcv2.17.linux.tar.gz && mv shapeit.v2.904.3.10.0-693.11.6.el7.x86_64/bin/* /usr/local/bin/ && mv shapeit.v2.904.3.10.0-693.11.6.el7.x86_64/* /usr/local/bin/
RUN curl 'https://www.well.ox.ac.uk/~cfreeman/software/gwas/gtool_v0.7.5_x86_64_dynamic.tgz'> gtool_v0.7.5_x86_64_dynamic.tgz  && \
 tar xvzf gtool_v0.7.5_x86_64_dynamic.tgz && rm gtool_v0.7.5_x86_64_dynamic.tgz && mv gtool /usr/local/bin
RUN curl -LO 'http://www.well.ox.ac.uk/~gav/resources/snptest_v2.5.2_linux_x86_64_dynamic.tgz' && \ 
tar zxvf snptest_v2.5.2_linux_x86_64_dynamic.tgz && rm snptest_v2.5.2_linux_x86_64_dynamic.tgz && mv -T snptest_v2.5.2_linux_x86_64_dynamic/example/ snptest_v2.5.2_linux_x86_64_dynamic/example2/ && mv snptest_v2.5.2_linux_x86_64_dynamic/snptest_v2.5.2 snptest_v2.5.2_linux_x86_64_dynamic/snptest && mv snptest_v2.5.2_linux_x86_64_dynamic/* /usr/local/bin/ && rm -r example && chmod 777 /usr/local/bin/*
RUN curl -LO 'https://www.well.ox.ac.uk/~gav/resources/qctool_v2.0.1-Ubuntu14.04-x86_64.tgz'> qctool_v2.0.1-Ubuntu14.04-x86_64.tgz && tar zxvf qctool_v2.0.1-Ubuntu14.04-x86_64.tgz  && mv qctool_v2.0.1-Ubuntu14.04-x86_64/* /usr/local/bin/ && chmod 777 /usr/local/bin/*
