package com.servicios.models.services;

import java.util.List;

import com.servicios.models.entity.Nucleo;

public interface INucleoService {

	public List<Nucleo> findAll();

	public Nucleo save(Nucleo nucleo);

	public Nucleo findById(Long id);

	public void delete(Long id);

}
