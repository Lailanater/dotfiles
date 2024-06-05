# This script is currently known to work on OpenSUSE with TKG compiled kernel naming convention

latest_kernel_version=$(curl -s https://www.kernel.org/releases.json | jq -r '.latest_stable.version')

current_kernel_name=$(uname -r)
current_kernel_version=$(echo $current_kernel_name | sed 's/_.*//')

if [ "$latest_kernel_version" != "$current_kernel_version" ]; then
	notify-send -a "latest_kernel_noti.sh" -u critical "Update to kernel to $latest_kernel_version" "Your system is current running $current_kernel_name. Latest stable version is $latest_kernel_version."
fi
