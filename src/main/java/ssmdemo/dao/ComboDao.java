package ssmdemo.dao;

import java.util.List;

import ssmdemo.model.Combo;

public interface ComboDao {
    int deleteByPrimaryKey(Long comboId);

    int insert(Combo record);

    int insertSelective(Combo record);

    Combo selectByPrimaryKey(Long comboId);

    int updateByPrimaryKeySelective(Combo record);

    int updateByPrimaryKey(Combo record);

	List<Combo> findAll();

	List<Combo> findByParams(Combo combo);
}