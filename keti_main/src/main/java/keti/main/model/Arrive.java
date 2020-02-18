package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

@Measurement(name = "VISIT_RULE")
public class Arrive {
	
	@Column(name = "time")
	private String time;
	
	@Column(name = "GPS_LAT")
	private String GPS_LAT;
	
	@Column(name = "GPS_LONG")
	private String GPS_LONG;
	
	@Column(name = "VISIT_END")
	private String VISIT_END;
	
	@Column(name = "VISIT_START")
	private String VISIT_START;
	
	@Column(name = "car_id")
	private String car_id;
}
