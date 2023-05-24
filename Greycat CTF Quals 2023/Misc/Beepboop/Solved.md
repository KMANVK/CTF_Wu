```$sox beepboop.wav -c 1 ./beepboop-mono.wav remix 1 && minimodem -r -f ./beepboop-mono.wav --space 500 --mark 1350 -5 70 -q | cut -d' ' -f2- | tr '[:upper:]' '[:lower:]' | tr ' ' '_'```

![image](https://github.com/KMANVK/CTF_Wu/assets/94669750/680c1353-3619-4e2e-8143-c6c9dcab0ced)


```
sox beepboop.wav -c 1 ./beepboop-mono.wav remix 1

sox: Là một chương trình dòng lệnh để xử lý âm thanh.
beepboop.wav: Tên tệp âm thanh gốc đầu vào.
-c 1: Chuyển đổi tệp âm thanh thành âm thanh mono (1 kênh).
./beepboop-mono.wav: Tên tệp âm thanh sau khi xử lý được tạo ra.
minimodem -r -f ./beepboop-mono.wav --space 500 --mark 1350 -5 70 -q

minimodem: Là một chương trình dòng lệnh để modulate/demodulate dữ liệu âm thanh.
-r: Chế độ nhận dữ liệu âm thanh.
-f ./beepboop-mono.wav: Tệp âm thanh đầu vào để nhận dữ liệu.
--space 500: Khoảng thời gian giữa các ký tự trắng (dùng để phân tách dữ liệu).
--mark 1350: Tần số tiếng kêu dùng để đánh dấu các ký tự (dùng để phân tách dữ liệu).
-5 70: Cấu hình bộ lọc thông qua băng thông và độ lợi.
-q: Chế độ yên lặng, không hiển thị thông báo.
cut -d' ' -f2-

cut: Chương trình dòng lệnh để cắt và trích xuất các phần của các dòng văn bản.
-d ' ': Dùng dấu cách làm ký tự phân tách.
-f2-: Trích xuất từ cột thứ 2 trở đi của dữ liệu đầu vào.
tr '[:upper:]' '[:lower:]'

tr: Chương trình dòng lệnh để thay thế hoặc xóa các ký tự.
'[:upper:]' '[:lower:]': Chuyển đổi tất cả các ký tự in hoa thành ký tự in thường.
tr ' ' '_'

tr: Chương trình dòng lệnh để thay thế hoặc xóa các ký tự.
' ' '_': Thay thế dấu cách bằng dấu gạch dưới.
Với các bước trên, dòng lệnh trước tiên chuyển đổi tệp âm thanh gốc thành mono, sau đó truyền tệp âm thanh đã xử lý cho chương trình "minimodem" để nhận dữ liệu âm thanh và trích xuất phần dữ liệu cần thiết. Cuối cùng, dữ liệu được chuẩn hóa bằng cách chuyển đổi các ký tự in hoa thành ký tự in thường và thay thế dấu cách bằng dấu gạch dưới.
```
