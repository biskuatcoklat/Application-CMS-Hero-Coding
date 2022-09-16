<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            "name" => "Wahyu Aprilliandhika",
            "username" => "wahyu",
            "email" => "wahyu@gmail.com",
            "password" => bcrypt(12345)
        ]);

        // User::create([
        //     "name" => "Sakti Adnan Magani",
        //     "email" => "saktiu@gmail.com",
        //     "password" => bcrypt(123)m
        // // ]);

        User::factory(4)->create();

        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'Dekstop Programming',
            'slug' => 'dekstop-programming'
        ]);

        Category::create([
            'name' => 'Mobile Programming',
            'slug' => 'mobile-programming'
        ]);

        Category::create([
            'name' => 'UIUX',
            'slug' => 'UI-UX'
        ]);


        Post::factory(25)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur quam aliquid facilis iusto voluptatum molestias et quisquam accusantium obcaecati excepturi.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum omnis in cum provident laudantium sunt harum. Quos, in fugit molestias hic dolorem consequatur eum! Ducimus tempora earum fugiat ut!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur quam aliquid facilis iusto voluptatum molestias et quisquam accusantium obcaecati excepturi.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum omnis in cum provident laudantium sunt harum. Quos, in fugit molestias hic dolorem consequatur eum! Ducimus tempora earum fugiat ut!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur quam aliquid facilis iusto voluptatum molestias et quisquam accusantium obcaecati excepturi.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum omnis in cum provident laudantium sunt harum. Quos, in fugit molestias hic dolorem consequatur eum! Ducimus tempora earum fugiat ut!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur quam aliquid facilis iusto voluptatum molestias et quisquam accusantium obcaecati excepturi.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum omnis in cum provident laudantium sunt harum. Quos, in fugit molestias hic dolorem consequatur eum! Ducimus tempora earum fugiat ut!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
