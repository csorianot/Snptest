FROM debian:latest
RUN apt-get clean && apt-get update
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*
RUN curl 'https://www.cog-genomics.org/static/bin/plink180410/plink_linux_x86_64.zip'> plink.zip && \
    unzip plink.zip && rm plink.zip && mv plink /usr/local/bin
RUN curl 'https://mathgen.stats.ox.ac.uk/impute/impute_v2.3.2_x86_64_dynamic.tgz'> impute_v2.3.2_x86_64_dynamic.tgz && \ 
  tar zxvf impute_v2.3.2_x86_64_dynamic.tgz> impute2 && rm impute_v2.3.2_x86_64_dynamic.tgz && mv ./impute2/* /usr/local/bin/
RUN curl 'https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.v2.r904.glibcv2.17.linux.tar.gz'> shapeit.v2.r904.glibcv2.17.linux.tar.gz && \
 tar zxvf shapeit.v2.r904.glibcv2.17.linux.tar.gz > shapeit && rm shapeit.v2.r904.glibcv2.17.linux.tar.gz && mv ./shapeit/* /usr/local/bin/
RUN curl 'http://www.well.ox.ac.uk/~cfreeman/software/gwas/gtool_v0.7.5_x86_64.tgz'> gtool.tgz && \ 
 tar zxvf gtool.tgz && rm gtool.tgz && mv gtool /usr/local/bin
RUN curl 'http://www.well.ox.ac.uk/~gav/resources/snptest_v2.5.2_linux_x86_64_dynamic.tgz'> snptest_v2.5.2_linux_x86_64_dynamic.tgz && \ 
 tar zxvf snptest_v2.5.2_linux_x86_64_dynamic.tgz>snptest && rm snptest_v2.5.2_linux_x86_64_dynamic.tgz && mv ./snptest/* /usr/local/bin/
