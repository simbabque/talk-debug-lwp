Run the presentation
===

Run this using [App::revealup](https://metacpan.org/pod/App::revealup). It will run on port 5000 by default.

    $ revealup serve debug-lwp.md

Run the demo
===

There are two parts to the demo.

1. Server-Server

        $ plackup -p 5001 bin/server.pl

 This is where we change code in the demo.

2. Client-Server

        $ plackup -p 5002 bin/client.pl

Then `curl` it.

    $ curl localhost:5002/json
    $ curl localhost:5002/xml

PDF
==

http://localhost:5000/?print-pdf# and print as PDF.
