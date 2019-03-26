#!/usr/bin/perl -w

# This script opens Tassel5 from the terminal
use strict;
use File::Basename;

my $dirname = dirname(__FILE__);
my $top = defined($dirname) ? $dirname : '.';

my $libdir = "$top/lib";
opendir (DIR, "$libdir") || die "Could not open $libdir\n";
my @list = readdir(DIR);

my @fl = ();
foreach my $fn(@list){
   if ("$fn" =~ m/\.jar$/){
      push(@fl, "$libdir\/$fn");
   }
}
push(@fl, "$top/sTASSEL.jar");
my $CP = join(":", @fl);
print $CP . "\n";

# Scan @ARGV for Java memory arguments, and put rest in @args
my $java_mem_min_default = "-Xms512m";
my $java_mem_max_default = "-Xmx1536m";
my $java_mem_min = "";
my $java_mem_max = "";
my @args;
for (my $i=0; $i<=$#ARGV; $i++){
   if ($ARGV[$i] =~ m/Xms/) {
      $java_mem_min .= "$ARGV[$i]";
   }
   elsif ($ARGV[$i] =~ m/Xmx/) {
      $java_mem_max .= "$ARGV[$i]";
   }
   else{
      push(@args, $ARGV[$i]);
   }
}

if ($java_mem_min eq "") { $java_mem_min = $java_mem_min_default; }
if ($java_mem_max eq "") { $java_mem_max = $java_mem_max_default; }

print "Memory Settings: $java_mem_min $java_mem_max\n";
if (@args != 0){
   print "Tassel Pipeline Arguments: " . "@args\n";
}

system "java -classpath '$CP' $java_mem_min $java_mem_max net.maizegenetics.tassel.TASSELMainApp @args";

# Once inside Tassel5 use the graphic interface. Open the plink file "/data/368_Taxa_Rename_Plink_File.txt" choose Filter, Taxa Names
# and then select just the Landraces samples (with the key "Na" and then: Bo (Bolita), Ch (Chalqueño), Ms (Mushito), Pp (Pepitilla), 
# Tb (Tabloncillo), Va (VAndeño), Zm (Zamorano). Without simpatry with "H" (modern varities)).
# Save the new file in data/ as VCF you can get "Zea_mays_7LR.vcf" and won't be necesary unzip "Zea_mays_7LR.vcf.gz".

# References: Rojas, Idalia (s/f)
