import javax.swing.*;
import java.awt.event.*;
import java.awt.*;

public class Calc extends JFrame {
	
	private JButton plus;
	private JButton minus;
	private JTextField input;
	public double total = 0;
	public String type = "None";
	private Timer time;
	
	public Calc() {
		setTitle("Calculator");
		Container cp = this.getContentPane();
		cp.setLayout(new FlowLayout());
		
		//Creating the buttons and the textbox
		plus = new JButton("+");
		minus = new JButton("-");
		input = new JTextField(10);
		input.setEditable(true);
		
		//Add the buttons and textbox to the screen
		cp.add(input);
		cp.add(minus);
		cp.add(plus);
		
		setSize(600, 400);
		setVisible(true);
		
		
		time = new Timer(2500, new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				time.stop();
				try {
					if(type == "+") {
						double value2 = Double.parseDouble(input.getText());
						total += value2;
						input.setText("" + total);
					}
					if(type == "-") {
						double value2 = Double.parseDouble(input.getText());
						total -= value2;
						input.setText("" + total);
					}			
				}
				catch(NumberFormatException e1) {
					//Ignore input
					input.setText("");
					}
			}
		});
		
		
		
		plus.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					double value = Double.parseDouble(input.getText());
					total = value;
					input.setText("");
					//input.setText("" + total);
					type = "+";
					time.start();
				}
				catch(NumberFormatException e1) {
					//Ignore input
					input.setText("");
					}
			}
		});
		
		minus.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					double value = Double.parseDouble(input.getText());
					total = value;
					input.setText("");
					//input.setText("" + total);
					type = "-";
					time.start();
				}
				catch(NumberFormatException e1) {
				//Ignore input
				input.setText("");
				}
			}
		});
		
		
		
		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});
	}
	
	public static void main (String[] args) {
		JFrame f = new Calc();
	}
}
