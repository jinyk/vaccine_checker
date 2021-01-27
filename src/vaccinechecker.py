from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

try:
   chrome_options = webdriver.ChromeOptions()
   chrome_options.add_argument('--no-sandbox')

   driver = webdriver.Remote(
      command_executor='http://chromedriver:4444/wd/hub',
      options=chrome_options
   )

   driver.get("https://vaccinepod.nyc.gov/")
   # taking a screenshot is a bit of a hack but gets driver to render the javascript rendered content
   driver.get_screenshot_as_file('screenshot.png')

   element = driver.find_element_by_class_name('no-vac-pointer')
   print(element.text)

except NoSuchElementException:
   print("No warning, so vaccine must be available!")

except Exception as e:
   print(f"Exception: {type(e)}")

finally:
   driver.quit()
