function build($majorMinorPatch, $majorMinor, $major) {
  docker tag node:$majorMinorPatch stefanscherer/node-windows:$majorMinorPatch
  docker tag node:$majorMinor stefanscherer/node-windows:$majorMinor
  docker tag node:$major stefanscherer/node-windows:$major

  docker tag node:$majorMinorPatch-onbuild stefanscherer/node-windows:$majorMinorPatch-onbuild
  docker tag node:$majorMinor-onbuild stefanscherer/node-windows:$majorMinor-onbuild
  docker tag node:$major-onbuild stefanscherer/node-windows:$major-onbuild

  docker tag node:$majorMinorPatch-nano stefanscherer/node-windows:$majorMinorPatch-nano
  docker tag node:$majorMinor-nano stefanscherer/node-windows:$majorMinor-nano
  docker tag node:$major-nano stefanscherer/node-windows:$major-nano

  docker tag node:$majorMinorPatch-nano-onbuild stefanscherer/node-windows:$majorMinorPatch-nano-onbuild
  docker tag node:$majorMinor-nano-onbuild stefanscherer/node-windows:$majorMinor-nano-onbuild
  docker tag node:$major-nano-onbuild stefanscherer/node-windows:$major-nano-onbuild

  docker push stefanscherer/node-windows:$majorMinorPatch
  docker push stefanscherer/node-windows:$majorMinor
  docker push stefanscherer/node-windows:$major
  docker push stefanscherer/node-windows:$majorMinorPatch-onbuild
  docker push stefanscherer/node-windows:$majorMinor-onbuild
  docker push stefanscherer/node-windows:$major-onbuild
  docker push stefanscherer/node-windows:$majorMinorPatch-nano
  docker push stefanscherer/node-windows:$majorMinor-nano
  docker push stefanscherer/node-windows:$major-nano
  docker push stefanscherer/node-windows:$majorMinorPatch-nano-onbuild
  docker push stefanscherer/node-windows:$majorMinor-nano-onbuild
  docker push stefanscherer/node-windows:$major-nano-onbuild
}

push "4.8.1" "4.8" "4"
push "6.10.1" "6.10" "6"
push "7.7.4" "7.7" "7"
