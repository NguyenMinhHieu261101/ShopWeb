<?php
namespace Modules\Admin\Http\Controllers;
use App\Http\Requests\RequestCategory;
use App\Http\Requests\Request;
use App\Models\Models\Category;
use Illuminate\Routing\Controller;


class AdminCategoryController extends Controller
{
    public function index()
    {
        $category = Category::select('id', 'c_name', 'c_title_seo', 'c_active')->get();
        $viewData = [
            'category' => $category
        ];
        return view('admin::category.index', $viewData);
    }

    public function create()
    {
        return view('admin::category.create');
    }

    public function store(RequestCategory $requestCategory)
    {
        $this->insertOrUpdate($requestCategory);
        return redirect()->back();
    }

    public function edit($id)
    {
        $category = Category::find($id);
        return view('admin::category.update', compact('category'));
    }

    public function update(RequestCategory $requestCategory, $id)
    {
        $this->insertOrUpdate($requestCategory, $id);
        return redirect()->back();
    }

    

    public function insertOrUpdate($requestCategory, $id = '')
    {
        $code = 1;
        try {
            $category = new Category();
            if ($id) {
                $category = Category::find($id);
            }
            $category->c_name = $requestCategory->name;
            $category->c_slug = str_slug($requestCategory->name);
            $category->c_icon = str_slug($requestCategory->icon);
            $category->c_title_seo = $requestCategory->c_title_seo ? $requestCategory->c_title_seo : $requestCategory->name;
            $category->c_description_seo = $requestCategory->c_description_seo;
            $category->save();
        } catch (\Exception $exeception) {
            $code = 0;
            Log::error("[Error ]" . $exeception->getMessage());
        }
        return $code;
    }

    public function action($action, $id)
    {
        if ($action) 
        {
            $category = Category::find($id);
            switch ($action) 
            {
                case 'delete':
                    $category->delete();
                    break;
                
                    case 'active':
                        $category->c_active = $category->c_active ? 0: 1;
                        break;
            }
            $category->save();
        }
        return redirect()->back();
    }
}
