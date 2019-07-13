class Repeatprof < Formula
  desc 	"RepeatProfiler: A tool for generating, visualizing, and comparing repetitive DNA profiles"
  homepage "https://github.com/johnssproul/RepeatProfiler/"
  url "https://github.com/johnssproul/RepeatProfiler/releases/download/0.9/Repeat-Profiler-v0.9.tar.gz"
  version "0.9"
  sha256 "d60e535401d0cff6a745271fc1258738d07c873f5f53df53973c8b93ea4109eb"
  depends_on "bowtie2"
  depends_on "python2"
  depends_on "r"
  depends_on "samtools"
 
  def install
    system 'echo "install.packages(c('ggplot2','gridExtra','ggpubr','magrittr','scales'),repos='https://cran.rstudio.com')"| R --no-save'
    bin.install("repeatprof")
    libexec.install("Readmegen.sh")
    libexec.install("map_mpileup.sh")
    libexec.install("Fasta_splitter.sh")
    libexec.install("The_depth_analyser.R")
    libexec.install("RP_4.0.R")
    libexec.install("polymorphism_2.0.R")
    libexec.install("fraction_bases.R")
    libexec.install("Corr_test.R")
    libexec.install("All_RP_graphs_reference.R")
    libexec.install("All_RP_graphs.R")
    libexec.install("multi_Poly_maker.R")
    libexec.install("pileup_basecount_sink.py")
	libexec.install("user_supplied_maker.R")
  end
 
  test do
    system "#{bin}/repeatprof"
    system "true"
  end
end
