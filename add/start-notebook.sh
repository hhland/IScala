JAR_PATH="$(dirname $(dirname $(readlink -f $0)))/lib/IScala.jar"
KERNEL_CMD="[\"java\", \"-jar\", \"$JAR_PATH\", \"--profile\", \"{connection_file}\", \"--parent\", \"$@\"]"
ipython notebook --ip=0.0.0.0 --notebook-dir=/d/notebook  --KernelManager.kernel_cmd="$KERNEL_CMD"
