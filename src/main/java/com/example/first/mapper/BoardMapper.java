package com.example.first.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Board;
import com.example.first.vo.Orders;

@Mapper
public interface BoardMapper {
	
	int remove(int ordersNo);

	public int insertReviews(Board board);
	
	public int selectReviewsByOrders(int ordersNo);
	
	public List<Map<String,Object>> selectReviewListByGoods(Integer goodsNo);
	
	public int deleteReviewsByGoods(int goodsNo);
	
	// 고객의 댓글 리스트
	public List<Board> selectReviewsListByCustomer(String customerMail);

}
