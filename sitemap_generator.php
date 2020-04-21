<?php

  /* Загатовка XML */
  $domain = 'https://site.com';
  $xml_header = "<?xml version='1.0' encoding='UTF-8'?>\n";
  $xml_urlset = "<urlset xmlns='http://www.sitemaps.org/schemas/sitemap/0.9'>\n";
  $xml_urlset_close = "</urlset>";
  $xml_url = '';

  /* Конфигурация БД */
  $host = 'localhost';
  $user = 'root';
  $password = '';
  $dbname = 'interpress';

  /* Конфигурация PDO */
  $dsn = 'mysql:host=' . $host . ';dbname=' . $dbname;
  $pdo = new PDO($dsn, $user, $password);
  $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

  $sql = '
    SELECT gm.url AS main_url, gmp.url AS place_url, gme.year
    FROM gallery_motorshow gm
    JOIN gallery_motorshow_places gmp ON gm.place_id = gmp.id
    JOIN gallery_motorshow_events gme ON gm.event_id = gme.id';
  $query = $pdo->query($sql);

  /* Формирование URL */
  while ($row = $query->fetch()) {
    $xml_url .= "<url>\n";
    $xml_url .= "\t <loc>" . $domain . '/' . $row->place_url . '/' . $row->year . '/' . $row->main_url . '/' . "</loc>\n";
    $xml_url .= "\t <changefreq>weekly</changefreq>\n";
    $xml_url .= "\t <priority>0.80</priority>\n";
    $xml_url .= "</url>\n";
  }

  $site_map_content = $xml_header . $xml_urlset . $xml_url . $xml_urlset_close;

  /* Генерирование файла site_map.xml */
  $site_map = fopen('site_map.xml', 'w');
  fwrite($site_map, $site_map_content);