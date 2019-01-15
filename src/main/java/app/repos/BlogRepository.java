package app.repos;


import app.domain.Blog;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface BlogRepository extends MongoRepository<Blog, String> {

    public List<Blog> findAll();
    public List<Blog> findByAuthor(String author);
}
