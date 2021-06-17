package lsj.spring.mvc.service;

import lsj.spring.mvc.vo.Gallery;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GalleryService {

    boolean newGal(Gallery g, MultipartFile[] file);
    List<Gallery> readGal(String cp);
    Gallery readOneGal(String gno);

    void modifyGal(Gallery g, MultipartFile[] img);
}
