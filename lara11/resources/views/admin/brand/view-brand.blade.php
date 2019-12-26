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
        <h1>View Brand</h1>
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
            @foreach($brands as $brand)
                <tr>
                    <th scope="row">{{$i++}}</th>
                    <td>{{$brand->brand_name}}</td>
                    <td>{{$brand->brand_description}}</td>
                    <td><img src="{{asset($brand->brand_image)}}" alt="" class="img-fluid img-thumbnail" width="100px" ></td>
                    <td>{{$brand->status==1?'Published':'Unpublished'}}</td>
                    <td><!-- Button trigger modal -->
                        @if($brand->status==1)
                            <a href="{{route('published-brand',['id'=>$brand->id])}}" type="button" class="btn btn-info">
                                <i class="fas fa-arrow-up"></i>
                            </a>
                        @else
                            <a href="{{route('unpublished-brand',['id'=>$brand->id])}}" type="button" class="btn btn-warning">
                                <i class="fas fa-arrow-down"></i>
                            </a>
                        @endif
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit{{$brand->id}}">
                            <i class="fas fa-edit"></i>
                        </button>

                        <a href="{{route('delete-brand',['id'=>$brand->id])}}" type="button" class="btn btn-danger">
                            <i class="fas fa-trash"></i>
                        </a>

                        <!-- Modal -->
                    </td>
                </tr>

                <div class="modal fade" id="edit{{$brand->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Update Brand</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="{{route('update-brand')}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label>Brand Name</label>
                                        <input type="text" class="form-control" name="brand_name" value="{{$brand->brand_name}}">
                                        <input type="hidden" class="form-control" name="id" value="{{$brand->id}}">
                                    </div>
                                    <div class="form-group">
                                        <label>Brand Description</label>
                                        <textarea class="form-control" name="brand_description">{{$brand->brand_description}}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Image</label>
                                        <h5>Previous Image</h5>
                                        <img src="{{asset($brand->brand_image)}}" alt="" width="200px" height="200px" >
                                        <br><br>
                                        <input type="file" class="form-control-file" name="brand_image">
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

