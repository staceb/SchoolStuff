<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1>Address Book</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/displayAddList">Addresses</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/searchAddForm">Search</a></li>

                </ul>    
            </div>

            <div class="row">
                <div class="col-md-6">
                    <h2>Addresses</h2>
                    <table id="addressTable" class="table table-hover">
                        <tr>
                            <th width="40%">Name</th>
                            <th width="30%">State</th>
                            <th width="10%"></th>
                            <th width="20%"></th>
                        </tr>
                        <tbody id="contentRows"></tbody>
                    </table>
                </div>

                <div class="col-md-6">
                    <h2>Add New Address Form</h2>
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-first-name"
                                   class="col-md-4 control-label">First Name:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-first-name"
                                       placeholder="First Name" />
                            </div>
                        </div>
                    </form>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-last-name"
                                   class="col-md-4 control-label">Last Name:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-last-name"
                                       placeholder="Last Name" />
                            </div>
                        </div>
                    </form>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-street-address"
                                   class="col-md-4 control-label">Street address:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-street-address"
                                       placeholder="Street Address" />
                            </div>
                        </div>
                    </form>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-city"
                                   class="col-md-4 control-label">City:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-city"
                                       placeholder="City" />
                            </div>
                        </div>
                    </form>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-state"
                                   class="col-md-4 control-label">State:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-state"
                                       placeholder="State" />
                            </div>
                        </div>
                    </form>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="add-zipCode"
                                   class="col-md-4 control-label">ZipCode:</label>
                            <div class="col-md-8">
                                <input type="text"
                                       class="form-control"
                                       id="add-zipCode"
                                       placeholder="ZipCode" />
                            </div>
                        </div>
                    </form>

                    <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                            <button type="submit"
                                    id="add-button"
                                    class="btn btn-primary">
                                Create Address
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="detailsModal" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title" id="detailsModalLabel">Address Details</h4>
                    </div>

                    <div class="modal-body">
                        <h3 id="address-id"></h3>
                        <table class="table table-bordered">
                            <tr>
                                <th>First Name:</th>
                                <td id="address-firstName"></td>
                            </tr>
                            <tr>
                                <th>Last Name:</th>
                                <td id="address-lastName"></td>
                            </tr>
                            <tr>
                                <th>Street Address:</th>
                                <td id="address-streetAddress"></td>
                            </tr>
                            <tr>
                                <th>City:</th>
                                <td id="address-city"></td>
                            </tr>
                            <tr>
                                <th>State:</th>
                                <td id="address-state"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Close
                        </button>
                    </div>
                </div>
            </div>
        </div>



        <div class="modal fade" id="editModal" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title" id="editModalLabel">Edit Address</h4>
                    </div>
                    <div class="modal-body">
                        <h3 id="address-id"></h3>
                        <form class="form-horizontal" role="form">

                            <div class="form-group">
                                <label for="edit-firstName" class="col-md-4 control-label">
                                    First Name:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-firstName" placeholder="First Name">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit-lastName" class="col-md-4 control-label">
                                    Last Name:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-lastName" placeholder="Last Name">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit-streetAddress" class="col-md-4 control-label">
                                    Street Address:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-streetAddress" placeholder="Street Address">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit-city" class="col-md-4 control-label">
                                    City:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-city" placeholder="City">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit-state" class="col-md-4 control-label">
                                    State:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-state" placeholder="State">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit-zipCode" class="col-md-4 control-label">
                                    ZipCode:
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="edit-zipCode" placeholder="ZipCode">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-offset-4 col-md-8">
                                    <button type="submit" id="edit-button" class="btn btn-primary" data-dismiss="modal">
                                        Edit Address
                                    </button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">
                                        Cancel
                                    </button>
                                    <input type="hidden" id="edit-id"/>
                                </div>
                            </div>

                        </form>

                    </div>
                    <div class="modal-footer">
                    </div>

                </div>
            </div>
        </div>

        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/addressList.js"></script>

    </body>
</html>

