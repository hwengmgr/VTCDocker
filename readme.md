Dockerfile for Vertcoinbuild

This Dockerfile uses Ubuntu 18.04 and adds the necessary installs to build Vertcoin. It should also work to build Bitcoin, as the requirements are almost identical.

Please note that this works fine on Docker on Linux. I had it fail with compiler problems on Docker for Windows, but that may simply be a problem with the type of container. More work to be done.

It has also not been tested using WSL.

The two script files provided build the Windows and Linux versions.

Docker on Windows Note: successful builds require more than the default 2G of memory. I tried 3.5G and that worked. not sure exactly where the threshold is but definitely up the memory allcoated by Docker. This applies to both Docker under windows and Docker under WSL.
