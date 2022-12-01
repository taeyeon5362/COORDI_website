package dao;
import dto.Coordi;

import java.util.ArrayList;

public class CoordiRepository {

    private ArrayList<Coordi> listOfCoordis = new ArrayList<Coordi>();
    private static CoordiRepository instance= new CoordiRepository();
    public static CoordiRepository getInstance() {
        return instance;
    }


    public Coordi getCoordiById(String coordiId) {
        Coordi CoordiById = null;

        for (int i = 0; i <  listOfCoordis.size(); i++) {
            Coordi coordi = listOfCoordis.get(i);
            if (coordi != null && coordi.getCoordiId() != null && coordi.getCoordiId().equals(coordiId)) {
                CoordiById = coordi;
                break;
            }
        }
        return CoordiById;
    }

    public void addCoordi(Coordi coordi) {
        listOfCoordis.add(coordi);
    }
    public ArrayList<Coordi> getAllCoordis() {
        return listOfCoordis;
    }
}

