#! /usr/bin/env rake

tags = {
  :atac => '0.0.2',
  :rna => '0.0.2',
  :core => '0.0.2',
  :singlecell => '0.0.2'
}

task :all => [:build_core, :build_non_core]

desc "Build CORE bio-image."
task :build_core do |t|
  sh "singularity build -F --remote core/core.sif core/Singularity &> core/core.log && \
    singularity push -U core/core.sif 'library://raivivek/default/bio-images:core'"
end

desc "Build CORE derived images: ATAC/RNA/SINGLE-CELL."
task :build_non_core do |t|
  tags.each do |k, v|
    next if k == :core 

    sh "singularity build -F --remote #{k}/#{k}.sif #{k}/Singularity.#{k} &> #{k}/#{k}.log && \
      singularity push -U #{k}/#{k}.sif 'library://raivivek/default/bio-images:#{k}'"
  end
end
