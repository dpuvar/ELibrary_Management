﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="ELibraryManagement.adminPublisherManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        //$(document).ready(function () {
        //$('.table').DataTable();
        // });
        //$('.table1').DataTable();

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
        $('.table').DataTable({
            responsive: true
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="my-3">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Publisher Details</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" class="img-fluid" src="img/imgs/publisher.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <label>Publisher ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="pidtb" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary mx-2 py-1 px-2 rounded-circle" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <label>Publisher Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="pnametb" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" OnClick="Button2_Click" Text="Add" />
                                </div>
                                <div class="col-4">
                                    <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" OnClick="Button3_Click" Text="Update" />
                                </div>
                                <div class="col-4">
                                    <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" OnClick="Button4_Click" Text="Delete" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="my-2">
                        <a href="homepage.aspx">
                            <button id="Backtohome" type="button" class="btn btn-secondary ">Back</button></a>
                        << Back To Home
                    </p>
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Publisher List</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered table-condensed " ID="GridView1" DataSourceID="SqlDataSource1" runat="server"></asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
