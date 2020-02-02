BootStrap: docker
From: continuumio/miniconda3:latest
IncludeCmd: yes

%post
    umask 0022
    apt-get update && apt-get -y dist-upgrade

    export PATH=/opt/conda/bin:$PATH

    mkdir -p /sw
    mkdir -p /scratch
    mkdir -p /gpfs

    conda install --yes         \
      -c defaults               \
      -c bioconda               \
      -c conda-forge            \
      python=3.6                \
      r-base=3.5.1              \
      star                      \
      qorts                     \
      bwa                       \
      macs2                     \
      picard                    \
      fastqc                    \
      samtools                  \
      bedtools                  \
      bamutil                   \
      sra-tools                 \
      cutadapt                  \
      trim-galore               \
      multiqc                   \
      ataqv                     \
      subread                   \
      ucsc-bedclip=377          \
      ucsc-bedgraphtobigwig=377 \
      ucsc-bedsort=377          \
      ucsc-fetchchromsizes=377  \
      pysam                     \
      biopython                 \
      pybedtools                \
      r-devtools                \
      r-optparse                \
      r-tidyverse               \
      r-glue                    \
      bioconductor-genomicranges

    conda clean --all


%environment
    unset CONDA_DEFAULT_ENV
    export ANACONDA_HOME=/opt/conda
    export PICARD_JAR=$(find /opt/conda/share | grep picard.jar)
    export QORTS_JAR=$(find /opt/conda/share | grep QoRTs.jar)
    export LC_ALL=C

%labels
    Author vivekrai@umich.edu
    Version v0.0.1
