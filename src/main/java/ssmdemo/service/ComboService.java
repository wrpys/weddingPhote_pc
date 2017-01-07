package ssmdemo.service;

import java.util.List;

import ssmdemo.model.Combo;


public interface ComboService {
	
	Boolean clickLike(Long comboId);

	Integer getClickLikeNum(Long comboId);

	List<Combo> findByParams(Combo combo);

	void updateCombo(Combo combo);

	Combo getCombo(Long comboId);

	List<Combo> getPopularCombo(int type, int pageSize);

}
