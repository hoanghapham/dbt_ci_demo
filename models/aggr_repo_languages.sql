SELECT 
    lang.name 
    , count(distinct repo_name) as repositories_number
FROM {{ source('src_github', 'languages') }} 
, unnest(language) as lang
group by 1