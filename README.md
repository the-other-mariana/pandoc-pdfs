# Pandoc-generated PDFs

Go to this [repo](https://github.com/Wandmalfarbe/pandoc-latex-template)  (Install MikTex option).<br />

- pandoc installation: [here](https://pandoc.org/installing.html)

Command in Terminal: <br />

```
$ pandoc SEGINT.md -o example.pdf --from markdown --template eisvogel --listings
```

## Step By Step Linux Installation (Ubuntu)

1. Install pandoc

```
sudo apt-get install pandoc
```

2. Install TeXLive full:

```
sudo apt install texlive-full
```

3. Go to this repo's release page https://github.com/Wandmalfarbe/pandoc-latex-template/releases and download the .zip from the version [2.0.0] - 2021-01-31.

4. Extract the file `eisvogel.latex` to your Downloads folder.

5. Go to the pandoc directory `/home/<your_user>/` and create the necessary pandoc directory

```
mkdir -p .pandoc/templates
```

6. Move the extrated file to the new directory

```
mv ~/Downloads/eisvogel.latex /home/mariana/.pandoc/templates/eisvogel.latex
```

7. Now you can perform your command to create pdfs from .md files

```
pandoc README.md -o example.pdf --from markdown --template eisvogel --listings
```

# Notes

In the YAML, in order to change font put:

```
fontfamily: cantarell
fontfamilyoptions: default
```

```
fontfamily: fouriernc
header-includes:
  - \renewcommand{\familydefault}{\sfdefault}
```

## Bash Scripts

- To execute `.sh` scripts inside some `folder`, type on GitBash:

```
$ cd path/to/folder
$ sh script.sh
```