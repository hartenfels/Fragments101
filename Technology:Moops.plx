package Company; # class declaration
use strict;
use warnings;

# constructor needs to be written manually
sub new {
    my $class = shift;
    # creating hash with default arguments
    my $mess  = {
        children => [],
        @_
    };
    # checking for required arguments
    die 'No name given' if not $mess->{name};
    # creating an object
    return bless $mess => $class;
}

# accessors need to be written manually
sub name {
    my ($self, $new_name) = @_;
    if ($new_name) {
        return $self->{name} = $new_name;
    } else {
        return $self->{name};
    }
}

sub children {
    my ($self, $new_children) = @_;
    if ($new_children) {
        return $self->{children} = $new_children;
    } else {
        return $self->{children};
    }
}

package UsingMoops;
use Moops;

class Company {
    has 'name'     => (is => 'rw', required => 1         );
    has 'children' => (is => 'rw', default  => sub { [] });
}
