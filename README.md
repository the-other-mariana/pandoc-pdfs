# Pandoc-generated PDFs

Go to this [repo](https://github.com/Wandmalfarbe/pandoc-latex-template)  (Install MikTex option).<br />

- pandoc installation: [here](https://pandoc.org/installing.html)

Command in Terminal: <br />

```
$ pandoc SEGINT.md -o example.pdf --from markdown --template eisvogel --listings
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