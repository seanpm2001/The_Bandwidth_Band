#!bin/sh
# Start of script
# A script to grab bandwidth usage patterns, and report back to the user before each automation cycle
# I am just planning this out right now, it is not functional at all yet, and I can guarantee that without even testing it.
ask: for input in [bandwidth_anount] in [user.input[bandwidthDays]] in [user.input[b, B, Kb, KiB, Mb, MiB, Gb, GiB, Tb, TiB];
ping [github] for [bandwidth_amount] in [user.input[bandwidthDays]] as [user.input[b, B, Kb, KiB, Mb, MiB, Gb, GiB, Tb, TiB];
return [bandwidth_amount] in [user.input[bandwidthDays]] as [user.input[b, B, Kb, KiB, Mb, MiB, Gb, GiB, Tb, TiB]; # Terabytes are reserved for future use. The lowercase b stands for bits, and the uppercase B stands for Bytes (8 bits)
return [bandwidth_left] as [metricBandwidth_left]; # Metric bandwidth is the metric in use (between b/B and Tb/TiB)
do [bandwidth_left] as [calculation_goes_here];
echo ("You have used " + [bandwidth_amount] + " in the past " + [bandwidthDays] + " days. You have " + [bandwidth_left] + [metricBandwidth_left] + " of Bandwidth left. Do you still wish to run the next automation cycle? y/N");
user.input.upper();
if user.input == "Y" or "YES" {
	do [operation_as_planned];
	break;
} else {
	echo("Cancelling...");
	break;
} fi
exit;
break;
# File info
# File type: Shell script (*.sh)
# File version: 1 (2022, Tuesday, February 1st at 10:46 pm)
# Line count (including blank lines and compiler line): 26
# End of script
