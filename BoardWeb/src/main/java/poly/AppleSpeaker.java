package poly;

import org.springframework.stereotype.Component;

//@Component("apple")
public class AppleSpeaker implements Speaker {
	public AppleSpeaker() {
		System.out.println("====> AppleSpeaker 객체생성");
	}
	@Override
	public void volumeUp() {
		System.out.println("AppleSpeaker ===> 사운드 올림");
	}
	@Override
	public void volumeDown() {
		System.out.println("AppleSpeaker ===> 사운드 내림");
	}
}
