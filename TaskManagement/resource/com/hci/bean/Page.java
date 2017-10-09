package com.hci.bean;

import java.util.List;

public class Page<T> {

	private Integer total; 				// 总条数
	private Integer pageCount;			// 总页数
	private Integer currentPage = 1; 	// 当前页数
	private Integer size = 10; 			// 每页显示条数
	private List<T> rows; 				// 列表数据

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}
