#Referenced and modified from https://circleci.com/blog/smoke-tests-in-cicd-pipelines/
#!/bin/bash
URL="http://www.google.com"
STATUS=$(curl -o /dev/null -s -w '%{http_code}\n' $URL)
if [ $STATUS -eq 200 ];
then
    echo 'Smoke Tests Successfully Completed.'
    exit 0
else
    echo "Error getting to $URL"
    exit 1
fi