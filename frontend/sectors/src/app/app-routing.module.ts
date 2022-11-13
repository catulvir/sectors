import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { IndexComponent } from './index/index.component';

const routes: Routes = [
  {path: '', redirectTo: 'sectors', pathMatch: 'full'},

  {path: 'sectors', title: 'Register User', component: IndexComponent},

  {path: '**', redirectTo: 'sectors'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {onSameUrlNavigation: 'reload'})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
