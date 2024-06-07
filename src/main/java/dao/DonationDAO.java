package dao;

import model.Donation;
import utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DonationDAO {
	public List<Donation> getAllDonations() throws SQLException {
        List<Donation> donations = new ArrayList<>();
        String sql = "SELECT * FROM donations";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Donation donation = new Donation();
                donation.setId(rs.getInt("id"));
                donation.setName(rs.getString("name"));
                donation.setDescription(rs.getString("description"));
                donation.setDate(rs.getTimestamp("date"));
                donation.setComment(rs.getString("comment"));
                donations.add(donation);
            }
        }
        return donations;
    }

    public void addDonation(Donation donation) throws SQLException {
        String sql = "INSERT INTO donations (name, description) VALUES (?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, donation.getName());
            stmt.setString(2, donation.getDescription());
            stmt.executeUpdate();
        }
    }

    public void addComment(int donationId, String comment) throws SQLException {
        String sql = "UPDATE donations SET comment = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, comment);
            stmt.setInt(2, donationId);
            stmt.executeUpdate();
        }
    }
    
    public List<Donation> getDonationsSortedByDate() {
        List<Donation> donations = new ArrayList<>();
        String sql = "SELECT * FROM donations ORDER BY date DESC";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Donation donation = new Donation();
                donation.setId(rs.getInt("id"));
                donation.setName(rs.getString("name"));
                donation.setDescription(rs.getString("description"));
                donation.setDate(rs.getTimestamp("date"));  // Asegúrate de usar Timestamp
                donation.setComment(rs.getString("comment"));
                donations.add(donation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return donations;
    }
    
    public List<Donation> getAllDonationsSortedByName() {
        List<Donation> donations = new ArrayList<>();
        String query = "SELECT * FROM donations ORDER BY name";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Donation donation = new Donation();
                donation.setId(rs.getInt("id"));
                donation.setName(rs.getString("name"));
                donation.setDescription(rs.getString("description"));
                donation.setDate(rs.getDate("date"));
                donation.setComment(rs.getString("comment"));
                donations.add(donation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return donations;
    }
    
    public List<Donation> getAllDonationsSortedById() {
        List<Donation> donations = new ArrayList<>();
        String query = "SELECT * FROM donations ORDER BY id";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Donation donation = new Donation();
                donation.setId(rs.getInt("id"));
                donation.setName(rs.getString("name"));
                donation.setDescription(rs.getString("description"));
                donation.setDate(rs.getDate("date"));
                donation.setComment(rs.getString("comment"));
                donations.add(donation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return donations;
    }
}
