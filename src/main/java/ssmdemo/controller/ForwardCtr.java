package ssmdemo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ssmdemo.common.Constants;
import ssmdemo.model.Combo;
import ssmdemo.service.ComboService;
import ssmdemo.utils.Util;

/**
 * 主页面跳转
 * @author wrp
 *
 */
@Controller
@RequestMapping("/")
public class ForwardCtr {
	
	@Autowired
	private ComboService comboService;
	
	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping
	public String index(HttpSession session, Model model){
		Properties cznnProperties = null;
		try {
			cznnProperties = Util.getProperties(Constants.CNZZ_CONFIG_PATH);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String cznnNo = cznnProperties.getProperty("cnzz.no");
		session.setAttribute("cnzzNo", cznnNo);
		return buildData(model);
	}
	
	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="{path}")
	public String toIndex(@PathVariable("path") String path, HttpSession session, Model model){
		Properties cznnProperties = null;
		try {
			cznnProperties = Util.getProperties(Constants.CNZZ_CONFIG_PATH);
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (path == null || "".equals(path.trim()) || "index".equals(path.trim())) {
			String cznnNo = cznnProperties.getProperty("cnzz.no");
			session.setAttribute("cnzzNo", cznnNo);
		} else {
			String cznnNo = cznnProperties.getProperty("cnzz." + path.trim());
			if (cznnNo == null || "".equals(cznnNo.trim())) {
				cznnNo = cznnProperties.getProperty("cnzz.no");
			}
			session.setAttribute("cnzzNo", cznnNo);
		}
		return buildData(model);
	}
	
//	@RequestMapping(value="index")
//	public String toIndex(HttpSession session, Model model){
//		session.setAttribute("cnzzNo", 1259819030);
//		return buildData(model);
//	}
	
	/*@RequestMapping(value="1")
	public String index1(HttpSession session, Model model){
		session.setAttribute("cnzzNo", 1259819005);
		return buildData(model);
	}
	
	@RequestMapping(value="2")
	public String index2(HttpSession session, Model model){
		session.setAttribute("cnzzNo", 1259819008);
		return buildData(model);
	}
	
	@RequestMapping(value="3")
	public String index3(HttpSession session, Model model){
		session.setAttribute("cnzzNo", 1259819030);
		return buildData(model);
	}
	
	@RequestMapping(value="4")
	public String index4(HttpSession session, Model model){
		session.setAttribute("cnzzNo", 1259819030);
		return buildData(model);
	}
	
	@RequestMapping(value="5")
	public String index5(HttpSession session, Model model){
		session.setAttribute("cnzzNo", 1259819030);
		return buildData(model);
	}*/
	
	private String buildData(Model model){
		// 查询五套点赞最多的套餐
		List<Combo> popularCombos = comboService.getPopularCombo(2, 5);
		model.addAttribute("popularCombos", popularCombos);
		// 查询三套点赞最多的套餐
		List<Combo> popularCombos2 = comboService.getPopularCombo(1, 3);
		model.addAttribute("popularCombos2", popularCombos2);
		// 获取所有客照
		Combo comboParams = new Combo();
		comboParams.setType(2);
		List<Combo> combos = comboService.findByParams(comboParams);
		model.addAttribute("combos", combos);
		// 获取所有独家场景
		comboParams = new Combo();
		comboParams.setType(3);
		List<Combo> dujiaCombos = comboService.findByParams(comboParams);
		model.addAttribute("dujiaCombos", dujiaCombos);
		model.addAttribute("index", "current");
		return "front/index";
	}
	
	/**
	 * 推荐套餐 套餐列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="recom_product_package", method={RequestMethod.GET, RequestMethod.POST})
	public String recom_product_package(Model model){
		// 查询三套点赞最多的套餐
		List<Combo> popularCombos = comboService.getPopularCombo(1, 3);
		model.addAttribute("popularCombos", popularCombos);
		// 获取所有套餐
		Combo comboParams = new Combo();
		comboParams.setType(1);
		List<Combo> combos = comboService.findByParams(comboParams);
		model.addAttribute("combos", combos);
		model.addAttribute("recom_product_package", "current");
		return "front/recom_product_package";
	}
	
	/**
	 * 套餐详情  根据comboId查询出对应的信息,进行页面展示
	 * @param model
	 * @param comboId
	 * @return
	 */
	@RequestMapping(value="product_info", method={RequestMethod.GET, RequestMethod.POST})
	public String product_info(Model model, Long comboId ,Integer result){
		Combo combo = comboService.getCombo(comboId);
		model.addAttribute("combo", combo);
		model.addAttribute("result", result);
		model.addAttribute("recom_product_package", "current");
		return "front/product_info";
	}
	
	/**
	 * 在线预约  根据comboId查询出对应的信息,进行页面展示
	 * @param model
	 * @param comboId
	 * @return
	 */
	@RequestMapping(value="online_order", method={RequestMethod.GET, RequestMethod.POST})
	public String online_order(Model model,Long comboId,Integer type){
		Combo combo = comboService.getCombo(comboId);
		model.addAttribute("combo", combo);
		model.addAttribute("type", type);
		if(type == 1) {
			model.addAttribute("recom_product_package", "current");
		} else if (type ==2) {
			model.addAttribute("enjoy_customer_pic", "current");
		} else if (type == 3) {
			model.addAttribute("exclusive_scene", "current");
		}
		return "front/online_order";
	}
	
	/**
	 * 客照欣赏 客照列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="enjoy_customer_pic", method={RequestMethod.GET, RequestMethod.POST})
	public String enjoy_customer_pic(Model model){
		// 获取所有客照
		Combo comboParams = new Combo();
		comboParams.setType(2);
		List<Combo> combos = comboService.findByParams(comboParams);
		model.addAttribute("combos", combos);
		model.addAttribute("enjoy_customer_pic", "current");
		return "front/enjoy_customer_pic";
	}
	
	/**
	 * 客照详情  根据comboId查询出对应的信息,进行页面展示
	 * @param model
	 * @param comboId
	 * @return
	 */
	@RequestMapping(value="customer_pic_list", method={RequestMethod.GET, RequestMethod.POST})
	public String customer_pic_list(Model model, Long comboId, Integer result){
		Combo combo = comboService.getCombo(comboId);
		model.addAttribute("combo", combo);
		model.addAttribute("result", result);
		model.addAttribute("enjoy_customer_pic", "current");
		return "front/customer_pic_list";
	}
	
	/**
	 * 独家场景 独家场景列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="exclusive_scene", method={RequestMethod.GET, RequestMethod.POST})
	public String exclusive_scene(Model model){
		// 获取所有客照
		Combo comboParams = new Combo();
		comboParams.setType(3);
		List<Combo> combos = comboService.findByParams(comboParams);
		model.addAttribute("combos", combos);
		model.addAttribute("exclusive_scene", "current");
		return "front/exclusive_scene";
	}

	/**
	 * 独家详情  根据comboId查询出对应的信息,进行页面展示
	 * @param model
	 * @param comboId
	 * @return
	 */
	@RequestMapping(value="exclusive_scene_list", method={RequestMethod.GET, RequestMethod.POST})
	public String exclusive_scene_list(Model model, Long comboId, Integer result){
		Combo combo = comboService.getCombo(comboId);
		model.addAttribute("combo", combo);
		model.addAttribute("result", result);
		model.addAttribute("exclusive_scene", "current");
		return "front/exclusive_scene_list";
	}
	
	/**
	 * 预约咨询
	 * @return
	 */
	@RequestMapping(value="i_want_order", method={RequestMethod.GET, RequestMethod.POST})
	public String i_want_order(Model model, Integer result){
		model.addAttribute("result", result);
		model.addAttribute("i_want_order", "current");
		return "front/i_want_order";
	}
	
}
