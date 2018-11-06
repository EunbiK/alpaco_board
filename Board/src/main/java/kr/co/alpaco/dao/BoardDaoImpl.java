package kr.co.alpaco.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.alpaco.bean.BoardBean;

@Repository
public class BoardDaoImpl implements BoardDao {
	//����� mapper.xml ( Mapper XML�� namespace�� ��ġ�ؾ� �Ѵ�.)
	private static final String namespace="kr.co.alpaco.boardMapper";
	
	@Inject //DB Ŀ�ؼǰ� Ŭ��� �ڵ����� ���ִ� SqlSession
	private SqlSession sqlSession;
	
	
	@Override
	public List<BoardBean> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".board");	//selectList : result row�� 1�� �̻��� �� ����ϴ� �޼ҵ�
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
