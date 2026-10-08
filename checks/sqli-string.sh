#!/bin/sh
# The string-based SQL injection page looks up a member installed by install.php (vince, uid 1).
curl -fsS 'http://web/vul/sqli/sqli_str.php?name=vince&submit=1' | grep -q 'your uid:1 '
