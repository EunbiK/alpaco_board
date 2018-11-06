package kr.co.alpaco.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.alpaco.bean.BoardBean;

@Repository
public class BoardDaoImpl implements BoardDao {
	//사용할 mapper.xml ( Mapper XML의 namespace와 일치해야 한다.)
	private static final String namespace="kr.co.alpaco.boardMapper";
	
	@Inject //DB 커넥션과 클로즈를 자동으로 해주는 SqlSession
	private SqlSession sqlSession;
	
	
	@Override
	public List<BoardBean> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".board");	//selectList : result row가 1개 이상일 때 사용하는 메소드
	}


	@Override
	public BoardBean selectOne(int id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".oneView", id);
	}


	@Override
	public void insert(BoardBean board) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insert", board);
	}
	
	@Override
	public void update(BoardBean board) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".update", board);
	}

	@Override
	public void updateViewCnt(int id) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".updateViewCnt", id);
	}
	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".delete", id);
	}

}
