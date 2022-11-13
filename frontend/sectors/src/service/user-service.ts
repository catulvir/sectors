import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import environment from '../../config/environment.json';
import { User } from 'src/app/model/user';

@Injectable({
    providedIn: 'root'
})
export class UserService {

    constructor(private http: HttpClient) {
    }

    saveUser(user: User): Observable<User> {
        return this.http.post<User>(environment.backendUrl + 'users', user).pipe(
            catchError((err) => {
                return throwError(() => err.error);
            })
        );
    }

    updateUser(user: User): Observable<User> {
        return this.http.put<User>(environment.backendUrl + 'users', user).pipe(
            catchError((err) => {
                return throwError(() => err);
            })
        );
    }
}