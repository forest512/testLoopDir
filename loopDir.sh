# The first loop is used to go into the first layer dirs
for d1 in $(ls -d */)
do 
  original_wd="$(pwd)"
  cd "$d1"
  echo "The first layer dir is: "
  pwd
  # The second loop is used to go into the second layer dirs
  for d2 in $(ls -d */)
  do 
    pushd "$d2"  # means cd
    echo "hello"
    pwd 
    popd      # means cd ..
  done
  cd "${original_wd}"
done
