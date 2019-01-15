package app.controller;

import app.domain.Blog;
import app.domain.User;
import app.repos.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    BlogRepository blogRepository;

    @GetMapping("/")
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Model model) {
        Iterable<Blog> blogs;

        blogs = blogRepository.findAll();

        model.addAttribute("blogs", blogs);
        return "main";
    }

    @PostMapping("/main")
    public String postBlog(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            Map<String, Object> model) {
        Blog blog = new Blog(text, user.getUsername());
        blogRepository.save(blog);
        Iterable<Blog> blogs = blogRepository.findAll();
        model.put("blogs", blogs);
        return "main";
    }
}
