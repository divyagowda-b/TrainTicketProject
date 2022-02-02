package com.torry;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;



@Controller

public class MyController {
    @Autowired
    Ticket ticket;

    Train train;

    @RequestMapping("/useradmin")
    public ModelAndView useradmin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("useradmin.jsp");
        return mv;
    }


    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login.jsp");
        return mv;
    }


    @RequestMapping("adminlogin")
    public ModelAndView admin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Adminlogin.jsp");
        return mv;
    }

    @RequestMapping("availabletrains")
    public ModelAndView availableTrains() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("availabletrains.jsp");
        return mv;
    }

    @RequestMapping("booktrain")
    public ModelAndView bookTrain() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("booktrain.jsp");
        return mv;
    }

    @RequestMapping("noofpassanger")
    public ModelAndView noofpassanger(HttpServletRequest request) throws SQLException {

        int trainNo = Integer.parseInt(request.getParameter("trainno"));
        String Strdate = request.getParameter("date");
        train = TrainDAO.findTrain(trainNo);

        ticket = new Ticket(train, Strdate);
        ModelAndView mv = new ModelAndView();
        mv.addObject("train", trainNo);
        mv.setViewName("pass.jsp");
        return mv;
    }

    @RequestMapping("addPassenger")

    public ModelAndView passengerDetails(@RequestParam int noOfPassengers, HttpServletRequest request) throws SQLException {
        ModelAndView mv = new ModelAndView();
        int trainNo = Integer.parseInt(request.getParameter("trainno"));
        train = TrainDAO.findTrain(trainNo);
        mv.addObject("train", train);

        for (int i = 1; i <= noOfPassengers; i++)
        {
            String name = request.getParameter("name" + i);
            int age = Integer.parseInt(request.getParameter("age" + i));
            char gender = request.getParameter("gender" + i).charAt(0);
            ticket.addPassenger(name, age, gender);
        }
        ticket.writeTicket();
        mv.setViewName("radio.jsp");
        return mv;
    }

    @RequestMapping("pay")
    public ModelAndView pay() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("radio.jsp");
        return mv;
    }


    @RequestMapping("ticketgeneration")
    public String ticket(ModelMap model) {
        double totalTicketPrice = 0.0;
        for (double p : ticket.getPassengers().values()) {

            totalTicketPrice += p;
        }
        double ttp = totalTicketPrice;
        model.addAttribute("ttp", ttp);
        return "pay.jsp";
    }
}