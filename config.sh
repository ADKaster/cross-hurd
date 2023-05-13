# Change your host GCC here.
export HOST_MACHINE=x86_64-linux-gnu

# Change how many CPUs you want to use.
if [ -z "$PROCS" ]; then
	export PROCS=$(nproc)
fi

# Set this to your ccache path if using ccache.
export CCACHE_DIRECTORY="/usr/lib/ccache"

# The kind of hurd system to build. The options are:
# minimal: enough to run a shell.
# full: everything.
if [ -z "$BUILD_TYPE" ]; then
	export BUILD_TYPE=minimal
fi

# GNU Hurd target.
if [ -z "$CPU" ]; then
	export CPU=i686
fi
