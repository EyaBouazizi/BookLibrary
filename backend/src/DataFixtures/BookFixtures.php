<?php

namespace App\DataFixtures;

use App\Entity\Book;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class BookFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $books = [
            ['title' => 'The Prometheus', 'author' => 'Buckley Theodore Alois', 'publishedDate' => '1899-07-16'],
            ['title' => 'Parmenides', 'author' => 'Maguire Thomas', 'publishedDate' => '1882-07-11'],
            ['title' => 'Enneads', 'author' => 'Mackenna Stephen', 'publishedDate' => '1921-06-08'],
            ['title' => 'The Tempest', 'author' => 'Shakespeare William', 'publishedDate' => '1896-01-28'],
            ['title' => 'Hamlet', 'author' => 'Shakespeare William', 'publishedDate' => '1878-04-10'],
            ['title' => 'Meditations', 'author' => 'Descartes René', 'publishedDate' => '1901-10-18'],
            ['title' => 'Paradise Lost', 'author' => 'Milton John', 'publishedDate' => '1818-01-01'],
            ['title' => 'Discourses', 'author' => 'Rousseau Jean-Jacques', 'publishedDate' => '1761-09-21'],
            ['title' => 'Pride and Prejudice', 'author' => 'Austen Jane', 'publishedDate' => '1906-01-01'],
            ['title' => 'Adventures of Huckleberry Finn', 'author' => 'Twain Mark', 'publishedDate' => '1896-01-01'],
            ['title' => 'Faust', 'author' => 'Goethe Johann Wolfgang von', 'publishedDate' => '1890-10-16'],
            ['title' => 'Origin of Species', 'author' => 'Darwin Charles Hegel', 'publishedDate' => '1902-12-01'],
            ['title' => 'The New Atlantis', 'author' => 'Bacon Francis', 'publishedDate' => '1905-08-01'],
            ['title' => 'On Liberty', 'author' => 'Mill John Stuart', 'publishedDate' => '1912-09-30'],
            ['title' => 'Emma', 'author' => 'Austen Jane', 'publishedDate' => '1896-01-01'],
            ['title' => 'The beast in the jungle', 'author' => 'James Henry', 'publishedDate' => '1915-02-02'],
            ['title' => 'Life is a Dream', 'author' => 'Calderón de la Barca Pedro', 'publishedDate' => '1856-01-01'],
            ['title' => 'Utopia', 'author' => 'Robinson Ralph', 'publishedDate' => '1922-01-01'],
            ['title' => 'The Legend of Sleepy Hollow', 'author' => 'Irving Washington', 'publishedDate' => '1915-01-01'],
            ['title' => 'Notre Dame de Paris', 'author' => 'Hugo Victor', 'publishedDate' => '1902-01-01'],
        ];

        foreach ($books as $bookData) {
            $book = new Book();
            $book->setTitle($bookData['title']);
            $book->setAuthor($bookData['author']);
            $book->setPublishedDate(new \DateTime($bookData['publishedDate']));
            $manager->persist($book);
        }

        $manager->flush();
    }
}
