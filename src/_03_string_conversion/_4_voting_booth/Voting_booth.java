package _03_string_conversion._4_voting_booth;

import javax.swing.JOptionPane;

public class Voting_booth {

	public static void main(String[] args) {
		String old = JOptionPane.showInputDialog("How old are you?");
		int Oldint = Integer.parseInt(old);
		if(Oldint >= 18)	{
			JOptionPane.showInputDialog("Who do you think should be president?");
		}
		if(Oldint < 18)	{
			JOptionPane.showInputDialog("Nobody cares about YOUR opinion");
		}
	}
}
