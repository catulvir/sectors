import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { SectorService } from 'src/service/sectors-service';
import { UserService } from 'src/service/user-service';
import { Sector } from '../model/sector';
import { User } from '../model/user';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  allSectors: Sector[] = [];

  form!: FormGroup;
  user?: User;
  isAddMode = true;
  errorMessage?: string;
  successMessage?: string;
  loading = false;
  disableMode = false;

  constructor(private userService: UserService, private sectorService: SectorService, private fb: FormBuilder, private route: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    this.getSectors();

    this.form = this.fb.group({
      name: ['', [Validators.required]],
      sectors: [[], [Validators.required]],
      agreeToTerms: [false, [Validators.required]]
    });
  }

  getSectors(): void {
    this.loading = true;
    this.sectorService.getSectors().subscribe({
      next: (sectors) => {
        this.allSectors = sectors;
      },
      error: (err) => {
        this.errorMessage = err;
        this.loading = false;
      },
      complete: () => {
        this.loading = false;
      }
    });
    this.loading = false;
  }

  onSubmit(): void {
    if (this.form.invalid) {
      return;
    }
    this.loading = true;
    this.isAddMode ? this.saveUser() : this.updateUser();
  }

  saveUser(): void {
    this.userService.saveUser(this.form.value).subscribe({
      next: (user) => {
        this.user = user;
        this.successMessage = user.name + ' was successfully added!';
      },
      error: (error) => {
        this.errorMessage = error?.error + ', status: ' + error?.status;
        this.loading = false;
      },
      complete: () => {
        this.loading = false;
        this.isAddMode = false;
      }
    });
  }

  updateUser(): void {
    this.userService.updateUser(Object.assign({ id: this.user?.id }, this.form.value)).subscribe({
      next: (user) => {
        this.user = user;
        this.successMessage = user.name + ' was successfully edited!';
      },
      error: (error) => {
        this.errorMessage = error?.error + ', status: ' + error?.status;
        this.loading = false;
      },
      complete: () => {
        this.loading = false;
      }
    });
  }

  get name() {
    return this.form.get('name');
  }

  get sectors() {
    return this.form.get('sectors');
  }

  get agreeToTerms() {
    return this.form.get('agreeToTerms');
  }
}
