package ${BasePackageName}.${ModulePackageName};

import ${BasePackageName}.entity.${ClassName};
import ${BasePackageName}.service.${ClassName}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Author ${Author}
 * Date  ${Date}
 */
@RestController
@RequestMapping(value = "/${EntityName}/")
public class ${ClassName}Controller {
    @Autowired
    private ${ClassName}Service ${EntityName}Service;

    @RequestMapping(value = {"list", ""}, method = RequestMethod.GET)
    public Object list() {
        List<${ClassName}> ${EntityName}s = ${EntityName}Service.findAllList();
        return ${EntityName}s;
    }

    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public String insert(@RequestBody ${ClassName} ${EntityName}) {
        if (userService.insert(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(@RequestBody ${ClassName} ${EntityName}) {
        if (userService.update(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(@RequestBody ${ClassName} ${EntityName}) {
        if (userService.delete(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

}
