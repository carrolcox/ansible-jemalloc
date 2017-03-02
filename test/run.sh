#!/bin/bash

ansible-playbook -i hosts test.yml
# Remember the exit code of the previous command to return it
# at the end of the script
test_status=$?

# Shut down containers manually
# Ignore connection errors
(ansible-playbook -i hosts shut-down-containers.yml | grep -v 'Failed to connect to the host via ssh') || true

# Exit script with status code returned by runnig the test.yml playbook
exit $test_status
