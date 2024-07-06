<?php

namespace App\Controller;

use App\Repository\BookRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class ApiBookController extends AbstractController
{
    #[Route('/api/books', name: 'api_books_list', methods: ['GET'])]
    public function listBooks(Request $request, BookRepository $bookRepository): JsonResponse
    {
        $term = $request->query->get('term', '');
        $page = (int) $request->query->get('page', 1);
        $limit = (int) $request->query->get('limit', 10);

        $offset = ($page - 1) * $limit;
        $books = $bookRepository->findByTerm($term, $limit, $offset);

        return $this->json($books);
    }
}
