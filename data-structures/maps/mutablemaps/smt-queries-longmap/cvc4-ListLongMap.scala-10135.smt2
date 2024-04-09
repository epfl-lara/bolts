; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119564 () Bool)

(assert start!119564)

(declare-fun b!1392533 () Bool)

(declare-fun e!788561 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1392533 (= e!788561 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-datatypes ((array!95215 0))(
  ( (array!95216 (arr!45963 (Array (_ BitVec 32) (_ BitVec 64))) (size!46514 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95215)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1392534 () Bool)

(declare-fun e!788560 () Bool)

(declare-datatypes ((SeekEntryResult!10302 0))(
  ( (MissingZero!10302 (index!43578 (_ BitVec 32))) (Found!10302 (index!43579 (_ BitVec 32))) (Intermediate!10302 (undefined!11114 Bool) (index!43580 (_ BitVec 32)) (x!125263 (_ BitVec 32))) (Undefined!10302) (MissingVacant!10302 (index!43581 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95215 (_ BitVec 32)) SeekEntryResult!10302)

(assert (=> b!1392534 (= e!788560 (= (seekEntryOrOpen!0 (select (arr!45963 a!2901) j!112) a!2901 mask!2840) (Found!10302 j!112)))))

(declare-fun res!932217 () Bool)

(declare-fun e!788559 () Bool)

(assert (=> start!119564 (=> (not res!932217) (not e!788559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119564 (= res!932217 (validMask!0 mask!2840))))

(assert (=> start!119564 e!788559))

(assert (=> start!119564 true))

(declare-fun array_inv!34908 (array!95215) Bool)

(assert (=> start!119564 (array_inv!34908 a!2901)))

(declare-fun b!1392535 () Bool)

(assert (=> b!1392535 (= e!788559 (not e!788561))))

(declare-fun res!932216 () Bool)

(assert (=> b!1392535 (=> res!932216 e!788561)))

(declare-fun lt!611599 () SeekEntryResult!10302)

(assert (=> b!1392535 (= res!932216 (or (not (is-Intermediate!10302 lt!611599)) (undefined!11114 lt!611599)))))

(assert (=> b!1392535 e!788560))

(declare-fun res!932215 () Bool)

(assert (=> b!1392535 (=> (not res!932215) (not e!788560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95215 (_ BitVec 32)) Bool)

(assert (=> b!1392535 (= res!932215 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46558 0))(
  ( (Unit!46559) )
))
(declare-fun lt!611598 () Unit!46558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46558)

(assert (=> b!1392535 (= lt!611598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95215 (_ BitVec 32)) SeekEntryResult!10302)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392535 (= lt!611599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) (select (arr!45963 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392536 () Bool)

(declare-fun res!932220 () Bool)

(assert (=> b!1392536 (=> (not res!932220) (not e!788559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392536 (= res!932220 (validKeyInArray!0 (select (arr!45963 a!2901) j!112)))))

(declare-fun b!1392537 () Bool)

(declare-fun res!932218 () Bool)

(assert (=> b!1392537 (=> res!932218 e!788561)))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1392537 (= res!932218 (not (= lt!611599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)) mask!2840))))))

(declare-fun b!1392538 () Bool)

(declare-fun res!932219 () Bool)

(assert (=> b!1392538 (=> (not res!932219) (not e!788559))))

(assert (=> b!1392538 (= res!932219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392539 () Bool)

(declare-fun res!932222 () Bool)

(assert (=> b!1392539 (=> (not res!932222) (not e!788559))))

(assert (=> b!1392539 (= res!932222 (validKeyInArray!0 (select (arr!45963 a!2901) i!1037)))))

(declare-fun b!1392540 () Bool)

(declare-fun res!932221 () Bool)

(assert (=> b!1392540 (=> (not res!932221) (not e!788559))))

(declare-datatypes ((List!32662 0))(
  ( (Nil!32659) (Cons!32658 (h!33888 (_ BitVec 64)) (t!47363 List!32662)) )
))
(declare-fun arrayNoDuplicates!0 (array!95215 (_ BitVec 32) List!32662) Bool)

(assert (=> b!1392540 (= res!932221 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32659))))

(declare-fun b!1392541 () Bool)

(declare-fun res!932223 () Bool)

(assert (=> b!1392541 (=> (not res!932223) (not e!788559))))

(assert (=> b!1392541 (= res!932223 (and (= (size!46514 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46514 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46514 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119564 res!932217) b!1392541))

(assert (= (and b!1392541 res!932223) b!1392539))

(assert (= (and b!1392539 res!932222) b!1392536))

(assert (= (and b!1392536 res!932220) b!1392538))

(assert (= (and b!1392538 res!932219) b!1392540))

(assert (= (and b!1392540 res!932221) b!1392535))

(assert (= (and b!1392535 res!932215) b!1392534))

(assert (= (and b!1392535 (not res!932216)) b!1392537))

(assert (= (and b!1392537 (not res!932218)) b!1392533))

(declare-fun m!1278373 () Bool)

(assert (=> b!1392539 m!1278373))

(assert (=> b!1392539 m!1278373))

(declare-fun m!1278375 () Bool)

(assert (=> b!1392539 m!1278375))

(declare-fun m!1278377 () Bool)

(assert (=> b!1392537 m!1278377))

(declare-fun m!1278379 () Bool)

(assert (=> b!1392537 m!1278379))

(assert (=> b!1392537 m!1278379))

(declare-fun m!1278381 () Bool)

(assert (=> b!1392537 m!1278381))

(assert (=> b!1392537 m!1278381))

(assert (=> b!1392537 m!1278379))

(declare-fun m!1278383 () Bool)

(assert (=> b!1392537 m!1278383))

(declare-fun m!1278385 () Bool)

(assert (=> b!1392534 m!1278385))

(assert (=> b!1392534 m!1278385))

(declare-fun m!1278387 () Bool)

(assert (=> b!1392534 m!1278387))

(declare-fun m!1278389 () Bool)

(assert (=> start!119564 m!1278389))

(declare-fun m!1278391 () Bool)

(assert (=> start!119564 m!1278391))

(declare-fun m!1278393 () Bool)

(assert (=> b!1392538 m!1278393))

(declare-fun m!1278395 () Bool)

(assert (=> b!1392540 m!1278395))

(assert (=> b!1392535 m!1278385))

(declare-fun m!1278397 () Bool)

(assert (=> b!1392535 m!1278397))

(assert (=> b!1392535 m!1278385))

(declare-fun m!1278399 () Bool)

(assert (=> b!1392535 m!1278399))

(assert (=> b!1392535 m!1278397))

(assert (=> b!1392535 m!1278385))

(declare-fun m!1278401 () Bool)

(assert (=> b!1392535 m!1278401))

(declare-fun m!1278403 () Bool)

(assert (=> b!1392535 m!1278403))

(assert (=> b!1392536 m!1278385))

(assert (=> b!1392536 m!1278385))

(declare-fun m!1278405 () Bool)

(assert (=> b!1392536 m!1278405))

(push 1)

(assert (not b!1392540))

(assert (not b!1392535))

(assert (not b!1392539))

(assert (not b!1392537))

(assert (not b!1392538))

(assert (not b!1392536))

(assert (not start!119564))

(assert (not b!1392534))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150443 () Bool)

(assert (=> d!150443 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119564 d!150443))

(declare-fun d!150447 () Bool)

(assert (=> d!150447 (= (array_inv!34908 a!2901) (bvsge (size!46514 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119564 d!150447))

(declare-fun d!150449 () Bool)

(declare-fun res!932247 () Bool)

(declare-fun e!788602 () Bool)

(assert (=> d!150449 (=> res!932247 e!788602)))

(assert (=> d!150449 (= res!932247 (bvsge #b00000000000000000000000000000000 (size!46514 a!2901)))))

(assert (=> d!150449 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788602)))

(declare-fun bm!66786 () Bool)

(declare-fun call!66789 () Bool)

(assert (=> bm!66786 (= call!66789 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392598 () Bool)

(declare-fun e!788601 () Bool)

(assert (=> b!1392598 (= e!788601 call!66789)))

(declare-fun b!1392599 () Bool)

(declare-fun e!788603 () Bool)

(assert (=> b!1392599 (= e!788603 e!788601)))

(declare-fun lt!611617 () (_ BitVec 64))

(assert (=> b!1392599 (= lt!611617 (select (arr!45963 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611616 () Unit!46558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95215 (_ BitVec 64) (_ BitVec 32)) Unit!46558)

(assert (=> b!1392599 (= lt!611616 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611617 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392599 (arrayContainsKey!0 a!2901 lt!611617 #b00000000000000000000000000000000)))

(declare-fun lt!611615 () Unit!46558)

(assert (=> b!1392599 (= lt!611615 lt!611616)))

(declare-fun res!932246 () Bool)

(assert (=> b!1392599 (= res!932246 (= (seekEntryOrOpen!0 (select (arr!45963 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10302 #b00000000000000000000000000000000)))))

(assert (=> b!1392599 (=> (not res!932246) (not e!788601))))

(declare-fun b!1392600 () Bool)

(assert (=> b!1392600 (= e!788603 call!66789)))

(declare-fun b!1392601 () Bool)

(assert (=> b!1392601 (= e!788602 e!788603)))

(declare-fun c!129629 () Bool)

(assert (=> b!1392601 (= c!129629 (validKeyInArray!0 (select (arr!45963 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150449 (not res!932247)) b!1392601))

(assert (= (and b!1392601 c!129629) b!1392599))

(assert (= (and b!1392601 (not c!129629)) b!1392600))

(assert (= (and b!1392599 res!932246) b!1392598))

(assert (= (or b!1392598 b!1392600) bm!66786))

(declare-fun m!1278433 () Bool)

(assert (=> bm!66786 m!1278433))

(declare-fun m!1278435 () Bool)

(assert (=> b!1392599 m!1278435))

(declare-fun m!1278437 () Bool)

(assert (=> b!1392599 m!1278437))

(declare-fun m!1278439 () Bool)

(assert (=> b!1392599 m!1278439))

(assert (=> b!1392599 m!1278435))

(declare-fun m!1278441 () Bool)

(assert (=> b!1392599 m!1278441))

(assert (=> b!1392601 m!1278435))

(assert (=> b!1392601 m!1278435))

(declare-fun m!1278443 () Bool)

(assert (=> b!1392601 m!1278443))

(assert (=> b!1392538 d!150449))

(declare-fun b!1392667 () Bool)

(declare-fun e!788648 () SeekEntryResult!10302)

(assert (=> b!1392667 (= e!788648 (Intermediate!10302 true (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392668 () Bool)

(declare-fun lt!611653 () SeekEntryResult!10302)

(assert (=> b!1392668 (and (bvsge (index!43580 lt!611653) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611653) (size!46514 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)))))))

(declare-fun res!932275 () Bool)

(assert (=> b!1392668 (= res!932275 (= (select (arr!45963 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901))) (index!43580 lt!611653)) (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!788646 () Bool)

(assert (=> b!1392668 (=> res!932275 e!788646)))

(declare-fun e!788647 () Bool)

(assert (=> b!1392668 (= e!788647 e!788646)))

(declare-fun d!150453 () Bool)

(declare-fun e!788644 () Bool)

(assert (=> d!150453 e!788644))

(declare-fun c!129650 () Bool)

(assert (=> d!150453 (= c!129650 (and (is-Intermediate!10302 lt!611653) (undefined!11114 lt!611653)))))

(assert (=> d!150453 (= lt!611653 e!788648)))

(declare-fun c!129652 () Bool)

(assert (=> d!150453 (= c!129652 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611652 () (_ BitVec 64))

(assert (=> d!150453 (= lt!611652 (select (arr!45963 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901))) (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150453 (validMask!0 mask!2840)))

(assert (=> d!150453 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)) mask!2840) lt!611653)))

(declare-fun b!1392669 () Bool)

(assert (=> b!1392669 (= e!788644 (bvsge (x!125263 lt!611653) #b01111111111111111111111111111110))))

(declare-fun b!1392670 () Bool)

(assert (=> b!1392670 (and (bvsge (index!43580 lt!611653) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611653) (size!46514 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)))))))

(declare-fun res!932274 () Bool)

(assert (=> b!1392670 (= res!932274 (= (select (arr!45963 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901))) (index!43580 lt!611653)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392670 (=> res!932274 e!788646)))

(declare-fun b!1392671 () Bool)

(declare-fun e!788645 () SeekEntryResult!10302)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392671 (= e!788645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)) mask!2840))))

(declare-fun b!1392672 () Bool)

(assert (=> b!1392672 (= e!788644 e!788647)))

(declare-fun res!932276 () Bool)

(assert (=> b!1392672 (= res!932276 (and (is-Intermediate!10302 lt!611653) (not (undefined!11114 lt!611653)) (bvslt (x!125263 lt!611653) #b01111111111111111111111111111110) (bvsge (x!125263 lt!611653) #b00000000000000000000000000000000) (bvsge (x!125263 lt!611653) #b00000000000000000000000000000000)))))

(assert (=> b!1392672 (=> (not res!932276) (not e!788647))))

(declare-fun b!1392673 () Bool)

(assert (=> b!1392673 (and (bvsge (index!43580 lt!611653) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611653) (size!46514 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901)))))))

(assert (=> b!1392673 (= e!788646 (= (select (arr!45963 (array!95216 (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46514 a!2901))) (index!43580 lt!611653)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392674 () Bool)

(assert (=> b!1392674 (= e!788648 e!788645)))

(declare-fun c!129651 () Bool)

(assert (=> b!1392674 (= c!129651 (or (= lt!611652 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!611652 lt!611652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392675 () Bool)

(assert (=> b!1392675 (= e!788645 (Intermediate!10302 false (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!150453 c!129652) b!1392667))

(assert (= (and d!150453 (not c!129652)) b!1392674))

(assert (= (and b!1392674 c!129651) b!1392675))

(assert (= (and b!1392674 (not c!129651)) b!1392671))

(assert (= (and d!150453 c!129650) b!1392669))

(assert (= (and d!150453 (not c!129650)) b!1392672))

(assert (= (and b!1392672 res!932276) b!1392668))

(assert (= (and b!1392668 (not res!932275)) b!1392670))

(assert (= (and b!1392670 (not res!932274)) b!1392673))

(assert (=> d!150453 m!1278381))

(declare-fun m!1278461 () Bool)

(assert (=> d!150453 m!1278461))

(assert (=> d!150453 m!1278389))

(assert (=> b!1392671 m!1278381))

(declare-fun m!1278463 () Bool)

(assert (=> b!1392671 m!1278463))

(assert (=> b!1392671 m!1278463))

(assert (=> b!1392671 m!1278379))

(declare-fun m!1278467 () Bool)

(assert (=> b!1392671 m!1278467))

(declare-fun m!1278469 () Bool)

(assert (=> b!1392670 m!1278469))

(assert (=> b!1392673 m!1278469))

(assert (=> b!1392668 m!1278469))

(assert (=> b!1392537 d!150453))

(declare-fun d!150463 () Bool)

(declare-fun lt!611671 () (_ BitVec 32))

(declare-fun lt!611670 () (_ BitVec 32))

(assert (=> d!150463 (= lt!611671 (bvmul (bvxor lt!611670 (bvlshr lt!611670 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150463 (= lt!611670 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150463 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932279 (let ((h!33890 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125267 (bvmul (bvxor h!33890 (bvlshr h!33890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125267 (bvlshr x!125267 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932279 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932279 #b00000000000000000000000000000000))))))

(assert (=> d!150463 (= (toIndex!0 (select (store (arr!45963 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611671 (bvlshr lt!611671 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392537 d!150463))

(declare-fun d!150469 () Bool)

(assert (=> d!150469 (= (validKeyInArray!0 (select (arr!45963 a!2901) j!112)) (and (not (= (select (arr!45963 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45963 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1392536 d!150469))

(declare-fun d!150473 () Bool)

(declare-fun res!932284 () Bool)

(declare-fun e!788664 () Bool)

(assert (=> d!150473 (=> res!932284 e!788664)))

(assert (=> d!150473 (= res!932284 (bvsge j!112 (size!46514 a!2901)))))

(assert (=> d!150473 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788664)))

(declare-fun bm!66793 () Bool)

(declare-fun call!66796 () Bool)

(assert (=> bm!66793 (= call!66796 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392701 () Bool)

(declare-fun e!788663 () Bool)

(assert (=> b!1392701 (= e!788663 call!66796)))

(declare-fun b!1392702 () Bool)

(declare-fun e!788665 () Bool)

(assert (=> b!1392702 (= e!788665 e!788663)))

(declare-fun lt!611676 () (_ BitVec 64))

(assert (=> b!1392702 (= lt!611676 (select (arr!45963 a!2901) j!112))))

(declare-fun lt!611675 () Unit!46558)

(assert (=> b!1392702 (= lt!611675 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611676 j!112))))

(assert (=> b!1392702 (arrayContainsKey!0 a!2901 lt!611676 #b00000000000000000000000000000000)))

(declare-fun lt!611674 () Unit!46558)

(assert (=> b!1392702 (= lt!611674 lt!611675)))

(declare-fun res!932283 () Bool)

(assert (=> b!1392702 (= res!932283 (= (seekEntryOrOpen!0 (select (arr!45963 a!2901) j!112) a!2901 mask!2840) (Found!10302 j!112)))))

(assert (=> b!1392702 (=> (not res!932283) (not e!788663))))

(declare-fun b!1392703 () Bool)

(assert (=> b!1392703 (= e!788665 call!66796)))

(declare-fun b!1392704 () Bool)

(assert (=> b!1392704 (= e!788664 e!788665)))

(declare-fun c!129663 () Bool)

(assert (=> b!1392704 (= c!129663 (validKeyInArray!0 (select (arr!45963 a!2901) j!112)))))

(assert (= (and d!150473 (not res!932284)) b!1392704))

(assert (= (and b!1392704 c!129663) b!1392702))

(assert (= (and b!1392704 (not c!129663)) b!1392703))

(assert (= (and b!1392702 res!932283) b!1392701))

(assert (= (or b!1392701 b!1392703) bm!66793))

(declare-fun m!1278485 () Bool)

(assert (=> bm!66793 m!1278485))

(assert (=> b!1392702 m!1278385))

(declare-fun m!1278487 () Bool)

(assert (=> b!1392702 m!1278487))

(declare-fun m!1278489 () Bool)

(assert (=> b!1392702 m!1278489))

(assert (=> b!1392702 m!1278385))

(assert (=> b!1392702 m!1278387))

(assert (=> b!1392704 m!1278385))

(assert (=> b!1392704 m!1278385))

(assert (=> b!1392704 m!1278405))

(assert (=> b!1392535 d!150473))

(declare-fun d!150477 () Bool)

(assert (=> d!150477 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611681 () Unit!46558)

(declare-fun choose!38 (array!95215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46558)

(assert (=> d!150477 (= lt!611681 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150477 (validMask!0 mask!2840)))

(assert (=> d!150477 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611681)))

(declare-fun bs!40510 () Bool)

(assert (= bs!40510 d!150477))

(assert (=> bs!40510 m!1278403))

(declare-fun m!1278499 () Bool)

(assert (=> bs!40510 m!1278499))

(assert (=> bs!40510 m!1278389))

(assert (=> b!1392535 d!150477))

(declare-fun e!788679 () SeekEntryResult!10302)

(declare-fun b!1392720 () Bool)

(assert (=> b!1392720 (= e!788679 (Intermediate!10302 true (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392721 () Bool)

(declare-fun lt!611683 () SeekEntryResult!10302)

(assert (=> b!1392721 (and (bvsge (index!43580 lt!611683) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611683) (size!46514 a!2901)))))

(declare-fun res!932295 () Bool)

(assert (=> b!1392721 (= res!932295 (= (select (arr!45963 a!2901) (index!43580 lt!611683)) (select (arr!45963 a!2901) j!112)))))

(declare-fun e!788677 () Bool)

(assert (=> b!1392721 (=> res!932295 e!788677)))

(declare-fun e!788678 () Bool)

(assert (=> b!1392721 (= e!788678 e!788677)))

(declare-fun d!150481 () Bool)

(declare-fun e!788675 () Bool)

(assert (=> d!150481 e!788675))

(declare-fun c!129667 () Bool)

(assert (=> d!150481 (= c!129667 (and (is-Intermediate!10302 lt!611683) (undefined!11114 lt!611683)))))

(assert (=> d!150481 (= lt!611683 e!788679)))

(declare-fun c!129669 () Bool)

(assert (=> d!150481 (= c!129669 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611682 () (_ BitVec 64))

(assert (=> d!150481 (= lt!611682 (select (arr!45963 a!2901) (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840)))))

(assert (=> d!150481 (validMask!0 mask!2840)))

(assert (=> d!150481 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) (select (arr!45963 a!2901) j!112) a!2901 mask!2840) lt!611683)))

(declare-fun b!1392722 () Bool)

(assert (=> b!1392722 (= e!788675 (bvsge (x!125263 lt!611683) #b01111111111111111111111111111110))))

(declare-fun b!1392723 () Bool)

(assert (=> b!1392723 (and (bvsge (index!43580 lt!611683) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611683) (size!46514 a!2901)))))

(declare-fun res!932294 () Bool)

(assert (=> b!1392723 (= res!932294 (= (select (arr!45963 a!2901) (index!43580 lt!611683)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392723 (=> res!932294 e!788677)))

(declare-fun e!788676 () SeekEntryResult!10302)

(declare-fun b!1392724 () Bool)

(assert (=> b!1392724 (= e!788676 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45963 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392725 () Bool)

(assert (=> b!1392725 (= e!788675 e!788678)))

(declare-fun res!932296 () Bool)

(assert (=> b!1392725 (= res!932296 (and (is-Intermediate!10302 lt!611683) (not (undefined!11114 lt!611683)) (bvslt (x!125263 lt!611683) #b01111111111111111111111111111110) (bvsge (x!125263 lt!611683) #b00000000000000000000000000000000) (bvsge (x!125263 lt!611683) #b00000000000000000000000000000000)))))

(assert (=> b!1392725 (=> (not res!932296) (not e!788678))))

(declare-fun b!1392726 () Bool)

(assert (=> b!1392726 (and (bvsge (index!43580 lt!611683) #b00000000000000000000000000000000) (bvslt (index!43580 lt!611683) (size!46514 a!2901)))))

(assert (=> b!1392726 (= e!788677 (= (select (arr!45963 a!2901) (index!43580 lt!611683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392727 () Bool)

(assert (=> b!1392727 (= e!788679 e!788676)))

(declare-fun c!129668 () Bool)

(assert (=> b!1392727 (= c!129668 (or (= lt!611682 (select (arr!45963 a!2901) j!112)) (= (bvadd lt!611682 lt!611682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392728 () Bool)

(assert (=> b!1392728 (= e!788676 (Intermediate!10302 false (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!150481 c!129669) b!1392720))

(assert (= (and d!150481 (not c!129669)) b!1392727))

(assert (= (and b!1392727 c!129668) b!1392728))

(assert (= (and b!1392727 (not c!129668)) b!1392724))

(assert (= (and d!150481 c!129667) b!1392722))

(assert (= (and d!150481 (not c!129667)) b!1392725))

(assert (= (and b!1392725 res!932296) b!1392721))

(assert (= (and b!1392721 (not res!932295)) b!1392723))

(assert (= (and b!1392723 (not res!932294)) b!1392726))

(assert (=> d!150481 m!1278397))

(declare-fun m!1278501 () Bool)

(assert (=> d!150481 m!1278501))

(assert (=> d!150481 m!1278389))

(assert (=> b!1392724 m!1278397))

(declare-fun m!1278503 () Bool)

(assert (=> b!1392724 m!1278503))

(assert (=> b!1392724 m!1278503))

(assert (=> b!1392724 m!1278385))

(declare-fun m!1278505 () Bool)

(assert (=> b!1392724 m!1278505))

(declare-fun m!1278507 () Bool)

(assert (=> b!1392723 m!1278507))

(assert (=> b!1392726 m!1278507))

(assert (=> b!1392721 m!1278507))

(assert (=> b!1392535 d!150481))

(declare-fun d!150483 () Bool)

(declare-fun lt!611685 () (_ BitVec 32))

(declare-fun lt!611684 () (_ BitVec 32))

(assert (=> d!150483 (= lt!611685 (bvmul (bvxor lt!611684 (bvlshr lt!611684 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150483 (= lt!611684 ((_ extract 31 0) (bvand (bvxor (select (arr!45963 a!2901) j!112) (bvlshr (select (arr!45963 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150483 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932279 (let ((h!33890 ((_ extract 31 0) (bvand (bvxor (select (arr!45963 a!2901) j!112) (bvlshr (select (arr!45963 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125267 (bvmul (bvxor h!33890 (bvlshr h!33890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125267 (bvlshr x!125267 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932279 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932279 #b00000000000000000000000000000000))))))

(assert (=> d!150483 (= (toIndex!0 (select (arr!45963 a!2901) j!112) mask!2840) (bvand (bvxor lt!611685 (bvlshr lt!611685 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392535 d!150483))

(declare-fun b!1392748 () Bool)

(declare-fun e!788696 () Bool)

(declare-fun contains!9786 (List!32662 (_ BitVec 64)) Bool)

(assert (=> b!1392748 (= e!788696 (contains!9786 Nil!32659 (select (arr!45963 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392749 () Bool)

(declare-fun e!788695 () Bool)

(declare-fun e!788694 () Bool)

(assert (=> b!1392749 (= e!788695 e!788694)))

(declare-fun res!932307 () Bool)

(assert (=> b!1392749 (=> (not res!932307) (not e!788694))))

(assert (=> b!1392749 (= res!932307 (not e!788696))))

(declare-fun res!932308 () Bool)

(assert (=> b!1392749 (=> (not res!932308) (not e!788696))))

(assert (=> b!1392749 (= res!932308 (validKeyInArray!0 (select (arr!45963 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392750 () Bool)

(declare-fun e!788693 () Bool)

(declare-fun call!66799 () Bool)

(assert (=> b!1392750 (= e!788693 call!66799)))

(declare-fun d!150485 () Bool)

(declare-fun res!932309 () Bool)

(assert (=> d!150485 (=> res!932309 e!788695)))

(assert (=> d!150485 (= res!932309 (bvsge #b00000000000000000000000000000000 (size!46514 a!2901)))))

(assert (=> d!150485 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32659) e!788695)))

(declare-fun b!1392751 () Bool)

(assert (=> b!1392751 (= e!788693 call!66799)))

(declare-fun bm!66796 () Bool)

(declare-fun c!129675 () Bool)

(assert (=> bm!66796 (= call!66799 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129675 (Cons!32658 (select (arr!45963 a!2901) #b00000000000000000000000000000000) Nil!32659) Nil!32659)))))

(declare-fun b!1392752 () Bool)

(assert (=> b!1392752 (= e!788694 e!788693)))

(assert (=> b!1392752 (= c!129675 (validKeyInArray!0 (select (arr!45963 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150485 (not res!932309)) b!1392749))

(assert (= (and b!1392749 res!932308) b!1392748))

(assert (= (and b!1392749 res!932307) b!1392752))

(assert (= (and b!1392752 c!129675) b!1392751))

(assert (= (and b!1392752 (not c!129675)) b!1392750))

(assert (= (or b!1392751 b!1392750) bm!66796))

(assert (=> b!1392748 m!1278435))

(assert (=> b!1392748 m!1278435))

(declare-fun m!1278517 () Bool)

(assert (=> b!1392748 m!1278517))

(assert (=> b!1392749 m!1278435))

(assert (=> b!1392749 m!1278435))

(assert (=> b!1392749 m!1278443))

(assert (=> bm!66796 m!1278435))

(declare-fun m!1278519 () Bool)

(assert (=> bm!66796 m!1278519))

(assert (=> b!1392752 m!1278435))

(assert (=> b!1392752 m!1278435))

(assert (=> b!1392752 m!1278443))

(assert (=> b!1392540 d!150485))

(declare-fun b!1392791 () Bool)

(declare-fun c!129695 () Bool)

(declare-fun lt!611717 () (_ BitVec 64))

(assert (=> b!1392791 (= c!129695 (= lt!611717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788720 () SeekEntryResult!10302)

(declare-fun e!788718 () SeekEntryResult!10302)

(assert (=> b!1392791 (= e!788720 e!788718)))

(declare-fun b!1392792 () Bool)

(declare-fun lt!611719 () SeekEntryResult!10302)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95215 (_ BitVec 32)) SeekEntryResult!10302)

(assert (=> b!1392792 (= e!788718 (seekKeyOrZeroReturnVacant!0 (x!125263 lt!611719) (index!43580 lt!611719) (index!43580 lt!611719) (select (arr!45963 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392793 () Bool)

(declare-fun e!788719 () SeekEntryResult!10302)

