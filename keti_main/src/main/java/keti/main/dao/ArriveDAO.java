package keti.main.dao;

import java.util.List;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.impl.InfluxDBResultMapper;
import org.springframework.stereotype.Repository;


import keti.main.model.Arrive;
import keti.main.model.Arrive_Car;

@Repository
public class ArriveDAO {	
	

	public List<Arrive> getGPS(String id, String name) {
		InfluxDB influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
		influxDB.setDatabase("SAMPYO_MONIT");
		
		QueryResult queryResult = influxDB.query(new Query("select * from VISIT_RULE WHERE car_id = '"+id+"' order by desc limit 5", "SAMPYO_MONIT"));

		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive> gpsList = resultMapper.toPOJO(queryResult, Arrive.class);
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
