# Research Artifact: 18 Million Links in Commit Messages: Purpose, Evolution, and Decay

[https://github.com/NAIST-SE/18MillionLinksInCommitMessages/](https://github.com/NAIST-SE/18MillionLinksInCommitMessages/)

This is a research artifact for the paper **18 Million Links in Commit Messages: Purpose, Evolution, and Decay**. This artifact is a data repository including all 18,201,165 links associated with the information of languages and commit location (GitHub links including account names, repository names, commit hashes) and the processed data. The purpose of this artifact is enabling researchers to replicate our mixed-methods quantitative results of the paper, and to reuse our around 18 million links in commit messages for further software engineering research.

Since our full dataset exceeds the file size limitation of GitHub, we split the compressed commit messages that can be found under [tools+data/git-commit-messages/](tools+data/git-commit-messages/)

## Contents
- `INSTALL.md` - description of the full dataset and other resources
- `LICENSE.md` - [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- `README.md` - this file
- `STATUS.md` - application of an artifact badge of reusable
- `paper.pdf` - the accepted paper
- `full_dataset` - 18 million links avaiable at [![DOI]()]()

## Processed data
### RQ2 and RQ3
- [Coding results](./rq2+3) - links' target and purpose of 1,145 samples
### RQ4
- [Link evolution](./rq4) - 46 repeated links in 1,145 samples
### RQ5
- Changes to the link target
  - [Raw output of link targets' status comparison](./rq5/RQ5_Link_Evolution.csv) - links' target and status in WayBack Mashine of 1,145 samples
- Stack Overflow case study for RQ5
  - We executed the following two queries for questions and answers on [SOTorrent](https://empirical-software.engineering/projects/sotorrent/) BigQuery
  - [Results]()

_Answers_
```

```
_Questions_
```

```
### RQ6
- [Link decay](./rq6) - dead (x) or alive (o) of 6,667,207 distince links


## Authors
- [Tao Xiao](https://tao-xiao.github.io/)
- [Sebastian Baltes](https://empirical-software.engineering/)
- [Hideaki Hata](https://hideakihata.github.io/)
- [Christoph Treude](http://ctreude.ca/)
- [Raula Gaikovina Kula](https://raux.github.io/)
- [Takashi Ishio](https://takashi-ishio.github.io/)
- [Kenichi Matsumoto](https://matsumotokenichi.github.io/)
