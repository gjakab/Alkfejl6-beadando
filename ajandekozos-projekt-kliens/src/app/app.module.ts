import {BrowserModule} from '@angular/platform-browser';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {NgModule} from '@angular/core';
import {RouterModule} from '@angular/router'
import { HttpClientModule } from '@angular/common/http'; 
import {AppComponent} from './app.component';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {ConfirmationPopoverModule} from 'angular-confirmation-popover';
import { NgxPaginationModule } from 'ngx-pagination';

import { RoutingModule} from './modules/routing/routing.module';
import { UiModule} from "./modules/ui/ui.module";
import { LoginViewComponent } from './components/login-view/login-view.component';
import { RegisterViewComponent } from './components/register-view/register-view.component';
import { IndexViewComponent } from './components/index-view/index-view.component';
import { WishlistViewComponent } from './components/wishlist-view/wishlist-view.component';
import { PresentsViewComponent } from './components/presents-view/presents-view.component';
import { CommentsViewComponent } from './components/comments-view/comments-view.component';
import { AddwishlistViewComponent } from './components/wishlist-view/addwishlist-view/addwishlist-view.component';
import { AddpresentViewComponent } from './components/presents-view/addpresent-view/addpresent-view.component';
import { EditWishlistDialogComponent } from './components/wishlist-view/edit-wishlist-dialog/edit-wishlist-dialog.component';
import { AddFriendViewComponent } from './components/add-friend-view/add-friend-view.component';
import { EditPresentDialogComponent } from './components/presents-view/edit-present-dialog/edit-present-dialog.component';
import { BreadcrumbService } from './services/breadcrumb.service';
import { FriendViewComponent } from './components/friend-view/friend-view.component';
import { IncomingRequestsViewComponent } from './components/incoming-requests-view/incoming-requests-view.component';
import { AuthService } from './services/auth.service';
import { UsersViewComponent } from './components/admin/users-view/users-view.component';
import { FriendWishlistViewComponent } from './components/friend-wishlist-view/friend-wishlist-view.component';
import { FriendPresentsViewComponent } from './components/friend-presents-view/friend-presents-view.component';
import { SearchByNameViewComponent } from './components/search-by-name-view/search-by-name-view.component';
import { AddCommentViewComponent } from './components/comments-view/add-comment-view/add-comment-view.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginViewComponent,
    RegisterViewComponent,
    IndexViewComponent,
    WishlistViewComponent,
    PresentsViewComponent,
    CommentsViewComponent,
    AddwishlistViewComponent,
    AddpresentViewComponent,
    EditWishlistDialogComponent,
    AddFriendViewComponent,
    EditPresentDialogComponent,
    FriendViewComponent,
    IncomingRequestsViewComponent,
    UsersViewComponent,
    FriendWishlistViewComponent,
    FriendPresentsViewComponent,
    SearchByNameViewComponent,
    AddCommentViewComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    RoutingModule,
    BrowserAnimationsModule,
    UiModule,
    HttpClientModule,
    ConfirmationPopoverModule.forRoot({
      confirmButtonType: 'danger' // set defaults here
    }),
    NgxPaginationModule
  ],
  entryComponents: [
    EditWishlistDialogComponent,
    EditPresentDialogComponent
  ],
  providers: [BreadcrumbService, AuthService],
  bootstrap: [AppComponent]
})
export class AppModule {
}
