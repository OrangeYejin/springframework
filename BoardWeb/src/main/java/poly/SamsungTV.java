package poly;

public class SamsungTV implements TV {
	private Speaker speaker;
	private int price;
	public SamsungTV() {
		System.out.println("====> SamsungTV 생성");
	}

	
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}
	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public void powerOn() {
		System.out.println("SamsungTV === 전원켜기 (가격 : "+price+")");
	}
	@Override
	public void powerOff() {
		System.out.println("SamsungTV === 전원끄기");
	}
	@Override
	public void volumeUp() {
		speaker.volumeUp();
	}
	@Override
	public void volumeDown() {
		speaker.volumeDown();
	}
}
