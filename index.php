<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		body {
			position: relative;
			text-align: center;
		}

		.container {
			width: 300px;
			margin: auto;
			display: flex;
			flex-direction: column;
			padding: 36px;
			background-color: coral;
		}
		
	</style>
</head>
<body>
	<?php
		include_once("DataProvider.php");
	?>
    <h2>TRA CỨU HOA</h2>
		<p> show show show 
			<?php

			$maloai = 1;
			echo "<p>show me please  " . $maloai . "</p><br><br>";
			if(isset($_REQUEST["type"])) {
				$maloai = $_REQUEST["type"];
			}
			echo "then   " . $maloai;

				echo "tett" . $_REQUEST["type"];
			?>
		</p>
	<div class="container">
		<form action="index.php" method="get">
			<select name="type">
				<?php
					$dsloaihoa = DataProvider::ExecuteQuery("SELECT * FROM loai");

					$maloai = 1;
					echo "<p>show me please  " . $maloai . "</p><br><br>";
					if(isset($_REQUEST["type"])) {
						$maloai = $_REQUEST["type"];
					}
					echo "then   " . $maloai;

					while($hoa = mysqli_fetch_array($dsloaihoa)) {
						echo "testestett";
						echo "<option value='{$hoa['MaLoai']}' ";
						if($maloai == $hoa['maLoai']) echo " selected ";
						echo ">{$hoa['TenLoai']}</option>";
					}
				?>
			</select>
			<input type="submit" name="" id="">
		<form>
	</div>

        <hr>
    <?php        
        $sql_hoa = "SELECT * FROM hoa WHERE maLoai='{$maloai}' ";
        echo $sql_hoa . "<br>";
        $dshoa = DataProvider::ExecuteQuery($sql_hoa);
        while($hoa = mysqli_fetch_array($dshoa))
        {
            echo "<img height=80 src='./hoa/{$hoa['hinh']}' /><br>";
        }
    ?>
	<!-- <table border="1" cellspacing="0" cellpadding="5">
		<tbody>
			<tr>
				<td>STT</td>
				<td>Hình</td>
				<td>Tên hoa</td>
				<td>Giá</td>
			</tr>
			<?php
				$result = DataProvider::ExecuteQuery("SELECT * FROM hoa");
				$i = 1;
				while($row = mysqli_fetch_array($result)) {
					$gia = number_format($row['GiaBan']);
					$chuoi = <<<EOD
						<tr>
							<td>$i</td>
							<td><img src="hoa/{$row['Hinh']}" class="hoa"/></td>
							<td>{$row['TenHoa']} heheheh</td>
							<td>$gia</td>
						</tr>
					EOD;
					echo $chuoi;
					$i++;
				}
			?>
		</tbody>
	</table> -->
	<script>

	</script>
</body>
</html>