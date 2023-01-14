WITH
  clean_gh_links as (
    SELECT
      *,
      REGEXP_REPLACE(Link, '([).:]*)$', '') as LinkClean -- based on analysis of last character
    FROM `gh-commits-274712.2020_03.commits`
    WHERE regexp_contains(Link, '^https?://github.com')
  ) 
SELECT
  *,
  regexp_extract(LinkClean, '^https?://github.com/([^/]+)') as RepoOwnerLink,
  regexp_extract(LinkClean, '^https?://github.com/[^/]+/([^/]+)') as RepoNameLink,
  regexp_extract(LinkClean, '^https?://github.com/[^/]+/[^/]+/([^/?#]+)') as PathSegmentAfterRepoName,
  regexp_extract(LinkClean, '^https?://github.com/[^/]+/[^/]+/(.+)') as PathAfterRepoName
FROM clean_gh_links;
-- => commits_gh_links

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`;
-- 1,197,679
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE RepoOwner = RepoOwnerLink;
-- 599,426
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 403,830

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C';
-- 178,250
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C' AND RepoOwner = RepoOwnerLink;
-- 42,310
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 36,225

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C++';
-- 107,308
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C++' AND RepoOwner = RepoOwnerLink;
-- 70,491
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'C++' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 54,544

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Java';
-- 194,086
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Java' AND RepoOwner = RepoOwnerLink;
-- 141,324
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Java' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 84,502

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'JavaScript';
-- 318,043
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'JavaScript' AND RepoOwner = RepoOwnerLink;
-- 170,478
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'JavaScript' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 110,255

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'PHP';
-- 116,368
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'PHP' AND RepoOwner = RepoOwnerLink;
-- 61,632
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'PHP' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 45,469

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Python';
-- 154,938
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Python' AND RepoOwner = RepoOwnerLink;
-- 84,491
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Python' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 52,805

SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Ruby';
-- 128,686
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Ruby' AND RepoOwner = RepoOwnerLink;
-- 28,700
SELECT COUNT(*)
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE Language = 'Ruby' AND RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink;
-- 20,030

SELECT PathSegmentAfterRepoName, COUNT(*) AS LinkCount
FROM `gh-commits-274712.2020_03.commits_gh_links`
WHERE RepoOwner = RepoOwnerLink AND RepoName = RepoNameLink
GROUP BY PathSegmentAfterRepoName
ORDER BY LinkCount DESC;
-- => gh_links_path_segment_after_repo_name.csv
