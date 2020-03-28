<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
	<head>
		<title>your space</title>
		<style>
			u1{
				margin:0;
				padding:0;
				overflow:hidden;
				background-color:blue;
				border:1px solid black;
				background-color:green;
                list-style-type: none;
			}
			li{float:left;}
			li a,.dropbtn{
				display:inline-block;
				color:aqua;
				text-align:center;
				padding:14px 16px;
				text-decoration:none;
			}
			li a:hover,.dropdown:hover .dropbtn{
				background-color:red;
			}
			li.dropdown{
				display:inline-block;
			}
			.dropdown-content{
				display:none;
				position:absolute;
				background-color:blanchedalmond;
				min-width:160px;
				box-shadow:0px 8px 16px 0xpx rgba(0,0,0,0.2);
				z-index:1;
			}
			.dropdown-content a{
				color:black;
				padding:12px 16px;
				display:block;
				text-align:left;
			}
			.dropdown-content a:hover{
				background-color:red;
			}
			.dropdown:hover .dropdown-content{
				display:block;
			}
            html{
                    height:100%;
                    margin: 0;
                    background: url("ideal-for-weddings_15_44340.png") no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    background-size: cover;
                }
                        
		</style>
	</head>
	<body align="center">
		<ul type="none">
			<li><a href="orders.html">Orders</a></li>
			<li><a href="putitems.html">PutItems</a></li>
			<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Update Items</a>
				<div class="dropdown-content">
					<a href="additems.html">AddItems</a>
					
				</div>
			</li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</body>
</html>