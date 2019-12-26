<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use DB;
class CategoryController extends Controller
{
    public function index()
    {
        return view('admin.category.add-category');
    }

    public function saveCategory(Request $request)
    {
//        Category::create($request->all());
//        return 'Success';

//          DB::table('categories')->insert([
//              'cat_name'=> $request->cat_name,
//              'cat_desc'=> $request->cat_desc,
//              'cat_image'=> $request->cat_image,
//              'status'=> $request->status
//          ]);
//          return 'success';

        //oporer DB technique use koreo category add kora jabe.
        // ei technique ke query builder bole.
        // ei khetre 'model' use hoy na. but eita te problem ase...
        //image temporary vabe save hoy and insert er timing ta show kore na


        $categoryImage = $request->file('cat_image'); //form er cat_image theke request nicche
        $imageName = $categoryImage->getClientOriginalName(); //je image ta select korsi tar original name nibe
        $directory ='public/admin/category-images/'; //kothay save hobe seitar path thik kore dicchi
        $imageUrl = $directory.$imageName; //path & image er naam eksathe concat kore dicchi
        $categoryImage->move($directory, $imageName); //directory & image er naam ke nirdisto folder a move koracchi



        $category=new Category();
        $category->cat_name = $request->cat_name; //ei vabeo category add kora jay
        $category->cat_desc = $request->cat_desc; //first part ta holo database er table tar field er naam
        $category->cat_image = $imageUrl; //kono request na..direct variable ta nibo.
        $category->status = $request->status; //second part ta holo webpage er form er field er naam
        $category->save(); // DB technique tay insert use hoy, & ei technique a save(); use hoy

        return redirect('/category')->with('message','category added successfully') ;
        //add category page a message ta show korbe
        //add-category.blade.php page a container fluid er vitor session er maddhome 'get'method diye message dhora hoise

    }

    public function manageCategory()
    {
        $categories=Category::all();
        return view('admin.category.manage-category',['categories'=>$categories]);
    }

    public function publishedCategory($id)
    {
      $category=Category::find($id);
      $category->status=0;
      $category->save();

      return redirect('/category/manage');
    }

    public function unpublishedCategory($id)
    {
        $category=Category::find($id);
        $category->status=1;
        $category->save();

        return redirect('/category/manage');
    }

//    public function editCategory($id)
//    {
//      $category= Category::find($id);
//     return view('admin.category.manage-category',['category'=>$category]);
//    }
//that means, $id gula find kore $category te rakhchi, then manage-category blade file tay 'category'
    //diye pathiye dicchi


    public function updateCategory(Request $request)
    {
         $category= Category::find($request->id);
        $categoryImage = $request->file('cat_image');

        if ($categoryImage)
        {
           unlink($category->cat_image);
            $imageName = $categoryImage->getClientOriginalName();
            $directory ='public/admin/category-images/';
            $imageUrl = $directory.$imageName;
            $categoryImage->move($directory, $imageName);



            $category->cat_name = $request->cat_name;
            $category->cat_desc = $request->cat_desc;
            $category->cat_image = $imageUrl;
            $category->save();
        }
        else
        {
            $category->cat_name = $request->cat_name;
            $category->cat_desc = $request->cat_desc;
            $category->save();
        }

         return redirect('/category/manage')->with('message','Category updated successfully');
    }

    public function deleteCategory($id)
    {
      $category= Category::find($id);
      $category->delete();

        return redirect('/category/manage')->with('message','Category deleted successfully');

    }


}
