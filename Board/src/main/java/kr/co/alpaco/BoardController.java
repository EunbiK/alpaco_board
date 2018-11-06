package kr.co.alpaco;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.alpaco.bean.BoardBean;
import kr.co.alpaco.service.BoardService;

@Controller
public class BoardController {
	@Inject
	BoardService boardService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String board(Locale locale, Model model) {
		List<BoardBean> boardList;
		try {
			boardList = boardService.selectAll();
			model.addAttribute("boardList", boardList);	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "list";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String oneView(Locale locale, Model model, @RequestParam(value="id") int id) {
		boardService.updateViewCnt(id);
		BoardBean oneview = boardService.selectOne(id);
		model.addAttribute("view", oneview);
		return "view";
	}
	
	@RequestMapping(value = "/insertForm", method = RequestMethod.GET)
	public String insertForm(Locale locale, Model model) {
		model.addAttribute("board", new BoardBean());
		return "insert";
	}
	
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String updateForm(Locale locale, Model model, @RequestParam(value="id") int id) {
		BoardBean board = boardService.selectOne(id);
		model.addAttribute("board", board);
		
		return "update";
	}
	
	@RequestMapping(value = "/db", method = RequestMethod.POST)
	public String insert(Locale locale, @ModelAttribute BoardBean board, @RequestParam(value="devision") String devision) {
		if (devision.equals("insert")) {
			boardService.insert(board);
		} else {
			boardService.update(board);
		}
		
		return "redirect:view?id="+board.getId();
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Locale locale, @RequestParam(value="id") int id) {
		boardService.delete(id);
		return "redirect:list";
	}
	
}
