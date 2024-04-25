<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Carbon\Carbon;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    /**
     * return posts reverse cron by id
     */
    public function index(Request $request)
    {
        $limit = 2;

        $pageNumber = $request->get('page') ?? 1;
        $offset = $limit * ($pageNumber - 1);

        $messages = Post::orderBy("post_id", 'desc')->take($limit)->skip($offset)->get();

        $returnData = [];
        foreach ($messages as $message) {

            $publishDate = Carbon::parse($message->created_at);
            $returnData[] = [
                'id' => $message->post_id,
                'headline' => $message->headline,
                'date' => $publishDate->format("M d, Y"),
                'byline' => $message->author->name,
                'content' => $message->content,
            ];
        }

        return response()
            ->json($returnData);
    }
}
