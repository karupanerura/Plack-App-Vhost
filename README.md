# NAME

Plack::App::Vhost - It's new $module

# SYNOPSIS

    use Plack::App::Vhost;

    Plack::App::Vhost->new(
       vhosts => [
          qr/^foo-mode\.my-app/ => $foo_app,
          qr/^bar-mode\.my-app/ => $bar_app,
       ],
    )->to_app;

# DESCRIPTION

Plack::App::Vhost is ...

# LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

karupanerura <karupa@cpan.org>
