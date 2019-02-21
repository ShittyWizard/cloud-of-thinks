package app.controller;

import app.domain.Blog;
import app.domain.User;
import app.repos.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
public class MainController {
    @Autowired
    BlogRepository blogRepository;

    @Value("${upload.path}")
    private String uploadPath;

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
            @RequestParam("file") MultipartFile file,
            Map<String, Object> model) throws IOException {

        Blog blog = new Blog(text, user.getUsername());
        if (file != null && !file.getOriginalFilename().isEmpty()){
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFileName = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFileName));

            blog.setFileName(resultFileName);
        }

        blogRepository.save(blog);
        Iterable<Blog> blogs = blogRepository.findAll();
        model.put("blogs", blogs);
        return "main";
    }
}
