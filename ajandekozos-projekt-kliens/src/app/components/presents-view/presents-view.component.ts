import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { Location } from '@angular/common';
import { MatDialog, MatDialogRef } from '@angular/material';
import { filter } from 'rxjs/operators';

import { User } from '../../model/user';
import { Present } from '../../model/present';
import { PresentService } from '../../services/present.service';
import { EditPresentDialogComponent } from './edit-present-dialog/edit-present-dialog.component';
import { BreadcrumbService } from '../../services/breadcrumb.service';

@Component({
  selector: 'app-presents-view',
  templateUrl: './presents-view.component.html',
  styleUrls: ['./presents-view.component.css'],
  providers: [PresentService]
})

export class PresentsViewComponent implements OnInit {
  private presents: Present[];
  public listId: number;
  private editPresentDialogRef: MatDialogRef<EditPresentDialogComponent>;
  private isDialogOpen: boolean;

  constructor(
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private presentService: PresentService,
    private breadCrumbService: BreadcrumbService,
    private location: Location,
    private dialog: MatDialog
  ) {} 
  
  public goToUrl(url: string): void {
    if (!/^http[s]?:\/\//.test(url)) {
      url = 'http://' + url;
    }
    window.open(url, "_blank");
  }

  public openEditPresentDialog(present: Present): void {
    if (!this.isDialogOpen) {
      this.editPresentDialogRef = this.dialog.open(EditPresentDialogComponent, {
        data: {
          name: present ? present.name : '',
          price: present ? present.price: '',
          link: present.link? present.link: '',
        }
      });
      this.isDialogOpen = true;
    }

    this.editPresentDialogRef.afterClosed().pipe(
      filter(result => result && result.name.trim() && result.price > 0))
      .subscribe(result => {
        present.name = result.name;
        present.price = result.price;
        present.link = (result.link.trim().length === 0) ? null : result.link;
        this.presentService.updatePresent(this.listId, present).subscribe((updatedPresent) => {
        });
    });
    this.isDialogOpen = false;
  }

  public addPresent(present: Present): void {
    this.presentService.addPresent(this.listId, present).subscribe((newPresent) => {
      this.presents.push(newPresent);
    });
  }

  public removePresent(present: Present): void {  
    this.presentService.deletePresent(this.listId, present.id).subscribe(() => {
      var index = this.presents.indexOf(present);
      this.presents.splice(index, 1);   
    })
  }

  ngOnInit() {
    this.listId = parseInt(this.activatedRoute.snapshot.paramMap.get('listId'));
    this.presentService.getPresents(this.listId).subscribe((presents: Present[]) => {
      this.presents = presents;
    });
  }
    
}
