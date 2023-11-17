package ra.academy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ra.academy.model.Customer;
import ra.academy.service.UploadService;

import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired// tiêm bean có tên UploadService trong iOC container
    private UploadService uploadService;

    @RequestMapping("/add")
    public String doAdd(Model model) {
        model.addAttribute("cus", new Customer());
        return "add";
    }

    // tham số trên đường dẫn - đường dẫn động
    @RequestMapping("/dynamic/{id}/api/{name}")
    public String dynamic(@PathVariable int id,
                          @PathVariable String name,
                          Model model) {
        model.addAttribute("id", id);
        model.addAttribute("name", name);
        return "home";
    }

    // định nghĩa theo biểu thức chính qui
    @RequestMapping("/pattern/{name:[a-zA-Z]{4}}")
    public String pattern(@PathVariable String name, Model model) {
        model.addAttribute("name", name);
        return "add";
    }

    @PostMapping("/do-add")
    public String doAdd(@ModelAttribute("cus") Customer customer, Model model) {
        model.addAttribute("cus", customer);
        return "home";
    }

    //upload file
    @GetMapping("/form-upload")
    public String upload() {
        return "upload";
    }

    @PostMapping("/upload")
    public String doUpload(@RequestParam("image") List<MultipartFile> file,Model  model) {
        // xử lí upload
        List<String> images = uploadService.uploadFileToServer(file);
        model.addAttribute("images",images);
        return "result";
    }


}
