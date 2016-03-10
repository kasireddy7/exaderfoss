package org.coenraets.directory;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/employees")
public class EmployeeResource {

	EmployeeDAO dao = new EmployeeDAO();

	@GET
	@Path("/getAllEmployees")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Employee> findAll() {
		return dao.findAll();
	}

	@GET
	@Path("{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Employee findById(@PathParam("id") String id) {
		return dao.findById(Integer.parseInt(id));
	}

	@GET
	@Path("{id}/reports")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Employee> findByManager(@PathParam("id") String managerId) {
		return dao.findByManager(Integer.parseInt(managerId));
	}

	@POST
	@Path("/save")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public Employee save(Employee employee) {

		if(employee!=null){
			if(employee.getManager() == null){
				employee.setManager(new Employee());
				employee.getManager().setId(1);
			}
			
		}
		return dao.save(employee);
	}
}
