#!/bin/bash

## system.d cache tweaks
echo "Adding System.D Tweaks"	
echo "vm.swappiness = 10
vm.vfs_cache_pressure = 50
vm.watermark_scale_factor = 200
vm.dirty_ratio = 3
" | sudo tee -a /etc/sysctl.d/99-sysctl.conf
