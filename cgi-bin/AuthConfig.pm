package AuthConfig;

require Exporter;

# This is the base url of the authServer
use constant BASE_URL => $ENV{'BASE_URL'};

# These values must correspond to what the app was registered with on the
# application registration page of the authServer
use constant APPLICATION_NAME   => $ENV{'APPLICATION_NAME'};
use constant APPLICATION_URL    => $ENV{'APPLICATION_URL'};
use constant APPLICATION_SECRET => $ENV{'APPLICATION_SECRET'};

# This is the name of the cookie the user information will be stored in
use constant COOKIE_NAME => 'AuthWebSession';

@ISA = qw(Exporter);
@EXPORT = qw(BASE_URL APPLICATION_NAME APPLICATION_URL APPLICATION_SECRET COOKIE_NAME);

1;
