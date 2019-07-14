mkdir -p output
for url in (cat url_list.txt)
  set -l filename (string replace -ra 'https?://[^/]*/' '' $url)
  set -l filename (string replace -ra '/$' '/index.html' $filename)
  curl -o "output/$filename" --create-dirs "$url"
end