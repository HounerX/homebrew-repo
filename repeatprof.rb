class Repeatprof < Formula
  desc 	"RepeatProfiler: A tool for generating, visualizing, and comparing repetitive DNA profiles"
  homepage "https://github.com/johnssproul/RepeatProfiler/"
  url "https://github.com/johnssproul/RepeatProfiler/releases/download/0.92/Repeat-Profiler-v0.92.tar.gz"
  version "0.92"
  sha256 "d7214398bd40b57046e02df0033327e87f278a4430824051543c373e2147dfbe"
  depends_on "bowtie2"
  depends_on "python2"
  depends_on "r"
  depends_on "samtools"
  
  def install
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
    libexec.install("all_corr.R")
    libexec.install("singlecopy.sh")
    libexec.install("single_copy_calculator.R")
    mv "R_packages", prefix
  end
    
  test do
    system "#{bin}/repeatprof"
    system "true"
  end
end
