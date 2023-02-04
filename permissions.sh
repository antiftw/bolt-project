for dir in config/ public/files/ public/theme/ public/thumbs/ var/ ; do
    find $dir -type d -print0 | xargs -0 chmod u+rwx,g+rwxs,o+rx-w
    find $dir -type f -print0 | xargs -0 chmod u+rw-x,g+rw-x,o+r-wx > /dev/null 2>&1
done
