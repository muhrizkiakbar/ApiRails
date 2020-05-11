# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = {
    "posts" => [
        {
            "title" => "Judul 1",
            "content" => "Isi Content judul 1"
        },
        {
            "title" => "Judul 2",
            "content" => "Isi content judul 2"
        }
    ]
}

posts['posts'].each do |post|
    add_post = Api::V1::Post.create(
        title: post["title"],
        content: post["content"]
    )

    add_post.errors.full_messages
end