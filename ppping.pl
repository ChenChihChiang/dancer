#!/usr/bin/perl -w

use Net::Ping;

# Host can be either an IP or domain name
my $host = "www.google.com";
#optionally specify a timeout in seconds (Defaults to 5 if not set)
my $timeout = 10;

# Create a new ping object
$p = Net::Ping->new("tcp");
#$p = Net::Ping->new("icmp");

# Optionally specify a port number (Defaults to echo port is not used)
$p->port_number("80");

# perform the ping
if( $p->ping($host, $timeout) )
{
        print "Host ".$host." is aliven\n";
}
else
{
        print "Warning: ".$host." appears to be down or icmp packets are blocked by their servern";
}

# close our ping handle
$p->close();
