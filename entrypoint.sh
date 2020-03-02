#!/bin/bash
set -e

begin=$(date --date $1 +%s)

echo "Begin: ${begin}"

end=$(date --date $2 +%s)

echo "End: ${end}"

diff_in_seconds=$((${end} - ${begin}))

echo "Diff: ${diff_in_seconds}"

hours=$($(date -d@"'${diff_in_seconds}'" -u +%H) + 0)
minutes=$($(date -d@"'${diff_in_seconds}'" -u +%M) + 0)
seconds=$($(date -d@"'${diff_in_seconds}'" -u +%s) + 0)

string=''

echo "Hours: ${hours}"
echo "Minutes: ${minutes}"
echo "Seconds: ${seconds}"

if [[ ${hours} -gt 0 ]]; then
  string="${hours} hr "
fi

if [[ ${minutes} -gt 0 ]]; then
  string="${string}${minutes} min "
fi

if [[ ${seconds} -gt 0 ]]; then
  string="${string}${seconds} sec"
fi

echo ::set-output name=diff::${string}

exit $?
