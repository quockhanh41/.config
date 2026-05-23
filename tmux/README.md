# Tmux Usage Guide

## Cài đặt và Cấu hình

Tmux đã được cài đặt và cấu hình cho bạn với các tính năng sau:

### Phím tắt chính (Prefix: Ctrl+a)

#### Quản lý Session
- `tmux` hoặc `tm` - Tạo/attach session mới
- `Ctrl+a d` - Detach khỏi session hiện tại
- `tmux ls` hoặc `tls` - Liệt kê các session đang chạy
- `tmux attach -t <name>` hoặc `ta <name>` - Attach vào session cụ thể
- `tmux kill-session -t <name>` hoặc `tkill <name>` - Xóa session

#### Quản lý Window
- `Ctrl+a c` - Tạo window mới
- `Ctrl+a n` - Chuyển sang window tiếp theo
- `Ctrl+a p` - Chuyển sang window trước đó
- `Ctrl+a <number>` - Chuyển sang window số cụ thể
- `Ctrl+a &` - Đóng window hiện tại

#### Quản lý Pane
- `Ctrl+a |` - Chia pane theo chiều dọc
- `Ctrl+a -` - Chia pane theo chiều ngang
- `Ctrl+a h/j/k/l` - Di chuyển giữa các pane (vim-style)
- `Alt+Arrow` - Di chuyển giữa các pane (không cần prefix)
- `Ctrl+a H/J/K/L` - Resize pane
- `Ctrl+a x` - Đóng pane hiện tại

### Copy Mode (Vi-style)
- `Ctrl+a [` - Vào copy mode
- `v` - Bắt đầu selection
- `y` - Copy selection vào clipboard
- `q` - Thoát copy mode

### Các lệnh hữu ích

#### Reload cấu hình
```bash
Ctrl+a r
```

#### Xem tất cả key bindings
```bash
Ctrl+a ?
```

## Script tiện ích

File `/Users/quockhanh/.config/tmux/tmux-startup.sh` chứa các function và alias hữu ích:

- `tm [session_name]` - Tạo hoặc attach session
- `tkill <session_name>` - Xóa session
- `tls` - Liệt kê sessions
- `ta <session_name>` - Attach session
- `tn <session_name>` - Tạo session mới

## Tích hợp với Alacritty

Trong Alacritty, bạn có thể sử dụng:
- `Cmd+N` - Tạo tmux window mới
- `Cmd+T` - Tạo tmux session mới

## Tích hợp với Neovim

Neovim đã được cấu hình để hoạt động tốt với tmux:
- True color support được bật
- Timeout được tối ưu khi chạy trong tmux

## Tips và Tricks

1. **Làm việc với nhiều project**: Tạo một session cho mỗi project
   ```bash
   tm project1
   tm project2
   ```

2. **Persistent sessions**: Tmux sessions sẽ tiếp tục chạy ngay cả khi bạn đóng terminal

3. **Pair programming**: Nhiều người có thể attach vào cùng một session

4. **Backup workspace**: Tmux giữ nguyên trạng thái làm việc khi bạn reboot máy

## Workflow đề xuất

1. Khởi động Alacritty
2. Chạy `tm` để tạo/attach session chính
3. Sử dụng `Ctrl+a |` và `Ctrl+a -` để chia pane theo nhu cầu
4. Mở Neovim trong một pane, terminal commands trong pane khác
5. Sử dụng `Ctrl+a c` để tạo window mới cho project khác

## Troubleshooting

- Nếu colors không hiển thị đúng, kiểm tra `$TERM` variable
- Nếu copy/paste không hoạt động, đảm bảo `pbcopy` được cài đặt (đã có sẵn trên macOS)
- Reload tmux config với `Ctrl+a r` sau khi thay đổi cấu hình