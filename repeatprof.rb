class Repeatprof < Formula
  desc 	"RepeatProfiler: A tool for generating, visualizing, and comparing repetitive DNA profiles"
  homepage "https://github.com/johnssproul/RepeatProfiler/"
  url "https://github.com/johnssproul/RepeatProfiler/releases/download/0.9/Repeat-Profiler-v0.9.tar.gz"
  version "0.9"
  sha256 "85667316dca11184fd0c5553675c46b11fb2f6134e6b8a88fe1db75926c0c9e1"
  depends_on "bowtie2"
  depends_on "python2"
  depends_on "r"
  depends_on "samtools"
  
  def install
    mkdir_p buildpath/"R_packages"
    system "Installer.sh"
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
    mv "R_packages", prefix
  end
    
  test do
    system "#{bin}/repeatprof"
    system "true"
  end
end
