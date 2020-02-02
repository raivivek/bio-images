## Description
Repository containers Singularity container defintion files and necessary commands to
build those containers.

The containers are automatically built after commit and are available for download at
[Singularity Hub](https://singularity-hub.org).

## Building

The base bioinformatics container can be downloaded using:

```
singularity pull library://raivivek/bio-images:latest
```

If you wish to downloaded images with a few extra tools for RNA-seq analysis or
Single-cell analysis, run the following:

```
singularity pull shub://raivivek/bio-images:rna
```

or,

```
singularity pull shub://raivivek/bio-images:singlecell
```

## Contact
Parker Lab (theparkerlab.org), University of Michigan
