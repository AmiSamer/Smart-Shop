<?php

namespace App\Http\Controllers;

use App\Brand;
use Image;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
       return view('admin.brand.add-brand');
    }

    public function newBrand(Request $request)
    {
      $this->validate($request,[
          'brand_name'=>'required',
          'brand_description'=>'required',
          'brand_image'=>'required|image',
          'status'=>'required'
      ]);

        $brandImage = $request->file('brand_image');
        $ext='.'.$request->brand_image->getClientOriginalExtension();
        $imageName = str_replace($ext,date('d-m-y').$ext,$request->brand_image->getClientOriginalName());
        $directory ='public/admin/brand-images/';
        $imageUrl = $directory.$imageName;
//        $brandImage->move($directory, $imageName);
        Image::make($brandImage)->resize(300,300)->save($imageUrl);

        $brand =new Brand();
        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->brand_image = $imageUrl;
        $brand->status = $request->status;
        $brand->save();

        return redirect('/brand')->with('message','Brand addedd successfully');
    }

    public function viewBrand()
    {
       $brands=Brand::all();
       return view('admin.brand.view-brand',['brands'=>$brands]);
    }

    public function publishedBrand($id)
    {
        $brand=Brand::find($id);
        $brand->status=0;
        $brand->save();

        return redirect('/brand/view');
    }

    public function unpublishedBrand($id)
    {
        $brand=Brand::find($id);
        $brand->status=1;
        $brand->save();

        return redirect('/brand/view');
    }

    public function updateBrand(Request $request)
    {
        $brand= Brand::find($request->id);
        $brandImage = $request->file('brand_image');

        if ($brandImage)
        {
        unlink($brand->brand_image);
        $imageName = $brandImage->getClientOriginalName();
        $directory ='public/admin/brand-images/';
        $imageUrl = $directory.$imageName;
        $brandImage->move($directory, $imageName);



        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->brand_image = $imageUrl;
        $brand->save();
    }
else
{
$brand->brand_name = $request->brand_name;
$brand->brand_description = $request->brand_description;
$brand->save();
}

return redirect('/brand/view')->with('message','Brand updated successfully');
    }


    public function deleteBrand($id)
    {
        $brand= Brand::find($id);
        $brand->delete();

        return redirect('/brand/view')->with('message','Brand deleted successfully');
    }
}
