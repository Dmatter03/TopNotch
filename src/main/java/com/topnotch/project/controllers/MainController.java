package com.topnotch.project.controllers;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.topnotch.project.models.Review;
import com.topnotch.project.services.ReviewService;

import jakarta.validation.Valid;

@Controller
public class MainController {
    @Autowired
    private ReviewService reviewServ;

    
	//============ Get Mapping ===========>

    @GetMapping("/")
    public String showHomePage(Model model, @RequestParam(required = false) boolean newReview) {
        List<Review> reviews = reviewServ.getAllReviews();
        model.addAttribute("reviews", reviews);
        if (newReview) {
            model.addAttribute("newReviewSuccessMessage", "Your review has been submitted successfully!");
        }
        model.addAttribute("ratingForm", new Review());
        return "dashboard.jsp";
    }

    @PostMapping("/submitRating")
    public String submitForm(
        @Valid @ModelAttribute("ratingForm") Review ratingForm,
        BindingResult result, Model model
    ) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            model.addAttribute("ratingForm", ratingForm);
            return "dashboard.jsp";
        } else {
            // Format and validate the 'number' field
            String inputNumber = ratingForm.getNumber();
            Pattern pattern = Pattern.compile("^(?:(?:\\+|00)(\\d{1,3})[\\s\\-]?)?(?:(?:\\d{1,4}[\\s\\-]?){0,5}\\d{1,4})$");
            Matcher matcher = pattern.matcher(inputNumber);
            if (matcher.matches()) {
                // Input number matches the expected format
                // Extract the matched number and store in the database
                String formattedNumber = matcher.group();
                ratingForm.setNumber(formattedNumber);
                reviewServ.saveReview(ratingForm);
                model.addAttribute("newReview", ratingForm);
                return "redirect:/?newReview=true";
            } else {
                // Input number does not match the expected format
                // Add an error to the BindingResult and return to the form page
                result.rejectValue("number", "error.number", "Please enter a valid phone number");
                model.addAttribute("ratingForm", ratingForm);
                return "dashboard.jsp";
            }
        }
    }
}