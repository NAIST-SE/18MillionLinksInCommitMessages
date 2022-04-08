# Research Artifact: 18 Million Links in Commit Messages: Purpose, Evolution, and Decay

[https://github.com/NAIST-SE/18MillionLinksInCommitMessages/](https://github.com/NAIST-SE/18MillionLinksInCommitMessages/)

This is a research artifact for the paper **18 Million Links in Commit Messages: Purpose, Evolution, and Decay**. This artifact is a data repository including all 18,201,165 links associated with the information of languages and commit location (GitHub links including account names, repository names, commit hashes) and the processed data. The purpose of this artifact is enabling researchers to replicate our mixed-methods results of the paper, and to reuse our dataset of around 18 million links in commit messages for further research.

Since our full dataset exceeds the file size limitation of GitHub, we split some of the data into multiple files.


## Overview

### RQ1
- [Tools and data](./rq1):  `git-log-extractor` is the tool we used to collect the git logs, which where then further processed with Google `bigquery`. `github-repo-list` contains the list of the GitHub projects in our stratified sample, `git-clone-error` the errors we observed while cloning some of the repos, `git-clone-logs` the output of our retrieval tool, and `git-commit-messages` the extracted data, i.e., the commit messages.  

### RQ2 and RQ3
- [Coding results](./rq2+3): Target and purpose of links (n=1,145)

### RQ4
- [Link evolution](./rq4): Repeated links (n=46)

### RQ5
- Changes to the link target: 
  - [Raw output of link target status comparison](./rq5/RQ5_Link_Evolution.csv)
  - Link target and status in WayBack Machine (n=1,145)
- Stack Overflow case study:
  - We executed the following two queries for questions and answers on the [SOTorrent dataset](https://empirical-software.engineering/projects/sotorrent/) using BigQuery: **TODO**
  - [Results **TODO**]()

### RQ6
- [Link decay](./rq6): CSV files indicating whether links were dead (x) or alive (o) (n=6,667,207 distinct links)


## Authors
- [Tao Xiao](https://tao-xiao.github.io/)
- [Sebastian Baltes](https://empirical-software.engineering/)
- [Hideaki Hata](https://hideakihata.github.io/)
- [Christoph Treude](http://ctreude.ca/)
- [Raula Gaikovina Kula](https://raux.github.io/)
- [Takashi Ishio](https://takashi-ishio.github.io/)
- [Kenichi Matsumoto](https://matsumotokenichi.github.io/)
