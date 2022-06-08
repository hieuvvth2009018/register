<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 6/1/2022
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/Admin/component/head.jsp">
    <jsp:param name="head" value="Admin"/>
</jsp:include>
<body>
<jsp:include page="/Admin/component/sidebar.jsp"/>
<jsp:include page="/Admin/component/navbar.jsp"/>
<div class="all-content-wrapper">
    <div class="breadcome-area" style="padding-top: 60px">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcome-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="breadcome-heading">
                                    <form role="search" class="sr-input-func">
                                        <input type="text" placeholder="Search..." class="search-int form-control">
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <ul class="breadcome-menu">
                                    <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                    </li>
                                    <li><span class="bread-blod">Dashboard V.1</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product-sales-area mg-tb-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    <div class="product-sales-chart">
                        <div class="portlet-title">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="caption pro-sl-hd">
                                        <span class="caption-subject"><b>University Earnings</b></span>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="actions graph-rp graph-rp-dl">
                                        <p>All Earnings are in million $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="list-inline cus-product-sl-rp">
                            <li>
                                <h5><i class="fa fa-circle" style="color: #006DF0;"></i>CSE</h5>
                            </li>
                            <li>
                                <h5><i class="fa fa-circle" style="color: #933EC5;"></i>Accounting</h5>
                            </li>
                            <li>
                                <h5><i class="fa fa-circle" style="color: #65b12d;"></i>Electrical</h5>
                            </li>
                        </ul>
                        <div id="extra-area-chart" style="height: 356px;"></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 res-mg-t-30 table-mg-t-pro-n tb-sm-res-d-n dk-res-t-d-n">
                        <h3 class="box-title">Total Visit</h3>
                        <ul class="list-inline two-part-sp">
                            <li>
                                <div id="sparklinedash"></div>
                            </li>
                            <li class="text-right sp-cn-r"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-success">1500</span></li>
                        </ul>
                    </div>
                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 tb-sm-res-d-n dk-res-t-d-n">
                        <h3 class="box-title">Page Views</h3>
                        <ul class="list-inline two-part-sp">
                            <li>
                                <div id="sparklinedash2"></div>
                            </li>
                            <li class="text-right graph-two-ctn"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-purple">3000</span></li>
                        </ul>
                    </div>
                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 tb-sm-res-d-n dk-res-t-d-n">
                        <h3 class="box-title">Unique Visitor</h3>
                        <ul class="list-inline two-part-sp">
                            <li>
                                <div id="sparklinedash3"></div>
                            </li>
                            <li class="text-right graph-three-ctn"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-info">5000</span></li>
                        </ul>
                    </div>
                    <div class="white-box analytics-info-cs table-dis-n-pro tb-sm-res-d-n dk-res-t-d-n">
                        <h3 class="box-title">Bounce Rate</h3>
                        <ul class="list-inline two-part-sp">
                            <li>
                                <div id="sparklinedash4"></div>
                            </li>
                            <li class="text-right graph-four-ctn"><i class="fa fa-level-down" aria-hidden="true"></i> <span class="text-danger"><span class="counter">18</span>%</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/Admin/component/footer.jsp"/>
<jsp:include page="/Admin/component/scripts.jsp"/>
</body>
</html>
