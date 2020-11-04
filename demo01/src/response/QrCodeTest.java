package response;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public class QrCodeTest {

	public static void main(String[] args) throws WriterException, IOException {
		
		HashMap hints = new HashMap();
		//字符编码
		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		//容错级别
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
		//定义二维码对象
		BitMatrix bitMatrix = new MultiFormatWriter().encode("xyrn体训冲呀", BarcodeFormat.QR_CODE, 300, 300,hints);
	
		//定义输出流
		OutputStream os = new FileOutputStream("E:/123.jpg");
		
		MatrixToImageWriter.writeToStream(bitMatrix, "jpg", os);
	}

}
