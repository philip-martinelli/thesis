view: avatars {
  derived_table: {
    sql:  WITH jan as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              feb as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              mar as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              apr as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              may as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              jun as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              jul as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              aug as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              sep as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              oct as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              nov as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
              dec as (SELECT char,_race,_class FROM wow.??? GROUP BY 1,2,3)
          SELECT * FROM jan
            UNION DISTINCT
          SELECT * FROM feb
            UNION DISTINCT
          SELECT * FROM mar
            UNION DISTINCT
          SELECT * FROM apr
            UNION DISTINCT
          SELECT * FROM may
            UNION DISTINCT
          SELECT * FROM jun
            UNION DISTINCT
          SELECT * FROM jul
            UNION DISTINCT
          SELECT * FROM aug
            UNION DISTINCT
          SELECT * FROM sep
            UNION DISTINCT
          SELECT * FROM oct
            UNION DISTINCT
          SELECT * FROM nov
            UNION DISTINCT
          SELECT * FROM dec

    ;;
  }





}
