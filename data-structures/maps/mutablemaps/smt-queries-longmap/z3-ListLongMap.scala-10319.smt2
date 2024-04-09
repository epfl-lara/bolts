; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121278 () Bool)

(assert start!121278)

(declare-fun b!1409616 () Bool)

(declare-fun res!947448 () Bool)

(declare-fun e!797710 () Bool)

(assert (=> b!1409616 (=> (not res!947448) (not e!797710))))

(declare-datatypes ((array!96350 0))(
  ( (array!96351 (arr!46514 (Array (_ BitVec 32) (_ BitVec 64))) (size!47065 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96350)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409616 (= res!947448 (validKeyInArray!0 (select (arr!46514 a!2901) i!1037)))))

(declare-fun res!947453 () Bool)

(assert (=> start!121278 (=> (not res!947453) (not e!797710))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121278 (= res!947453 (validMask!0 mask!2840))))

(assert (=> start!121278 e!797710))

(assert (=> start!121278 true))

(declare-fun array_inv!35459 (array!96350) Bool)

(assert (=> start!121278 (array_inv!35459 a!2901)))

(declare-fun b!1409617 () Bool)

(declare-fun res!947451 () Bool)

(assert (=> b!1409617 (=> (not res!947451) (not e!797710))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409617 (= res!947451 (validKeyInArray!0 (select (arr!46514 a!2901) j!112)))))

(declare-fun b!1409618 () Bool)

(declare-fun e!797711 () Bool)

(declare-datatypes ((SeekEntryResult!10847 0))(
  ( (MissingZero!10847 (index!45764 (_ BitVec 32))) (Found!10847 (index!45765 (_ BitVec 32))) (Intermediate!10847 (undefined!11659 Bool) (index!45766 (_ BitVec 32)) (x!127355 (_ BitVec 32))) (Undefined!10847) (MissingVacant!10847 (index!45767 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96350 (_ BitVec 32)) SeekEntryResult!10847)

(assert (=> b!1409618 (= e!797711 (= (seekEntryOrOpen!0 (select (arr!46514 a!2901) j!112) a!2901 mask!2840) (Found!10847 j!112)))))

(declare-fun b!1409619 () Bool)

(declare-fun e!797709 () Bool)

(declare-fun lt!620759 () SeekEntryResult!10847)

(declare-fun lt!620760 () SeekEntryResult!10847)

(get-info :version)

(assert (=> b!1409619 (= e!797709 (or (= lt!620759 lt!620760) (not ((_ is Intermediate!10847) lt!620760)) (and (bvsge (x!127355 lt!620759) #b00000000000000000000000000000000) (bvsle (x!127355 lt!620759) #b01111111111111111111111111111110))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96350 (_ BitVec 32)) SeekEntryResult!10847)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409619 (= lt!620760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)) mask!2840))))

(declare-fun b!1409620 () Bool)

(assert (=> b!1409620 (= e!797710 (not e!797709))))

(declare-fun res!947447 () Bool)

(assert (=> b!1409620 (=> res!947447 e!797709)))

(assert (=> b!1409620 (= res!947447 (or (not ((_ is Intermediate!10847) lt!620759)) (undefined!11659 lt!620759)))))

(assert (=> b!1409620 e!797711))

(declare-fun res!947452 () Bool)

(assert (=> b!1409620 (=> (not res!947452) (not e!797711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96350 (_ BitVec 32)) Bool)

(assert (=> b!1409620 (= res!947452 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47618 0))(
  ( (Unit!47619) )
))
(declare-fun lt!620761 () Unit!47618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47618)

(assert (=> b!1409620 (= lt!620761 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409620 (= lt!620759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) (select (arr!46514 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409621 () Bool)

(declare-fun res!947450 () Bool)

(assert (=> b!1409621 (=> (not res!947450) (not e!797710))))

(assert (=> b!1409621 (= res!947450 (and (= (size!47065 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47065 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47065 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409622 () Bool)

(declare-fun res!947454 () Bool)

(assert (=> b!1409622 (=> (not res!947454) (not e!797710))))

(assert (=> b!1409622 (= res!947454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409623 () Bool)

(declare-fun res!947449 () Bool)

(assert (=> b!1409623 (=> (not res!947449) (not e!797710))))

(declare-datatypes ((List!33213 0))(
  ( (Nil!33210) (Cons!33209 (h!34472 (_ BitVec 64)) (t!47914 List!33213)) )
))
(declare-fun arrayNoDuplicates!0 (array!96350 (_ BitVec 32) List!33213) Bool)

(assert (=> b!1409623 (= res!947449 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33210))))

(assert (= (and start!121278 res!947453) b!1409621))

(assert (= (and b!1409621 res!947450) b!1409616))

(assert (= (and b!1409616 res!947448) b!1409617))

(assert (= (and b!1409617 res!947451) b!1409622))

(assert (= (and b!1409622 res!947454) b!1409623))

(assert (= (and b!1409623 res!947449) b!1409620))

(assert (= (and b!1409620 res!947452) b!1409618))

(assert (= (and b!1409620 (not res!947447)) b!1409619))

(declare-fun m!1299501 () Bool)

(assert (=> b!1409619 m!1299501))

(declare-fun m!1299503 () Bool)

(assert (=> b!1409619 m!1299503))

(assert (=> b!1409619 m!1299503))

(declare-fun m!1299505 () Bool)

(assert (=> b!1409619 m!1299505))

(assert (=> b!1409619 m!1299505))

(assert (=> b!1409619 m!1299503))

(declare-fun m!1299507 () Bool)

(assert (=> b!1409619 m!1299507))

(declare-fun m!1299509 () Bool)

(assert (=> start!121278 m!1299509))

(declare-fun m!1299511 () Bool)

(assert (=> start!121278 m!1299511))

(declare-fun m!1299513 () Bool)

(assert (=> b!1409616 m!1299513))

(assert (=> b!1409616 m!1299513))

(declare-fun m!1299515 () Bool)

(assert (=> b!1409616 m!1299515))

(declare-fun m!1299517 () Bool)

(assert (=> b!1409620 m!1299517))

(declare-fun m!1299519 () Bool)

(assert (=> b!1409620 m!1299519))

(assert (=> b!1409620 m!1299517))

(declare-fun m!1299521 () Bool)

(assert (=> b!1409620 m!1299521))

(assert (=> b!1409620 m!1299519))

(assert (=> b!1409620 m!1299517))

(declare-fun m!1299523 () Bool)

(assert (=> b!1409620 m!1299523))

(declare-fun m!1299525 () Bool)

(assert (=> b!1409620 m!1299525))

(declare-fun m!1299527 () Bool)

(assert (=> b!1409622 m!1299527))

(declare-fun m!1299529 () Bool)

(assert (=> b!1409623 m!1299529))

(assert (=> b!1409617 m!1299517))

(assert (=> b!1409617 m!1299517))

(declare-fun m!1299531 () Bool)

(assert (=> b!1409617 m!1299531))

(assert (=> b!1409618 m!1299517))

(assert (=> b!1409618 m!1299517))

(declare-fun m!1299533 () Bool)

(assert (=> b!1409618 m!1299533))

(check-sat (not b!1409622) (not b!1409623) (not b!1409617) (not start!121278) (not b!1409620) (not b!1409618) (not b!1409616) (not b!1409619))
(check-sat)
(get-model)

(declare-fun d!151657 () Bool)

(assert (=> d!151657 (= (validKeyInArray!0 (select (arr!46514 a!2901) i!1037)) (and (not (= (select (arr!46514 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46514 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409616 d!151657))

(declare-fun d!151659 () Bool)

(assert (=> d!151659 (= (validKeyInArray!0 (select (arr!46514 a!2901) j!112)) (and (not (= (select (arr!46514 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46514 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409617 d!151659))

(declare-fun b!1409656 () Bool)

(declare-fun e!797731 () Bool)

(declare-fun e!797730 () Bool)

(assert (=> b!1409656 (= e!797731 e!797730)))

(declare-fun lt!620779 () (_ BitVec 64))

(assert (=> b!1409656 (= lt!620779 (select (arr!46514 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!620778 () Unit!47618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96350 (_ BitVec 64) (_ BitVec 32)) Unit!47618)

(assert (=> b!1409656 (= lt!620778 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620779 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1409656 (arrayContainsKey!0 a!2901 lt!620779 #b00000000000000000000000000000000)))

(declare-fun lt!620777 () Unit!47618)

(assert (=> b!1409656 (= lt!620777 lt!620778)))

(declare-fun res!947483 () Bool)

(assert (=> b!1409656 (= res!947483 (= (seekEntryOrOpen!0 (select (arr!46514 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10847 #b00000000000000000000000000000000)))))

(assert (=> b!1409656 (=> (not res!947483) (not e!797730))))

(declare-fun bm!67011 () Bool)

(declare-fun call!67014 () Bool)

(assert (=> bm!67011 (= call!67014 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409657 () Bool)

(declare-fun e!797732 () Bool)

(assert (=> b!1409657 (= e!797732 e!797731)))

(declare-fun c!130556 () Bool)

(assert (=> b!1409657 (= c!130556 (validKeyInArray!0 (select (arr!46514 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151661 () Bool)

(declare-fun res!947484 () Bool)

(assert (=> d!151661 (=> res!947484 e!797732)))

(assert (=> d!151661 (= res!947484 (bvsge #b00000000000000000000000000000000 (size!47065 a!2901)))))

(assert (=> d!151661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!797732)))

(declare-fun b!1409658 () Bool)

(assert (=> b!1409658 (= e!797730 call!67014)))

(declare-fun b!1409659 () Bool)

(assert (=> b!1409659 (= e!797731 call!67014)))

(assert (= (and d!151661 (not res!947484)) b!1409657))

(assert (= (and b!1409657 c!130556) b!1409656))

(assert (= (and b!1409657 (not c!130556)) b!1409659))

(assert (= (and b!1409656 res!947483) b!1409658))

(assert (= (or b!1409658 b!1409659) bm!67011))

(declare-fun m!1299569 () Bool)

(assert (=> b!1409656 m!1299569))

(declare-fun m!1299571 () Bool)

(assert (=> b!1409656 m!1299571))

(declare-fun m!1299573 () Bool)

(assert (=> b!1409656 m!1299573))

(assert (=> b!1409656 m!1299569))

(declare-fun m!1299575 () Bool)

(assert (=> b!1409656 m!1299575))

(declare-fun m!1299577 () Bool)

(assert (=> bm!67011 m!1299577))

(assert (=> b!1409657 m!1299569))

(assert (=> b!1409657 m!1299569))

(declare-fun m!1299579 () Bool)

(assert (=> b!1409657 m!1299579))

(assert (=> b!1409622 d!151661))

(declare-fun d!151663 () Bool)

(assert (=> d!151663 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121278 d!151663))

(declare-fun d!151669 () Bool)

(assert (=> d!151669 (= (array_inv!35459 a!2901) (bvsge (size!47065 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121278 d!151669))

(declare-fun d!151671 () Bool)

(declare-fun res!947506 () Bool)

(declare-fun e!797760 () Bool)

(assert (=> d!151671 (=> res!947506 e!797760)))

(assert (=> d!151671 (= res!947506 (bvsge #b00000000000000000000000000000000 (size!47065 a!2901)))))

(assert (=> d!151671 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33210) e!797760)))

(declare-fun b!1409693 () Bool)

(declare-fun e!797761 () Bool)

(assert (=> b!1409693 (= e!797760 e!797761)))

(declare-fun res!947505 () Bool)

(assert (=> b!1409693 (=> (not res!947505) (not e!797761))))

(declare-fun e!797762 () Bool)

(assert (=> b!1409693 (= res!947505 (not e!797762))))

(declare-fun res!947504 () Bool)

(assert (=> b!1409693 (=> (not res!947504) (not e!797762))))

(assert (=> b!1409693 (= res!947504 (validKeyInArray!0 (select (arr!46514 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67019 () Bool)

(declare-fun call!67022 () Bool)

(declare-fun c!130564 () Bool)

(assert (=> bm!67019 (= call!67022 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130564 (Cons!33209 (select (arr!46514 a!2901) #b00000000000000000000000000000000) Nil!33210) Nil!33210)))))

(declare-fun b!1409694 () Bool)

(declare-fun e!797759 () Bool)

(assert (=> b!1409694 (= e!797761 e!797759)))

(assert (=> b!1409694 (= c!130564 (validKeyInArray!0 (select (arr!46514 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409695 () Bool)

(assert (=> b!1409695 (= e!797759 call!67022)))

(declare-fun b!1409696 () Bool)

(declare-fun contains!9817 (List!33213 (_ BitVec 64)) Bool)

(assert (=> b!1409696 (= e!797762 (contains!9817 Nil!33210 (select (arr!46514 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409697 () Bool)

(assert (=> b!1409697 (= e!797759 call!67022)))

(assert (= (and d!151671 (not res!947506)) b!1409693))

(assert (= (and b!1409693 res!947504) b!1409696))

(assert (= (and b!1409693 res!947505) b!1409694))

(assert (= (and b!1409694 c!130564) b!1409695))

(assert (= (and b!1409694 (not c!130564)) b!1409697))

(assert (= (or b!1409695 b!1409697) bm!67019))

(assert (=> b!1409693 m!1299569))

(assert (=> b!1409693 m!1299569))

(assert (=> b!1409693 m!1299579))

(assert (=> bm!67019 m!1299569))

(declare-fun m!1299589 () Bool)

(assert (=> bm!67019 m!1299589))

(assert (=> b!1409694 m!1299569))

(assert (=> b!1409694 m!1299569))

(assert (=> b!1409694 m!1299579))

(assert (=> b!1409696 m!1299569))

(assert (=> b!1409696 m!1299569))

(declare-fun m!1299591 () Bool)

(assert (=> b!1409696 m!1299591))

(assert (=> b!1409623 d!151671))

(declare-fun b!1409726 () Bool)

(declare-fun e!797782 () SeekEntryResult!10847)

(declare-fun e!797781 () SeekEntryResult!10847)

(assert (=> b!1409726 (= e!797782 e!797781)))

(declare-fun lt!620809 () (_ BitVec 64))

(declare-fun lt!620808 () SeekEntryResult!10847)

(assert (=> b!1409726 (= lt!620809 (select (arr!46514 a!2901) (index!45766 lt!620808)))))

(declare-fun c!130576 () Bool)

(assert (=> b!1409726 (= c!130576 (= lt!620809 (select (arr!46514 a!2901) j!112)))))

(declare-fun b!1409727 () Bool)

(assert (=> b!1409727 (= e!797782 Undefined!10847)))

(declare-fun e!797783 () SeekEntryResult!10847)

(declare-fun b!1409729 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96350 (_ BitVec 32)) SeekEntryResult!10847)

(assert (=> b!1409729 (= e!797783 (seekKeyOrZeroReturnVacant!0 (x!127355 lt!620808) (index!45766 lt!620808) (index!45766 lt!620808) (select (arr!46514 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409730 () Bool)

(assert (=> b!1409730 (= e!797783 (MissingZero!10847 (index!45766 lt!620808)))))

(declare-fun b!1409731 () Bool)

(declare-fun c!130575 () Bool)

(assert (=> b!1409731 (= c!130575 (= lt!620809 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1409731 (= e!797781 e!797783)))

(declare-fun b!1409728 () Bool)

(assert (=> b!1409728 (= e!797781 (Found!10847 (index!45766 lt!620808)))))

(declare-fun d!151675 () Bool)

(declare-fun lt!620807 () SeekEntryResult!10847)

(assert (=> d!151675 (and (or ((_ is Undefined!10847) lt!620807) (not ((_ is Found!10847) lt!620807)) (and (bvsge (index!45765 lt!620807) #b00000000000000000000000000000000) (bvslt (index!45765 lt!620807) (size!47065 a!2901)))) (or ((_ is Undefined!10847) lt!620807) ((_ is Found!10847) lt!620807) (not ((_ is MissingZero!10847) lt!620807)) (and (bvsge (index!45764 lt!620807) #b00000000000000000000000000000000) (bvslt (index!45764 lt!620807) (size!47065 a!2901)))) (or ((_ is Undefined!10847) lt!620807) ((_ is Found!10847) lt!620807) ((_ is MissingZero!10847) lt!620807) (not ((_ is MissingVacant!10847) lt!620807)) (and (bvsge (index!45767 lt!620807) #b00000000000000000000000000000000) (bvslt (index!45767 lt!620807) (size!47065 a!2901)))) (or ((_ is Undefined!10847) lt!620807) (ite ((_ is Found!10847) lt!620807) (= (select (arr!46514 a!2901) (index!45765 lt!620807)) (select (arr!46514 a!2901) j!112)) (ite ((_ is MissingZero!10847) lt!620807) (= (select (arr!46514 a!2901) (index!45764 lt!620807)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10847) lt!620807) (= (select (arr!46514 a!2901) (index!45767 lt!620807)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151675 (= lt!620807 e!797782)))

(declare-fun c!130577 () Bool)

(assert (=> d!151675 (= c!130577 (and ((_ is Intermediate!10847) lt!620808) (undefined!11659 lt!620808)))))

(assert (=> d!151675 (= lt!620808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) (select (arr!46514 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151675 (validMask!0 mask!2840)))

(assert (=> d!151675 (= (seekEntryOrOpen!0 (select (arr!46514 a!2901) j!112) a!2901 mask!2840) lt!620807)))

(assert (= (and d!151675 c!130577) b!1409727))

(assert (= (and d!151675 (not c!130577)) b!1409726))

(assert (= (and b!1409726 c!130576) b!1409728))

(assert (= (and b!1409726 (not c!130576)) b!1409731))

(assert (= (and b!1409731 c!130575) b!1409730))

(assert (= (and b!1409731 (not c!130575)) b!1409729))

(declare-fun m!1299609 () Bool)

(assert (=> b!1409726 m!1299609))

(assert (=> b!1409729 m!1299517))

(declare-fun m!1299611 () Bool)

(assert (=> b!1409729 m!1299611))

(declare-fun m!1299613 () Bool)

(assert (=> d!151675 m!1299613))

(assert (=> d!151675 m!1299519))

(assert (=> d!151675 m!1299517))

(assert (=> d!151675 m!1299523))

(declare-fun m!1299615 () Bool)

(assert (=> d!151675 m!1299615))

(assert (=> d!151675 m!1299509))

(assert (=> d!151675 m!1299517))

(assert (=> d!151675 m!1299519))

(declare-fun m!1299617 () Bool)

(assert (=> d!151675 m!1299617))

(assert (=> b!1409618 d!151675))

(declare-fun b!1409732 () Bool)

(declare-fun e!797785 () Bool)

(declare-fun e!797784 () Bool)

(assert (=> b!1409732 (= e!797785 e!797784)))

(declare-fun lt!620812 () (_ BitVec 64))

(assert (=> b!1409732 (= lt!620812 (select (arr!46514 a!2901) j!112))))

(declare-fun lt!620811 () Unit!47618)

(assert (=> b!1409732 (= lt!620811 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620812 j!112))))

(assert (=> b!1409732 (arrayContainsKey!0 a!2901 lt!620812 #b00000000000000000000000000000000)))

(declare-fun lt!620810 () Unit!47618)

(assert (=> b!1409732 (= lt!620810 lt!620811)))

(declare-fun res!947515 () Bool)

(assert (=> b!1409732 (= res!947515 (= (seekEntryOrOpen!0 (select (arr!46514 a!2901) j!112) a!2901 mask!2840) (Found!10847 j!112)))))

(assert (=> b!1409732 (=> (not res!947515) (not e!797784))))

(declare-fun bm!67024 () Bool)

(declare-fun call!67027 () Bool)

(assert (=> bm!67024 (= call!67027 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409733 () Bool)

(declare-fun e!797786 () Bool)

(assert (=> b!1409733 (= e!797786 e!797785)))

(declare-fun c!130578 () Bool)

(assert (=> b!1409733 (= c!130578 (validKeyInArray!0 (select (arr!46514 a!2901) j!112)))))

(declare-fun d!151683 () Bool)

(declare-fun res!947516 () Bool)

(assert (=> d!151683 (=> res!947516 e!797786)))

(assert (=> d!151683 (= res!947516 (bvsge j!112 (size!47065 a!2901)))))

(assert (=> d!151683 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!797786)))

(declare-fun b!1409734 () Bool)

(assert (=> b!1409734 (= e!797784 call!67027)))

(declare-fun b!1409735 () Bool)

(assert (=> b!1409735 (= e!797785 call!67027)))

(assert (= (and d!151683 (not res!947516)) b!1409733))

(assert (= (and b!1409733 c!130578) b!1409732))

(assert (= (and b!1409733 (not c!130578)) b!1409735))

(assert (= (and b!1409732 res!947515) b!1409734))

(assert (= (or b!1409734 b!1409735) bm!67024))

(assert (=> b!1409732 m!1299517))

(declare-fun m!1299619 () Bool)

(assert (=> b!1409732 m!1299619))

(declare-fun m!1299621 () Bool)

(assert (=> b!1409732 m!1299621))

(assert (=> b!1409732 m!1299517))

(assert (=> b!1409732 m!1299533))

(declare-fun m!1299623 () Bool)

(assert (=> bm!67024 m!1299623))

(assert (=> b!1409733 m!1299517))

(assert (=> b!1409733 m!1299517))

(assert (=> b!1409733 m!1299531))

(assert (=> b!1409620 d!151683))

(declare-fun d!151685 () Bool)

(assert (=> d!151685 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620823 () Unit!47618)

(declare-fun choose!38 (array!96350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47618)

(assert (=> d!151685 (= lt!620823 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151685 (validMask!0 mask!2840)))

(assert (=> d!151685 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!620823)))

(declare-fun bs!41100 () Bool)

(assert (= bs!41100 d!151685))

(assert (=> bs!41100 m!1299525))

(declare-fun m!1299625 () Bool)

(assert (=> bs!41100 m!1299625))

(assert (=> bs!41100 m!1299509))

(assert (=> b!1409620 d!151685))

(declare-fun b!1409821 () Bool)

(declare-fun lt!620855 () SeekEntryResult!10847)

(assert (=> b!1409821 (and (bvsge (index!45766 lt!620855) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620855) (size!47065 a!2901)))))

(declare-fun res!947549 () Bool)

(assert (=> b!1409821 (= res!947549 (= (select (arr!46514 a!2901) (index!45766 lt!620855)) (select (arr!46514 a!2901) j!112)))))

(declare-fun e!797836 () Bool)

(assert (=> b!1409821 (=> res!947549 e!797836)))

(declare-fun e!797835 () Bool)

(assert (=> b!1409821 (= e!797835 e!797836)))

(declare-fun b!1409822 () Bool)

(assert (=> b!1409822 (and (bvsge (index!45766 lt!620855) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620855) (size!47065 a!2901)))))

(declare-fun res!947548 () Bool)

(assert (=> b!1409822 (= res!947548 (= (select (arr!46514 a!2901) (index!45766 lt!620855)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1409822 (=> res!947548 e!797836)))

(declare-fun b!1409823 () Bool)

(declare-fun e!797839 () Bool)

(assert (=> b!1409823 (= e!797839 e!797835)))

(declare-fun res!947550 () Bool)

(assert (=> b!1409823 (= res!947550 (and ((_ is Intermediate!10847) lt!620855) (not (undefined!11659 lt!620855)) (bvslt (x!127355 lt!620855) #b01111111111111111111111111111110) (bvsge (x!127355 lt!620855) #b00000000000000000000000000000000) (bvsge (x!127355 lt!620855) #b00000000000000000000000000000000)))))

(assert (=> b!1409823 (=> (not res!947550) (not e!797835))))

(declare-fun b!1409824 () Bool)

(declare-fun e!797837 () SeekEntryResult!10847)

(declare-fun e!797838 () SeekEntryResult!10847)

(assert (=> b!1409824 (= e!797837 e!797838)))

(declare-fun lt!620854 () (_ BitVec 64))

(declare-fun c!130607 () Bool)

(assert (=> b!1409824 (= c!130607 (or (= lt!620854 (select (arr!46514 a!2901) j!112)) (= (bvadd lt!620854 lt!620854) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1409825 () Bool)

(assert (=> b!1409825 (and (bvsge (index!45766 lt!620855) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620855) (size!47065 a!2901)))))

(assert (=> b!1409825 (= e!797836 (= (select (arr!46514 a!2901) (index!45766 lt!620855)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409826 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409826 (= e!797838 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46514 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409827 () Bool)

(assert (=> b!1409827 (= e!797838 (Intermediate!10847 false (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151687 () Bool)

(assert (=> d!151687 e!797839))

(declare-fun c!130609 () Bool)

(assert (=> d!151687 (= c!130609 (and ((_ is Intermediate!10847) lt!620855) (undefined!11659 lt!620855)))))

(assert (=> d!151687 (= lt!620855 e!797837)))

(declare-fun c!130608 () Bool)

(assert (=> d!151687 (= c!130608 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151687 (= lt!620854 (select (arr!46514 a!2901) (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840)))))

(assert (=> d!151687 (validMask!0 mask!2840)))

(assert (=> d!151687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) (select (arr!46514 a!2901) j!112) a!2901 mask!2840) lt!620855)))

(declare-fun b!1409828 () Bool)

(assert (=> b!1409828 (= e!797839 (bvsge (x!127355 lt!620855) #b01111111111111111111111111111110))))

(declare-fun b!1409829 () Bool)

(assert (=> b!1409829 (= e!797837 (Intermediate!10847 true (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151687 c!130608) b!1409829))

(assert (= (and d!151687 (not c!130608)) b!1409824))

(assert (= (and b!1409824 c!130607) b!1409827))

(assert (= (and b!1409824 (not c!130607)) b!1409826))

(assert (= (and d!151687 c!130609) b!1409828))

(assert (= (and d!151687 (not c!130609)) b!1409823))

(assert (= (and b!1409823 res!947550) b!1409821))

(assert (= (and b!1409821 (not res!947549)) b!1409822))

(assert (= (and b!1409822 (not res!947548)) b!1409825))

(assert (=> b!1409826 m!1299519))

(declare-fun m!1299659 () Bool)

(assert (=> b!1409826 m!1299659))

(assert (=> b!1409826 m!1299659))

(assert (=> b!1409826 m!1299517))

(declare-fun m!1299661 () Bool)

(assert (=> b!1409826 m!1299661))

(declare-fun m!1299663 () Bool)

(assert (=> b!1409825 m!1299663))

(assert (=> b!1409822 m!1299663))

(assert (=> b!1409821 m!1299663))

(assert (=> d!151687 m!1299519))

(declare-fun m!1299665 () Bool)

(assert (=> d!151687 m!1299665))

(assert (=> d!151687 m!1299509))

(assert (=> b!1409620 d!151687))

(declare-fun d!151713 () Bool)

(declare-fun lt!620861 () (_ BitVec 32))

(declare-fun lt!620860 () (_ BitVec 32))

(assert (=> d!151713 (= lt!620861 (bvmul (bvxor lt!620860 (bvlshr lt!620860 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151713 (= lt!620860 ((_ extract 31 0) (bvand (bvxor (select (arr!46514 a!2901) j!112) (bvlshr (select (arr!46514 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151713 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947551 (let ((h!34476 ((_ extract 31 0) (bvand (bvxor (select (arr!46514 a!2901) j!112) (bvlshr (select (arr!46514 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127362 (bvmul (bvxor h!34476 (bvlshr h!34476 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127362 (bvlshr x!127362 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947551 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947551 #b00000000000000000000000000000000))))))

(assert (=> d!151713 (= (toIndex!0 (select (arr!46514 a!2901) j!112) mask!2840) (bvand (bvxor lt!620861 (bvlshr lt!620861 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409620 d!151713))

(declare-fun b!1409830 () Bool)

(declare-fun lt!620863 () SeekEntryResult!10847)

(assert (=> b!1409830 (and (bvsge (index!45766 lt!620863) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620863) (size!47065 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)))))))

(declare-fun res!947553 () Bool)

(assert (=> b!1409830 (= res!947553 (= (select (arr!46514 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901))) (index!45766 lt!620863)) (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!797841 () Bool)

(assert (=> b!1409830 (=> res!947553 e!797841)))

(declare-fun e!797840 () Bool)

(assert (=> b!1409830 (= e!797840 e!797841)))

(declare-fun b!1409831 () Bool)

(assert (=> b!1409831 (and (bvsge (index!45766 lt!620863) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620863) (size!47065 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)))))))

(declare-fun res!947552 () Bool)

(assert (=> b!1409831 (= res!947552 (= (select (arr!46514 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901))) (index!45766 lt!620863)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1409831 (=> res!947552 e!797841)))

(declare-fun b!1409832 () Bool)

(declare-fun e!797844 () Bool)

(assert (=> b!1409832 (= e!797844 e!797840)))

(declare-fun res!947554 () Bool)

(assert (=> b!1409832 (= res!947554 (and ((_ is Intermediate!10847) lt!620863) (not (undefined!11659 lt!620863)) (bvslt (x!127355 lt!620863) #b01111111111111111111111111111110) (bvsge (x!127355 lt!620863) #b00000000000000000000000000000000) (bvsge (x!127355 lt!620863) #b00000000000000000000000000000000)))))

(assert (=> b!1409832 (=> (not res!947554) (not e!797840))))

(declare-fun b!1409833 () Bool)

(declare-fun e!797842 () SeekEntryResult!10847)

(declare-fun e!797843 () SeekEntryResult!10847)

(assert (=> b!1409833 (= e!797842 e!797843)))

(declare-fun lt!620862 () (_ BitVec 64))

(declare-fun c!130610 () Bool)

(assert (=> b!1409833 (= c!130610 (or (= lt!620862 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!620862 lt!620862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1409834 () Bool)

(assert (=> b!1409834 (and (bvsge (index!45766 lt!620863) #b00000000000000000000000000000000) (bvslt (index!45766 lt!620863) (size!47065 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)))))))

(assert (=> b!1409834 (= e!797841 (= (select (arr!46514 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901))) (index!45766 lt!620863)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409835 () Bool)

(assert (=> b!1409835 (= e!797843 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)) mask!2840))))

(declare-fun b!1409836 () Bool)

(assert (=> b!1409836 (= e!797843 (Intermediate!10847 false (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151715 () Bool)

(assert (=> d!151715 e!797844))

(declare-fun c!130612 () Bool)

(assert (=> d!151715 (= c!130612 (and ((_ is Intermediate!10847) lt!620863) (undefined!11659 lt!620863)))))

(assert (=> d!151715 (= lt!620863 e!797842)))

(declare-fun c!130611 () Bool)

(assert (=> d!151715 (= c!130611 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151715 (= lt!620862 (select (arr!46514 (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901))) (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151715 (validMask!0 mask!2840)))

(assert (=> d!151715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96351 (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47065 a!2901)) mask!2840) lt!620863)))

(declare-fun b!1409837 () Bool)

(assert (=> b!1409837 (= e!797844 (bvsge (x!127355 lt!620863) #b01111111111111111111111111111110))))

(declare-fun b!1409838 () Bool)

(assert (=> b!1409838 (= e!797842 (Intermediate!10847 true (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151715 c!130611) b!1409838))

(assert (= (and d!151715 (not c!130611)) b!1409833))

(assert (= (and b!1409833 c!130610) b!1409836))

(assert (= (and b!1409833 (not c!130610)) b!1409835))

(assert (= (and d!151715 c!130612) b!1409837))

(assert (= (and d!151715 (not c!130612)) b!1409832))

(assert (= (and b!1409832 res!947554) b!1409830))

(assert (= (and b!1409830 (not res!947553)) b!1409831))

(assert (= (and b!1409831 (not res!947552)) b!1409834))

(assert (=> b!1409835 m!1299505))

(declare-fun m!1299667 () Bool)

(assert (=> b!1409835 m!1299667))

(assert (=> b!1409835 m!1299667))

(assert (=> b!1409835 m!1299503))

(declare-fun m!1299669 () Bool)

(assert (=> b!1409835 m!1299669))

(declare-fun m!1299671 () Bool)

(assert (=> b!1409834 m!1299671))

(assert (=> b!1409831 m!1299671))

(assert (=> b!1409830 m!1299671))

(assert (=> d!151715 m!1299505))

(declare-fun m!1299673 () Bool)

(assert (=> d!151715 m!1299673))

(assert (=> d!151715 m!1299509))

(assert (=> b!1409619 d!151715))

(declare-fun d!151717 () Bool)

(declare-fun lt!620865 () (_ BitVec 32))

(declare-fun lt!620864 () (_ BitVec 32))

(assert (=> d!151717 (= lt!620865 (bvmul (bvxor lt!620864 (bvlshr lt!620864 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151717 (= lt!620864 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151717 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947551 (let ((h!34476 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127362 (bvmul (bvxor h!34476 (bvlshr h!34476 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127362 (bvlshr x!127362 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947551 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947551 #b00000000000000000000000000000000))))))

(assert (=> d!151717 (= (toIndex!0 (select (store (arr!46514 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!620865 (bvlshr lt!620865 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409619 d!151717))

(check-sat (not d!151685) (not d!151715) (not bm!67019) (not d!151687) (not b!1409835) (not b!1409694) (not bm!67011) (not b!1409657) (not b!1409826) (not d!151675) (not b!1409693) (not b!1409656) (not b!1409732) (not b!1409729) (not b!1409696) (not b!1409733) (not bm!67024))
(check-sat)
