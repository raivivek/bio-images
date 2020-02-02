## Description
Repository containers Singularity container defintion files and necessary commands to
build those containers.

The containers are automatically built after commit and are available for download at
[Singularity Hub](https://singularity-hub.org).

## Building

The base bioinformatics container is published to sylabs registry and can be pulled using:

```
singularity pull library://raivivek/default/bio-images:latest
```

If instead you wish to add additional options/tools to the base image, use the following
in your Singularity definition file:

```
BootStrap: library
From: raivivek/default/bio-images:latest
IncludeCmd: yes
```

The repository uses this formula to build analysis specific images as well. For instance,
you can download ATAC-seq, RNA-seq, and Single-cell analysis relevant images as following:

```
singularity pull shub://raivivek/bio-images:atac
```

```
singularity pull shub://raivivek/bio-images:rna
```

```
singularity pull shub://raivivek/bio-images:singlecell
```

## Contact
Parker Lab (theparkerlab.org), University of Michigan
