package com.servicios.models.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.servicios.models.dao.INucleoDAO;
import com.servicios.models.entity.Nucleo;


@Service
public class NucleoServiceImpl implements INucleoService {
	
	@Autowired
	private INucleoDAO nucleoDAO;
	
	@Override
	@Transactional(readOnly = true)
	public List<Nucleo> findAll() {
		return (List<Nucleo>) nucleoDAO.findAll();
	}

	@Override
	@Transactional
	public Nucleo save(Nucleo nucleo) {
		return nucleoDAO.save(nucleo);
	}

	@Override
	@Transactional(readOnly = true)
	public Nucleo findById(Long id) {
		return nucleoDAO.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		nucleoDAO.deleteById(id);
		
	}

}
