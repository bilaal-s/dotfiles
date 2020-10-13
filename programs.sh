# Android studio
# First download and tar.gz package from the site, then run the below
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
# then move the contents of the directory to /usr/local
sudo mv ~/Downloads/android-studio /usr/local/
cd /usr/local/android-studio/bin
./studio.sh

# KVM
sudo apt install qemu-kvm
# Check the ownership of /dev/kvm
ls -al /dev/kvm
# Check which users are in the kvm group
grep kvm /etc/group
# Output from the above command
# kvm:x:some_number:
# If there is nothing rightwards of the final :, there are no users in the kvm group.
#To add the current user to the kvm group
sudo adduser $USER kvm
# Optional: if root user owns folder - chown to current user
sudo chown $USER /dev/kvm
