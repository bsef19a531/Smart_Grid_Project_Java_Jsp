<%@ page session="false" %>

<jsp:include page="layout/header.jsp" />

<div class="services-wrapper">
    <div class="services">
        <div class="services-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="page-title">
                            <h1>Provide Service</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="services-form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <form action="">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingServiceName" placeholder="Name">
                                <label for="floatingServiceName">Name</label>
                            </div>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingServicePrice" placeholder="Price">
                                <label for="floatingServicePrice">Price</label>
                            </div>
                            <div class="form-floating">
                                <textarea class="form-control" id="floatingServiceDescription" placeholder="Description"></textarea>
                                <label for="floatingServiceDescription">Description</label>
                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-dark">Create Service</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<jsp:include page="layout/footer.jsp" />
