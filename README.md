uuid_shortner
=============

shorten a uuid to a shorter representation and back


I include it in rails controllers to convert uuids to short ones for UI representation and stretch them to standard uuid for use in the backend.

```ruby
class ProductController < ActionController::Base
    include UuidShortner::GuidDecoder
    include UuidShortner::GuidEncoder

    def create
      #Backend
      uuid = create_product

      redirect_to "/product/compress(uuid)"
    end

    def index
      product = get_product stretch(params[short_product_uuid])
    end
end
```
