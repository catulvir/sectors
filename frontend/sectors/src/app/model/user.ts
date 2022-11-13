import { Sector } from "./sector";

export class User {
    
    id?: number;
    sectors?: Sector[];
    name?: string;
    agreeToTerms?: boolean;
}