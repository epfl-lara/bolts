; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122262 () Bool)

(assert start!122262)

(declare-fun b!1417704 () Bool)

(declare-fun res!953547 () Bool)

(declare-fun e!802342 () Bool)

(assert (=> b!1417704 (=> (not res!953547) (not e!802342))))

(declare-datatypes ((array!96764 0))(
  ( (array!96765 (arr!46706 (Array (_ BitVec 32) (_ BitVec 64))) (size!47257 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96764)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417704 (= res!953547 (validKeyInArray!0 (select (arr!46706 a!2831) i!982)))))

(declare-fun b!1417705 () Bool)

(declare-fun res!953544 () Bool)

(assert (=> b!1417705 (=> (not res!953544) (not e!802342))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1417705 (= res!953544 (and (= (size!47257 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47257 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47257 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953543 () Bool)

(assert (=> start!122262 (=> (not res!953543) (not e!802342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122262 (= res!953543 (validMask!0 mask!2608))))

(assert (=> start!122262 e!802342))

(assert (=> start!122262 true))

(declare-fun array_inv!35651 (array!96764) Bool)

(assert (=> start!122262 (array_inv!35651 a!2831)))

(declare-fun b!1417706 () Bool)

(assert (=> b!1417706 (= e!802342 (and (bvsle #b00000000000000000000000000000000 (size!47257 a!2831)) (bvsge (size!47257 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417707 () Bool)

(declare-fun res!953546 () Bool)

(assert (=> b!1417707 (=> (not res!953546) (not e!802342))))

(assert (=> b!1417707 (= res!953546 (validKeyInArray!0 (select (arr!46706 a!2831) j!81)))))

(declare-fun b!1417708 () Bool)

(declare-fun res!953545 () Bool)

(assert (=> b!1417708 (=> (not res!953545) (not e!802342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96764 (_ BitVec 32)) Bool)

(assert (=> b!1417708 (= res!953545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122262 res!953543) b!1417705))

(assert (= (and b!1417705 res!953544) b!1417704))

(assert (= (and b!1417704 res!953547) b!1417707))

(assert (= (and b!1417707 res!953546) b!1417708))

(assert (= (and b!1417708 res!953545) b!1417706))

(declare-fun m!1308541 () Bool)

(assert (=> b!1417704 m!1308541))

(assert (=> b!1417704 m!1308541))

(declare-fun m!1308543 () Bool)

(assert (=> b!1417704 m!1308543))

(declare-fun m!1308545 () Bool)

(assert (=> start!122262 m!1308545))

(declare-fun m!1308547 () Bool)

(assert (=> start!122262 m!1308547))

(declare-fun m!1308549 () Bool)

(assert (=> b!1417707 m!1308549))

(assert (=> b!1417707 m!1308549))

(declare-fun m!1308551 () Bool)

(assert (=> b!1417707 m!1308551))

(declare-fun m!1308553 () Bool)

(assert (=> b!1417708 m!1308553))

(check-sat (not b!1417704) (not start!122262) (not b!1417708) (not b!1417707))
(check-sat)
(get-model)

(declare-fun d!152643 () Bool)

(assert (=> d!152643 (= (validKeyInArray!0 (select (arr!46706 a!2831) i!982)) (and (not (= (select (arr!46706 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46706 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417704 d!152643))

(declare-fun d!152645 () Bool)

(assert (=> d!152645 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122262 d!152645))

(declare-fun d!152649 () Bool)

(assert (=> d!152649 (= (array_inv!35651 a!2831) (bvsge (size!47257 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122262 d!152649))

(declare-fun b!1417756 () Bool)

(declare-fun e!802374 () Bool)

(declare-fun e!802376 () Bool)

(assert (=> b!1417756 (= e!802374 e!802376)))

(declare-fun lt!625404 () (_ BitVec 64))

(assert (=> b!1417756 (= lt!625404 (select (arr!46706 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47988 0))(
  ( (Unit!47989) )
))
(declare-fun lt!625403 () Unit!47988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96764 (_ BitVec 64) (_ BitVec 32)) Unit!47988)

(assert (=> b!1417756 (= lt!625403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625404 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417756 (arrayContainsKey!0 a!2831 lt!625404 #b00000000000000000000000000000000)))

(declare-fun lt!625405 () Unit!47988)

(assert (=> b!1417756 (= lt!625405 lt!625403)))

(declare-fun res!953579 () Bool)

(declare-datatypes ((SeekEntryResult!11032 0))(
  ( (MissingZero!11032 (index!46519 (_ BitVec 32))) (Found!11032 (index!46520 (_ BitVec 32))) (Intermediate!11032 (undefined!11844 Bool) (index!46521 (_ BitVec 32)) (x!128142 (_ BitVec 32))) (Undefined!11032) (MissingVacant!11032 (index!46522 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96764 (_ BitVec 32)) SeekEntryResult!11032)

(assert (=> b!1417756 (= res!953579 (= (seekEntryOrOpen!0 (select (arr!46706 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11032 #b00000000000000000000000000000000)))))

(assert (=> b!1417756 (=> (not res!953579) (not e!802376))))

(declare-fun b!1417757 () Bool)

(declare-fun call!67230 () Bool)

(assert (=> b!1417757 (= e!802376 call!67230)))

(declare-fun d!152653 () Bool)

(declare-fun res!953580 () Bool)

(declare-fun e!802375 () Bool)

(assert (=> d!152653 (=> res!953580 e!802375)))

(assert (=> d!152653 (= res!953580 (bvsge #b00000000000000000000000000000000 (size!47257 a!2831)))))

(assert (=> d!152653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802375)))

(declare-fun b!1417758 () Bool)

(assert (=> b!1417758 (= e!802374 call!67230)))

(declare-fun bm!67227 () Bool)

(assert (=> bm!67227 (= call!67230 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417759 () Bool)

(assert (=> b!1417759 (= e!802375 e!802374)))

(declare-fun c!131573 () Bool)

(assert (=> b!1417759 (= c!131573 (validKeyInArray!0 (select (arr!46706 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152653 (not res!953580)) b!1417759))

(assert (= (and b!1417759 c!131573) b!1417756))

(assert (= (and b!1417759 (not c!131573)) b!1417758))

(assert (= (and b!1417756 res!953579) b!1417757))

(assert (= (or b!1417757 b!1417758) bm!67227))

(declare-fun m!1308589 () Bool)

(assert (=> b!1417756 m!1308589))

(declare-fun m!1308591 () Bool)

(assert (=> b!1417756 m!1308591))

(declare-fun m!1308595 () Bool)

(assert (=> b!1417756 m!1308595))

(assert (=> b!1417756 m!1308589))

(declare-fun m!1308599 () Bool)

(assert (=> b!1417756 m!1308599))

(declare-fun m!1308601 () Bool)

(assert (=> bm!67227 m!1308601))

(assert (=> b!1417759 m!1308589))

(assert (=> b!1417759 m!1308589))

(declare-fun m!1308603 () Bool)

(assert (=> b!1417759 m!1308603))

(assert (=> b!1417708 d!152653))

(declare-fun d!152661 () Bool)

(assert (=> d!152661 (= (validKeyInArray!0 (select (arr!46706 a!2831) j!81)) (and (not (= (select (arr!46706 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46706 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417707 d!152661))

(check-sat (not b!1417756) (not bm!67227) (not b!1417759))
(check-sat)
