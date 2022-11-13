import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import environment from '../../config/environment.json';
import { Sector } from 'src/app/model/sector';

@Injectable({
    providedIn: 'root'
})
export class SectorService {

    constructor(private http: HttpClient) {
    }

    getSectors(): Observable<Sector[]> {
        return this.http.get<Sector[]>(environment.backendUrl + 'sectors').pipe(
            catchError((err) => {
                return throwError(() => err);
            })
        );
    }
}