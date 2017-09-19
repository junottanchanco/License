package com.codingdojo.relationships.repositories;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.relationships.models.Person;

public interface PersonRepository extends CrudRepository<Person, Long>{

}
