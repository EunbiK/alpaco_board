package kr.co.alpaco.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.alpaco.bean.BoardBean;
import kr.co.alpaco.dao.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDao boardDao;

	@Override
	public List<BoardBean> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return boardDao.selectAll();
	}

	@Override
	public BoardBean selectOne(int id) {
		// TODO Auto-generated method stub
		return boardDao.selectOne(id);
	}

	@Override
	public void insert(BoardBean board) {
		// TODO Auto-generated method stub
		boardDao.insert(board);
	}
	
	@Override
	public void update(BoardBean board) {
		// TODO Auto-generated method stub
		boardDao.update(board);
	}
	
	@Override
	public void updateViewCnt(int id) {
		// TODO Auto-generated method stub
		boardDao.updateViewCnt(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		boardDao.delete(id);
	}
	
}
