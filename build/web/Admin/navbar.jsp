<%@page import="entities.Admin"%>
<%@page import="services.UserService"%>
<%@page import="entities.Client"%>
<%@page import="entities.User"%>
<nav class="navbar navbar-expand-xl">
    <div class="container h-100">
        <a class="navbar-brand" href="index.html">
            <h1 class="tm-site-title mb-0">Product Admin</h1>
        </a>
        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        <i class="fas fa-tachometer-alt"></i>
                        Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="far fa-file-alt"></i>
                        <span>
                            Reports <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Daily Report</a>
                        <a class="dropdown-item" href="#">Weekly Report</a>
                        <a class="dropdown-item" href="#">Yearly Report</a>
                    </div>
                </li>
                <li class="nav-item dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-shopping-cart"></i>
                        <span>
                            Gestion <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="product.jsp">Produits</a>
                        <a class="dropdown-item" href="categories.jsp">Cat?gories</a>
                        <a class="dropdown-item" href="marque.jsp">Marques</a>
                    </div>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="listeCommande.jsp">
                        <i class="fas fa-tachometer-alt"></i>
                        Liste Commande
                        <span class="sr-only"></span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="accounts.html">
                        <i class="far fa-user"></i>
                        Accounts
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-cog"></i>
                        <span>
                            Settings <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Profile</a>
                        <a class="dropdown-item" href="#">Billing</a>
                        <a class="dropdown-item" href="#">Customize</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <%
                        //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
                        String eid = (String) session.getAttribute("email");
                        if (eid == null) {
                            response.sendRedirect("../login.jsp");
                            
                        }
                        else{
                            User user = new UserService().findByEmail(eid);
                                if (user instanceof Client) {
                                     response.sendRedirect("../index.jsp");
                                }
                                if (user instanceof Admin) {
                                   
                                }
                        }
                        
                    %>
                    <a class="nav-link d-block" href="../UserLogout">
                        Admin, <b>Logout</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>

</nav>