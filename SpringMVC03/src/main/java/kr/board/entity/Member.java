package kr.board.entity;

import lombok.Data;

@Data
public class Member {
	private int memIdx; 
	private String memID;
	private String memPassword;
	private String memName;
	private int memAge; // <- 등록시 미입력: null이 들어갈수없다. 타입이 int
	private String memGender;
	private String memEmail;
	private String memProfile;
}
