package lsj.spring.mvc.service;

import lsj.spring.mvc.dao.PdsDAO;
import lsj.spring.mvc.utils.FileUpDownUtil;
import lsj.spring.mvc.vo.Pds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Repository("psrv")
public class PdsServiceImpl implements PdsService{

    private PdsDAO pdao;
    private FileUpDownUtil fud;

    @Autowired
    public PdsServiceImpl(PdsDAO pdao, FileUpDownUtil fud) {
        this.pdao = pdao;
        this.fud = fud;
    }

    @Override // MultipartFile로 구현하는 자료실
    public boolean newPds(Pds p, MultipartFile[] file) {
        // 파일 업로드시 사용할 uuid 생성
        String uuid = fud.makeUUID();

        // 업로드한 파일의 정보를 저장하기 위해 동적배열 생성
        List<String> files = new ArrayList<>();


        for(MultipartFile f : file){
            if (!f.getOriginalFilename().isEmpty()){
                // 파일 업로드시 앞서 만든 uuid 값을 매개변수로 넘김
                // 업로드한 결과값은 '파일명/파일크기/파일종류'로 넘어옴
                // 넘어온 파일정보는 동적배열에 저장
                files.add(fud.procUpload(f, uuid));
            }
            else{
                // 업로드한 파일이 없는경우 -/-/-를 배열에 저장
                files.add("-/-/-");
            }
        }

        // 배열에 저장한 정보들을 하나씩 추출해서 Pds에 저장
        p.setFname1(files.get(0).split("[/]")[0]); // 파일명
        p.setFsize1(files.get(0).split("[/]")[1]); // 파일크기
        p.setFtype1(files.get(0).split("[/]")[2]); // 파일종류

        p.setFname2(files.get(1).split("[/]")[0]);
        p.setFsize2(files.get(1).split("[/]")[1]);
        p.setFtype2(files.get(1).split("[/]")[2]);

        p.setFname3(files.get(1).split("[/]")[0]);
        p.setFsize3(files.get(1).split("[/]")[1]);
        p.setFtype3(files.get(1).split("[/]")[2]);

        p.setUuid(uuid);
        boolean isIncerted = false;
        if(pdao.insertPds(p)> 0) isIncerted = true;

        return isIncerted;
    }

    @Override
    public List<Pds> readPds(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 10;

        return pdao.selectPds(snum);
    }

    @Override
    public int countPds() {
        return pdao.selectCountPds();
    }

    @Override
    public Pds readOnePds(String pno) {
        return pdao.selectOnepds(pno);
    }

    @Override
    public Pds readOneFname(String pno, String order) {
        return null;
    }

    @Override
    public boolean downCountPds(String pno, String order) {
        return false;
    }
}
