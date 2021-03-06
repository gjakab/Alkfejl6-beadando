package hu.elte.alkfejl.ajandekozosprojekt.service;

import hu.elte.alkfejl.ajandekozosprojekt.model.User;
import hu.elte.alkfejl.ajandekozosprojekt.model.WishList;
import hu.elte.alkfejl.ajandekozosprojekt.repository.WishListRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.Iterator;

@Service
@SessionScope
public class WishListService {

    @Autowired
    private WishListRepository wishListRepository;

    public Iterable<WishList> listByUser(User user) {
        return wishListRepository.findAllByUser(user);
    }

    public Iterable<WishList> findAllByUserId(int userId) {
        return wishListRepository.findAllByUserId(userId);
    }

    public WishList create(WishList list, User user) {
        list.setUser(user);
        return wishListRepository.save(list);
    }

    public WishList update(int id, WishList wishList) {
        WishList currentWishList = wishListRepository.findOne(id);
        currentWishList.setTitle(wishList.getTitle());

        return wishListRepository.save(currentWishList);
    }

    public void delete(int id) {
        wishListRepository.delete(id);
    }

}
