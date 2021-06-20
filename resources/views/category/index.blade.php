<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @foreach($data as $cate)
                <tr>
                    <td>{{$cate->id}}</td>
                    <td>{{$cate->name_category}}</td>
                    <td>
                        <a href="../../../app/Http/Controllers/CategoryController.php" class='btn btn-primary btn-sm'>View</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        
        </table>
        <hr>
        {{$data->links('pagination::bootstrap-4')}}
    </div>
</body>
</html>