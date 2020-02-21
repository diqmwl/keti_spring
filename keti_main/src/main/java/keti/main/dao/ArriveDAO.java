package keti.main.dao;

import java.util.ArrayList;
import java.util.List;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.impl.InfluxDBResultMapper;
import org.springframework.stereotype.Repository;

import keti.main.model.Arrive_Visit;
import keti.main.model.Arrive;
import keti.main.model.Arrive_Car;
import keti.main.model.Arrive_main;

@Repository
public class ArriveDAO {	
	

	public List<Arrive> getGPS(String id, String name) {
		InfluxDB influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
		influxDB.setDatabase("SAMPYO_MONIT");
		
		QueryResult queryResult = influxDB.query(new Query("select * from VISIT_RULE WHERE car_id = '"+id+"' AND time >= now()-3d order by desc limit 5", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive_Visit> List = resultMapper.toPOJO(queryResult, Arrive_Visit.class);

		queryResult = influxDB.query(new Query("select GPS_LAT, GPS_LONG, DRIVE_SPEED AS VISIT_END , DRIVE_SPEED AS VISIT_START, car_id from MAIN2 where car_id = '"+id+"' AND time <= '"+List.get(0).getVISIT_END()+"' AND time >= '"+List.get(List.size()-1).getVISIT_START()+"' order by desc limit 5", "SAMPYO_MONIT"));
		List<Arrive_main> List2 = resultMapper.toPOJO(queryResult, Arrive_main.class);
				
		List<Arrive> gpsList = null;
		gpsList.add((Arrive) List2);
		influxDB.close();
		return gpsList;
	}

	public List<Arrive_Car> getCAR(String mapnum) {
		InfluxDB influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
		influxDB.setDatabase("SAMPYO_MONIT");
		QueryResult queryResult = influxDB.query(new Query("select DISTINCT(CAR_ID) AS CAR_ID from DEPARTARRIV WHERE LOC_NUM = "+mapnum, "SAMPYO_MONIT"));
		
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive_Car> carList = resultMapper.toPOJO(queryResult, Arrive_Car.class);		
		influxDB.close();
		return carList;
	}
}
