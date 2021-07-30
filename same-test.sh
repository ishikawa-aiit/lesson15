#!/bin/bash

echo "same" > /tmp/$$-ans
./same.sh a a > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

echo "not same" > /tmp/$$-ans
./same.sh a b > /tmp$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

rm /tmp/$$-*
