clean_temp_files() {
	echo "Cleaning temporary files"
	sudo rm -rf /tmp/*/var/tmp/*
	echo "temporary filed cleaned...."
}

clean_package_cache() {
	echo "Cleaning package cache"
	sudo apt-get clean
	echo "Package manager cache cleaned..."
}

clean_old_logs() {
	echo "Removind old log files"
	sudo find /var/log -type f -name "*.log" -exec rm -f {} \;
	echo "Old log files cleaned..."
}

remove_unused_packages() {
	echo "Removing unused packages"
	sudo apt-get autoremove -y
	echo "Unused packages removed..."
}

perform_cleanup() {
	echo "Starting system cleanup...."

	clean_temp_files
	clean_package_cache
	clean_old_logs
	remove_unused_packages
	remove_unused_packages
	echo "System clean completed!"
}

perform_cleanup
