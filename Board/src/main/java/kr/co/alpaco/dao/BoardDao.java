package kr.co.alpaco.dao;

import java.util.List;

import kr.co.alpaco.bean.BoardBean;

public interface BoardDao {
	List<BoardBean> selectAll() throws Exception;
	BoardBean selectOne(int id);
	void insert(BoardBean board);
	void update(BoardBean board);
	void updateViewCnt(int id);
	void delete(int id);
}
