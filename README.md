# Jupyter-to-Markdown
Convert Jupyter notebook files to markdown

## Usage 

This is example on how to use this action and using `peter-evans/create-pull-request` to create a pull requests with the converted Markdown files to the repository

Add this to `.github/workflow/action.yml`



```
name: Jupyter to Markdown
on:
  push:
    paths:
      - '**.ipynb'
jobs:
  convert:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        ref: ${{ github.head_ref }}
    - name: Jupyter Notebooks to Markdown
      uses: MohamedElashri/Jupyter-to-Markdown@v1
    - name: Create Pull Request
      uses: peter-evans/create-pull-request@v3
      with:
        commit-message: Pull request with the Convreted markdown files
        committer: Mohamed Elashri <MohamedElashri@users.noreply.github.com>
        title: Convert file from .ipynb to .md 
        body: This is an auto-generated PR
        branch: markdown
```

`branch` and `base` can't be the same. `branch` is where the automatic pull requests will be pushed
