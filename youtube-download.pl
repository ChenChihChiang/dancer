#!/usr/bin/env perl
use strict;
use warnings;
use WWW::YouTube::Download;

if (@ARGV) {
    my $tube = WWW::YouTube::Download->new;
    my $video_id = $tube->video_id($ARGV[0]);
    #$tube->download($video_id, { filename => '{title}{suffix}' });
    my $title = $tube->get_title($video_id);
    my $fmt = $tube->get_fmt($video_id);
    #$tube->download($video_id, { filename => $title });
    print $title;
    print $fmt;
    print "\n"; 
}

  
#my $video_url = $client->get_video_url($video_id);
#my $title     = $client->get_title($video_id);     # maybe encoded utf8 string.
#my $fmt       = $client->get_fmt($video_id);       # maybe highest quality.
#my $suffix    = $client->get_suffix($video_id);    # maybe highest quality file suffix

