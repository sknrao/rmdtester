#!/bin/bash
sudo -E taskset -c 6,7,8,9 /home/opnfv/vswitchperf/src/qemu/qemu/x86_64-softmmu/qemu-system-x86_64 -m 4096 -smp 4 -cpu host,migratable=off -drive if=scsi,file=/home/opnfv/vnfs/stressor-stressng.qcow2 -boot c --enable-kvm -monitor unix:/tmp/vm4monitor,server,nowait -numa node -mem-prealloc -nographic -vnc :4 -name WL0 -snapshot -net none -no-reboot -drive if=scsi,format=raw,file=fat:rw:/tmp/qemu0_share,snapshot=off