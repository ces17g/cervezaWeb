<?php include("db.php"); ?>

<?php include('includes/header.php'); ?>

<main class="container p-4">
  <div class="row">
    <div class="col-md-4">
      <!-- MESSAGES -->

      <?php if (isset($_SESSION['message'])) { ?>
      <div class="alert alert-<?= $_SESSION['message_type']?> alert-dismissible fade show" role="alert">
        <?= $_SESSION['message']?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php session_unset(); } ?>

      <!-- ADD TASK FORM -->
      <div class="card card-body">
        <form action="insert.php" method="POST">
          <div class="form-group">
            <input type="text" name="Name" class="form-control" placeholder="Enter Username: Case sensitive" autofocus>
          </div>
            <div class="form-group">
                <input type="text" name="Bar" class="form-control" placeholder="Bar: [Name of Bar]">
            </div>
          <div class="form-group">
            <input type="text" name="Rate" class="form-control" placeholder="Rating: [1-5]">
          </div>
          <input type="submit" name="save_rate" class="btn btn-success btn-block" value="Save Rate">
        </form>
      </div>
    </div>
    <div class="col-md-8">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Rating</th>
            <th>Bar</th>
            <th>User</th>
          </tr>
        </thead>
        <tbody>

          <?php
          $query = "SELECT * FROM Rating";
          $result_tasks = mysqli_query($conn, $query);
          while($row = mysqli_fetch_assoc($result_tasks)) { ?>
          <tr>
            <td><?php echo $row['Rate']; ?></td>
            <td><?php echo $row['Bar']; ?></td>
            <td><?php echo $row['UserID']; ?></td>
            <td>
              <a href="edit.php?Rate=<?php echo $row['Rate']?>.Bar=<?php echo $row['Bar']?>.UserID=<?php echo $row['UserID']?>" class="btn btn-secondary">
                <i class="fas fa-marker"></i>
              </a>
              <a href="delete.php?Rate=<?php echo $row['Rate']?>.Bar=<?php echo $row['Bar']?>.UserID=<?php echo $row['UserID']?>" class="btn btn-danger">
                <i class="far fa-trash-alt"></i>
              </a>
            </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</main>

<?php include('includes/footer.php'); ?>
