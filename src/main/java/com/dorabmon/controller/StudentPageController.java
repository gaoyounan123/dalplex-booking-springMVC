package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.course.CourseService;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/student_page")
public class StudentPageController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CourtService courtService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView admin (HttpServletRequest httpServletRequest) {

        ModelAndView mav = new ModelAndView("student_page");
        List<Course> courseList = new ArrayList<>();
        courseList = courseService.FindAll();
        mav.addObject("courseList", courseList);

        List<Court> courtList = new ArrayList<>();
        courtList = courtService.FindAll();
        mav.addObject("courtList", courtList);
        return mav;
    }

}
