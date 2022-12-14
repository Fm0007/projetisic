<%-- 
    Document   : index
    Created on : Dec 20, 2018, 2:42:07 PM
    Author     : mst
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <meta charset="utf-8">
        <title>EShopper - Bootstrap Shop Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="script/remplirCategorie.js" type="text/javascript"></script>
        <script src="script/remplirProduit_1.js" type="text/javascript"></script>


    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <%@include file="header.jsp"%>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <%@include file="menu.jsp" %>


                <!-- Page Header Start -->
                <div class="container-fluid bg-secondary mb-5">
                    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                        <h1 class="font-weight-semi-bold text-uppercase mb-3">Our Shop</h1>
                        <div class="d-inline-flex">
                            <p class="m-0"><a href="">Home</a></p>
                            <p class="m-0 px-2">-</p>
                            <p class="m-0">Shop</p>
                        </div>
                    </div>
                </div>
                <!-- Page Header End -->


                <!-- Shop Start -->
                <div class="container-fluid pt-5">
                    <div class="row px-xl-5">
                        <!-- Shop Sidebar Start -->
                        <div class="col-lg-3 col-md-12">
                            <!-- Price Start -->
                            <div class="border-bottom mb-4 pb-4">
                                <h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
                                <form >
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" checked id="price-all">
                                        <label class="custom-control-label" for="price-all">All Price</label>
                                        <span class="badge border font-weight-normal">1000</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" id="price-1">
                                        <label class="custom-control-label" for="price-1">$0 - $100</label>
                                        <span class="badge border font-weight-normal">150</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" id="price-2">
                                        <label class="custom-control-label" for="price-2">$100 - $200</label>
                                        <span class="badge border font-weight-normal">295</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" id="price-3">
                                        <label class="custom-control-label" for="price-3">$200 - $300</label>
                                        <span class="badge border font-weight-normal">246</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" id="price-4">
                                        <label class="custom-control-label" for="price-4">$300 - $400</label>
                                        <span class="badge border font-weight-normal">145</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                        <input type="checkbox" onchange="t()" name="price" class="custom-control-input" id="price-5">
                                        <label class="custom-control-label" for="price-5">$400 - $500</label>
                                        <span class="badge border font-weight-normal">168</span>
                                    </div>
                                </form>
                            </div>
                            <!-- Price End -->

                            <!-- categorie Start -->
                            <div class="border-bottom mb-4 pb-4">
                                <h5 class="font-weight-semi-bold mb-4">Filter by color</h5>
                                <form id="categories3">
                                    
                                </form>
                            </div>
                            <!-- categorie End -->

                            <!-- Size Start -->
                            <div class="mb-5">
                                <h5 class="font-weight-semi-bold mb-4">Filter by size</h5>
                                <form>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" class="custom-control-input" checked id="size-all">
                                        <label class="custom-control-label" for="size-all">All Size</label>
                                        <span class="badge border font-weight-normal">1000</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" class="custom-control-input" id="size-1">
                                        <label class="custom-control-label" for="size-1">XS</label>
                                        <span class="badge border font-weight-normal">150</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" class="custom-control-input" id="size-2">
                                        <label class="custom-control-label" for="size-2">S</label>
                                        <span class="badge border font-weight-normal">295</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" class="custom-control-input" id="size-3">
                                        <label class="custom-control-label" for="size-3">M</label>
                                        <span class="badge border font-weight-normal">246</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                        <input type="checkbox" class="custom-control-input" id="size-4">
                                        <label class="custom-control-label" for="size-4">L</label>
                                        <span class="badge border font-weight-normal">145</span>
                                    </div>
                                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                        <input type="checkbox" class="custom-control-input" id="size-5">
                                        <label class="custom-control-label" for="size-5">XL</label>
                                        <span class="badge border font-weight-normal">168</span>
                                    </div>
                                </form>
                            </div>
                            <!-- Size End -->
                        </div>
                        <!-- Shop Sidebar End -->


                        <!-- Shop Product Start -->

                        <div  class="col-lg-9 col-md-12">
                            <div  class="row pb-3">
                                <div class="col-12 pb-1">
                                    <div class="d-flex align-items-center justify-content-between mb-4">
                                        
                                            <div class="input-group">
                                                <input type="text" id="searchbox" class="form-control" placeholder="Search by name">
                                                <div class="input-group-append">
                                                    <span class="input-group-text bg-transparent text-primary">
                                                        <i class="fa fa-search"></i>
                                                    </span>
                                                </div>
                                            </div>
                                       
                                        <div class="dropdown ml-4">
                                            <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                Sort by
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                                <a class="dropdown-item" href="#">Latest</a>
                                                <a class="dropdown-item" href="#">Popularity</a>
                                                <a class="dropdown-item" href="#">Best Rating</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="listproduit" class="row pb-3">
                                </div>

                                <div class="col-12 pb-1">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center mb-3">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- Shop Product End -->
                    </div>
                </div>
                <!-- Shop End -->


                <%@include file="footer.jsp"%>


                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                <!-- JavaScript Libraries -->
                
                <script src="script/bootstrap.bundle.min.js"></script>
                <script src="lib/easing/easing.min.js"></script>
                <script src="lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Contact Javascript File -->
                <script src="mail/jqBootstrapValidation.min.js"></script>
                <script src="mail/contact.js"></script>

                <!-- Template Javascript -->
                <script src="script/main.js"></script>
                </body>

                </html>