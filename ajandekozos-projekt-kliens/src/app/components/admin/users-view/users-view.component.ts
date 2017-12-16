import { Component, OnInit } from '@angular/core';
import {MatSnackBar} from '@angular/material';

import { UserDTO } from '../../../model/userdto';
import { AdminService } from '../../../services/admin.service';

@Component({
  selector: 'app-users-view',
  templateUrl: './users-view.component.html',
  styleUrls: ['./users-view.component.css'],
  providers: [AdminService]
})
export class UsersViewComponent implements OnInit {
  private users: UserDTO[];
  private error: string;

  constructor(
    private adminService: AdminService,
    public snackBar: MatSnackBar
  ) {}

  public confirm(user: UserDTO): string {
    return "Delete user: " + user.firstname + " " + user.lastname + "?";
  }

  public deleteUser(user: UserDTO): void {
      this.adminService.deleteUser(user.id).subscribe(() => {
        var index = this.users.indexOf(user);
        this.users.splice(index, 1);  
      });
  
      this.snackBar.open('User: ' + user.firstname + ' ' + user.lastname + 'was deleted', 'Dismiss', {
        duration: 3000
      });
  }

  public searchUsers(showall: boolean = false, firstname: string = "", lastname: string = ""): void {
    if ( !firstname.trim() && !lastname.trim() && !showall ) {
      this.error = "Please enter something!";
    } else {
      this.error = "";
      this.adminService.getUsers(firstname, lastname).subscribe((filteredUsers: UserDTO[]) => {
        this.users = filteredUsers;
      });
    }
  }

  ngOnInit() {
  }

}
