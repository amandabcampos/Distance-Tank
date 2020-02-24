package co.grandcircus.distancetank;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DistanceTankController {

	@RequestMapping("/")
	public ModelAndView home() { //any method name
		return new ModelAndView("home");
	}
	
	@RequestMapping("/mileage-form")
	public ModelAndView showMileageForm() {
		return new ModelAndView("mileage-form");
	}
	
	@RequestMapping("/adding-form")
	public ModelAndView showAddingForm() {
		return new ModelAndView("adding-form");
	}
	
	@RequestMapping("/dividing-form")
	public ModelAndView showDividingForm() {
		return new ModelAndView("dividing-form");
	}
	
	@RequestMapping("/word-form")
	public ModelAndView showWordForm() {
		return new ModelAndView("word-form");
	}
	
	@RequestMapping("/madlib-form")
	public ModelAndView showMadlibForm() {
		return new ModelAndView("madlib-form");
	}
	
	@RequestMapping("/tip-form")
	public ModelAndView showTipForm() {
		return new ModelAndView("tip-form");
	}
	
	@RequestMapping("/mileage-result")
	public ModelAndView showMileageResult( //are these parameters associated to the form?
			@RequestParam("mpg") int mpg,
			@RequestParam("gallons") int gallons,
			@RequestParam("distance") Double distance)
	{
		
		int range = mpg * gallons;
		double remainingDistance = range - distance;
		String message = "";
		if (remainingDistance < 0) {
			message = "You need more gas";
			
		} else {
			message = "You have enough gas";
		}
		
		ModelAndView mav = new ModelAndView("mileage-result");
//		mav.setViewName("addition-result"); - or can do it this way
		mav.addObject("mpg", mpg);
		mav.addObject("gallons", gallons);
		mav.addObject("distance", distance);
		mav.addObject("range", range);
		mav.addObject("remainingDistance", remainingDistance);
		mav.addObject("message", message);
		return mav;
	}
	
	@RequestMapping("adding-result")
	public ModelAndView showAddingResult(
			@RequestParam("num1") int num1,
			@RequestParam("num2") int num2) {
		int result = num1+num2;
		
		ModelAndView mav = new ModelAndView("adding-result");
		mav.addObject("num1", num1);
		mav.addObject("num2", num2);
		mav.addObject("result", result);
		
		return mav;
	}
	
	@RequestMapping("dividing-result")
	public ModelAndView showDividingResult(
			@RequestParam("num1") int num1,
			@RequestParam("num2") int num2) {
		double result = ((double)num1)/num2;
		int remainder = num1 % num2;
		ModelAndView mav = new ModelAndView("dividing-result");
		mav.addObject("num1", num1);
		mav.addObject("num2", num2);
		mav.addObject("result", result);
		mav.addObject("remainder", remainder);
		return mav;
	}
	
	@RequestMapping("word-result")
	public ModelAndView showWordResult(
			@RequestParam("word") String word,
			@RequestParam("rep") int rep) {
		
		String repeted = "";
		for (int i=0; i<rep; i++) {
			repeted += word;
		}
		ModelAndView mav = new ModelAndView("word-result");
		mav.addObject("repeted", repeted);
		return mav;
	}
	
	@RequestMapping("madlib-result")
	public ModelAndView showMadlibResult(
			@RequestParam("adj") String adj,
			@RequestParam("verb") String verb) {
		
		ModelAndView mav = new ModelAndView("madlib-result");
		mav.addObject("adj", adj);
		mav.addObject("verb", verb);
		return mav;
	}
	
	@RequestMapping("tip-result")
	public ModelAndView showTipResult(
			@RequestParam("total") Double total,
			@RequestParam("percentage") int percentage,
			@RequestParam("custom_tip") int custom_tip) {
		
		if (percentage==0) {
			percentage = custom_tip;	
		}
		
		ModelAndView mav = new ModelAndView("tip-result");
		Double tip = total * (percentage/100.0);
		mav.addObject("tip", tip);
		return mav;
	}
	
	
}
