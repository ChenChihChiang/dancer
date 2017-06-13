use Net::Ping;

my $ip = "127.0.0.1";
my $p = Net::Ping->new("tcp",2);

$p->port_number(3000);

if ($p->ping($ip))
{
print "$ip alive\n";
}
else
{
print "$ip did not response\n";
}

$p->close();
