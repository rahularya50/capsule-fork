# Quickstart

1.
First, run `vagrant up`, then `vagrant ssh`.

2.
Inside the VM, run:
```
docker run -it --rm \
    --privileged \
    --network=host \
    --name sandbox \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    -v /lib/modules:/lib/modules \
    -v /dev/hugepages:/dev/hugepages \
    -v /gdp:/gdp \
    -v/usr/local/cargo/registry:/usr/local/cargo/registry \
    getcapsule/sandbox:19.11.6-1.50 /bin/bash
```

3. `cd /gdp`, then run `cargo run`.
