@extends('admin.master')

@section('body')
    <div class="container-fluid">

        @if(Session::get('message'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>{{Session::get('message')}}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
        <h1>View category</h1>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Serial</th>
                <th scope="col">Name</th>
                <th scope="col">Description</th>
                <th scope="col">Image</th>
                <th scope="col">Publication status</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            @php($i=1)
            @foreach($categories as $category)
            <tr>
                <th scope="row">{{$i++}}</th>
                <td>{{$category->cat_name}}</td>
                <td>{{$category->cat_desc}}</td>
                <td><img src="{{asset($category->cat_image)}}" alt="" class="img-fluid img-thumbnail" width="100px" ></td>
                <td>{{$category->status==1?'Published':'Unpublished'}}</td>
                <td><!-- Button trigger modal -->
                    @if($category->status==1)
                    <a href="{{route('published-category',['id'=>$category->id])}}" type="button" class="btn btn-info">
                        <i class="fas fa-arrow-up"></i>
                    </a>
                    @else
                    <a href="{{route('unpublished-category',['id'=>$category->id])}}" type="button" class="btn btn-warning">
                        <i class="fas fa-arrow-down"></i>
                    </a>
                    @endif
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit{{$category->id}}">
                        <i class="fas fa-edit"></i>
                    </button>

                    <a href="{{route('delete-category',['id'=>$category->id])}}" type="button" class="btn btn-danger">
                        <i class="fas fa-trash"></i>
                    </a>

                    <!-- Modal -->
                    </td>
            </tr>

            <div class="modal fade" id="edit{{$category->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Update Category</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('update-category')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Category Name</label>
                                    <input type="text" class="form-control" name="cat_name" value="{{$category->cat_name}}">
                                    <input type="hidden" class="form-control" name="id" value="{{$category->id}}">
                                </div>
                                <div class="form-group">
                                    <label>Category Description</label>
                                    <textarea class="form-control" name="cat_desc">{{$category->cat_desc}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <h5>Previous Image</h5>
                                    <img src="{{asset($category->cat_image)}}" alt="" width="200px" height="200px" >
                                    <br><br>
                                    <input type="file" class="form-control-file" name="cat_image">
                                </div>
                                <input type="submit" name="btn" class="btn btn-primary" value="update">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
           @endforeach
            </tbody>
        </table>
    </div>



@endsection
