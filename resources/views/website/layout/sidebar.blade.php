@php
  $category = DB::table('categories')->get();
@endphp
<div class="catagory-sidebar-area">
    <div class="catagory-sidebar-area-inner">
        <div class="catagory-sidebar all-catagory-option">
            <ul class="catagory-submenu">
                @foreach ($category as $value)

                  @php
                    $subcategory = DB::table('subcategories')->where('category_id',$value->id)->get();
                  @endphp

                <li><a  data-toggle="collapse" href="#catagory-widget{{ $value->id }}" role="button" aria-expanded="false" aria-controls="catagory-widget2">{{ $value->category_name }}<i class="fas fa-angle-down"></i></a>
                    <ul class="catagory-submenu collapse" id="catagory-widget{{ $value->id }}">
                      @foreach ($subcategory as $value)
                        <li><a href="{{ url('/product/category/'.$value->id.'/'.$value->subcategory_name) }}">{{ $value->subcategory_name }}</a></li>
                      @endforeach
                    </ul>
                </li>
              @endforeach
            </ul>
        </div>
    </div>
</div>
