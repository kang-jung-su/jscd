package com.jscd.app.board.qna.qnaDao;

import com.jscd.app.board.qna.qnaDto.AllqnaDto;
import com.jscd.app.board.qna.qnaDto.QnActDto;
import com.jscd.app.board.qna.qnaDto.SearchCondition;

import java.util.List;

public interface AllqnaDao {
    //1-1. 게시글 등록
    int insert(AllqnaDto allqnaDto) throws Exception;
    //1-2. 게시글 목록 읽기 (페이징 처리)
    public List<AllqnaDto> selectList(SearchCondition sc) throws Exception;

    //1-3 게시글 1개 읽기
    AllqnaDto select(Integer allqnaNo) throws Exception;

    //1-4. 게시글 수정
    int update(AllqnaDto allqnaDto) throws Exception;
    //1-5. 게시글 삭제
    int delete(Integer allqnaNo, String writer) throws Exception;

    //2-1 댓글 등록
    int cmtInsert(AllqnaDto allqnaDto) throws Exception;



    //2-2 댓글 목록
    List<AllqnaDto> cmtSelect(Integer allqnaNo) throws Exception;
    //2-3 댓글 수정
    int cmtUpdate(AllqnaDto allqnaDto) throws Exception;
    //2-4 댓글 삭제
    int cmtDelete(AllqnaDto allqnaDto) throws Exception;
    //3-1 대댓글 등록
    int cmtReplyInsert(AllqnaDto allqnaDto) throws Exception;
    //3-2 대댓글 목록
    List<AllqnaDto> cmtReplySelectList(AllqnaDto allqnaDto) throws Exception;
    //3-3 대댓글 수정
    int cmtReplyUpdate(AllqnaDto allqnaDto) throws Exception;

    //3-4 대댓글 삭제
    int cmtReplyDelete(AllqnaDto allqnaDto) throws Exception;

    //4 비밀글 제외
    //5 내가 작성한 글 보기
    //6 게시글 페이징 처리 및 검색
    int searchResultCnt(SearchCondition sc) throws Exception;
    List<AllqnaDto> searchSelectPage(SearchCondition sc) throws Exception;


    //8 조회수 처리
    int increaseViewCnt(Integer allqnaNo) throws Exception;

    QnActDto allqnaCategory(Integer qnaCtNo) throws Exception;

}
