package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	// spring 4.3 이상에서 자동 처리
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {

		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {

		return mapper.delete(bno) == 1;
	}

	@Override
	public List<BoardVO> getList() {

		return mapper.getList();
	}
}
