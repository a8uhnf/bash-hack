# PUSHD / POPD

pushd /usr # current directory is /usr. stack is: [/usr]

pushd /tmp # current directory is /tmp. stack is: [/tmp /usr]

pushd /usr/local # current directory is /usr/local. stack is: [/usr/local/ /tmp /usr]

pushd +1 # current directory is /tmp. stack is: [/tmp /usr /usr/local]

popd # current directory is /usr. stack is [/usr /usr/local]