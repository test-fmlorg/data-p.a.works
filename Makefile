all: index.html

index.html: data/titles.csv
	@ utils/convert.sh > ./titles.dat
	@ sed -e /__DATA__/rtitles.dat -e /__DATA__/d templates/index.html > index.html.new
	@ mv index.html.new index.html
	@ rm ./titles.dat
