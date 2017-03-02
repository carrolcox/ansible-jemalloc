#!/usr/bin/env bats

if [ -z $jemalloc_version ]; then
  echo "Error: can't run tests"
  echo "Please provide the jemalloc_version environment variable"
  exit 1
fi

@test "jemalloc-config binary is found in $PATH" {
  run which jemalloc-config

  [ "$status" -eq 0 ]
}

@test "jemalloc-config is installed in version ${jemalloc_version}" {
  run /usr/local/bin/jemalloc-config --version

  version=$(echo "${output}" | sed "s/^\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/")

  echo "DEBUG: current version: ${version}"
  echo "DEBUG: expected version: ${jemalloc_version}"

  [ "${version}" == "${jemalloc_version}" ]
}
