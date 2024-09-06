package TestRunner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "C:\\Users\\Administrator\\eclipse-workspace\\capstonedemo\\src\\main\\resources\\Feature\\Grocery_Story.feature",
    glue = {"stepdefinations"},
    plugin = {"pretty", "html:target/cucumber-reports"}
)
public class TestRunner {
}