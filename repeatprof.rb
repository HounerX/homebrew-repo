class Repeatprof < Formula
  desc 	"RepeatProfiler: A tool for generating, visualizing, and comparing repetitive DNA profiles"
  homepage "https://github.com/johnssproul/RepeatProfiler/"
  url "https://github.com/johnssproul/RepeatProfiler/releases/download/0.9/Repeat-Profiler-v0.9.tar.gz"
  version "0.9"
  sha256 "a1789dd41b72aded29dd57edc680b07eb16215d15494e4354774b9e36cafca2a"
  depends_on "bowtie2"
  depends_on "python2"
  depends_on "r"
  depends_on "samtools"
  
  def install
    mkdir_p buildpath/"lib/R"
    ENV["R_LIBS_SITE"] = "#{buildpath}/lib/R"
    system "Rscript", "-e", "install.packages(c('ggplot2','ggpubr','gridExtra'),repos='https://cran.rstudio.com')"
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
