<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                          
                                            <div class="alert alert-info"><strong><center>Add Product </center></strong></div>
                                        </div>
                                        <div class="modal-body">
                              <form  method="post" enctype="multipart/form-data">
                                
                                <hr>
								
								 <div class="control-group">
                                           <label class="control-label" for="inputEmail">Product Name (পণ্যের নাম):</label>
                                           <input type="text" name="name" class = "form-control" placeholder="Name" required="">
                                          
                                 </div>
                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Description (বর্ণনা):</label>
                                    <div class="controls">
                                        <input type="text" class = "form-control"  name="description"  placeholder="Description" required="">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Category (শ্রেণী):</label>
                                    <div class="controls">
                                        <select type="text" name="category" class = "form-control" placeholder="Category" required="">

                                            <option></option>
                                            <option>School</option>
                                            <option>Travelling</option>
                                            <option>Hand</option>
                                            <option>T-Shirt</option>
                                            <option>Casual_Shirt</option>
                                            <option>Men_Formal_Shirt</option>
                                            <option>Men_Polos_And_Tees</option>
                                             <option>Blazers</option>
                                             <option>Jacket</option>
                                             <option>Jeans</option>
                                             <option>Men_Casual_Trouser</option>
                                             <option>Women Dress</option>
                                              <option>Women Sweet Shirt</option>
                                              <option>Women Tops,Tees & Shirt</option>
                                                <option>Women Jeens</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Origin (পণ্যের উৎস):</label>
                                    <div class="controls">
                                        <input type="text" name="originated" class = "form-control" placeholder="Origin" required="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Price (দাম):</label>
                                    <div class="controls">
                                        <input type="text" name="price"  class = "form-control" splaceholder="Price" required="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Quantity (পরিমাণ):</label>
                                    <div class="controls">
                                        <input type="text" name="quantity" placeholder="Quantity"  class = "form-control" required="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="input01">Image (ছবি):</label>
                                    <div class="controls">
                                        <input type="file" name="image" required=""> 	
                                    </div>
                                </div>

								<div class = "modal-footer">
											 <button name = "go" class="btn btn-primary">Save</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                           

								</div>
							
									   </div>
                                     
                                          
                                      
                                    </div>
									
									  </form>  
									  
									   <?php include ('connect.php');
                            if (isset($_POST['go'])) {

                                $name = $_POST['name'];
                                $description = $_POST['description'];
                                $category = $_POST['category'];
                                $originated = $_POST['originated'];
                                $price = $_POST['price'];
                                $quantity = $_POST['quantity'];

                                //image
                                $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);
//
                                move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $_FILES["image"]["name"]);
                                $location = "upload/" . $_FILES["image"]["name"];


                                mysqli_query($dbcon,"insert into tb_products (name,description,category,originated,price,quantity,location)
                            	values ('$name','$description','$category','$originated','$price','$quantity','$location')
                                ") or die(mysqli_error());

                                header('location:product.php');
                            }
                            ?>
									  
									  
									  
									  
                                </div>
                            </div>