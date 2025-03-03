package com.booksotre.utils;

import javafx.scene.control.Alert;

import lombok.Getter;

@Getter
public enum AlertInfo {
    EMAIL_EXISTED("Thông báo lỗi", "Đã tồn tại tài khoản trên email vui lòng chọn email khác!", Alert.AlertType.ERROR),
    PASSWORD_INVALID("Thông báo lỗi", "Mật khẩu phải tối thiểu 8 ký tự!", Alert.AlertType.ERROR),
    CREAT_ACCOUNT_SUCCESS("Thông báo", "Tài khoản đã được tạo thành công!", Alert.AlertType.INFORMATION),
    LOGIN_SUCCESSFUL("Thông báo", "Đăng nhập thành công!", Alert.AlertType.INFORMATION),
    LACK_OF_INFORMATION("Thông báo lỗi", "Vui lòng điền đầy đủ thông tin!", Alert.AlertType.ERROR),
    EMAIL_PASSWORD_INVALID("Thông báo lỗi", "Vui lòng kiểm tra lại email hoạc mật khẩu", Alert.AlertType.ERROR),
    LOGOUT_SUCCESSFUL("Thông báo", "Đăng xuất tài khoản thành công", Alert.AlertType.INFORMATION),
    PRODUCT_EXIST("Thông báo", "Sách đã tồn tại", Alert.AlertType.INFORMATION),
    ADD_BOOK_SUCCESSFUL("Thông báo", "Thêm sách thành công", Alert.AlertType.INFORMATION),
    CONFIRM_UPDATE("Thông bóa xác nhận", "Bạn có chắc chắn muốn cập nhật thông tin của đối tượng này không?", Alert.AlertType.CONFIRMATION),
    UPDATE_SUCCESSFUL("Thông báo", "Cập nhật thông tin thành công", Alert.AlertType.INFORMATION),
    DELETE_SUCCESSFUL("Thông báo", "Xóa thông tin thành công", Alert.AlertType.INFORMATION),
    CANCEL("Thông báo hủy", "Đã hủy thao tác", Alert.AlertType.INFORMATION),
    CHOOSE_OBJECT("Thông báo", "VUi lòng chọn đối tượng muốn xóa", Alert.AlertType.ERROR),
    CONFIRM_DELETE("Thông báo", "Bạn có chắc muốn xóa thông tin của đối tượng này không?", Alert.AlertType.CONFIRMATION),
    CHOOSE_QUANTITY("Thông báo", "VUi lòng chọn số lượng muốn thêm vào hóa đơn", Alert.AlertType.ERROR),
    NOT_ENOUGH_BOOK("Thông báo", "Số lượng sách trong kho không đủ", Alert.AlertType.ERROR),
    CONFIRM_ADD("Thông báo", "Bạn có chắc muốn muốn thêm thông tin của đối tượng này không?", Alert.AlertType.CONFIRMATION),
    OLD_PASSWORD_INCORRECT("Thông báo lỗi", "Mật khẩu cũ không chính xác!", Alert.AlertType.ERROR),
    CONFIRMNEWPASS_INCORRECT("Thông báo lỗi", "Mật khẩu xác nhận không chính xác!", Alert.AlertType.ERROR),
    ENTER_KEYWORD("Thông báo lỗi", "Vui lòng nhập từ khóa để tìm kiếm", Alert.AlertType.ERROR),
    CANCEL_ORDER("Thông báo", "Đơn hàng đã bị hủy", Alert.AlertType.INFORMATION),
    CONFIRM_ORDER("Thông báo", "Đơn hàng đã được giao cho bên vận chuyển", Alert.AlertType.INFORMATION),
    CONFIRM("Thông báo", "Bạn có chắc muốn thực hiện thao tác này khòng?", Alert.AlertType.CONFIRMATION),
    CANNOT_CONFIRM_ORDER("Thông báo", "Đơn hàng này không yêu cầu xử lý?", Alert.AlertType.INFORMATION),
    CANNOT_CANCEL_ORDER("Thông báo", "Đơn hàng đã hoàn thành hoặc đã bị hủy không thể hủy", Alert.AlertType.INFORMATION),
    ADD_BOOK_INTO_ORDER("Thông báo", "Đã thêm sách vào đơn hàng", Alert.AlertType.INFORMATION),
    CONFIRM_PAYMENT("Thông báo", "Bạn có chắc muốn thanh toán toàn bộ sản phẩm trong bảng hóa đơn ở trên không", Alert.AlertType.CONFIRMATION),
    NON_ORDER("Thông báo", "Không có hóa đơn để xuất", Alert.AlertType.INFORMATION),
    NOT_EXIST_ACCOUNT("Thông báo", "Số điện thoại chưa đăng ký tài khoản trên hệ thống", Alert.AlertType.INFORMATION),
    PAYMENT_SUCCESSFUL("Thông báo", "Đơn hàng đã được xác nhận và thanh toán", Alert.AlertType.INFORMATION),
    NOT_AUTHORIZATION("Thông báo", "Bạn không phải là quản trị viên nên không được phép truy cập mục này!", Alert.AlertType.INFORMATION),
    CONFIRM_LOGOUT("Thông báo", "Bạn có chắc chắn muốn đăng xuất khỏi hệ thống không", Alert.AlertType.CONFIRMATION),
    CART_EMPTY("Thông báo", "Không có sản phẩm trong giỏ hàng của bạn. Vui lòng thêm sản phẩm vòa giỏ để sử dụng chức năng này!", Alert.AlertType.CONFIRMATION),
    DELETE_CART("Thông báo", "Đã xóa tất cả sản phẩm trong giỏ!", Alert.AlertType.INFORMATION),
    CONFIRM_DELETE_CART("Thông báo", "Bạn có chắc muốn xóa tất cả sản phẩm trong giỏ của bạn không?", Alert.AlertType.CONFIRMATION),
    CONFIRM_ADD_ITEM("Thông báo", "Bạn có chắc muốn thêm sản phẩm này vào trong giỏ của bạn không?", Alert.AlertType.CONFIRMATION),
    ADD_ITEM_SUCCESS("Thông báo", "Đã thêm sản phẩm vòa giỏ!", Alert.AlertType.INFORMATION),
    CONFIRM_PAYMENT_CART("Thông báo", "Bạn có chắc muốn thanh toán toàn bộ sản phẩm trong giỏ không?", Alert.AlertType.CONFIRMATION),
    WAIT_CONFIRM("Thông báo", "Đã gửi yêu cầu thanh toán vui lòng chờ xác nhận!", Alert.AlertType.INFORMATION),
    ERROR_SYSTEM("Thông báo", "Có lỗi trong quá trình xử lý!", Alert.AlertType.INFORMATION)
    ;

    private final String title;
    private final String message;
    private final Alert.AlertType type;

    AlertInfo(String title, String message, Alert.AlertType type) {
        this.title = title;
        this.message = message;
        this.type = type;
    }
}
