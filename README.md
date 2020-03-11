## Description
Singularity container defintion files and necessary commands to build those
containers.

The containers are automatically built after commit and are available for download at
[Singularity Hub](https://singularity-hub.org).

## Building

The _core_ bioinformatics container is published to (Singularity) Sylabs registry
and can be pulled using:

```
singularity pull library://raivivek/default/bio-images:core
```

If instead you wish to add additional options/tools to the base image, use the following
in your Singularity definition file:

```
BootStrap: library
From: raivivek/default/bio-images:core
IncludeCmd: yes
```

The repository uses this formula to build analysis specific images as well. For
instance, you can download ATAC-seq, RNA-seq, and Single-cell analysis relevant
images as following:

```
singularity pull library://raivivek/default/bio-images:atac
```

```
singularity pull library://raivivek/default/bio-images:rna
```

```
singularity pull library://raivivek/default/bio-images:singlecell
```
