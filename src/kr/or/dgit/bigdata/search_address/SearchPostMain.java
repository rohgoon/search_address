package kr.or.dgit.bigdata.search_address;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JTable;

public class SearchPostMain extends JFrame {

	private JPanel contentPane;
	private JTextField txtDoro;
	private JTable tablePost;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					SearchPostMain frame = new SearchPostMain();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public SearchPostMain() {
		setTitle("우편번호 검색");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.NORTH);
		
		JLabel lblSido = new JLabel("시도명");
		panel.add(lblSido);
		
		JComboBox cbSido = new JComboBox();
		cbSido.setModel(new DefaultComboBoxModel(new String[] {"강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", "대전광역시", "부산광역시", "서울특별시", "세종특별자치시", "울산광역시", "인천광역시", "전라남도", "전라북도", "제주특별자치도", "충청남도", "충청북도"}));
		panel.add(cbSido);
		
		JLabel lblDoro = new JLabel("도로명");
		panel.add(lblDoro);
		
		txtDoro = new JTextField();
		panel.add(txtDoro);
		txtDoro.setColumns(10);
		
		JButton btnSearchpost = new JButton("검색");
		panel.add(btnSearchpost);
		
		JScrollPane scrollPane = new JScrollPane();
		contentPane.add(scrollPane, BorderLayout.CENTER);
		
		tablePost = new JTable();
		scrollPane.setViewportView(tablePost);
	}

}
