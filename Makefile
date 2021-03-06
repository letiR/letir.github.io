bib = static/bib/inSilecoRef.bib
nodoi = static/bib/noDOIRef.bib
doi = static/bib/DOIRef.bib

biblio:
	Rscript static/Rscript/bibSetUp.R
	bibtool -d $(doi) $(nodoi) -o $(bib)

check: 
	Rscript -e 'blogdown::check_config(); check_content()'

build:
	Rscript -e 'blogdown::build_site()'

serve:
	Rscript -e 'blogdown::serve_site()'

deps:
	Rscript -e 'renv::snapshot()'

clean:
	rm post/*.html
