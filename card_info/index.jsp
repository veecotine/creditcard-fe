<%@page import="model.CardInfo"%>
<%@page import="model.Bank"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CardType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Thông tin các loại thẻ</title>
	<link rel="stylesheet" href="./generic/css/font.css">
	<link rel="stylesheet" href="./card_info/style.css">
</head>
<body>
	<div class="container">
		<div class="nav">
			<div class="nav__logo">
				<a href="#" class="menu__logo">
                    <img src="generic/image/illustration/3284c4506055bf0be644.jpg">
                    <p>Fin2p</p>
                </a>
			</div>
			
			<div class="nav__link">
				
			</div>
			
			
		</div>
		
		<div class="main">
		    <div class="head">
			    <h2 class="requirement">Yêu cầu chủ thẻ ở từng ngân hàng</h2>
			    <img src="./generic/image/illustration/ID Card-amico.png">
		    </div>
		    <div class="h1">
		    	<h3>Điều kiện mở thẻ tín dụng chung</h3>
		        <p>Mỗi ngân hàng sẽ có những quy định riêng về điều kiện mở thẻ tín dụng cho cá nhân và doanh nghiệp. Tuy nhiên, hầu hết các ngân hàng sẽ có những yêu cầu chung như sau:</p>
		     </div>
		     <div class="requirement-list">
		       <div class="h2">
			        <img src="./generic/image/illustration/Light bulb-bro.png">
			        <h4>Thông tin rõ ràng, giấy tờ tùy thân đầy đủ</h4>
			        <p>Khách hàng là công dân Việt Nam hoặc người nước ngoài cư trú tại Việt Nam ít nhất 12 tháng liên tục tại thời điểm nộp hồ sơ mở thẻ tín dụng.<br>Khách hàng đủ 18 tuổi trở lên, có CMND/CCCD/hộ chiếu hoặc giấy tờ tùy thân có giá trị tương đương.</p>
		       </div>
		       <div class="h3">
			        <img src="./generic/image/illustration/Light bulb-bro.png">
			        <h4>Thu nhập tài chính ổn định</h4>
			        <p>Thẻ tín dụng là công cụ duy nhất cho phép khách hàng "vay tiền" và miễn lãi suất. Do đó, khách hàng bắt buộc phải cung cấp những giấy tờ cần thiết để chứng minh thu nhập: sao kê bảng lương 3 tháng gần nhất, sổ tiết kiệm,... Đối với thẻ tín dụng tín chấp, ngân hàng có thể yêu cầu thêm giấy tờ liên quan đến tài sản đảm bảo, chứng chỉ tiền gửi,...<br>Ngoài ra, vẫn có thể đăng ký mở thẻ tín dụng không cần chứng minh thu nhập thông qua việc mở thẻ tín dụng phụ, mở thẻ dựa trên thẻ tín dụng ở ngân hàng khác, mở thẻ tín dụng bằng sổ tiết kiệm,...</p>
		       </div>
		       <div class="h5">
		            <img src="./generic/image/illustration/Businessman-cuate.png">
		        </div>
		       <div class="h4">
		            <img src="./generic/image/illustration/Light bulb-bro.png">
			        <h4>Điểm tín dụng cá nhân tốt</h4>
			        <p>Khi vay vốn, điểm tín dụng là chỉ số để các tổ chức tài chính đánh giá sự uy tín của khách hàng. Việc thường xuyên chậm thanh toán số dư nợ thẻ tín dụng, các khoản vay hoặc không chi trả các khoản nợ cũ sẽ khiến điểm tín dụng của bạn bị giảm đáng kể và rơi vào nhóm nợ xấu. Ngược lại, lịch sử tín dụng tốt sẽ tạo điều kiện thuận lợi cho việc xét duyệt hồ sơ mở thẻ tín dụng và vay vốn sau này.</p>
		        </div>
		     </div>
			<div class="main_tittle">
				<p>So sánh các loại thẻ</p>
			</div>
			<div class="main__sidebar">
				<form class="filter" action="<%=request.getContextPath()%>/card_info" method="POST">
					<p class="filter__content">Bộ lọc tìm kiếm</p>
					<div class="filter__main">
						<p class="filter__main__label">Loại thẻ tín dụng:</p>
						<select class="filter__main__option" name="cardtype">
							<% Integer card_type_id = (Integer)request.getSession().getAttribute("selected_card_type"); %>
						    <% ArrayList<CardType> cardTypes = (ArrayList<CardType>)request.getSession().getAttribute("cardTypes"); %>
							<% for(CardType cardType: cardTypes){ %>
							 <% if(card_type_id == cardType.getId()){ %>
							 	<option  value="<%= cardType.getId()%>" selected="selected">
							 <%} else { %>
							  	<option value="<%= cardType.getId()%>">
							 <% } %>
								  	 <%=cardType.getCardTypeName() %>
								</option>
							 <%} %>
						 </select>
					</div>
					
					<div class="filter__main">
						<p class="filter__main__label">Ngân hàng:</p>
						<select class="filter__main__option" name="bank" >
						    <% ArrayList<Bank> banks = (ArrayList<Bank>)request.getSession().getAttribute("banks"); %>
						    <% Integer bank_id = (Integer)request.getSession().getAttribute("selected_bank"); %>
							<% for(Bank bank: banks){ %>
								<% if(bank_id == bank.getId()){ %>
								 <option  value="<%= bank.getId()%>" selected="selected">
								<%} else { %>
								  <option value="<%= bank.getId()%>">
							     <% } %>
								  	 <%=bank.getBankName()%>
								  </option>
							 <%} %>
						 </select>
					</div>
					
					<div class="filter__main">
					    <% String income = (String)request.getSession().getAttribute("income"); %>
						<p class="filter__main__label">Thu nhập tối thiểu (triệu VNĐ):</p>
						<input class="filter__main__option" type="number" name="lower_limit" min=0 placeholder="Nhập thu nhập" step=".01" value="<%=income%>">
					</div>
					
					<div class="filter__button">
						<button type="submit" class="filter__button__submit">Tìm kiếm</button>
						<button type="reset" class="filter__button__reset">Đặt lại</button>
					</div>
				</form>
			</div>
			
			<div class="main__showroom">
				<% ArrayList<CardInfo> cardInfos = (ArrayList<CardInfo>)request.getSession().getAttribute("cardInfos"); %>
				<% for(CardInfo cardInfo: cardInfos){ %>
				  <div class="main__showroom__card">
					<img src="generic/image/card/<%=cardInfo.getImgURL().trim()%>" class="main__showroom_card__image" alt="card image">
					<p class="main__showroom_card__name"><%=cardInfo.getCardName().trim()%></p>
					<p class="main__showroom_card__info"><b>Ngân hàng:</b><%=cardInfo.getBank().getBankName().trim()%></p>
					<p class="main__showroom_card__info"><b>Loại thẻ:</b><%=cardInfo.getCardType().getCardTypeName().trim()%></p>
					<% if(cardInfo.getUpperLimit() >= 1e12){ %>
						<p class="main__showroom_card__info"><b>Hạn mức:</b><%=String.format("%.2f",cardInfo.getLowerLimit()/1e6)%> triệu trở lên</p>
					<% } else if (cardInfo.getUpperLimit() >= 1e9){ %>
						<p class="main__showroom_card__info"><b>Hạn mức:</b><%=String.format("%.2f",cardInfo.getLowerLimit()/1e6)%> triệu - <%=String.format("%.2f",cardInfo.getUpperLimit()/1e9)%> tỷ</p>
					<%} else { %>
						<p class="main__showroom_card__info"><b>Hạn mức:</b><%=String.format("%.2f",cardInfo.getLowerLimit()/1e6)%> triệu - <%=String.format("%.2f",cardInfo.getUpperLimit()/1e6)%> triệu</p>
					<% } %>
					<p class="main__showroom_card__info"><b>Thu nhập:</b>>=<%=String.format("%.2f",cardInfo.getIncome()/1e6)%> triệu</p>
				  </div>
				 <%} %>
			</div>
		</div>
		
		<div class="footer">
			<div class="footer__link">
			</div>
			
			<div class="footer__">
			</div>
			
			<div class="footer___">
			</div>
		</div>
	</div>
</body>
</html>