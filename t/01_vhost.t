use strict;
use Test::More;

use Plack::App::Vhost;

my $app = Plack::App::Vhost->new(
    vhosts => [
        qr/^foo-mode\.my-app/ => sub { 'foo' },
        qr/^bar-mode\.my-app/ => sub { 'bar' },
    ],
    fallback => sub { 'fallback' },
)->to_app();

is $app->({ HTTP_HOST => 'foo-mode.my-app.foobar.net' }), 'foo',      'valid vhost routing for foo.';
is $app->({ HTTP_HOST => 'bar-mode.my-app.foobar.net' }), 'bar',      'valid vhost routing for bar.';
is $app->({ HTTP_HOST => 'baz-mode.my-app.foobar.net' }), 'fallback', 'valid vhost routing for baz. (fallback)';

done_testing;
