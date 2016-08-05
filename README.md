### typerex-clibs

A set of libraries with C stubs, usually bindings to common C
libraries. They might also be forked of existing bindings, with
additionnal functions that were useful at some point (and should
probably be upstreamed instead of being here).

The current set is:
* ocplib-digest: bindings to hash functions (md4, md5, sha1, etc.),
    originally from MLdonkey
* ocplib-zlib: bindings to zlib, gzip and bz libraries (old fork)

## Build and Install

Dependencies: ocp-build (>= 1.99.17-beta)

```
./configure --prefix /usr/local/
make
make install
```

