import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import { api } from '../config/api';
import { Present } from '../model/present';

@Injectable()
export class PresentService {

  constructor(
    private httpClient: HttpClient
  ) {}

  public getPresents(listId: number): Observable<Present[]> {
    return this.httpClient.get<Present[]>(api + 'wishlists/' + listId + '/presents');
  }

  // listId kiszedése a present objektumból?
  public addPresent(listId: number, present: Present): Observable<Present> {
    return this.httpClient.post<Present>(api + 'wishlists/' + listId + '/presents', present);
  }

  public deletePresent(listId: number, presentId: number): Observable<any> {
    return this.httpClient.delete(api + 'wishlists/' + listId + '/presents/' + presentId);
  }

  public updatePresent(listId: number, present: Present): Observable<Present> {
    return this.httpClient.patch<Present>(api + 'wishlists/' + listId + '/presents/' + present.getId(), present);
  }

  public readPresent(listId: number, presentId: number): Observable<Present> {
    return this.httpClient.get<Present>(api + 'wishlists/' + listId + '/presents/' + presentId);
  }

  public listPresentsOfFriendsOrUsersList(friendId: number, friendListId: number): Observable<Present[]> {
    return this.httpClient.get<Present[]>(api + 'friends/' + friendId + '/wishlists/' + friendListId + '/presents');
  }

  public addNewPresentForFriendOrUser(friendId: number, friendListId: number, present: Present): Observable<Present> {
    return this.httpClient.post<Present>(api + 'friends/' + friendId + '/wishlists/' + friendListId + '/presents', present);
  }

  public readFriendPresent(friendId: number, friendListId: number, presentId: number): Observable<Present> {
    return this.httpClient.get<Present>(api + 'friends/' + friendId + '/wishlists/' + friendListId + '/presents/' + presentId);
  }

  public updateFriendOrUserPresent(friendId: number, friendListId: number, present: Present): Observable<Present> {
    return this.httpClient.patch<Present>(api + 'friends/' + friendId + '/wishlists/' + friendListId + '/presents/' + present.getId(), present);
  }

  public deleteUserPresent(friendId: number, listId: number, userListId: number): Observable<any> {
    return this.httpClient.delete(api + 'friends/' + friendId + '/wishlists/' + listId + '/presents/' + userListId);
  }


}