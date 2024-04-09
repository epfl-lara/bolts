; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87170 () Bool)

(assert start!87170)

(declare-fun b!1010429 () Bool)

(declare-fun e!568471 () Bool)

(declare-fun e!568474 () Bool)

(assert (=> b!1010429 (= e!568471 e!568474)))

(declare-fun res!678937 () Bool)

(assert (=> b!1010429 (=> (not res!678937) (not e!568474))))

(declare-datatypes ((SeekEntryResult!9562 0))(
  ( (MissingZero!9562 (index!40618 (_ BitVec 32))) (Found!9562 (index!40619 (_ BitVec 32))) (Intermediate!9562 (undefined!10374 Bool) (index!40620 (_ BitVec 32)) (x!88049 (_ BitVec 32))) (Undefined!9562) (MissingVacant!9562 (index!40621 (_ BitVec 32))) )
))
(declare-fun lt!446601 () SeekEntryResult!9562)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010429 (= res!678937 (or (= lt!446601 (MissingVacant!9562 i!1194)) (= lt!446601 (MissingZero!9562 i!1194))))))

(declare-datatypes ((array!63632 0))(
  ( (array!63633 (arr!30630 (Array (_ BitVec 32) (_ BitVec 64))) (size!31133 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63632)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63632 (_ BitVec 32)) SeekEntryResult!9562)

(assert (=> b!1010429 (= lt!446601 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010430 () Bool)

(declare-fun e!568473 () Bool)

(declare-fun e!568470 () Bool)

(assert (=> b!1010430 (= e!568473 e!568470)))

(declare-fun res!678936 () Bool)

(assert (=> b!1010430 (=> (not res!678936) (not e!568470))))

(declare-fun lt!446597 () SeekEntryResult!9562)

(declare-fun lt!446595 () (_ BitVec 64))

(declare-fun lt!446599 () array!63632)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63632 (_ BitVec 32)) SeekEntryResult!9562)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010430 (= res!678936 (not (= lt!446597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446595 mask!3464) lt!446595 lt!446599 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1010430 (= lt!446595 (select (store (arr!30630 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010430 (= lt!446599 (array!63633 (store (arr!30630 a!3219) i!1194 k!2224) (size!31133 a!3219)))))

(declare-fun b!1010431 () Bool)

(declare-fun res!678923 () Bool)

(assert (=> b!1010431 (=> (not res!678923) (not e!568474))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010431 (= res!678923 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31133 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31133 a!3219))))))

(declare-fun b!1010432 () Bool)

(declare-fun res!678930 () Bool)

(assert (=> b!1010432 (=> (not res!678930) (not e!568474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63632 (_ BitVec 32)) Bool)

(assert (=> b!1010432 (= res!678930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010433 () Bool)

(declare-fun res!678929 () Bool)

(assert (=> b!1010433 (=> (not res!678929) (not e!568471))))

(declare-fun arrayContainsKey!0 (array!63632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010433 (= res!678929 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010434 () Bool)

(declare-fun res!678927 () Bool)

(assert (=> b!1010434 (=> (not res!678927) (not e!568474))))

(declare-datatypes ((List!21432 0))(
  ( (Nil!21429) (Cons!21428 (h!22620 (_ BitVec 64)) (t!30441 List!21432)) )
))
(declare-fun arrayNoDuplicates!0 (array!63632 (_ BitVec 32) List!21432) Bool)

(assert (=> b!1010434 (= res!678927 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21429))))

(declare-fun b!1010435 () Bool)

(declare-fun e!568475 () Bool)

(assert (=> b!1010435 (= e!568474 e!568475)))

(declare-fun res!678935 () Bool)

(assert (=> b!1010435 (=> (not res!678935) (not e!568475))))

(declare-fun lt!446600 () SeekEntryResult!9562)

(assert (=> b!1010435 (= res!678935 (= lt!446597 lt!446600))))

(assert (=> b!1010435 (= lt!446600 (Intermediate!9562 false resIndex!38 resX!38))))

(assert (=> b!1010435 (= lt!446597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) (select (arr!30630 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010436 () Bool)

(declare-fun res!678933 () Bool)

(assert (=> b!1010436 (=> (not res!678933) (not e!568471))))

(assert (=> b!1010436 (= res!678933 (and (= (size!31133 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31133 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31133 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!678925 () Bool)

(assert (=> start!87170 (=> (not res!678925) (not e!568471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87170 (= res!678925 (validMask!0 mask!3464))))

(assert (=> start!87170 e!568471))

(declare-fun array_inv!23620 (array!63632) Bool)

(assert (=> start!87170 (array_inv!23620 a!3219)))

(assert (=> start!87170 true))

(declare-fun b!1010437 () Bool)

(assert (=> b!1010437 (= e!568475 e!568473)))

(declare-fun res!678924 () Bool)

(assert (=> b!1010437 (=> (not res!678924) (not e!568473))))

(declare-fun lt!446598 () SeekEntryResult!9562)

(assert (=> b!1010437 (= res!678924 (= lt!446598 lt!446600))))

(assert (=> b!1010437 (= lt!446598 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30630 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010438 () Bool)

(declare-fun res!678926 () Bool)

(assert (=> b!1010438 (=> (not res!678926) (not e!568471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010438 (= res!678926 (validKeyInArray!0 (select (arr!30630 a!3219) j!170)))))

(declare-fun b!1010439 () Bool)

(declare-fun res!678934 () Bool)

(assert (=> b!1010439 (=> (not res!678934) (not e!568471))))

(assert (=> b!1010439 (= res!678934 (validKeyInArray!0 k!2224))))

(declare-fun b!1010440 () Bool)

(declare-fun e!568472 () Bool)

(assert (=> b!1010440 (= e!568470 e!568472)))

(declare-fun res!678931 () Bool)

(assert (=> b!1010440 (=> (not res!678931) (not e!568472))))

(declare-fun lt!446596 () (_ BitVec 32))

(assert (=> b!1010440 (= res!678931 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446596 #b00000000000000000000000000000000) (bvslt lt!446596 (size!31133 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010440 (= lt!446596 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010441 () Bool)

(assert (=> b!1010441 (= e!568472 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446596 (select (arr!30630 a!3219) j!170) a!3219 mask!3464) lt!446600)))))

(declare-fun b!1010442 () Bool)

(declare-fun res!678928 () Bool)

(assert (=> b!1010442 (=> (not res!678928) (not e!568470))))

(assert (=> b!1010442 (= res!678928 (not (= lt!446598 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446595 lt!446599 mask!3464))))))

(declare-fun b!1010443 () Bool)

(declare-fun res!678932 () Bool)

(assert (=> b!1010443 (=> (not res!678932) (not e!568470))))

(assert (=> b!1010443 (= res!678932 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!87170 res!678925) b!1010436))

(assert (= (and b!1010436 res!678933) b!1010438))

(assert (= (and b!1010438 res!678926) b!1010439))

(assert (= (and b!1010439 res!678934) b!1010433))

(assert (= (and b!1010433 res!678929) b!1010429))

(assert (= (and b!1010429 res!678937) b!1010432))

(assert (= (and b!1010432 res!678930) b!1010434))

(assert (= (and b!1010434 res!678927) b!1010431))

(assert (= (and b!1010431 res!678923) b!1010435))

(assert (= (and b!1010435 res!678935) b!1010437))

(assert (= (and b!1010437 res!678924) b!1010430))

(assert (= (and b!1010430 res!678936) b!1010442))

(assert (= (and b!1010442 res!678928) b!1010443))

(assert (= (and b!1010443 res!678932) b!1010440))

(assert (= (and b!1010440 res!678931) b!1010441))

(declare-fun m!934867 () Bool)

(assert (=> b!1010432 m!934867))

(declare-fun m!934869 () Bool)

(assert (=> b!1010442 m!934869))

(declare-fun m!934871 () Bool)

(assert (=> b!1010433 m!934871))

(declare-fun m!934873 () Bool)

(assert (=> b!1010435 m!934873))

(assert (=> b!1010435 m!934873))

(declare-fun m!934875 () Bool)

(assert (=> b!1010435 m!934875))

(assert (=> b!1010435 m!934875))

(assert (=> b!1010435 m!934873))

(declare-fun m!934877 () Bool)

(assert (=> b!1010435 m!934877))

(declare-fun m!934879 () Bool)

(assert (=> b!1010429 m!934879))

(declare-fun m!934881 () Bool)

(assert (=> b!1010440 m!934881))

(assert (=> b!1010441 m!934873))

(assert (=> b!1010441 m!934873))

(declare-fun m!934883 () Bool)

(assert (=> b!1010441 m!934883))

(declare-fun m!934885 () Bool)

(assert (=> b!1010430 m!934885))

(assert (=> b!1010430 m!934885))

(declare-fun m!934887 () Bool)

(assert (=> b!1010430 m!934887))

(declare-fun m!934889 () Bool)

(assert (=> b!1010430 m!934889))

(declare-fun m!934891 () Bool)

(assert (=> b!1010430 m!934891))

(assert (=> b!1010437 m!934873))

(assert (=> b!1010437 m!934873))

(declare-fun m!934893 () Bool)

(assert (=> b!1010437 m!934893))

(declare-fun m!934895 () Bool)

(assert (=> b!1010439 m!934895))

(declare-fun m!934897 () Bool)

(assert (=> start!87170 m!934897))

(declare-fun m!934899 () Bool)

(assert (=> start!87170 m!934899))

(declare-fun m!934901 () Bool)

(assert (=> b!1010434 m!934901))

(assert (=> b!1010438 m!934873))

(assert (=> b!1010438 m!934873))

(declare-fun m!934903 () Bool)

(assert (=> b!1010438 m!934903))

(push 1)

(assert (not b!1010433))

(assert (not b!1010434))

(assert (not b!1010441))

(assert (not start!87170))

(assert (not b!1010437))

(assert (not b!1010438))

(assert (not b!1010435))

(assert (not b!1010429))

(assert (not b!1010442))

(assert (not b!1010430))

(assert (not b!1010432))

(assert (not b!1010439))

(assert (not b!1010440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1010558 () Bool)

(declare-fun lt!446640 () SeekEntryResult!9562)

(assert (=> b!1010558 (and (bvsge (index!40620 lt!446640) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446640) (size!31133 lt!446599)))))

(declare-fun res!678975 () Bool)

(assert (=> b!1010558 (= res!678975 (= (select (arr!30630 lt!446599) (index!40620 lt!446640)) lt!446595))))

(declare-fun e!568541 () Bool)

(assert (=> b!1010558 (=> res!678975 e!568541)))

(declare-fun e!568544 () Bool)

(assert (=> b!1010558 (= e!568544 e!568541)))

(declare-fun b!1010559 () Bool)

(declare-fun e!568543 () SeekEntryResult!9562)

(assert (=> b!1010559 (= e!568543 (Intermediate!9562 false index!1507 x!1245))))

(declare-fun b!1010560 () Bool)

(declare-fun e!568542 () SeekEntryResult!9562)

(assert (=> b!1010560 (= e!568542 e!568543)))

(declare-fun c!101953 () Bool)

(declare-fun lt!446641 () (_ BitVec 64))

(assert (=> b!1010560 (= c!101953 (or (= lt!446641 lt!446595) (= (bvadd lt!446641 lt!446641) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119973 () Bool)

(declare-fun e!568545 () Bool)

(assert (=> d!119973 e!568545))

(declare-fun c!101954 () Bool)

(assert (=> d!119973 (= c!101954 (and (is-Intermediate!9562 lt!446640) (undefined!10374 lt!446640)))))

(assert (=> d!119973 (= lt!446640 e!568542)))

(declare-fun c!101955 () Bool)

(assert (=> d!119973 (= c!101955 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119973 (= lt!446641 (select (arr!30630 lt!446599) index!1507))))

(assert (=> d!119973 (validMask!0 mask!3464)))

(assert (=> d!119973 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446595 lt!446599 mask!3464) lt!446640)))

(declare-fun b!1010561 () Bool)

(assert (=> b!1010561 (= e!568542 (Intermediate!9562 true index!1507 x!1245))))

(declare-fun b!1010562 () Bool)

(assert (=> b!1010562 (and (bvsge (index!40620 lt!446640) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446640) (size!31133 lt!446599)))))

(declare-fun res!678976 () Bool)

(assert (=> b!1010562 (= res!678976 (= (select (arr!30630 lt!446599) (index!40620 lt!446640)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010562 (=> res!678976 e!568541)))

(declare-fun b!1010563 () Bool)

(assert (=> b!1010563 (= e!568545 e!568544)))

(declare-fun res!678977 () Bool)

(assert (=> b!1010563 (= res!678977 (and (is-Intermediate!9562 lt!446640) (not (undefined!10374 lt!446640)) (bvslt (x!88049 lt!446640) #b01111111111111111111111111111110) (bvsge (x!88049 lt!446640) #b00000000000000000000000000000000) (bvsge (x!88049 lt!446640) x!1245)))))

(assert (=> b!1010563 (=> (not res!678977) (not e!568544))))

(declare-fun b!1010564 () Bool)

(assert (=> b!1010564 (= e!568543 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446595 lt!446599 mask!3464))))

(declare-fun b!1010565 () Bool)

(assert (=> b!1010565 (= e!568545 (bvsge (x!88049 lt!446640) #b01111111111111111111111111111110))))

(declare-fun b!1010566 () Bool)

(assert (=> b!1010566 (and (bvsge (index!40620 lt!446640) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446640) (size!31133 lt!446599)))))

(assert (=> b!1010566 (= e!568541 (= (select (arr!30630 lt!446599) (index!40620 lt!446640)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119973 c!101955) b!1010561))

(assert (= (and d!119973 (not c!101955)) b!1010560))

(assert (= (and b!1010560 c!101953) b!1010559))

(assert (= (and b!1010560 (not c!101953)) b!1010564))

(assert (= (and d!119973 c!101954) b!1010565))

(assert (= (and d!119973 (not c!101954)) b!1010563))

(assert (= (and b!1010563 res!678977) b!1010558))

(assert (= (and b!1010558 (not res!678975)) b!1010562))

(assert (= (and b!1010562 (not res!678976)) b!1010566))

(declare-fun m!934953 () Bool)

(assert (=> b!1010558 m!934953))

(assert (=> b!1010562 m!934953))

(assert (=> b!1010564 m!934881))

(assert (=> b!1010564 m!934881))

(declare-fun m!934955 () Bool)

(assert (=> b!1010564 m!934955))

(assert (=> b!1010566 m!934953))

(declare-fun m!934957 () Bool)

(assert (=> d!119973 m!934957))

(assert (=> d!119973 m!934897))

(assert (=> b!1010442 d!119973))

(declare-fun b!1010617 () Bool)

(declare-fun e!568581 () Bool)

(declare-fun call!42415 () Bool)

(assert (=> b!1010617 (= e!568581 call!42415)))

(declare-fun b!1010618 () Bool)

(declare-fun e!568579 () Bool)

(assert (=> b!1010618 (= e!568579 e!568581)))

(declare-fun c!101970 () Bool)

(assert (=> b!1010618 (= c!101970 (validKeyInArray!0 (select (arr!30630 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010619 () Bool)

(declare-fun e!568580 () Bool)

(assert (=> b!1010619 (= e!568581 e!568580)))

(declare-fun lt!446664 () (_ BitVec 64))

(assert (=> b!1010619 (= lt!446664 (select (arr!30630 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32972 0))(
  ( (Unit!32973) )
))
(declare-fun lt!446662 () Unit!32972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63632 (_ BitVec 64) (_ BitVec 32)) Unit!32972)

(assert (=> b!1010619 (= lt!446662 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446664 #b00000000000000000000000000000000))))

(assert (=> b!1010619 (arrayContainsKey!0 a!3219 lt!446664 #b00000000000000000000000000000000)))

(declare-fun lt!446663 () Unit!32972)

(assert (=> b!1010619 (= lt!446663 lt!446662)))

(declare-fun res!679001 () Bool)

(assert (=> b!1010619 (= res!679001 (= (seekEntryOrOpen!0 (select (arr!30630 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9562 #b00000000000000000000000000000000)))))

(assert (=> b!1010619 (=> (not res!679001) (not e!568580))))

(declare-fun b!1010620 () Bool)

(assert (=> b!1010620 (= e!568580 call!42415)))

(declare-fun d!119991 () Bool)

(declare-fun res!679002 () Bool)

(assert (=> d!119991 (=> res!679002 e!568579)))

(assert (=> d!119991 (= res!679002 (bvsge #b00000000000000000000000000000000 (size!31133 a!3219)))))

(assert (=> d!119991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568579)))

(declare-fun bm!42412 () Bool)

(assert (=> bm!42412 (= call!42415 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!119991 (not res!679002)) b!1010618))

(assert (= (and b!1010618 c!101970) b!1010619))

(assert (= (and b!1010618 (not c!101970)) b!1010617))

(assert (= (and b!1010619 res!679001) b!1010620))

(assert (= (or b!1010620 b!1010617) bm!42412))

(declare-fun m!934989 () Bool)

(assert (=> b!1010618 m!934989))

(assert (=> b!1010618 m!934989))

(declare-fun m!934991 () Bool)

(assert (=> b!1010618 m!934991))

(assert (=> b!1010619 m!934989))

(declare-fun m!934993 () Bool)

(assert (=> b!1010619 m!934993))

(declare-fun m!934995 () Bool)

(assert (=> b!1010619 m!934995))

(assert (=> b!1010619 m!934989))

(declare-fun m!934997 () Bool)

(assert (=> b!1010619 m!934997))

(declare-fun m!934999 () Bool)

(assert (=> bm!42412 m!934999))

(assert (=> b!1010432 d!119991))

(declare-fun b!1010621 () Bool)

(declare-fun lt!446665 () SeekEntryResult!9562)

(assert (=> b!1010621 (and (bvsge (index!40620 lt!446665) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446665) (size!31133 lt!446599)))))

(declare-fun res!679003 () Bool)

(assert (=> b!1010621 (= res!679003 (= (select (arr!30630 lt!446599) (index!40620 lt!446665)) lt!446595))))

(declare-fun e!568582 () Bool)

(assert (=> b!1010621 (=> res!679003 e!568582)))

(declare-fun e!568585 () Bool)

(assert (=> b!1010621 (= e!568585 e!568582)))

(declare-fun b!1010622 () Bool)

(declare-fun e!568584 () SeekEntryResult!9562)

(assert (=> b!1010622 (= e!568584 (Intermediate!9562 false (toIndex!0 lt!446595 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010623 () Bool)

(declare-fun e!568583 () SeekEntryResult!9562)

(assert (=> b!1010623 (= e!568583 e!568584)))

(declare-fun c!101971 () Bool)

(declare-fun lt!446666 () (_ BitVec 64))

(assert (=> b!1010623 (= c!101971 (or (= lt!446666 lt!446595) (= (bvadd lt!446666 lt!446666) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120005 () Bool)

(declare-fun e!568586 () Bool)

(assert (=> d!120005 e!568586))

(declare-fun c!101972 () Bool)

(assert (=> d!120005 (= c!101972 (and (is-Intermediate!9562 lt!446665) (undefined!10374 lt!446665)))))

(assert (=> d!120005 (= lt!446665 e!568583)))

(declare-fun c!101973 () Bool)

(assert (=> d!120005 (= c!101973 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120005 (= lt!446666 (select (arr!30630 lt!446599) (toIndex!0 lt!446595 mask!3464)))))

(assert (=> d!120005 (validMask!0 mask!3464)))

(assert (=> d!120005 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446595 mask!3464) lt!446595 lt!446599 mask!3464) lt!446665)))

(declare-fun b!1010624 () Bool)

(assert (=> b!1010624 (= e!568583 (Intermediate!9562 true (toIndex!0 lt!446595 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010625 () Bool)

(assert (=> b!1010625 (and (bvsge (index!40620 lt!446665) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446665) (size!31133 lt!446599)))))

(declare-fun res!679004 () Bool)

(assert (=> b!1010625 (= res!679004 (= (select (arr!30630 lt!446599) (index!40620 lt!446665)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010625 (=> res!679004 e!568582)))

(declare-fun b!1010626 () Bool)

(assert (=> b!1010626 (= e!568586 e!568585)))

(declare-fun res!679005 () Bool)

(assert (=> b!1010626 (= res!679005 (and (is-Intermediate!9562 lt!446665) (not (undefined!10374 lt!446665)) (bvslt (x!88049 lt!446665) #b01111111111111111111111111111110) (bvsge (x!88049 lt!446665) #b00000000000000000000000000000000) (bvsge (x!88049 lt!446665) #b00000000000000000000000000000000)))))

(assert (=> b!1010626 (=> (not res!679005) (not e!568585))))

(declare-fun b!1010627 () Bool)

(assert (=> b!1010627 (= e!568584 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446595 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446595 lt!446599 mask!3464))))

(declare-fun b!1010628 () Bool)

(assert (=> b!1010628 (= e!568586 (bvsge (x!88049 lt!446665) #b01111111111111111111111111111110))))

(declare-fun b!1010629 () Bool)

(assert (=> b!1010629 (and (bvsge (index!40620 lt!446665) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446665) (size!31133 lt!446599)))))

(assert (=> b!1010629 (= e!568582 (= (select (arr!30630 lt!446599) (index!40620 lt!446665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!120005 c!101973) b!1010624))

(assert (= (and d!120005 (not c!101973)) b!1010623))

(assert (= (and b!1010623 c!101971) b!1010622))

(assert (= (and b!1010623 (not c!101971)) b!1010627))

(assert (= (and d!120005 c!101972) b!1010628))

(assert (= (and d!120005 (not c!101972)) b!1010626))

(assert (= (and b!1010626 res!679005) b!1010621))

(assert (= (and b!1010621 (not res!679003)) b!1010625))

(assert (= (and b!1010625 (not res!679004)) b!1010629))

(declare-fun m!935001 () Bool)

(assert (=> b!1010621 m!935001))

(assert (=> b!1010625 m!935001))

(assert (=> b!1010627 m!934885))

(declare-fun m!935003 () Bool)

(assert (=> b!1010627 m!935003))

(assert (=> b!1010627 m!935003))

(declare-fun m!935005 () Bool)

(assert (=> b!1010627 m!935005))

(assert (=> b!1010629 m!935001))

(assert (=> d!120005 m!934885))

(declare-fun m!935007 () Bool)

(assert (=> d!120005 m!935007))

(assert (=> d!120005 m!934897))

(assert (=> b!1010430 d!120005))

(declare-fun d!120007 () Bool)

(declare-fun lt!446684 () (_ BitVec 32))

(declare-fun lt!446683 () (_ BitVec 32))

(assert (=> d!120007 (= lt!446684 (bvmul (bvxor lt!446683 (bvlshr lt!446683 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120007 (= lt!446683 ((_ extract 31 0) (bvand (bvxor lt!446595 (bvlshr lt!446595 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120007 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679006 (let ((h!22623 ((_ extract 31 0) (bvand (bvxor lt!446595 (bvlshr lt!446595 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88056 (bvmul (bvxor h!22623 (bvlshr h!22623 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88056 (bvlshr x!88056 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679006 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679006 #b00000000000000000000000000000000))))))

(assert (=> d!120007 (= (toIndex!0 lt!446595 mask!3464) (bvand (bvxor lt!446684 (bvlshr lt!446684 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010430 d!120007))

(declare-fun b!1010650 () Bool)

(declare-fun lt!446688 () SeekEntryResult!9562)

(assert (=> b!1010650 (and (bvsge (index!40620 lt!446688) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446688) (size!31133 a!3219)))))

(declare-fun res!679017 () Bool)

(assert (=> b!1010650 (= res!679017 (= (select (arr!30630 a!3219) (index!40620 lt!446688)) (select (arr!30630 a!3219) j!170)))))

(declare-fun e!568602 () Bool)

(assert (=> b!1010650 (=> res!679017 e!568602)))

(declare-fun e!568605 () Bool)

(assert (=> b!1010650 (= e!568605 e!568602)))

(declare-fun b!1010651 () Bool)

(declare-fun e!568604 () SeekEntryResult!9562)

(assert (=> b!1010651 (= e!568604 (Intermediate!9562 false lt!446596 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1010652 () Bool)

(declare-fun e!568603 () SeekEntryResult!9562)

(assert (=> b!1010652 (= e!568603 e!568604)))

(declare-fun c!101979 () Bool)

(declare-fun lt!446689 () (_ BitVec 64))

(assert (=> b!1010652 (= c!101979 (or (= lt!446689 (select (arr!30630 a!3219) j!170)) (= (bvadd lt!446689 lt!446689) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120009 () Bool)

(declare-fun e!568606 () Bool)

(assert (=> d!120009 e!568606))

(declare-fun c!101980 () Bool)

(assert (=> d!120009 (= c!101980 (and (is-Intermediate!9562 lt!446688) (undefined!10374 lt!446688)))))

(assert (=> d!120009 (= lt!446688 e!568603)))

(declare-fun c!101981 () Bool)

(assert (=> d!120009 (= c!101981 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!120009 (= lt!446689 (select (arr!30630 a!3219) lt!446596))))

(assert (=> d!120009 (validMask!0 mask!3464)))

(assert (=> d!120009 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446596 (select (arr!30630 a!3219) j!170) a!3219 mask!3464) lt!446688)))

(declare-fun b!1010653 () Bool)

(assert (=> b!1010653 (= e!568603 (Intermediate!9562 true lt!446596 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1010654 () Bool)

(assert (=> b!1010654 (and (bvsge (index!40620 lt!446688) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446688) (size!31133 a!3219)))))

(declare-fun res!679018 () Bool)

(assert (=> b!1010654 (= res!679018 (= (select (arr!30630 a!3219) (index!40620 lt!446688)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010654 (=> res!679018 e!568602)))

(declare-fun b!1010655 () Bool)

(assert (=> b!1010655 (= e!568606 e!568605)))

(declare-fun res!679019 () Bool)

(assert (=> b!1010655 (= res!679019 (and (is-Intermediate!9562 lt!446688) (not (undefined!10374 lt!446688)) (bvslt (x!88049 lt!446688) #b01111111111111111111111111111110) (bvsge (x!88049 lt!446688) #b00000000000000000000000000000000) (bvsge (x!88049 lt!446688) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1010655 (=> (not res!679019) (not e!568605))))

(declare-fun b!1010656 () Bool)

(assert (=> b!1010656 (= e!568604 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446596 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30630 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010657 () Bool)

(assert (=> b!1010657 (= e!568606 (bvsge (x!88049 lt!446688) #b01111111111111111111111111111110))))

(declare-fun b!1010658 () Bool)

(assert (=> b!1010658 (and (bvsge (index!40620 lt!446688) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446688) (size!31133 a!3219)))))

(assert (=> b!1010658 (= e!568602 (= (select (arr!30630 a!3219) (index!40620 lt!446688)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!120009 c!101981) b!1010653))

(assert (= (and d!120009 (not c!101981)) b!1010652))

(assert (= (and b!1010652 c!101979) b!1010651))

(assert (= (and b!1010652 (not c!101979)) b!1010656))

(assert (= (and d!120009 c!101980) b!1010657))

(assert (= (and d!120009 (not c!101980)) b!1010655))

(assert (= (and b!1010655 res!679019) b!1010650))

(assert (= (and b!1010650 (not res!679017)) b!1010654))

(assert (= (and b!1010654 (not res!679018)) b!1010658))

(declare-fun m!935021 () Bool)

(assert (=> b!1010650 m!935021))

(assert (=> b!1010654 m!935021))

(declare-fun m!935023 () Bool)

(assert (=> b!1010656 m!935023))

(assert (=> b!1010656 m!935023))

(assert (=> b!1010656 m!934873))

(declare-fun m!935025 () Bool)

(assert (=> b!1010656 m!935025))

(assert (=> b!1010658 m!935021))

(declare-fun m!935027 () Bool)

(assert (=> d!120009 m!935027))

(assert (=> d!120009 m!934897))

(assert (=> b!1010441 d!120009))

(declare-fun b!1010682 () Bool)

(declare-fun e!568626 () Bool)

(declare-fun call!42424 () Bool)

(assert (=> b!1010682 (= e!568626 call!42424)))

(declare-fun b!1010683 () Bool)

(declare-fun e!568623 () Bool)

(declare-fun contains!5904 (List!21432 (_ BitVec 64)) Bool)

(assert (=> b!1010683 (= e!568623 (contains!5904 Nil!21429 (select (arr!30630 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42421 () Bool)

(declare-fun c!101988 () Bool)

(assert (=> bm!42421 (= call!42424 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101988 (Cons!21428 (select (arr!30630 a!3219) #b00000000000000000000000000000000) Nil!21429) Nil!21429)))))

(declare-fun d!120013 () Bool)

(declare-fun res!679032 () Bool)

(declare-fun e!568625 () Bool)

(assert (=> d!120013 (=> res!679032 e!568625)))

(assert (=> d!120013 (= res!679032 (bvsge #b00000000000000000000000000000000 (size!31133 a!3219)))))

(assert (=> d!120013 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21429) e!568625)))

(declare-fun b!1010684 () Bool)

(declare-fun e!568624 () Bool)

(assert (=> b!1010684 (= e!568625 e!568624)))

(declare-fun res!679033 () Bool)

(assert (=> b!1010684 (=> (not res!679033) (not e!568624))))

(assert (=> b!1010684 (= res!679033 (not e!568623))))

(declare-fun res!679031 () Bool)

(assert (=> b!1010684 (=> (not res!679031) (not e!568623))))

(assert (=> b!1010684 (= res!679031 (validKeyInArray!0 (select (arr!30630 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010685 () Bool)

(assert (=> b!1010685 (= e!568626 call!42424)))

(declare-fun b!1010686 () Bool)

(assert (=> b!1010686 (= e!568624 e!568626)))

(assert (=> b!1010686 (= c!101988 (validKeyInArray!0 (select (arr!30630 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!120013 (not res!679032)) b!1010684))

(assert (= (and b!1010684 res!679031) b!1010683))

(assert (= (and b!1010684 res!679033) b!1010686))

(assert (= (and b!1010686 c!101988) b!1010682))

(assert (= (and b!1010686 (not c!101988)) b!1010685))

(assert (= (or b!1010682 b!1010685) bm!42421))

(assert (=> b!1010683 m!934989))

(assert (=> b!1010683 m!934989))

(declare-fun m!935047 () Bool)

(assert (=> b!1010683 m!935047))

(assert (=> bm!42421 m!934989))

(declare-fun m!935049 () Bool)

(assert (=> bm!42421 m!935049))

(assert (=> b!1010684 m!934989))

(assert (=> b!1010684 m!934989))

(assert (=> b!1010684 m!934991))

(assert (=> b!1010686 m!934989))

(assert (=> b!1010686 m!934989))

(assert (=> b!1010686 m!934991))

(assert (=> b!1010434 d!120013))

(declare-fun b!1010687 () Bool)

(declare-fun lt!446700 () SeekEntryResult!9562)

(assert (=> b!1010687 (and (bvsge (index!40620 lt!446700) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446700) (size!31133 a!3219)))))

(declare-fun res!679034 () Bool)

(assert (=> b!1010687 (= res!679034 (= (select (arr!30630 a!3219) (index!40620 lt!446700)) (select (arr!30630 a!3219) j!170)))))

(declare-fun e!568627 () Bool)

(assert (=> b!1010687 (=> res!679034 e!568627)))

(declare-fun e!568630 () Bool)

(assert (=> b!1010687 (= e!568630 e!568627)))

(declare-fun e!568629 () SeekEntryResult!9562)

(declare-fun b!1010688 () Bool)

(assert (=> b!1010688 (= e!568629 (Intermediate!9562 false (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010689 () Bool)

(declare-fun e!568628 () SeekEntryResult!9562)

(assert (=> b!1010689 (= e!568628 e!568629)))

(declare-fun lt!446701 () (_ BitVec 64))

(declare-fun c!101989 () Bool)

(assert (=> b!1010689 (= c!101989 (or (= lt!446701 (select (arr!30630 a!3219) j!170)) (= (bvadd lt!446701 lt!446701) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120021 () Bool)

(declare-fun e!568631 () Bool)

(assert (=> d!120021 e!568631))

(declare-fun c!101990 () Bool)

(assert (=> d!120021 (= c!101990 (and (is-Intermediate!9562 lt!446700) (undefined!10374 lt!446700)))))

(assert (=> d!120021 (= lt!446700 e!568628)))

(declare-fun c!101991 () Bool)

(assert (=> d!120021 (= c!101991 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120021 (= lt!446701 (select (arr!30630 a!3219) (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464)))))

(assert (=> d!120021 (validMask!0 mask!3464)))

(assert (=> d!120021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) (select (arr!30630 a!3219) j!170) a!3219 mask!3464) lt!446700)))

(declare-fun b!1010690 () Bool)

(assert (=> b!1010690 (= e!568628 (Intermediate!9562 true (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010691 () Bool)

(assert (=> b!1010691 (and (bvsge (index!40620 lt!446700) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446700) (size!31133 a!3219)))))

(declare-fun res!679035 () Bool)

(assert (=> b!1010691 (= res!679035 (= (select (arr!30630 a!3219) (index!40620 lt!446700)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010691 (=> res!679035 e!568627)))

(declare-fun b!1010692 () Bool)

(assert (=> b!1010692 (= e!568631 e!568630)))

(declare-fun res!679036 () Bool)

(assert (=> b!1010692 (= res!679036 (and (is-Intermediate!9562 lt!446700) (not (undefined!10374 lt!446700)) (bvslt (x!88049 lt!446700) #b01111111111111111111111111111110) (bvsge (x!88049 lt!446700) #b00000000000000000000000000000000) (bvsge (x!88049 lt!446700) #b00000000000000000000000000000000)))))

(assert (=> b!1010692 (=> (not res!679036) (not e!568630))))

(declare-fun b!1010693 () Bool)

(assert (=> b!1010693 (= e!568629 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30630 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010694 () Bool)

(assert (=> b!1010694 (= e!568631 (bvsge (x!88049 lt!446700) #b01111111111111111111111111111110))))

(declare-fun b!1010695 () Bool)

(assert (=> b!1010695 (and (bvsge (index!40620 lt!446700) #b00000000000000000000000000000000) (bvslt (index!40620 lt!446700) (size!31133 a!3219)))))

(assert (=> b!1010695 (= e!568627 (= (select (arr!30630 a!3219) (index!40620 lt!446700)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!120021 c!101991) b!1010690))

(assert (= (and d!120021 (not c!101991)) b!1010689))

(assert (= (and b!1010689 c!101989) b!1010688))

(assert (= (and b!1010689 (not c!101989)) b!1010693))

(assert (= (and d!120021 c!101990) b!1010694))

(assert (= (and d!120021 (not c!101990)) b!1010692))

(assert (= (and b!1010692 res!679036) b!1010687))

(assert (= (and b!1010687 (not res!679034)) b!1010691))

(assert (= (and b!1010691 (not res!679035)) b!1010695))

(declare-fun m!935051 () Bool)

(assert (=> b!1010687 m!935051))

(assert (=> b!1010691 m!935051))

(assert (=> b!1010693 m!934875))

(declare-fun m!935053 () Bool)

(assert (=> b!1010693 m!935053))

(assert (=> b!1010693 m!935053))

(assert (=> b!1010693 m!934873))

(declare-fun m!935055 () Bool)

(assert (=> b!1010693 m!935055))

(assert (=> b!1010695 m!935051))

(assert (=> d!120021 m!934875))

(declare-fun m!935057 () Bool)

(assert (=> d!120021 m!935057))

(assert (=> d!120021 m!934897))

(assert (=> b!1010435 d!120021))

(declare-fun d!120023 () Bool)

(declare-fun lt!446703 () (_ BitVec 32))

(declare-fun lt!446702 () (_ BitVec 32))

(assert (=> d!120023 (= lt!446703 (bvmul (bvxor lt!446702 (bvlshr lt!446702 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120023 (= lt!446702 ((_ extract 31 0) (bvand (bvxor (select (arr!30630 a!3219) j!170) (bvlshr (select (arr!30630 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120023 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679006 (let ((h!22623 ((_ extract 31 0) (bvand (bvxor (select (arr!30630 a!3219) j!170) (bvlshr (select (arr!30630 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88056 (bvmul (bvxor h!22623 (bvlshr h!22623 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88056 (bvlshr x!88056 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679006 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679006 #b00000000000000000000000000000000))))))

(assert (=> d!120023 (= (toIndex!0 (select (arr!30630 a!3219) j!170) mask!3464) (bvand (bvxor lt!446703 (bvlshr lt!446703 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010435 d!120023))

(declare-fun d!120025 () Bool)

(declare-fun res!679041 () Bool)

(declare-fun e!568636 () Bool)

(assert (=> d!120025 (=> res!679041 e!568636)))

(assert (=> d!120025 (= res!679041 (= (select (arr!30630 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!120025 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568636)))

