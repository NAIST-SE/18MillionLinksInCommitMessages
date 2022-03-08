# "Table Info" of table "bigquery-public-data:github_repos.commits"
# Last Modified: Feb 28, 2020, 4:06:24 PM 
# Number of Rows: 237,777,177
# Table Size: 774 GB
#
# Unique Git commits from open source repositories on GitHub, pre-grouped by repositories they appear in.

#standardSQL
SELECT
  CommitId,
  Repo,
  RepoArray[OFFSET(0)] AS RepoOwner,
  RepoArray[OFFSET(1)] AS RepoName,
  Url,
  CONCAT(CONCAT(CONCAT("https://github.com/", Repo), "/commit/"), CAST(CommitId AS STRING)) AS LinkToCommit,
  CommitMessage
FROM (
  SELECT
    commit AS CommitId,
    repo_name as Repo,
    SPLIT(repo_name, "/") as RepoArray,
    url as Url,
    message as CommitMessage
  FROM (
    SELECT
      commit,
      repo_name,
      urls,
      message
    FROM (
      SELECT
        commit,
        repo_name,
        REGEXP_EXTRACT_ALL(LOWER(message), r'(https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/\/=]*))') as urls,
        message
      FROM `bigquery-public-data.github_repos.commits`
      WHERE REGEXP_CONTAINS(LOWER(message), r'(https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/\/=]*))')
    )
    CROSS JOIN UNNEST(repo_name) as repo_name
  )
  CROSS JOIN UNNEST(urls) as url
);

=> sotorrent-org.analysis_2020_01_24.GHCommits_Urls

# "Table Info" of table "bigquery-public-data:github_repos.languages"
# Last Modified: Feb 28, 2020, 3:24:23 PM
# Number of Rows: 3,344,820
# Table Size: 196 MB
#
# Programming languages by repository as reported by GitHub's https://developer.github.com/v3/repos/#list-languages API

SELECT
  repo_name as Repo,
  languages.name as LanguageName,
  languages.bytes as LanguageBytes
FROM `bigquery-public-data.github_repos.languages`
CROSS JOIN UNNEST(language) as languages
WHERE repo_name IN (
  SELECT DISTINCT Repo FROM `sotorrent-org.analysis_2020_01_24.GHCommits_Urls`
)
ORDER BY Repo, LanguageBytes DESC, LanguageName;

=> sotorrent-org.analysis_2020_01_24.GHCommits_Urls_Repos
