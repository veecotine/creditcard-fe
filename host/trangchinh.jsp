<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usernameAttr = "";
	usernameAttr = (String)session.getAttribute("username");
	out.print(usernameAttr);
	if(usernameAttr == null){
		usernameAttr="";
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fin2P</title>
    <link rel="stylesheet" href="./host/index.css">
    <link rel="stylesheet" href="./host/all.min.css">
    <link rel="stylesheet" href="./host/res.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>

    <section class="top" >
        <div class="container ">
            <div class="row justify_content">
                <div class="logo" ><img src="./generic/image/host/logoweb.png" alt="logo">
                    <h1>Fin2P <%= usernameAttr %> </h1>
                </div>
                <div class="menu_bar">
                    <span></span>
                </div>
                <div class="menu_items">
                    <ul>
                        <li class="menu_item"><a href="#">Trang Chủ </a></li>
                        <li class="menu_item"><a href="/fin/bieuphi">Biểu phí các ngân hàng</a></li>
                        <li class="menu_item"><a href="/fin/card_info">Thẻ tín dụng</a></li>
                        
                        <% if(session.getAttribute("username")!=null) {%>
                        <li class="menu_item">
	                        <form id="form1" action="logout" method="post">
							    <a href="javascript:;" onclick="document.getElementById('form1').submit();">Đăng xuất</a>
							    <input type="hidden" name="mess" value=""/>
							</form>
						</li>
                        <% } else { %>
						<li class="menu_item"><a href="/fin/login">Đăng nhập</a></li>
                        <% } %>
              
                    </ul>
                </div>

            </div>
        </div>
    </section>
    <section class="big_img" >
        <div class="img_content" data-aos="fade-up" data-aos-duration="1500">
            <h2>Wellcome to Fin2P</h2>
            <p>Tìm kiếm cho bản thân những khoản tiền tối ưu nhất</p>
        </div>
    </section>
    <section class="about section_pading">
        <div class="container">
            <div class="row">
                <div class="section_title" >
                    <h2 data-a="Fin2P">Want to Invest</h2>
                </div>
            </div>
            <div class="row">
                    <div class="about_item" data-aos="fade-up-left" data-aos-duration="1000" data-aos-easing="linear">
                        <h2>Nên tiết kiệm hay chi tiêu theo cách chỉ sống một lần trên đời </h2>
                        <P>Đầu tư tài chính là hoạt động dùng vốn để kinh doanh sinh lợi mà không phải trực tiếp kinh doanh hay lao động. Bạn có thể chọn đầu tư vào: chứng khoán, cổ phiếu, chỉ số, bất động sản, forex… Nếu bạn có một
                            trong những mong muốn sau đây thì đó chính là đáp án cho câu hỏi “Tại sao nên đầu tư tài chính?</P>
                        <button class="btn">
                            <a href="/fin/dautu">See more ...</a>
                        </button>
                    </div>
                    <div class="about_item" data-aos="fade-up-right" data-aos-duration="1000" data-aos-easing="linear">
                        
                        <div class="about_item_img">
                            <span>10+year experience</span>
                            <img src="./generic/image/host/R.jpg" alt="foods">
                        </div>
                             
                    </div> 
            </div>
        </div>
    </section>
    <section class="about2 section_pading">
        <div class="container">
            <div class="row">
                <div class="section_title" >
                    <h2 data-a="Fin2P">Need Help ?</h2>
                </div>
            </div>
            <div class="row">
                    <div class="about_item" data-aos="fade-up-left" data-aos-duration="1000" data-aos-easing="linear">
                        <h2>Bạn cần 1 tài khoản ngân hàng phù hợp, hãy để tôi giúp bạn </h2>
                        <P>Đầu tư tài chính là hoạt động dùng vốn để kinh doanh sinh lợi mà không phải trực tiếp kinh doanh hay lao động. Bạn có thể chọn đầu tư vào: chứng khoán, cổ phiếu, chỉ số, bất động sản, forex… Nếu bạn có một
                            trong những mong muốn sau đây thì đó chính là đáp án cho câu hỏi “Tại sao nên đầu tư tài chính?</P>
                        <button class="btn">
                            <a href="/fin/sua">See more ...</a>
                        </button>
                    </div>
                    <div class="about_item" data-aos="fade-up-right" data-aos-duration="1000" data-aos-easing="linear">
                        
                        <div class="about_item_img">
                            <span>10+year experience</span>
                            <img src="./generic/image/host/k.jpg" alt="foods">
                        </div>
                             
                    </div> 
            </div>
        </div>
    </section>
    <section class="about3 section_pading">
        <div class="container">
            <div class="row">
                <div class="section_title" >
                    <h2 data-a="Fin2P">CreditCrad</h2>
                </div>
            </div>
            <div class="row">
                    <div class="about_item" data-aos="fade-up-left" data-aos-duration="1000" data-aos-easing="linear">
                        <h2>Lợi ích của thẻ tín dụng vẫn luân ở đấy,trải nghiệm nó đi nào! </h2>
                        <P>Đầu tư tài chính là hoạt động dùng vốn để kinh doanh sinh lợi mà không phải trực tiếp kinh doanh hay lao động. Bạn có thể chọn đầu tư vào: chứng khoán, cổ phiếu, chỉ số, bất động sản, forex… Nếu bạn có một
                            trong những mong muốn sau đây thì đó chính là đáp án cho câu hỏi “Tại sao nên đầu tư tài chính?</P>
                        <button class="btn">
                            <a href="/fin/tietkiem">See more ...</a>
                        </button>
                    </div>
                    <div class="about_item" data-aos="fade-up-right" data-aos-duration="1000" data-aos-easing="linear">
                        
                        <div class="about_item_img">
                            <span>10+year experience</span>
                            <img src="./generic/image/host/s3.jpg" alt="foods">
                        </div>
                             
                    </div> 
            </div>
        </div>
    </section>
    <section class="about4 section_pading">
        <div class="container">
            <div class="row">
                <div class="section_title" >
                    <h2 data-a="Fin2P">Borrow money ?</h2>
                </div>
            </div>
            <div class="row">
                    <div class="about_item" data-aos="fade-up-left" data-aos-duration="1000" data-aos-easing="linear">
                        <h2>Những khoản vay luân là vị cứu tinh khi gặp khó khăn!</h2>
                        <P>Đầu tư tài chính là hoạt động dùng vốn để kinh doanh sinh lợi mà không phải trực tiếp kinh doanh hay lao động. Bạn có thể chọn đầu tư vào: chứng khoán, cổ phiếu, chỉ số, bất động sản, forex… Nếu bạn có một
                            trong những mong muốn sau đây thì đó chính là đáp án cho câu hỏi “Tại sao nên đầu tư tài chính?</P>
                        <button class="btn">
                            <a href="/fin/vayvonodau"> See more ...</a>
                        </button>
                    </div>
                    <div class="about_item" data-aos="fade-up-right" data-aos-duration="1000" data-aos-easing="linear">
                        
                        <div class="about_item_img">
                            <span>10+year experience</span>
                            <img src="./generic/image/host/OIP.jpg" alt="foods">
                        </div>
                             
                    </div> 
            </div>
        </div>
    </section>
    
    <section class="phan_hoi section_pading">
        <div class="container">
            <div class="row">
                <div class="section_title">
                    <h2 data-a="TESTIMONY">SOME FEEDBACK</h2>
                </div>
                <div class="row">
                    <div class="phan_hoi_items">
                        <div class="phan_hoi_item">
                            <div class="phan_hoi_item_content">
                                  <div class="phan_hoi_item_content_text">
                                         <h2>Nguyễn Ngọc Bảo Vy</h2>
                                         <span>Sinh viên</span>
                                  </div>
                                  <div class="phan_hoi_item_content_img">
                                         <img src="https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/344133195_1195146431146709_4364035990691340589_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=G_M_A1-IpwAAX_7DgSr&_nc_ht=scontent.fhan5-8.fna&oh=00_AfAZfGCLD963YPZjbZP_lnLzR27BiLNjJ5AjtaiaeA9ZIQ&oe=649A360B" alt="vyxinh">
                                  </div>
                            </div>
                            <div class="phan_hoi_item_text">
                                         <p>Rất hữu ích. Tôi đã biến tài khoản từ 200 nghìn thành 2 tỷ nhờ vào Fin2P.</p>
                            </div>
                            <div class="phan_hoi_item_star">
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                            </div>
                        </div>
                        <div class="phan_hoi_item">
                            <div class="phan_hoi_item_content">
                                  <div class="phan_hoi_item_content_text">
                                         <h2>aa aaa aaa</h2>
                                         <span>Cong chuc nha nuoc</span>
                                  </div>
                                  <div class="phan_hoi_item_content_img">
                                         <img src="https://aphoto.vn/wp-content/uploads/2019/07/anh-chan-dung-nghe-thuat-top-aphoto5.jpg" alt="women">
                                  </div>
                            </div>
                            <div class="phan_hoi_item_text">
                                         <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor, qui autem. Expedita laudantium iste libero neque, quas ipsam, nam modi sed exercitationem amet consequuntur assumenda.</p>
                            </div>
                            <div class="phan_hoi_item_star">
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                            </div>
                        </div>
                        <div class="phan_hoi_item">
                            <div class="phan_hoi_item_content">
                                  <div class="phan_hoi_item_content_text">
                                         <h2>aa aaa aaa</h2>
                                         <span>Tieu thuong</span>
                                  </div>
                                  <div class="phan_hoi_item_content_img">
                                         <img src="https://aphoto.vn/wp-content/uploads/2019/07/anh-chan-dung-nghe-thuat-top-aphoto5.jpg" alt="women">
                                  </div>
                            </div>
                            <div class="phan_hoi_item_text">
                                         <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor, qui autem. Expedita laudantium iste libero neque, quas ipsam, nam modi sed exercitationem amet consequuntur assumenda.</p>
                            </div>
                           <div class="phan_hoi_item_star">
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                                <i><span class="material-symbols-outlined">
star
</span></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="footer">
        <div class="footer_bg">

        </div>
             <div class="container">
                <div class="row justify_content">
                    <div class="footer_item">
                        <h2>Dia Chi</h2>
                        <p>Km10 <br>đường Nguyễn Trãi,Phường Mộ Lao,Quận Hà Đông,Hà Nội</p>
                    </div>
                    <div class="footer_item">
                        <h2>Gio Mo Cua</h2>
                        <p>9:30 - 23:00 <br>ALL DAY</p>
                    </div>
                    <div class="footer_item">
                        <h2>Lien He</h2>
                        <p>Phone: 09777777777 <br>Email:adaldjla@gmail.com</p>
                        <div class="footer_social">
                            <i class="fa-brands fa-facebook"></i>
                            <i class="fa-brands fa-instagram"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-youtube"></i>
                        </div>
                    </div>
                    </div>
                </div>
             </div>
             <div class="container">
                <div class="footer_copyright">
                    @2023 .Toan bo ban quyen thuoc Fintech PTIT
             </div>
    </section>
    <script src="./host/index.js" defer></script>
    <script>
        AOS.init();
      </script>
</body>
</html>