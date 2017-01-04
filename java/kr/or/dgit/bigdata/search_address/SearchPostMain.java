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

public class SearchPostMain extends JFrame {

	private JPanel contentPane;
	private JTextField txtDoro;

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
		
		JLabel lblSido = new JLabel("sido");
		panel.add(lblSido);
		
		JComboBox cbSido = new JComboBox();
		panel.add(cbSido);
		
		JLabel lblDoro = new JLabel("doro");
		panel.add(lblDoro);
		
		txtDoro = new JTextField();
		txtDoro.setText("doro");
		panel.add(txtDoro);
		txtDoro.setColumns(10);
		
		JButton btnSearchpost = new JButton("검색");
		panel.add(btnSearchpost);
		
		JScrollPane scrollPane = new JScrollPane();
		contentPane.add(scrollPane, BorderLayout.CENTER);
	}

}
