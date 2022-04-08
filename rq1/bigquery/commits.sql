SELECT
  "C" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.c`
UNION ALL
SELECT
  "C++" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.cpp`
UNION ALL
SELECT
  "Java" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.java`
UNION ALL
SELECT
  "JavaScript" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.js`
UNION ALL
SELECT
  "PHP" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.php`
UNION ALL
SELECT
  "Python" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.python`
UNION ALL
SELECT
  "Ruby" as Language,
  RepoOwner,
  RepoName,
  Branch,
  CommitType,
  CommitHash,
  CONCAT("https://github.com/", RepoOwner, "/", RepoName, "/commit/", CommitHash) AS GHCommit,
  REGEXP_EXTRACT(Link, r'([\w\-]+(?:(?:\.[\w\-]+)+))') AS CompleteDomain,
  REGEXP_EXTRACT(Link, r'([\w\-]+\.(?:[\w\-]+))(?:[^\w\-.].*)?$') AS RootDomain,
  Link
FROM `gh-commits-274712.2020_03.ruby`;

=> `gh-commits-274712.2020_03.commits`
