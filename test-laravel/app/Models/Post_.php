<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Pertama",
            "slug" => "judul-slug-pertama",
            "author" => "Wahyu",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere, tempore neque. 
            Iste ratione quisquam aperiam ullam sapiente id libero, veniam quod ab laudantium nemo, dolore 
            voluptatibus dolorum at quibusdam sequi? Magnam itaque voluptates ducimus facilis dolorum dolores. 
            Dolorum amet ratione accusantium qui et nihil assumenda enim quasi architecto aliquid exercitationem 
            commodi rem reprehenderit labore illum, voluptate accusamus tenetur dolores necessitatibus corrupti 
            inventore hic, minima dolor suscipit. Quo quam, officia aliquid dolorem laborum quas eligendi similique 
            consectetur enim esse error accusantium."
        ],
        [
            "title" => "Judul Kedua",
            "slug" => "judul-slug-kedua",
            "author" => "Sakti",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere, tempore neque. 
            Iste ratione quisquam aperiam ullam sapiente id libero, veniam quod ab laudantium nemo, dolore 
            voluptatibus dolorum at quibusdam sequi? Magnam itaque voluptates ducimus facilis dolorum dolores. 
            Dolorum amet ratione accusantium qui et nihil assumenda enim quasi architecto aliquid exercitationem 
            commodi rem reprehenderit labore illum, voluptate accusamus tenetur dolores necessitatibus corrupti 
            inventore hic, minima dolor suscipit. Quo quam, officia aliquid dolorem laborum quas eligendi similique 
            consectetur enim esse error accusantium."
        ],
    ];

    //konsep collection
    //sama diatas juga
    public static function all()
    {
        return collect(self::$blog_posts);
    }

    //mengambil data diatas
    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}
