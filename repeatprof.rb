class Repeatprof < Formula
  desc 	"RepeatProfiler: A tool for generating, visualizing, and comparing repetitive DNA profiles"
  homepage "https://github.com/johnssproul/RepeatProfiler/"
  url "https://github.com/johnssproul/RepeatProfiler/releases/download/0.999/Repeat-Profiler-v0.999.tar.gz"
  version "0.999"
  sha256 "5dd178538a6883c1ecf559ad39ee369b5e1ffe0d45fd9d57fc4250c3321db5d0"
  depends_on "bowtie2"
  depends_on "python"
  depends_on "r"
  depends_on "samtools"
  
  def install
    mkdir_p buildpath/"R_packages"
    system "Rscript", "-e", "install.packages(c('ggplot2','reshape2','scales','ggpubr'),dep=TRUE,repos='https://cran.rstudio.com',lib='R_packages')"
    bin.install("repeatprof")
    libexec.install("readme_gen.sh")
    libexec.install("map_reads.sh")
    libexec.install("fasta_splitter.sh")
    libexec.install("singlecopy.sh")
    libexec.install("all_corr.R")
    libexec.install("mk_profiles_ref.R")
    libexec.install("var_plots.R")
    libexec.install("multi_var_plots.R")
    libexec.install("mk_profiles_all.R")
    libexec.install("mk_profiles.R")
    libexec.install("mk_profiles_single.R")
    libexec.install("depth_analyser.R")
    libexec.install("pileup_basecount.py")
    libexec.install("encode_var.R")
    libexec.install("user_groups_maker.R")
    libexec.install("single_copy_calculator.R")
    mv "R_packages", prefix
  end
    
  test do
    system "#{bin}/repeatprof"
    system "true"
  end
end
