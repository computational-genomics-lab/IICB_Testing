import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { User } from "../_models";
import { ConfigService } from "../config/config.service";

// as soon as the user logs in, this component will hit a SECURED API ENDPOINT
// SECURE API ENDPOINT: The requests must have a jwt token in its Authorization Header

@Injectable({providedIn: 'root'})
export class UserService{
    constructor(private http: HttpClient, private config: ConfigService){}

    // get all the users details from the backend
    getAll(){
        return this.http.get<User[]>(`${this.config.getapiBaseUrl}/users`);
    }
}