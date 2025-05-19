package com.example.Demo.Bank;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DemoBankApplicationTests {

	@Test
	@DisplayName("Context loads successfully")
	void contextLoads() {
		// This test verifies that Spring context loads without errors
	}
	
	@Test
	@DisplayName("Basic assertion test")
	void basicTest() {
		// Simple test to demonstrate unit testing
		assertThat(true).isTrue();
		assertThat("Demo Bank").contains("Bank");
	}

}
