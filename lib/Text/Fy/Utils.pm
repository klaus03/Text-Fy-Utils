package Text::Fy::Utils;

use strict;
use warnings;

require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT    = qw();
our @EXPORT_OK = qw(set_amode asciify commify);
our $VERSION   = '0.01';

sub set_amode {
}

sub asciify {
}

sub commify {
}

1;

__END__

=head1 NAME

Text::Fy::Utils - Some text based utility functions

=head1 SYNOPSIS

    use Text::Fy::Utils qw(set_amode asciify commify);

    my $text =
      "\x{041}\x{042}\x{043} => ". # A B C (ASCII)
      "\x{08a}\x{08c}\x{08e} => ". # Š Œ Ž (Windows)
      "\x{091}\x{092}\x{093} => ". # ‘ ’ “ (Windows)
      "\x{0a1}\x{0a2}\x{0bf} => ". # ¡ ¢ ¿ (ISO)
      "\x{0bc}\x{0bd}\x{0be} => ". # ¼ ½ ¾ (ISO)
      "\x{0c6}\x{0c7}\x{0c8} => ". # Æ Ç È (ISO)
      "\x{172}\x{173}\x{174} => ". # U U W (Unicode)
      "\x{388}\x{389}\x{38a} => ". # E H I (Unicode)
      "\x{3b1}\x{3b2}\x{3b3} => "; # A B C (Unicode - Greek)

    my $asc1 = asciify($text, [ 'asc' ]);
    my $asc2 = asciify($text, [ 'asc', 'win' ]);
    my $asc3 = asciify($text, [ 'brutal' ]);
    my $asc4 = asciify($text, [ 'brutal', 'win' ]);
    my $asc5 = asciify($text, [ 'iso' ]);
    my $asc6 = asciify($text, [ 'iso', 'win' ]);

    set_amode([ 'brutal', 'win' ]);
    my $asc7 = asciify($text);

    my $out1 = commify('12345678.1234');
    my $out2 = commify('12345678.1234', '~');

=head1 AUTHOR

Klaus Eichner <klaus03@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Klaus Eichner

All rights reserved. This program is free software; you can redistribute
it and/or modify it under the terms of the artistic license 2.0,
see http://www.opensource.org/licenses/artistic-license-2.0.php

=cut
