/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  r0638823
 * Created: 12-okt-2020
 */

CREATE TABLE Klant (
    naam varchar(30),
    klantnr int,
    adres varchar(50)),
    gemeente varchar(20)
);
CREATE TABLE Locaties(
    locatie varchar(25)
);
CREATE TABLE Model(
    naam    varchar(25)
);
CREATE TABLE Reservaties(
    klantnr int,
    model   varchar(25),
    pickup_loc  varchar(25),
    dropof_loc  varchar(25),
    pickup_date date,
    dropof_date date
);
