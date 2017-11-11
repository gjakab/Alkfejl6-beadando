package hu.elte.alkfejl.ajandekozosprojekt.controller;

import hu.elte.alkfejl.ajandekozosprojekt.ResourceConstants;
import hu.elte.alkfejl.ajandekozosprojekt.model.FriendRequest;
import hu.elte.alkfejl.ajandekozosprojekt.model.User;
import hu.elte.alkfejl.ajandekozosprojekt.service.FriendRequestService;
import hu.elte.alkfejl.ajandekozosprojekt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(ResourceConstants.FRIEND_REQUESTS)
public class FriendRequestController {

    private FriendRequestService friendRequestService;

    private UserService userService;

    @Autowired
    public FriendRequestController(FriendRequestService friendRequestService, UserService userService) {
        this.friendRequestService = friendRequestService;
        this.userService = userService;
    }

    @GetMapping("")
    public ResponseEntity<Iterable<FriendRequest>> listRequests() {
        Iterable<FriendRequest> friendRequests = friendRequestService.findAllByRequesteeId(userService.getUser().getId());
        return ResponseEntity.ok(friendRequests);
    }

    @DeleteMapping("/{friendRequestId}")
    public ResponseEntity declineRequest(@PathVariable int friendRequestId) {
        friendRequestService.delete(friendRequestId);
        return ResponseEntity.ok().build();
    }

    // TODO itt is kitörlöm az adatbázisból, szóval PatchMapping az biztos, hogy jó?
    @PatchMapping("/{friendRequestId}")
    public ResponseEntity acceptRequest(@PathVariable int friendRequestId, @RequestBody FriendRequest friendRequest) {
        friendRequestService.accept(friendRequestId, friendRequest);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/{friendRequestId}")
    public ResponseEntity<FriendRequest> findRequest(@PathVariable int friendRequestId) {
        FriendRequest found = friendRequestService.findById(friendRequestId);
        return ResponseEntity.ok(found);
    }

    @GetMapping("/search")
    public ResponseEntity<List<User>> searchUsers(@RequestParam String firstName, @RequestParam String lastName) {
        List<User> searchedUsers = userService.findPossibleFriends(firstName, lastName);
        return ResponseEntity.ok(searchedUsers);
    }

    @PostMapping("/search/{requesteeId}")
    public ResponseEntity<FriendRequest> createFriendRequest(@PathVariable int requesteeId) {
        FriendRequest saved = friendRequestService.create(requesteeId, userService.getUser());
        return ResponseEntity.ok(saved);
    }

}
