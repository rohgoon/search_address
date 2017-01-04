package kr.or.dgit.bigdata.search_address;

import javax.swing.JFrame;
import java.awt.GridLayout;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.SwingConstants;
import javax.swing.JPanel;

public class PostMain extends JFrame {
	private JTextField txtAddr;
	private JTextField txtDetail;
	private JTextField txtNo;
	public PostMain() {
		setTitle("우편번호");
		getContentPane().setLayout(new GridLayout(4, 2, 0, 0));
		
		JLabel lblNo = new JLabel("no");
		lblNo.setHorizontalAlignment(SwingConstants.RIGHT);
		getContentPane().add(lblNo);
		
		JPanel pnNo = new JPanel();
		getContentPane().add(pnNo);
		pnNo.setLayout(new GridLayout(0, 2, 0, 0));
		
		txtNo = new JTextField();
		pnNo.add(txtNo);
		txtNo.setColumns(10);
		
		JButton btnSearch = new JButton("search");
		pnNo.add(btnSearch);
		
		JLabel lblAddr = new JLabel("addr");
		lblAddr.setHorizontalAlignment(SwingConstants.RIGHT);
		getContentPane().add(lblAddr);
		
		txtAddr = new JTextField();
		getContentPane().add(txtAddr);
		txtAddr.setColumns(10);
		
		JLabel lblDetail = new JLabel("detail");
		lblDetail.setHorizontalAlignment(SwingConstants.RIGHT);
		getContentPane().add(lblDetail);
		
		txtDetail = new JTextField();
		getContentPane().add(txtDetail);
		txtDetail.setColumns(10);
		
		JLabel label = new JLabel("");
		getContentPane().add(label);
		
		JButton btnSubmit = new JButton("submit");
		getContentPane().add(btnSubmit);
	}
	
}
