c=1
for d in */ ; do
	f="README.md"
	dir=$(pwd)
	full_dir="${dir}/${d}"
    cd $full_dir
    my_cmd="pandoc ${f} -o ../${c}.pdf --from markdown --template eisvogel --listings"
    eval "$my_cmd"
    cd ..
    c=$[$c + 1]
    
done