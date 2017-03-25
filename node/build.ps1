function build($majorMinorPatch, $majorMinor, $major) {
  docker build -t node:$majorMinorPatch $majorMinor
  docker tag node:$majorMinorPatch node:latest
  docker tag node:$majorMinorPatch node:$majorMinor
  docker tag node:$majorMinorPatch node:$major
  docker tag node:$majorMinorPatch node:$majorMinorPatch-windowsservercore

  docker build -t node:$majorMinorPatch-onbuild $majorMinor/onbuild
  docker tag node:$majorMinorPatch-onbuild node:$majorMinor-onbuild
  docker tag node:$majorMinorPatch-onbuild node:$major-onbuild

  docker build -t node:$majorMinorPatch-nano $majorMinor/nano
  docker tag node:$majorMinorPatch-nano node:latest-nano
  docker tag node:$majorMinorPatch-nano node:$majorMinor-nano
  docker tag node:$majorMinorPatch-nano node:$major-nano
  docker tag node:$majorMinorPatch-nano node:$majorMinorPatch-nanoserver

  docker build -t node:$majorMinorPatch-nano-onbuild $majorMinor/nano/onbuild || exit /b
  docker tag node:$majorMinorPatch-nano-onbuild node:$majorMinor-nano-onbuild
  docker tag node:$majorMinorPatch-nano-onbuild node:$major-nano-onbuild
}

build "4.8.1" "4.8" "4"
build "6.10.1" "6.10" "6"
build "7.7.4" "7.7" "7"
