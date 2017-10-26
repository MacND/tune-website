#!/bin/bash
read -p 'Enter page name: ' html
read -p 'Enter URL (Needs leading http://): ' url

cp template.html ${html}.html && echo "Copied new file - ${html}.html"
sed -i "s/YOURURLHERE/${url}/g" ${html}.html && echo "Updated redirect URL in file to ${url}"
