<?php
namespace App\Exceptions;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

trait ExceptionTrait
{
    public function apiException($request, $e)
    {
        if($this->isModel($e))
        {
            return $this->ModelResponse($e);
        }

        if($this->isHTTP($e))
        {
            return $this->HttpResponse($e);
        }

        return parent::render($request, $e);
    }

    protected function isModel($e)
    {
        return $e instanceof ModelNotFoundException;
    }

    protected function isHTTP($e)
    {
        return $e instanceof NotFoundHttpException;
    }

    protected function ModelResponse($e)
    {
        return response([
            'errors' => "Model Not Found"
        ], 404);
    }

    protected function HttpResponse($e)
    {
        return response([
            'errors' => "Route Not Found"
        ], 404);
    }
}
