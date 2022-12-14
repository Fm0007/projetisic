<%@page import="entities.Admin"%>
<%@page import="entities.User"%>
<%@page import="entities.Client"%>
<%@page import="entities.Client"%>
<%@page import="services.UserService"%>
<div class="container-fluid mb-5">
    <div class="row border-top px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100 " data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                <h6 class="m-0">Categories</h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                    <div id="categories" class="nav-item dropdown">
                    
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="shop.jsp" class="nav-item nav-link">Shop</a>
                        <a href="detail.html" class="nav-item nav-link">Shop Detail</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="cart.jsp" class="dropdown-item">Shopping Cart</a>
                                <a href="checkout.html" class="dropdown-item">Checkout</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                    <div class="navbar-nav ml-auto py-0">
                        <%
                            //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
                            String eid = (String) session.getAttribute("email");
                            if (eid == null) {
                        %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
                        <a href="login.jsp" class="nav-item nav-link">Login</a>
                        <%
                            }
                            //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE

                            if (eid != null) {
                                User user = new UserService().findByEmail(eid);
                                if (user instanceof Admin) {  %>
                               
                                <%
                                  response.sendRedirect("./Admin/index.jsp");  
                                }
                                else{
                                    Client client = (Client) new UserService().findByEmail(eid);
                        %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
                        <div class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown"> <%=client.getNom()%> </a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="#" class="dropdown-item">Account Setting</a>
                                <a href="/projetisic/UserLogout" class="dropdown-item">Logout</a>
                            </div>
                        </div>
                        <%  }
                            }%>



                    
                
            </nav>
          