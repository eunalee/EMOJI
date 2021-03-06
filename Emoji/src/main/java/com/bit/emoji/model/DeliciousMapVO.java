package com.bit.emoji.model;

public class DeliciousMapVO {
	private int deliciousMapNum;
	private String deliciousMapName;
	private String deliciousMapTag;
	private String deliciousMapDetail;
	private String deliciousMapOpen;
	private String deliciousMapCreateDate;
	private int memberNum;
	private String memberEmail;
	private String deliciousImg;
	private DeliciousVO deliciousVO;
	
	//스크랩수 저장
		private int deliciousCount;
	
	public DeliciousMapVO() { }

	public DeliciousMapVO(int deliciousMapNum, String deliciousMapName, String deliciousMapTag,
			String deliciousMapDetail, String deliciousMapOpen, String deliciousMapCreateDate, int memberNum,
			String memberEmail, String deliciousImg, DeliciousVO deliciousVO) {
		super();
		this.deliciousMapNum = deliciousMapNum;
		this.deliciousMapName = deliciousMapName;
		this.deliciousMapTag = deliciousMapTag;
		this.deliciousMapDetail = deliciousMapDetail;
		this.deliciousMapOpen = deliciousMapOpen;
		this.deliciousMapCreateDate = deliciousMapCreateDate;
		this.memberNum = memberNum;
		this.memberEmail = memberEmail;
		this.deliciousImg = deliciousImg;
		this.deliciousVO = deliciousVO;
	}

	public int getDeliciousMapNum() {
		return deliciousMapNum;
	}

	public void setDeliciousMapNum(int deliciousMapNum) {
		this.deliciousMapNum = deliciousMapNum;
	}

	public String getDeliciousMapName() {
		return deliciousMapName;
	}

	public void setDeliciousMapName(String deliciousMapName) {
		this.deliciousMapName = deliciousMapName;
	}

	public String getDeliciousMapTag() {
		return deliciousMapTag;
	}

	public void setDeliciousMapTag(String deliciousMapTag) {
		this.deliciousMapTag = deliciousMapTag;
	}

	public String getDeliciousMapDetail() {
		return deliciousMapDetail;
	}

	public void setDeliciousMapDetail(String deliciousMapDetail) {
		this.deliciousMapDetail = deliciousMapDetail;
	}

	public String getDeliciousMapOpen() {
		return deliciousMapOpen;
	}

	public void setDeliciousMapOpen(String deliciousMapOpen) {
		this.deliciousMapOpen = deliciousMapOpen;
	}

	public String getDeliciousMapCreateDate() {
		return deliciousMapCreateDate;
	}

	public void setDeliciousMapCreateDate(String deliciousMapCreateDate) {
		this.deliciousMapCreateDate = deliciousMapCreateDate;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public DeliciousVO getDeliciousVO() {
		return deliciousVO;
	}

	public void setDeliciousVO(DeliciousVO deliciousVO) {
		this.deliciousVO = deliciousVO;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getDeliciousImg() {
		return deliciousImg;
	}

	public void setDeliciousImg(String deliciousImg) {
		this.deliciousImg = deliciousImg;
	}

	@Override
	public String toString() {
		return "DeliciousMapVO [deliciousMapNum=" + deliciousMapNum + ", deliciousMapName=" + deliciousMapName
				+ ", deliciousMapTag=" + deliciousMapTag + ", deliciousMapDetail=" + deliciousMapDetail
				+ ", deliciousMapOpen=" + deliciousMapOpen + ", deliciousMapCreateDate=" + deliciousMapCreateDate
				+ ", memberNum=" + memberNum + ", memberEmail=" + memberEmail + ", deliciousImg=" + deliciousImg
				+ ", deliciousVO=" + deliciousVO + "]";
	}

	public int getDeliciousCount() {
		return deliciousCount;
	}

	public void setDeliciousCount(int deliciousCount) {
		this.deliciousCount = deliciousCount;
	}
}