package app.repos;

import app.domain.User;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface UserRepository extends MongoRepository<User, String> {

    public List<User> findAll();
    public User findByUsername(String username);
}
