package poly;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("tv")
public class LGTV implements TV{
	
	@Autowired
	private Speaker speaker;
	
	public LGTV() {
		System.out.println("==> LGTV 객체 생성");
	}
	
	@Override
	public void powerOn() {
		System.out.println("LGTV === 전원켜기");
	}
	@Override
	public void powerOff() {
		System.out.println("LGTV === 전원끄기");
	}

	public void volumeUp() {
		//System.out.println("LGTV === 볼륨 업");
		speaker.volumeUp();
	}

	public void volumeDown() {
		//System.out.println("LGTV === 볼륨 다운");
		speaker.volumeDown();
	}
}
