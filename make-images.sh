#! /bin/bash

for tag in atac rna core singlecell; do
  # building on macOS
  singularity build --remote $tag/$tag.sif $tag/Singularity.$tag &> $tag/$tag.log &&
    singularity push $tag/$tag.sif "library://raivivek/default/bio-images:$tag"
done
