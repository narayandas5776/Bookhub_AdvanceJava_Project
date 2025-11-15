// Narayan Das
package com.bookhub.dao;

import com.bookhub.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Integer> {
    
}