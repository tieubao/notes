---
layout: post
title: "Hướng dẫn học nhanh một platform bất kỳ"
date: 2013-12-26 22:42:03 +0700
comments: true
categories: 
- study
- software development

keywords: study, platform

description: Bài hướng dẫn cách học nhanh một platform bất kỳ của tác giả Bùi Tấn Lộc, giảng viên CNTT, đại học Khoa Học TP. Hồ Chí Minh

cover: /images/blog/2013-12-26-components.jpg
---


### Task 1: Làm quen với platform [^1]

* Đặc điểm của platform.
* Kiến trúc của platform.
* Các version của platform, các version có điểm khác biệt nổi trội nào.
* Cài đặt môi trường lập trình, cần cài đặt các công cụ gì.
* Những lưu ý khi cài đặt môi trường lập trình, yêu cầu phần cứng, phần mềm, có cấu hình gì đặc biệt không.
* Tìm tutorial làm thử ứng dụng helloworld để đảm bảo rằng mình đã cài đặt thành công môi trường lập trình.
* Tìm các diễn đàn, trang web hướng dẫn từng kỹ thuật riêng biệt trên platform, trang web hướng dẫn học nhanh (trong 30 ngày), ebook.

### Task 2: Làm quen với các khái niệm cơ bản

* Cấu trúc thư mục của project, ý nghĩa các tập tin, thư mục trong project.
* Tìm hiểu cách thức triển khai ứng dụng trên máy thật như thế nào.
* Tìm hiểu cấu trúc các lớp trong project (cấu trúc của framework), ý nghĩa của các lớp.
* Các loại ứng dụng có thể có trên platform.
* Nếu platform sử dụng ngôn ngữ lập trình hoàn toàn mới, nên bỏ thời gian ra tìm hiểu kỹ thuật lập trình hướng đối tượng với ngôn ngữ này.

###Task 3: Làm quen với đối tượng thể hiện (giao diện) cơ bản

* Kỹ thuật lập trình ứng dụng chạy trên nhiều thiết bị có kích thước màn hình khác nhau (layout)

* Kỹ thuật lập trình ứng dụng chạy trên nhiều thiết bị có ngôn ngữ khác nhau (localization, multi-lingual language). Có platform hỗ trợ thư viện, có platform không hỗ trợ phải tự viết.

* Kỹ thuật lập trình ứng dụng chạy trên nhiều thiết bị có version platform khác nhau (dùng hàm kiểm tra version platform đang chạy, hoặc dùng kỹ thuật reflection). Có platform hỗ trợ thư viện, có platform không hỗ trợ phải tự viết.

{% img /images/blog/2013-12-26-components.jpg %}

### Task 4: Làm quen với đối tượng thể hiện (giao diện) đơn

* Tìm các bài hướng dẫn sử dụng các đối tượng thể hiện đơn như label, textbox, button, v.v…
* Tìm hiểu cách thức khởi tạo, hiển thị, lấy dữ liệu, quản lý sự kiện.

### Task 5: Làm quen với đối tượng thể hiện (giao diện) phức hợp

* Tìm các bài hướng dẫn sử dụng các đối tượng thể hiện phức hợp như: list, gird, horizontal view, vertical view, v.v…
* Tìm hiểu cách thức khởi tạo, hiển thị, lấy dữ liệu, quản lý sự kiện.

###Task 6: Làm quen với ứng dụng có nhiều màn hình và truyền tham số giữa các màn hình

* Làm sao chuyển 1 màn hình bất kỳ thành màn hình chính (hiển thị khi khởi động ứng dụng)
* Làm sao để hiển thị một màn hình B từ một màn hình A.
* Làm sao để màn hình A truyền tham số cho màn hình B. Khi màn hình B kết thúc thì lại truyền tham số ngược lại cho màn hình A.
* Làm sao để ẩn hoặc tắt một màn hình.
* Làm sao để thoát khỏi ứng dụng.

### Task 7: Làm quen với menu ứng dụng

* Có mấy loại menu ứng dụng, các thức tạo lập ra sao.
* Thường menu được load từ resource (design), có cách thức nào tạo menu động không (runtime).
* Quản lý sự kiện cho các loại menu như thế nào.

### Task 8: Tìm hiểu khái niệm Lifecycle

* Tùy theo từng platform mà việc quản lý vòng đời có thể theo application lifecycle (Windows Phone, iOS) hoặc screen lifecycle (Android, iOS)
* Khi có cuộc gọi gọi đến thì ứng dụng hành xử ra sao.
* Khi ứng dụng (màn hình) A được ẩn đi, một ứng dụng (màn hình) B khác đang chạy cần tài nguyên RAM, CPU buộc hệ thống phải tắt ứng dụng (màn hình) A, thì lúc đó ứng dụng (màn hình) A hành xử ra sao. Sau này ứng dụng (màn hình) A được gọi lại thì A sẽ hành xử ra sao.

{% img /images/blog/2013-12-26-activity-lifecycle.png %}

### Task 9: Tìm hiểu cách thức lưu trữ trên platform

Tùy theo từng platform mà việc lưu trữ có thể ở thư mục riêng của ứng dụng (iOS, Android, Windows Phone) hoặc giống như trên Windows (Android). Thử tìm hiểu các thư mục, hoặc giới hạn phạm vi mà platform cho phép lưu trữ.
Bất kỳ platform nào cũng có thể lưu trữ dữ liệu dạng:
- Text thông thường
- Text có cấu trúc: xml, json, ini, v.v…
- Binary thông thường
- Binary có cấu trúc: hình ảnh, video, tự định nghĩa, v.v..
- Binary dạng cơ sở dữ liệu. SQLite (iOS, Android), SQL CE

Chú ý có nhiều tool hoặc thư viện nguồn mở hỗ trợ truy xuất CSDL, cần tìm hiểu sử dụng các thư viện, tool này.

### Task 10: Tìm hiểu các chức năng viễn thông

* Tìm hiểu gọi, chặn cuộc gọi.
* Tìm hiểu gởi, chặn tin nhắn.
* Thao tác với danh bạ.

###Task 11: Tìm hiểu các chức năng multimedia

* Hiển thị hình ảnh.
* Chơi nhạc và video
* Tương tác với camera (quay phim, chụp ảnh)
* Tương tác với micro (thu âm)

###Task 12: Tương tác với các ứng dụng sẵn có

* “Open file with” một ứng dụng được xác định
* Mở một ứng dụng với một tham số nào đó (web tham số là từ khóa search hoặc URL, ứng dụng tin nhắn tham số là số điện thoại và nội dung tin nhắn)
* Đọc dữ liệu của một ứng dụng có sẵn: contact, call log, message log, v.v…

[^1]: Bài viết được sưu tầm từ bài giảng của thầy `Bùi Tấn Lộc`, giảng viên khoa CNTT, Đại học Khoa Học, TP. HCM
