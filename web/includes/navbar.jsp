
<!DOCTYPE html>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.html">Max Electronics</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="create.jsp">Create</a></li>
				<li class="nav-item"><a class="nav-link" href="View.jsp">View <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<li class="nav-item"><a class="nav-link" href="update.jsp">Update</a></li>
                                <li class="nav-item"><a class="nav-link" href="delete.jsp">Delete</a></li>

			</ul>
		</div>
	</div>
</nav>
                        
