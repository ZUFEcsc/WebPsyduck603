package response;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/**
 * Servlet implementation class QrCodeServlet
 */
@WebServlet("/QrCodeServlet")
public class QrCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//��ȡ��ά������
		String codes = request.getParameter("Qrinfo");
		String sizes = request.getParameter("Qrsize");
		int size = Integer.valueOf(sizes);
		
//		System.out.println(widths+" "+heights);
		//��ά�����
		HashMap hints = new HashMap();
		//�ַ�����
		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		//�ݴ���
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
		
		//�����ά�����
		BitMatrix bitMatrix = null;
		try {
			bitMatrix = new MultiFormatWriter().encode(codes, BarcodeFormat.QR_CODE, size, size, hints);

			//����response����������Ϊjpg
			response.setContentType("image.jpeg");
			
//			��ȡ��ǰ��Ŀ�����������ַ(E:\apache-tomcat-8.5.57-windows-x64\apache-tomcat-8.5.57\webapps\demo01
			String path = this.getServletContext().getRealPath("/")+File.separator+"img"+File.separator;
			
			SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssS");
			String time = sdf2.format(new Date());
						
			String imgname = "psyduck_"+codes+"_"+time+".jpg";
			//���������
			OutputStream os = new FileOutputStream(path+imgname);
			
			MatrixToImageWriter.writeToStream(bitMatrix, "jpg", os);
			
			request.setAttribute("codeinfo", codes);
			request.setAttribute("imgname", imgname);
			
			//ת��
			request.getRequestDispatcher("WEB-INF/jsp/qrRes.jsp").forward(request, response);
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
