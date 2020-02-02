## Description
Repository containers Singularity container defintion files and necessary commands to
build those containers.

Ideally, you'd want to keep these definition files updated so that lab members can
re-build containers as needed.

## Building

The base bioinformatics container can be downloaded using:

```
singularity pull library://raivivek/default/bioinformatics:latest
```

If you wish to downloaded images with a few extra tools for RNA-seq analysis or
Single-cell analysis, run the following:

```
singularity pull library://raivivek/default/bioinformatics:rna
```

or,

```
singularity pull library://raivivek/default/bioinformatics:singlecell
```

## Contact
Parker Lab (theparkerlab.org), University of Michigan
