function test($majorMinorPatch) {
  docker run node:$majorMinorPatch node --version
  $ErrorActionPreference = 'SilentlyContinue';
  docker run node:$majorMinorPatch npm.cmd --version
  $ErrorActionPreference = 'Stop';
  docker run node:$majorMinorPatch-nano node --version
  $ErrorActionPreference = 'SilentlyContinue';
  docker run node:$majorMinorPatch-nano npm.cmd --version
  $ErrorActionPreference = 'Stop';
}

testImage "4.8.1"
testImage "6.10.1"
testImage "7.7.4"
