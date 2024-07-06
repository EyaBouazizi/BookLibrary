import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import './BookList.css';

const BookList = () => {
    const [books, setBooks] = useState([]);
    const [searchTerm, setSearchTerm] = useState('');
    const [page, setPage] = useState(1);
    const [loading, setLoading] = useState(false);

    const fetchBooks = useCallback(async () => {
        setLoading(true);
        try {
            const response = await axios.get('http://localhost:8000/api/books', {
                params: {
                    term: searchTerm,
                    page: page,
                    limit: 10
                }
            });
            setBooks(prevBooks => {
                if (page === 1) return response.data;  
                return [...prevBooks, ...response.data]; 
            });
        } catch (error) {
            console.error('Error fetching books:', error);
        }
        setLoading(false);
    }, [searchTerm, page]);

    useEffect(() => {
        fetchBooks();
    }, [fetchBooks]);

    const handleSearch = (e) => {
        setSearchTerm(e.target.value);
        setBooks([]);
        setPage(1);
    };

    const loadMoreBooks = () => {
        setPage(prevPage => prevPage + 1);
    };

    return (
        <div className="book-list">
            <input
                type="text"
                placeholder="Search for a book by title or author"
                value={searchTerm}
                onChange={handleSearch}
            />
            <ul>
                {books.map((book, index) => (
                    <li key={index}>
                        <h3>{book.title}</h3>
                        <p>{book.author}</p>
                        <p>{new Date(book.publishedDate).toLocaleDateString()}</p>
                    </li>
                ))}
            </ul>
            {loading && <p>Loading...</p>}
            {!loading && books.length % 10 === 0 && <button onClick={loadMoreBooks}>
                Next
            </button>}
        </div>
    );
};

export default BookList;
