package keti.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.ArriveDAO;
import keti.main.model.Arrive_Car;

@Service
public class ArriveService {

	@Autowired
	private ArriveDAO arriveDAO;
	
	public List<Object> getGPS(String id, String name){
		return arriveDAO.getGPS(id, name);
	}

	public List<Arrive_Car> getCAR(String mapnum) {
		// TODO Auto-generated method stub
		return arriveDAO.getCAR(mapnum);
	}
}
