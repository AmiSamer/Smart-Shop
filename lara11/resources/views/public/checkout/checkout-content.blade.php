@extends('public.master')

@section('body')
<div class="container">
    <div class="row">
        <div class="col-lg-7">
            <h1 class="text-center">If You are not a member of our shop,please register here </h1>
        <form action="{{route('checkout-register')}}" method="post">
            @csrf
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="first_name" class="form-control">
            </div>

            <div class="form-group">
                <label>Last Name:</label>
                <input type="text" name="last_name" class="form-control">
            </div>

            <div class="form-group">
                <label>Email Address:</label>
                <input type="text" name="email_address" class="form-control">
            </div>

            <div class="form-group">
                <label>Phone Number:</label>
                <input type="text" name="phone_no" class="form-control">
            </div>

            <div class="form-group">
                <label>Address:</label>
                <input type="text" name="address" class="form-control">
            </div>

            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="password" class="form-control">
            </div>

           <div class="form-group">
               <button type="submit" name="btn" class="btn btn-success btn-lg">Register</button>
           </div>
        </form>
        </div>

        <div class="col-lg-5">
            <h1 class="text-center">Already a member? please login here </h1>

            <form action="{{route('checkout-login')}}" method="post">
                @csrf
                <div class="form-group">
                    <label>Email Address:</label>
                    <input type="text" name="email_address" class="form-control">
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" name="password" class="form-control">
                    <small class="text-danger">{{Session::get('message')}}</small>
                </div>
                <div class="form-group">
                    <button type="submit" name="btn" class="btn btn-primary btn-lg">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
