package com.codingdojo.relationships.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.relationships.models.Person;
import com.codingdojo.relationships.repositories.PersonRepository;

@Service
public class PersonService {
	private PersonRepository personRepository;
	private PersonService(PersonRepository personRepository) {
		this.personRepository = personRepository;
	}
	public void addPerson(Person person) {
		personRepository.save(person);
	}
	
	public List<Person> getAllPersons(){
		return (List<Person>) personRepository.findAll();
	}
	
	public void deletePerson(Long id) {
		personRepository.delete(id);
	}
	
	public Person getPersonById(Long id) {
		return personRepository.findOne(id);
	}
}
