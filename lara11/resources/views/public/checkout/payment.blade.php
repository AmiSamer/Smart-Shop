@extends('public.master')

@section('body')
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-lg-4">

                <form action="{{route('new-order')}}" method="post">
                    @csrf
                     <table class="table table-bordered">
                         <tr>
                             <td>Cash on delivery:</td>
                             <td><input type="radio" name="payment_type" value="cash"></td>
                         </tr>

                         <tr>
                             <td>Cash on card:</td>
                             <td><input type="radio" name="payment_type" value="card"></td>
                         </tr>

                         <tr>
                             <td>Stripe/Paypal:</td>
                             <td><input type="radio" name="payment_type" value="stripe"></td>
                         </tr>

                         <tr>
                             <td colspan="2"><input type="submit" name="btn" class="btn btn-warning" value="Confirmed order"></td>
                         </tr>
                     </table>
                </form>
            </div>
        </div>
    </div>
@endsection


