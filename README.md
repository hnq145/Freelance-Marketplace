# ProjectPulse+ (Sàn giao dịch việc làm tự do)
ProjectPulse+ là một ứng dụng web hiện đại kết nối các công ty với những nhân tài hàng đầu. Nó hỗ trợ toàn bộ quy trình làm việc từ đăng tuyển dụng đến nộp đề xuất, được xây dựng với hệ thống phụ trợ Java Spring MVC mạnh mẽ và giao diện người dùng JSP năng động.
## 🚀 Công nghệ sử dụng
- **Backend**: Java 17, Spring MVC 6.2.8, Spring JDBC
- **Cơ sở dữ liệu**: PostgreSQL 14+ (Driver: `org.postgresql:postgresql:42.7.6`)
- **Frontend**: JSP (Jakarta Standard Tag Library 3.0), HTML5, CSS3 (Thiết kế Glassmorphism)
- **Máy chủ**: Apache Tomcat 10.1.x (Jakarta EE 10 / Servlet 6.0)
- **Công cụ xây dựng**: Apache Maven
## 📋 Điều kiện tiên quyết
Đảm bảo bạn đã cài đặt những thứ sau trước khi thiết lập dự án:
1. **Java Development Kit (JDK)**: Phiên bản 17 trở lên.

2. **Apache Maven**: Để quản lý các phụ thuộc.

3. **PostgreSQL**: Máy chủ cơ sở dữ liệu quan hệ.
4. **Apahe Tomcat**: Phiên bản 10.1.x (tương thích với Jakarta Servlet 6.0).

## 🛠️ Hướng dẫn cài đặt
### 1. Cấu hình cơ sở dữ liệu
1. Khởi động máy chủ PostgreSQL của bạn.

2. Tạo một cơ sở dữ liệu mới có tên `...`.

3. Chạy tập lệnh khởi tạo nằm tại [src/main/resources/sql/schema.sql](cci:7://file:///c:/Users/admin/Programming%20projects/Freelance-Marketplace/src/main/resources/sql/schema.sql:0:0-0:0) để tạo các bảng cần thiết (`companies`, `freelancers`, `projects`, `proposals`).
4. **Kiểm tra kết nối**: Kiểm tra [src/main/webapp/WEB-INF/spring-servlet.xml](cci:7://file:///c:/Users/admin/Programming%20projects/Freelance-Marketplace/src/main/webapp/WEB-INF/spring-servlet.xml:0:0-0:0):

* **URL**: `jdbc:postgresql://localhost:5432/...?serverTimezone=UTC`

* **Tên người dùng**: `postgres` (Mặc định)

* **Mật khẩu**: `Grp4545@@` (Cập nhật mật khẩu này cho phù hợp với mật khẩu PostgreSQL cục bộ của bạn)
### 2. Biên dịch và Chạy
#### Sử dụng IntelliJ IDEA (Khuyến nghị)
Dự án này được cấu hình cho plugin **Smart Tomcat**, nhưng triển khai Tomcat tiêu chuẩn cũng hoạt động tốt.

1. Mở dự án trong IntelliJ IDEA.
2. Điều hướng đến **Chạy -> Chỉnh sửa cấu hình**.

3. Thêm cấu hình **Máy chủ Tomcat** mới.

4. **Triển khai**: Thêm artifact `...:war exploded`.

5. **Đường dẫn ngữ cảnh**: Đảm bảo ngữ cảnh URL là `/.../`.

6. Chạy máy chủ. Ứng dụng sẽ có thể truy cập được tại:

`http://localhost:8080/.../`
## 🌟 Tính năng
### Dành cho Doanh nghiệp
* **Đăng ký**: Tạo hồ sơ công ty với mô tả và trang web.

* **Đăng tuyển dụng**: Đăng các dự án mới với tiêu đề, mô tả và ngân sách rõ ràng.

* **Bảng điều khiển**: Xem các công việc đang hoạt động và các đề xuất đến.

### Dành cho Người làm việc tự do
* **Đăng ký**: Đăng ký với kỹ năng, tiểu sử và mức giá theo giờ.

* **Tìm kiếm việc làm**: Duyệt các dự án có sẵn do các công ty đăng tải.

* **Đề xuất**: Gửi giá thầu và thư xin việc cho các dự án.
## 📂 Cấu trúc dự án
```text
src
├── main
│ ├── java
│ │ └── test
│ │ ├── beans # Mô hình dữ liệu (Công ty, Người làm tự do, Dự án, Đề xuất)
│ │ ├── controllers # Bộ điều khiển Spring MVC (Định tuyến & Logic)
│ │ └── dao # Đối tượng truy cập dữ liệu (Triển khai JdbcTemplate)
│ ├── resources
│ │ └── sql # Tập lệnh lược đồ cơ sở dữ liệu
│ └── webapp
│ ├── WEB-INF
│ │ ├── pages # Các khung nhìn JSP
│ │ └── spring-servlet.xml # Cấu hình Spring
│ └── files
│ └── css # Bảng định kiểu
