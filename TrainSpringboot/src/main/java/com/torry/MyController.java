package com.torry;




import jdk.internal.dynalink.beans.StaticClass;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.TreeMap;

@Controller

public class MyController {
    @Autowired
    Ticket ticket;

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request) {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login.jsp");
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
        Train train;
        int trainNo = Integer.parseInt(request.getParameter("trainno"));
        String Strdate = request.getParameter("date");
        train = TrainDAO.findTrain(trainNo);
        System.out.println(train);
        ticket = new Ticket(train,Strdate);

        //ticket1.setTrain(train1);
        //ticket1.setTravelDate(Strdate);
        /*String d=(train1.getDestination());
        String s=(train1.getSource());*/

        /*System.out.println(s);*/

        ModelAndView mv = new ModelAndView();
        mv.addObject("train",trainNo);

        //mv.addObject("des",d);
        //mv.addObject("sou",s);

        mv.setViewName("pass.jsp");
        System.out.println(trainNo);
        return mv;
    }

    @RequestMapping("addPassenger")

    public ModelAndView passengerDetails(@RequestParam int noOfPassengers, HttpServletRequest request) throws SQLException {
        Train train;
        ModelAndView mv = new ModelAndView();
        int trainNo = Integer.parseInt(request.getParameter("trainno"));
        train = TrainDAO.findTrain(trainNo);
        System.out.println(train);
        mv.addObject("train",train);

        for (int i = 1; i <= noOfPassengers; i++) {
            //System.out.println(noOfPassengers+request.getParameter("name"+i));
            String name = request.getParameter("name"+i );
            int age = Integer.parseInt(request.getParameter("age"+i ));
            char gender = request.getParameter("gender"+i ).charAt(0);
            ticket.addPassenger(name,age,gender);
        }

      /*  mv.addObject("name",name);
        mv.addObject("age",name);
        mv.addObject("name",name);*/
        mv.setViewName("GeneratedTicket.jsp");
        System.out.println(train);
        return mv;
    }
}
