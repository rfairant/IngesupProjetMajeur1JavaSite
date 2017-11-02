<p>${model.name}</p>
<p>${model.ip}</p>
<p>${model.room.name}</p>
<a href = "<c:url value="../Incident/AddOrUpdate"></c:url>">Creation</a>
<table>
  <tr>
    <th>Date</th>
    <th>State</th>
  </tr>
<c:forEach items="${model.historicals_c}" var="historical">
	<tr>
	   <td>${historical.date}</td>
	   <td>${historical.state.name}</td>
	</tr>
</c:forEach>
</table>
<a href = "<c:url value="../Incident/AddOrUpdate"></c:url>">Creation</a>
<table>
  <tr>
    <th>Number</th>
    <th>Description</th>
    <th>Update</th>
    <th>Delete</th>
  </tr>
<c:forEach items="${model.incidents}" var="incident">
	<tr>
	   <td>${incident.number}</td>
	   <td>${incident.description}</td>
       <td><a href = "<c:url value="../Incident/AddOrUpdate">
			<c:param name="id_incident" value="${incident.id}"/>
		</c:url>">Update</a></td>
    	<td><a href = "<c:url value="../Incident/Delete">
			<c:param name="id_incident" value="${incident.id}"/>
		</c:url>">Delete</a></td>
	</tr>
</c:forEach>
</table>