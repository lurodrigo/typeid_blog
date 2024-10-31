alias Blog.{Repo, Post, Comment}

Repo.insert!(%Post{
  title: "My First Post",
  body: "This is the body of my first post",
  comments: [%{body: "This is the body of my first comment"}]
})

#  Repo.all(Post) |> Repo.preload([:comments])
#  Repo.all(Comment)
