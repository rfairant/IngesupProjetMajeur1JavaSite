<c:choose>
	<c:when test="${model != null}">
		<form method="post" action="#" class="form">
				<label class="backoffice-label" for="name">Name :</label> <input type="text" name="name"
					id="name" value="${model.getName()}" />
				<label class="backoffice-label" for="ipmask">Ip Mask :</label> <input type="text"
					name="ipmask" id="ipmask" value="${model.getIpmask()}" />
			<button class="button button-block" type="submit">Envoyer</button>
		</form>
	</c:when>
	<c:otherwise>
		<form method="post" action="#" class="form">
				<label class="backoffice-label" for="name">Name :</label> <input type="text" name="name"
					id="name" />
				<label class="backoffice-label" for="ipmask">Ip :</label> <input type="text" name="ipmask"
					id="ipmask" />
			<button class="button button-block" type="submit">Envoyer</button>
		</form>
	</c:otherwise>
</c:choose>


<div>
	<h2 style="color: red" display="${display}">${errorMessage}</h2>
</div>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="../resources/js/test.js"></script>
