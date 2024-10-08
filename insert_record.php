<?php
include 'dbconfig.php';

$sql = "INSERT INTO profiles (user_id, bio, avatar_url) VALUES (:user_id, :bio, :avatar_url)";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':user_id', $user_id);
$stmt->bindParam(':bio', $bio);
$stmt->bindParam(':avatar_url', $avatar_url);

$user_id = 6;
$bio = 'Enrollment/Grades.';
$avatar_url = 'https://sample.com/icon.jpg';

if ($stmt->execute()) {
    echo "Record inserted successfully";
} else {
    echo "Error inserting record";
}
?>
