### AnyKernel3 Ramdisk Mod Script
## Driftwood Kernel for picasso

### AnyKernel setup
# global properties
properties() { '
kernel.string=Driftwood Kernel for picasso
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=picasso
device.name2=picasso_48m
supported.versions= 9 - 14
'; } # end properties

# shell variables
block=/dev/block/platform/soc/1d84000.ufshc/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;
write_boot;
## end boot install
