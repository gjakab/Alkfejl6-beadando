package hu.elte.alkfejl.ajandekozosprojekt.repository;


import hu.elte.alkfejl.ajandekozosprojekt.model.Present;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PresentRepository extends CrudRepository<Present, Integer> {

    List<Present> findAllByWishListId(int listId);

    List<Present> findAllByWishListIdAndHiddenFalse(int listId);
}
