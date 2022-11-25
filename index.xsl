<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
				<title>Order List</title>
			</head>
			<body>
				<h2>Orders</h2>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Description</th>
							<th scope="col">Request Date</th>
							<th scope="col">Item</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="orders/order">
							<tr>
								<th scope="row">
									<xsl:value-of select="order_id"/>
								</th>
								<td>
									<xsl:value-of select="description"/>
								</td>
								<td>
									<xsl:value-of select="requestDate"/>
								</td>
								<td>
									<table class="table">
										<thead class="thead-light">
											<tr>
												<th scope="col">Movie</th>
												<th scope="col">Quantity</th>
												<th scope="col">Price</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="item">
												<tr>
													<td>
														<table class="table">
															<thead class="thead-light">
																<tr>
																	<th scope="col">id</th>
																	<th scope="col">Name</th>
																	<th scope="col">Genre</th>
																	<th scope="col">Release Date</th>
																	<th scope="col">Actors</th>
																</tr>
															</thead>
															<tbody>
																<xsl:for-each select="movie">
																	<th scope="col">
																		<xsl:value-of select="id"/>
																	</th>
																	<td>
																		<xsl:value-of select="name"/>
																	</td>
																	<td>
																		<xsl:value-of select="genre"/>
																	</td>
																	<td>
																		<xsl:value-of select="releaseDate"/>
																	</td>
																	<td>
																		<table class="table">
																			<thead class="thead-dark">
																				<tr>
																					<th scope="col">First Name</th>
																					<th scope="col">Last Name</th>
																					<th scope="col">Age</th>
																				</tr>
																			</thead>
																			<tbody>
																				<xsl:for-each select="actor">
																					<tr>
																						<td>
																							<xsl:value-of select="firstname"/>
																						</td>
																						<td>
																							<xsl:value-of select="lastname"/>
																						</td>
																						<td>
																							<xsl:choose>
																								<xsl:when test="age &gt; 10">
																									<xsl:value-of select="age"/>
																								</xsl:when>
																								<xsl:otherwise>
																	-
																</xsl:otherwise>
																							</xsl:choose>
																						</td>
																					</tr>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</xsl:for-each>
															</tbody>
														</table>
													</td>
													<td>
														<xsl:value-of select="quantity"/>
													</td>
													<td>
														<xsl:value-of select="price"/>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
