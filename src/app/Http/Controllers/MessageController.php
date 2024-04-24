<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MessageController extends Controller
{
    public function index(Request $request)
    {
        $messages = [
            [
                "content" => "## Big News
### Joe Schmoe
#### _April 1 2024_

Lorem ipsum dolor sit amet, consectetur adipiscing elit. [click here](https://google.com) Nulla in facilisis nulla. Cras eleifend eleifend semper. Ut ultrices at risus vitae malesuada. Aliquam augue lorem, faucibus id consectetur tristique, accumsan vitae urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur rhoncus, leo vel sollicitudin hendrerit, mi ligula molestie turpis, at pulvinar quam erat sed urna. Suspendisse dictum eros pretium lacinia vehicula."
            ],
            [
                "content" => "## Warning for our Users
### Jane Doe
#### _March 15 2024_

Donec vulputate eget sapien ut mollis. Aliquam ex nisi, fringilla vitae dolor in, venenatis pellentesque diam. Integer ac pharetra lorem. Vivamus cursus id lacus eget auctor. Nunc sit amet urna scelerisque, pretium ligula eu, vulputate dolor. Quisque interdum ligula sit amet sem venenatis rhoncus. Morbi non turpis euismod, maximus dui a, suscipit nisi. Cras tincidunt egestas mi sit amet fringilla. Vivamus vitae ex eu lectus ultrices iaculis nec eget lacus. Aliquam nec dui vel magna lacinia fermentum. Nulla ut viverra lectus. Ut nec turpis sit amet sapien pulvinar fermentum ut nec odio. Proin felis arcu, scelerisque quis pulvinar vitae, finibus maximus neque. Quisque facilisis rhoncus quam, ac semper nisi gravida non."
            ],
            [
                "content" => "## 2025 Event Dates
### Hap Happablap
#### _March 1 2024_

Phasellus blandit, libero eget varius viverra, **neque tortor dapibus leo**, et hendrerit sem nisi at lectus. Quisque nisi diam, interdum vitae cursus quis, finibus at lectus. Donec non interdum diam. Donec ac augue eu mi vestibulum varius vitae vel elit. In hac habitasse platea dictumst. Sed odio sem, ornare in eros vitae, ultrices ullamcorper massa. Quisque euismod ante ac purus rhoncus malesuada. Nulla interdum mattis aliquam."
            ],
            [
                "content" => "## Reminder: Fill in your TPS Reports
### Alice Acme
#### _February 15 2024_

Nulla vel mattis justo. Praesent lacinia ultricies felis at egestas. [Check us out on social media!](https://facebook.com) Aenean venenatis purus sed leo semper, non gravida nibh auctor. Sed blandit semper est ut imperdiet. Curabitur blandit nisi quis enim aliquet, vel tempor lectus volutpat. Aenean eleifend, lectus eget volutpat faucibus, velit nisl sagittis tellus, ac maximus nisi nulla quis est. Suspendisse sed fringilla lorem. Sed ex mauris, finibus ac odio non, tempor pellentesque nisi. Sed id elit eu metus porttitor tempus vel quis leo. Cras varius arcu congue faucibus dapibus. Ut non malesuada arcu. Etiam interdum rhoncus ex, malesuada congue velit placerat sed."
            ],
            [
                "content" => "## Company Update
### Bob Robertson
#### _February 1 2024_
Sed eu iaculis felis. Quisque molestie quam nec gravida ultricies. Nullam non tortor hendrerit lectus volutpat ultrices ac quis purus. Maecenas molestie facilisis mi luctus condimentum. Nunc et erat mauris. Fusce id nibh vel purus semper elementum. Nunc facilisis quis tellus tristique scelerisque. Suspendisse quis venenatis dui, nec dapibus dui. Suspendisse felis purus, rutrum id commodo non, finibus non augue. In hac habitasse platea dictumst. Nam vehicula, lectus non ultrices auctor, nisl erat tincidunt felis, et posuere felis tellus at odio. Mauris leo lectus, cursus vel metus a, aliquam condimentum mauris. In tellus sem, ultrices sed finibus a, laoreet id purus."
            ]
        ];

        shuffle($messages);
        $returnData = array_slice($messages, 0, 2);

        return response()
            ->json($returnData);
    }
}
