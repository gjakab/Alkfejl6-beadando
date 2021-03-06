package hu.elte.alkfejl.ajandekozosprojekt.controller;

import hu.elte.alkfejl.ajandekozosprojekt.ResourceConstants;
import hu.elte.alkfejl.ajandekozosprojekt.model.dto.FriendRequestDTO;
import hu.elte.alkfejl.ajandekozosprojekt.model.dto.UserDTO;
import hu.elte.alkfejl.ajandekozosprojekt.service.FriendRequestService;
import hu.elte.alkfejl.ajandekozosprojekt.service.UserService;
import hu.elte.alkfejl.ajandekozosprojekt.service.annotations.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static hu.elte.alkfejl.ajandekozosprojekt.model.User.Role.USER;

@RestController
public class FriendRequestController {

    private FriendRequestService friendRequestService;

    private UserService userService;

    @Autowired
    public FriendRequestController(FriendRequestService friendRequestService, UserService userService) {
        this.friendRequestService = friendRequestService;
        this.userService = userService;
    }

    @Role(USER)
    @GetMapping(ResourceConstants.FRIEND_REQUESTS)
    public ResponseEntity<List<FriendRequestDTO>> listRequests() {
        List<FriendRequestDTO> friendRequests = friendRequestService.findAllByRequesteeId(userService.getUser().getId());
        return ResponseEntity.ok(friendRequests);
    }

    @Role(USER)
    @DeleteMapping(ResourceConstants.FRIEND_REQUESTID)
    public ResponseEntity processRequest(@PathVariable int friendRequestId, @RequestParam int status) {
        friendRequestService.process(friendRequestId, status);
        return ResponseEntity.ok().build();
    }

    @Role(USER)
    @GetMapping(ResourceConstants.CREATE_FRIENDREQUEST)
    public ResponseEntity<List<UserDTO>> listPossibleFriends(@RequestParam(name = "firstname") String firstName, @RequestParam(name = "lastname") String lastName) {
        List<UserDTO> searchedUsers = userService.findPossibleFriends(firstName, lastName);
        return ResponseEntity.ok(searchedUsers);
    }


    @Role(USER)
    @PostMapping(ResourceConstants.CREATE_FRIENDREQUEST)
    public ResponseEntity<FriendRequestDTO> createFriendRequest(@RequestBody int requesteeId) {
        FriendRequestDTO saved = friendRequestService.create(requesteeId, userService.getUser());
        return ResponseEntity.ok(saved);
    }


}
