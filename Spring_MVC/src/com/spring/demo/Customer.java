package com.spring.demo;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Customer {

	
	private String firstName;
	
	@NotNull(message = "is required")
	@Size(min=1, message = "is reqiured")
	private String lastName;
	
	@Min(value=1, message = "Please enter value between 1 and 10")
	@Max(value=10, message = "Enter number below 10 but above 1")
	private int freePasses;

	@Pattern(regexp = "^[a-zA-z0-9]{5}", message = "Only 5 chars/digits")
	private String postalCode;
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getFreePasses() {
		return freePasses;
	}

	public void setFreePasses(int freePasses) {
		this.freePasses = freePasses;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	
	
	
	
}
