from robot.libraries.BuiltIn import BuiltIn
import selenium

def z_index(elements: list) -> bool:
    for element in elements:
        zindex = element.get_attribute("z-index")
