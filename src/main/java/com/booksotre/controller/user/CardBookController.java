package com.booksotre.controller.user;

import com.booksotre.model.BookModel;
import com.booksotre.model.OrderTamp;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import lombok.Setter;

import java.net.URL;
import java.util.Objects;
import java.util.ResourceBundle;

public class CardBookController implements Initializable {
    @Setter
    private BookController homeController;

    @Setter
    private CategoryController categoryController;

    @FXML
    private Label author;

    @FXML
    private Label bookName;

    @FXML
    private HBox hopChua;

    @FXML
    private ImageView image;

    @FXML
    private Label price;

    private BookModel book;

    private String[] colors = new String[]{"B9E5FF", "BDB2FE", "FB9AA8", "FF5056"};

    public void setData(BookModel book) {
        this.book = book;
//        Image img = new Image(Objects.requireNonNull(getClass().getResourceAsStream("/assets/images/default_book.jpg")), 150, 210, false, true);
        String link = "/assets/images/default_book.jpg";
        try{
            if(book.getImage() != null) link = "/assets/images/" + book.getImage();
            Image img = new Image(Objects.requireNonNull(getClass().getResourceAsStream(link)), 324, 500, false, true);
            image.setImage(img);
        }catch (Exception e){
            e.printStackTrace();
        }
        this.hopChua.setStyle("-fx-background-color: #" + colors[(int) (Math.random() * colors.length)] + ";"
                + "-fx-background-radius: 15;"
                + "-fx-effect: dropshadow(three-pass-box, rgba(0, 0, 0, 0.1), 10, 0, 0, 10);");
        bookName.setText(book.getTitle());
        price.setText(String.valueOf(book.getPrice()));
        author.setText(book.getAuthor());
    }

    public void setDataNotColor(BookModel book) {
        this.book = book;
        //Image img = new Image(Objects.requireNonNull(getClass().getResourceAsStream(book.getImage())), 150, 210, false, true);
        //Image img = new Image(Objects.requireNonNull(getClass().getResourceAsStream("/assets/images/default_book.jpg")), 150, 210, false, true);
        //image.setImage(img);
        String link = "/assets/images/default_book.jpg";
        try{
            if(book.getImage() != null) link = "/assets/images/" + book.getImage();
            Image img = new Image(Objects.requireNonNull(getClass().getResourceAsStream(link)), 324, 500, false, true);
            image.setImage(img);
        }catch (Exception e){
            e.printStackTrace();
        }
        bookName.setText(book.getTitle());
        price.setText(String.valueOf(book.getPrice()));
        author.setText(book.getAuthor());
    }

    public void showDetail(){
        OrderTamp.bookId = book.getBookId();
        if (homeController != null && homeController.getUserController() != null) {
            homeController.getUserController().showBookDetail(book.getBookId());
        }else if(categoryController != null && categoryController.getUserController() != null) {
            categoryController.getUserController().showBookDetail(book.getBookId());
        }
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }
}
