; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123208 () Bool)

(assert start!123208)

(declare-fun b!1428196 () Bool)

(declare-fun res!963142 () Bool)

(declare-fun e!806609 () Bool)

(assert (=> b!1428196 (=> (not res!963142) (not e!806609))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97338 0))(
  ( (array!97339 (arr!46978 (Array (_ BitVec 32) (_ BitVec 64))) (size!47529 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97338)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428196 (= res!963142 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47529 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47529 a!2831))))))

(declare-fun b!1428197 () Bool)

(declare-fun e!806607 () Bool)

(assert (=> b!1428197 (= e!806609 e!806607)))

(declare-fun res!963145 () Bool)

(assert (=> b!1428197 (=> (not res!963145) (not e!806607))))

(declare-datatypes ((SeekEntryResult!11279 0))(
  ( (MissingZero!11279 (index!47507 (_ BitVec 32))) (Found!11279 (index!47508 (_ BitVec 32))) (Intermediate!11279 (undefined!12091 Bool) (index!47509 (_ BitVec 32)) (x!129150 (_ BitVec 32))) (Undefined!11279) (MissingVacant!11279 (index!47510 (_ BitVec 32))) )
))
(declare-fun lt!628846 () SeekEntryResult!11279)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97338 (_ BitVec 32)) SeekEntryResult!11279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428197 (= res!963145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) (select (arr!46978 a!2831) j!81) a!2831 mask!2608) lt!628846))))

(assert (=> b!1428197 (= lt!628846 (Intermediate!11279 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428198 () Bool)

(declare-fun res!963135 () Bool)

(assert (=> b!1428198 (=> (not res!963135) (not e!806609))))

(declare-datatypes ((List!33668 0))(
  ( (Nil!33665) (Cons!33664 (h!34975 (_ BitVec 64)) (t!48369 List!33668)) )
))
(declare-fun arrayNoDuplicates!0 (array!97338 (_ BitVec 32) List!33668) Bool)

(assert (=> b!1428198 (= res!963135 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33665))))

(declare-fun b!1428199 () Bool)

(declare-fun res!963140 () Bool)

(declare-fun e!806606 () Bool)

(assert (=> b!1428199 (=> (not res!963140) (not e!806606))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428199 (= res!963140 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428200 () Bool)

(declare-fun res!963144 () Bool)

(assert (=> b!1428200 (=> (not res!963144) (not e!806606))))

(assert (=> b!1428200 (= res!963144 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46978 a!2831) j!81) a!2831 mask!2608) lt!628846))))

(declare-fun b!1428201 () Bool)

(declare-fun res!963147 () Bool)

(assert (=> b!1428201 (=> (not res!963147) (not e!806609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97338 (_ BitVec 32)) Bool)

(assert (=> b!1428201 (= res!963147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428202 () Bool)

(assert (=> b!1428202 (= e!806607 e!806606)))

(declare-fun res!963138 () Bool)

(assert (=> b!1428202 (=> (not res!963138) (not e!806606))))

(declare-fun lt!628845 () SeekEntryResult!11279)

(declare-fun lt!628849 () (_ BitVec 64))

(declare-fun lt!628847 () array!97338)

(assert (=> b!1428202 (= res!963138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628849 mask!2608) lt!628849 lt!628847 mask!2608) lt!628845))))

(assert (=> b!1428202 (= lt!628845 (Intermediate!11279 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428202 (= lt!628849 (select (store (arr!46978 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428202 (= lt!628847 (array!97339 (store (arr!46978 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47529 a!2831)))))

(declare-fun e!806605 () Bool)

(declare-fun b!1428203 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97338 (_ BitVec 32)) SeekEntryResult!11279)

(assert (=> b!1428203 (= e!806605 (= (seekEntryOrOpen!0 (select (arr!46978 a!2831) j!81) a!2831 mask!2608) (Found!11279 j!81)))))

(declare-fun b!1428204 () Bool)

(declare-fun res!963137 () Bool)

(assert (=> b!1428204 (=> (not res!963137) (not e!806609))))

(assert (=> b!1428204 (= res!963137 (and (= (size!47529 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47529 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47529 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!963139 () Bool)

(assert (=> start!123208 (=> (not res!963139) (not e!806609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123208 (= res!963139 (validMask!0 mask!2608))))

(assert (=> start!123208 e!806609))

(assert (=> start!123208 true))

(declare-fun array_inv!35923 (array!97338) Bool)

(assert (=> start!123208 (array_inv!35923 a!2831)))

(declare-fun b!1428205 () Bool)

(assert (=> b!1428205 (= e!806606 (not (or (= (select (arr!46978 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46978 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46978 a!2831) index!585) (select (arr!46978 a!2831) j!81))))))))

(assert (=> b!1428205 e!806605))

(declare-fun res!963143 () Bool)

(assert (=> b!1428205 (=> (not res!963143) (not e!806605))))

(assert (=> b!1428205 (= res!963143 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48252 0))(
  ( (Unit!48253) )
))
(declare-fun lt!628848 () Unit!48252)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48252)

(assert (=> b!1428205 (= lt!628848 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428206 () Bool)

(declare-fun res!963146 () Bool)

(assert (=> b!1428206 (=> (not res!963146) (not e!806609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428206 (= res!963146 (validKeyInArray!0 (select (arr!46978 a!2831) j!81)))))

(declare-fun b!1428207 () Bool)

(declare-fun res!963141 () Bool)

(assert (=> b!1428207 (=> (not res!963141) (not e!806609))))

(assert (=> b!1428207 (= res!963141 (validKeyInArray!0 (select (arr!46978 a!2831) i!982)))))

(declare-fun b!1428208 () Bool)

(declare-fun res!963136 () Bool)

(assert (=> b!1428208 (=> (not res!963136) (not e!806606))))

(assert (=> b!1428208 (= res!963136 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628849 lt!628847 mask!2608) lt!628845))))

(assert (= (and start!123208 res!963139) b!1428204))

(assert (= (and b!1428204 res!963137) b!1428207))

(assert (= (and b!1428207 res!963141) b!1428206))

(assert (= (and b!1428206 res!963146) b!1428201))

(assert (= (and b!1428201 res!963147) b!1428198))

(assert (= (and b!1428198 res!963135) b!1428196))

(assert (= (and b!1428196 res!963142) b!1428197))

(assert (= (and b!1428197 res!963145) b!1428202))

(assert (= (and b!1428202 res!963138) b!1428200))

(assert (= (and b!1428200 res!963144) b!1428208))

(assert (= (and b!1428208 res!963136) b!1428199))

(assert (= (and b!1428199 res!963140) b!1428205))

(assert (= (and b!1428205 res!963143) b!1428203))

(declare-fun m!1318493 () Bool)

(assert (=> b!1428198 m!1318493))

(declare-fun m!1318495 () Bool)

(assert (=> b!1428208 m!1318495))

(declare-fun m!1318497 () Bool)

(assert (=> b!1428206 m!1318497))

(assert (=> b!1428206 m!1318497))

(declare-fun m!1318499 () Bool)

(assert (=> b!1428206 m!1318499))

(assert (=> b!1428203 m!1318497))

(assert (=> b!1428203 m!1318497))

(declare-fun m!1318501 () Bool)

(assert (=> b!1428203 m!1318501))

(declare-fun m!1318503 () Bool)

(assert (=> b!1428202 m!1318503))

(assert (=> b!1428202 m!1318503))

(declare-fun m!1318505 () Bool)

(assert (=> b!1428202 m!1318505))

(declare-fun m!1318507 () Bool)

(assert (=> b!1428202 m!1318507))

(declare-fun m!1318509 () Bool)

(assert (=> b!1428202 m!1318509))

(assert (=> b!1428197 m!1318497))

(assert (=> b!1428197 m!1318497))

(declare-fun m!1318511 () Bool)

(assert (=> b!1428197 m!1318511))

(assert (=> b!1428197 m!1318511))

(assert (=> b!1428197 m!1318497))

(declare-fun m!1318513 () Bool)

(assert (=> b!1428197 m!1318513))

(declare-fun m!1318515 () Bool)

(assert (=> start!123208 m!1318515))

(declare-fun m!1318517 () Bool)

(assert (=> start!123208 m!1318517))

(declare-fun m!1318519 () Bool)

(assert (=> b!1428207 m!1318519))

(assert (=> b!1428207 m!1318519))

(declare-fun m!1318521 () Bool)

(assert (=> b!1428207 m!1318521))

(declare-fun m!1318523 () Bool)

(assert (=> b!1428205 m!1318523))

(assert (=> b!1428205 m!1318497))

(declare-fun m!1318525 () Bool)

(assert (=> b!1428205 m!1318525))

(declare-fun m!1318527 () Bool)

(assert (=> b!1428205 m!1318527))

(declare-fun m!1318529 () Bool)

(assert (=> b!1428201 m!1318529))

(assert (=> b!1428200 m!1318497))

(assert (=> b!1428200 m!1318497))

(declare-fun m!1318531 () Bool)

(assert (=> b!1428200 m!1318531))

(push 1)

(assert (not b!1428206))

(assert (not b!1428201))

(assert (not b!1428200))

(assert (not b!1428203))

(assert (not b!1428197))

(assert (not b!1428202))

(assert (not b!1428207))

(assert (not start!123208))

(assert (not b!1428208))

(assert (not b!1428205))

(assert (not b!1428198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1428372 () Bool)

(declare-fun e!806698 () SeekEntryResult!11279)

(assert (=> b!1428372 (= e!806698 (Intermediate!11279 true index!585 x!605))))

(declare-fun b!1428373 () Bool)

(declare-fun e!806697 () Bool)

(declare-fun lt!628916 () SeekEntryResult!11279)

(assert (=> b!1428373 (= e!806697 (bvsge (x!129150 lt!628916) #b01111111111111111111111111111110))))

(declare-fun b!1428374 () Bool)

(declare-fun e!806694 () Bool)

(assert (=> b!1428374 (= e!806697 e!806694)))

(declare-fun res!963264 () Bool)

(assert (=> b!1428374 (= res!963264 (and (is-Intermediate!11279 lt!628916) (not (undefined!12091 lt!628916)) (bvslt (x!129150 lt!628916) #b01111111111111111111111111111110) (bvsge (x!129150 lt!628916) #b00000000000000000000000000000000) (bvsge (x!129150 lt!628916) x!605)))))

(assert (=> b!1428374 (=> (not res!963264) (not e!806694))))

(declare-fun b!1428375 () Bool)

(assert (=> b!1428375 (and (bvsge (index!47509 lt!628916) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628916) (size!47529 lt!628847)))))

(declare-fun e!806696 () Bool)

(assert (=> b!1428375 (= e!806696 (= (select (arr!46978 lt!628847) (index!47509 lt!628916)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428376 () Bool)

(assert (=> b!1428376 (and (bvsge (index!47509 lt!628916) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628916) (size!47529 lt!628847)))))

(declare-fun res!963263 () Bool)

(assert (=> b!1428376 (= res!963263 (= (select (arr!46978 lt!628847) (index!47509 lt!628916)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428376 (=> res!963263 e!806696)))

(declare-fun b!1428377 () Bool)

(declare-fun e!806695 () SeekEntryResult!11279)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428377 (= e!806695 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628849 lt!628847 mask!2608))))

(declare-fun b!1428378 () Bool)

(assert (=> b!1428378 (and (bvsge (index!47509 lt!628916) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628916) (size!47529 lt!628847)))))

(declare-fun res!963262 () Bool)

(assert (=> b!1428378 (= res!963262 (= (select (arr!46978 lt!628847) (index!47509 lt!628916)) lt!628849))))

(assert (=> b!1428378 (=> res!963262 e!806696)))

(assert (=> b!1428378 (= e!806694 e!806696)))

(declare-fun b!1428380 () Bool)

(assert (=> b!1428380 (= e!806698 e!806695)))

(declare-fun c!132050 () Bool)

(declare-fun lt!628915 () (_ BitVec 64))

(assert (=> b!1428380 (= c!132050 (or (= lt!628915 lt!628849) (= (bvadd lt!628915 lt!628915) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!153397 () Bool)

(assert (=> d!153397 e!806697))

(declare-fun c!132051 () Bool)

(assert (=> d!153397 (= c!132051 (and (is-Intermediate!11279 lt!628916) (undefined!12091 lt!628916)))))

(assert (=> d!153397 (= lt!628916 e!806698)))

(declare-fun c!132049 () Bool)

(assert (=> d!153397 (= c!132049 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153397 (= lt!628915 (select (arr!46978 lt!628847) index!585))))

(assert (=> d!153397 (validMask!0 mask!2608)))

(assert (=> d!153397 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628849 lt!628847 mask!2608) lt!628916)))

(declare-fun b!1428379 () Bool)

(assert (=> b!1428379 (= e!806695 (Intermediate!11279 false index!585 x!605))))

(assert (= (and d!153397 c!132049) b!1428372))

(assert (= (and d!153397 (not c!132049)) b!1428380))

(assert (= (and b!1428380 c!132050) b!1428379))

(assert (= (and b!1428380 (not c!132050)) b!1428377))

(assert (= (and d!153397 c!132051) b!1428373))

(assert (= (and d!153397 (not c!132051)) b!1428374))

(assert (= (and b!1428374 res!963264) b!1428378))

(assert (= (and b!1428378 (not res!963262)) b!1428376))

(assert (= (and b!1428376 (not res!963263)) b!1428375))

(declare-fun m!1318653 () Bool)

(assert (=> b!1428376 m!1318653))

(assert (=> b!1428375 m!1318653))

(declare-fun m!1318655 () Bool)

(assert (=> b!1428377 m!1318655))

(assert (=> b!1428377 m!1318655))

(declare-fun m!1318657 () Bool)

(assert (=> b!1428377 m!1318657))

(assert (=> b!1428378 m!1318653))

(declare-fun m!1318659 () Bool)

(assert (=> d!153397 m!1318659))

(assert (=> d!153397 m!1318515))

(assert (=> b!1428208 d!153397))

(declare-fun b!1428455 () Bool)

(declare-fun c!132083 () Bool)

(declare-fun lt!628946 () (_ BitVec 64))

(assert (=> b!1428455 (= c!132083 (= lt!628946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806740 () SeekEntryResult!11279)

(declare-fun e!806742 () SeekEntryResult!11279)

(assert (=> b!1428455 (= e!806740 e!806742)))

(declare-fun b!1428456 () Bool)

(declare-fun lt!628947 () SeekEntryResult!11279)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97338 (_ BitVec 32)) SeekEntryResult!11279)

(assert (=> b!1428456 (= e!806742 (seekKeyOrZeroReturnVacant!0 (x!129150 lt!628947) (index!47509 lt!628947) (index!47509 lt!628947) (select (arr!46978 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428457 () Bool)

(declare-fun e!806741 () SeekEntryResult!11279)

(assert (=> b!1428457 (= e!806741 Undefined!11279)))

(declare-fun b!1428458 () Bool)

(assert (=> b!1428458 (= e!806742 (MissingZero!11279 (index!47509 lt!628947)))))

(declare-fun d!153419 () Bool)

(declare-fun lt!628948 () SeekEntryResult!11279)

(assert (=> d!153419 (and (or (is-Undefined!11279 lt!628948) (not (is-Found!11279 lt!628948)) (and (bvsge (index!47508 lt!628948) #b00000000000000000000000000000000) (bvslt (index!47508 lt!628948) (size!47529 a!2831)))) (or (is-Undefined!11279 lt!628948) (is-Found!11279 lt!628948) (not (is-MissingZero!11279 lt!628948)) (and (bvsge (index!47507 lt!628948) #b00000000000000000000000000000000) (bvslt (index!47507 lt!628948) (size!47529 a!2831)))) (or (is-Undefined!11279 lt!628948) (is-Found!11279 lt!628948) (is-MissingZero!11279 lt!628948) (not (is-MissingVacant!11279 lt!628948)) (and (bvsge (index!47510 lt!628948) #b00000000000000000000000000000000) (bvslt (index!47510 lt!628948) (size!47529 a!2831)))) (or (is-Undefined!11279 lt!628948) (ite (is-Found!11279 lt!628948) (= (select (arr!46978 a!2831) (index!47508 lt!628948)) (select (arr!46978 a!2831) j!81)) (ite (is-MissingZero!11279 lt!628948) (= (select (arr!46978 a!2831) (index!47507 lt!628948)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11279 lt!628948) (= (select (arr!46978 a!2831) (index!47510 lt!628948)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153419 (= lt!628948 e!806741)))

(declare-fun c!132081 () Bool)

(assert (=> d!153419 (= c!132081 (and (is-Intermediate!11279 lt!628947) (undefined!12091 lt!628947)))))

(assert (=> d!153419 (= lt!628947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) (select (arr!46978 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153419 (validMask!0 mask!2608)))

(assert (=> d!153419 (= (seekEntryOrOpen!0 (select (arr!46978 a!2831) j!81) a!2831 mask!2608) lt!628948)))

(declare-fun b!1428459 () Bool)

(assert (=> b!1428459 (= e!806740 (Found!11279 (index!47509 lt!628947)))))

(declare-fun b!1428460 () Bool)

(assert (=> b!1428460 (= e!806741 e!806740)))

(assert (=> b!1428460 (= lt!628946 (select (arr!46978 a!2831) (index!47509 lt!628947)))))

(declare-fun c!132082 () Bool)

(assert (=> b!1428460 (= c!132082 (= lt!628946 (select (arr!46978 a!2831) j!81)))))

(assert (= (and d!153419 c!132081) b!1428457))

(assert (= (and d!153419 (not c!132081)) b!1428460))

(assert (= (and b!1428460 c!132082) b!1428459))

(assert (= (and b!1428460 (not c!132082)) b!1428455))

(assert (= (and b!1428455 c!132083) b!1428458))

(assert (= (and b!1428455 (not c!132083)) b!1428456))

(assert (=> b!1428456 m!1318497))

(declare-fun m!1318687 () Bool)

(assert (=> b!1428456 m!1318687))

(assert (=> d!153419 m!1318511))

(assert (=> d!153419 m!1318497))

(assert (=> d!153419 m!1318513))

(declare-fun m!1318695 () Bool)

(assert (=> d!153419 m!1318695))

(assert (=> d!153419 m!1318515))

(declare-fun m!1318699 () Bool)

(assert (=> d!153419 m!1318699))

(declare-fun m!1318703 () Bool)

(assert (=> d!153419 m!1318703))

(assert (=> d!153419 m!1318497))

(assert (=> d!153419 m!1318511))

(declare-fun m!1318705 () Bool)

(assert (=> b!1428460 m!1318705))

(assert (=> b!1428203 d!153419))

(declare-fun b!1428484 () Bool)

(declare-fun e!806761 () Bool)

(declare-fun e!806759 () Bool)

(assert (=> b!1428484 (= e!806761 e!806759)))

(declare-fun res!963294 () Bool)

(assert (=> b!1428484 (=> (not res!963294) (not e!806759))))

(declare-fun e!806762 () Bool)

(assert (=> b!1428484 (= res!963294 (not e!806762))))

(declare-fun res!963293 () Bool)

(assert (=> b!1428484 (=> (not res!963293) (not e!806762))))

(assert (=> b!1428484 (= res!963293 (validKeyInArray!0 (select (arr!46978 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1428485 () Bool)

(declare-fun contains!9867 (List!33668 (_ BitVec 64)) Bool)

(assert (=> b!1428485 (= e!806762 (contains!9867 Nil!33665 (select (arr!46978 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1428486 () Bool)

(declare-fun e!806760 () Bool)

(assert (=> b!1428486 (= e!806759 e!806760)))

(declare-fun c!132090 () Bool)

(assert (=> b!1428486 (= c!132090 (validKeyInArray!0 (select (arr!46978 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1428487 () Bool)

(declare-fun call!67396 () Bool)

(assert (=> b!1428487 (= e!806760 call!67396)))

(declare-fun d!153427 () Bool)

(declare-fun res!963295 () Bool)

(assert (=> d!153427 (=> res!963295 e!806761)))

(assert (=> d!153427 (= res!963295 (bvsge #b00000000000000000000000000000000 (size!47529 a!2831)))))

(assert (=> d!153427 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33665) e!806761)))

(declare-fun bm!67393 () Bool)

(assert (=> bm!67393 (= call!67396 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132090 (Cons!33664 (select (arr!46978 a!2831) #b00000000000000000000000000000000) Nil!33665) Nil!33665)))))

(declare-fun b!1428488 () Bool)

(assert (=> b!1428488 (= e!806760 call!67396)))

(assert (= (and d!153427 (not res!963295)) b!1428484))

(assert (= (and b!1428484 res!963293) b!1428485))

(assert (= (and b!1428484 res!963294) b!1428486))

(assert (= (and b!1428486 c!132090) b!1428487))

(assert (= (and b!1428486 (not c!132090)) b!1428488))

(assert (= (or b!1428487 b!1428488) bm!67393))

(declare-fun m!1318717 () Bool)

(assert (=> b!1428484 m!1318717))

(assert (=> b!1428484 m!1318717))

(declare-fun m!1318719 () Bool)

(assert (=> b!1428484 m!1318719))

(assert (=> b!1428485 m!1318717))

(assert (=> b!1428485 m!1318717))

(declare-fun m!1318721 () Bool)

(assert (=> b!1428485 m!1318721))

(assert (=> b!1428486 m!1318717))

(assert (=> b!1428486 m!1318717))

(assert (=> b!1428486 m!1318719))

(assert (=> bm!67393 m!1318717))

(declare-fun m!1318723 () Bool)

(assert (=> bm!67393 m!1318723))

(assert (=> b!1428198 d!153427))

(declare-fun d!153435 () Bool)

(assert (=> d!153435 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123208 d!153435))

(declare-fun d!153441 () Bool)

(assert (=> d!153441 (= (array_inv!35923 a!2831) (bvsge (size!47529 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123208 d!153441))

(declare-fun d!153443 () Bool)

(assert (=> d!153443 (= (validKeyInArray!0 (select (arr!46978 a!2831) i!982)) (and (not (= (select (arr!46978 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46978 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1428207 d!153443))

(declare-fun b!1428498 () Bool)

(declare-fun e!806772 () SeekEntryResult!11279)

(assert (=> b!1428498 (= e!806772 (Intermediate!11279 true (toIndex!0 lt!628849 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1428499 () Bool)

(declare-fun e!806771 () Bool)

(declare-fun lt!628963 () SeekEntryResult!11279)

(assert (=> b!1428499 (= e!806771 (bvsge (x!129150 lt!628963) #b01111111111111111111111111111110))))

(declare-fun b!1428500 () Bool)

(declare-fun e!806768 () Bool)

(assert (=> b!1428500 (= e!806771 e!806768)))

(declare-fun res!963301 () Bool)

(assert (=> b!1428500 (= res!963301 (and (is-Intermediate!11279 lt!628963) (not (undefined!12091 lt!628963)) (bvslt (x!129150 lt!628963) #b01111111111111111111111111111110) (bvsge (x!129150 lt!628963) #b00000000000000000000000000000000) (bvsge (x!129150 lt!628963) #b00000000000000000000000000000000)))))

(assert (=> b!1428500 (=> (not res!963301) (not e!806768))))

(declare-fun b!1428501 () Bool)

(assert (=> b!1428501 (and (bvsge (index!47509 lt!628963) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628963) (size!47529 lt!628847)))))

(declare-fun e!806770 () Bool)

(assert (=> b!1428501 (= e!806770 (= (select (arr!46978 lt!628847) (index!47509 lt!628963)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428502 () Bool)

(assert (=> b!1428502 (and (bvsge (index!47509 lt!628963) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628963) (size!47529 lt!628847)))))

(declare-fun res!963300 () Bool)

(assert (=> b!1428502 (= res!963300 (= (select (arr!46978 lt!628847) (index!47509 lt!628963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428502 (=> res!963300 e!806770)))

(declare-fun e!806769 () SeekEntryResult!11279)

(declare-fun b!1428503 () Bool)

(assert (=> b!1428503 (= e!806769 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628849 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628849 lt!628847 mask!2608))))

(declare-fun b!1428504 () Bool)

(assert (=> b!1428504 (and (bvsge (index!47509 lt!628963) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628963) (size!47529 lt!628847)))))

(declare-fun res!963299 () Bool)

(assert (=> b!1428504 (= res!963299 (= (select (arr!46978 lt!628847) (index!47509 lt!628963)) lt!628849))))

(assert (=> b!1428504 (=> res!963299 e!806770)))

(assert (=> b!1428504 (= e!806768 e!806770)))

(declare-fun b!1428506 () Bool)

(assert (=> b!1428506 (= e!806772 e!806769)))

(declare-fun c!132095 () Bool)

(declare-fun lt!628962 () (_ BitVec 64))

(assert (=> b!1428506 (= c!132095 (or (= lt!628962 lt!628849) (= (bvadd lt!628962 lt!628962) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!153445 () Bool)

(assert (=> d!153445 e!806771))

(declare-fun c!132096 () Bool)

(assert (=> d!153445 (= c!132096 (and (is-Intermediate!11279 lt!628963) (undefined!12091 lt!628963)))))

(assert (=> d!153445 (= lt!628963 e!806772)))

(declare-fun c!132094 () Bool)

(assert (=> d!153445 (= c!132094 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153445 (= lt!628962 (select (arr!46978 lt!628847) (toIndex!0 lt!628849 mask!2608)))))

(assert (=> d!153445 (validMask!0 mask!2608)))

(assert (=> d!153445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628849 mask!2608) lt!628849 lt!628847 mask!2608) lt!628963)))

(declare-fun b!1428505 () Bool)

(assert (=> b!1428505 (= e!806769 (Intermediate!11279 false (toIndex!0 lt!628849 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153445 c!132094) b!1428498))

(assert (= (and d!153445 (not c!132094)) b!1428506))

(assert (= (and b!1428506 c!132095) b!1428505))

(assert (= (and b!1428506 (not c!132095)) b!1428503))

(assert (= (and d!153445 c!132096) b!1428499))

(assert (= (and d!153445 (not c!132096)) b!1428500))

(assert (= (and b!1428500 res!963301) b!1428504))

(assert (= (and b!1428504 (not res!963299)) b!1428502))

(assert (= (and b!1428502 (not res!963300)) b!1428501))

(declare-fun m!1318729 () Bool)

(assert (=> b!1428502 m!1318729))

(assert (=> b!1428501 m!1318729))

(assert (=> b!1428503 m!1318503))

(declare-fun m!1318731 () Bool)

(assert (=> b!1428503 m!1318731))

(assert (=> b!1428503 m!1318731))

(declare-fun m!1318733 () Bool)

(assert (=> b!1428503 m!1318733))

(assert (=> b!1428504 m!1318729))

(assert (=> d!153445 m!1318503))

(declare-fun m!1318735 () Bool)

(assert (=> d!153445 m!1318735))

(assert (=> d!153445 m!1318515))

(assert (=> b!1428202 d!153445))

(declare-fun d!153447 () Bool)

(declare-fun lt!628975 () (_ BitVec 32))

(declare-fun lt!628974 () (_ BitVec 32))

(assert (=> d!153447 (= lt!628975 (bvmul (bvxor lt!628974 (bvlshr lt!628974 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153447 (= lt!628974 ((_ extract 31 0) (bvand (bvxor lt!628849 (bvlshr lt!628849 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153447 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!963302 (let ((h!34980 ((_ extract 31 0) (bvand (bvxor lt!628849 (bvlshr lt!628849 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129158 (bvmul (bvxor h!34980 (bvlshr h!34980 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129158 (bvlshr x!129158 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!963302 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!963302 #b00000000000000000000000000000000))))))

(assert (=> d!153447 (= (toIndex!0 lt!628849 mask!2608) (bvand (bvxor lt!628975 (bvlshr lt!628975 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1428202 d!153447))

(declare-fun b!1428519 () Bool)

(declare-fun e!806783 () SeekEntryResult!11279)

(assert (=> b!1428519 (= e!806783 (Intermediate!11279 true (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1428520 () Bool)

(declare-fun e!806782 () Bool)

(declare-fun lt!628977 () SeekEntryResult!11279)

(assert (=> b!1428520 (= e!806782 (bvsge (x!129150 lt!628977) #b01111111111111111111111111111110))))

(declare-fun b!1428521 () Bool)

(declare-fun e!806779 () Bool)

(assert (=> b!1428521 (= e!806782 e!806779)))

(declare-fun res!963305 () Bool)

(assert (=> b!1428521 (= res!963305 (and (is-Intermediate!11279 lt!628977) (not (undefined!12091 lt!628977)) (bvslt (x!129150 lt!628977) #b01111111111111111111111111111110) (bvsge (x!129150 lt!628977) #b00000000000000000000000000000000) (bvsge (x!129150 lt!628977) #b00000000000000000000000000000000)))))

(assert (=> b!1428521 (=> (not res!963305) (not e!806779))))

(declare-fun b!1428522 () Bool)

(assert (=> b!1428522 (and (bvsge (index!47509 lt!628977) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628977) (size!47529 a!2831)))))

(declare-fun e!806781 () Bool)

(assert (=> b!1428522 (= e!806781 (= (select (arr!46978 a!2831) (index!47509 lt!628977)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428523 () Bool)

(assert (=> b!1428523 (and (bvsge (index!47509 lt!628977) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628977) (size!47529 a!2831)))))

(declare-fun res!963304 () Bool)

(assert (=> b!1428523 (= res!963304 (= (select (arr!46978 a!2831) (index!47509 lt!628977)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428523 (=> res!963304 e!806781)))

(declare-fun e!806780 () SeekEntryResult!11279)

(declare-fun b!1428524 () Bool)

(assert (=> b!1428524 (= e!806780 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46978 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428525 () Bool)

(assert (=> b!1428525 (and (bvsge (index!47509 lt!628977) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628977) (size!47529 a!2831)))))

(declare-fun res!963303 () Bool)

(assert (=> b!1428525 (= res!963303 (= (select (arr!46978 a!2831) (index!47509 lt!628977)) (select (arr!46978 a!2831) j!81)))))

(assert (=> b!1428525 (=> res!963303 e!806781)))

(assert (=> b!1428525 (= e!806779 e!806781)))

(declare-fun b!1428527 () Bool)

(assert (=> b!1428527 (= e!806783 e!806780)))

(declare-fun c!132104 () Bool)

(declare-fun lt!628976 () (_ BitVec 64))

(assert (=> b!1428527 (= c!132104 (or (= lt!628976 (select (arr!46978 a!2831) j!81)) (= (bvadd lt!628976 lt!628976) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!153449 () Bool)

(assert (=> d!153449 e!806782))

(declare-fun c!132105 () Bool)

(assert (=> d!153449 (= c!132105 (and (is-Intermediate!11279 lt!628977) (undefined!12091 lt!628977)))))

(assert (=> d!153449 (= lt!628977 e!806783)))

(declare-fun c!132103 () Bool)

(assert (=> d!153449 (= c!132103 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153449 (= lt!628976 (select (arr!46978 a!2831) (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608)))))

(assert (=> d!153449 (validMask!0 mask!2608)))

(assert (=> d!153449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) (select (arr!46978 a!2831) j!81) a!2831 mask!2608) lt!628977)))

(declare-fun b!1428526 () Bool)

(assert (=> b!1428526 (= e!806780 (Intermediate!11279 false (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153449 c!132103) b!1428519))

(assert (= (and d!153449 (not c!132103)) b!1428527))

(assert (= (and b!1428527 c!132104) b!1428526))

(assert (= (and b!1428527 (not c!132104)) b!1428524))

(assert (= (and d!153449 c!132105) b!1428520))

(assert (= (and d!153449 (not c!132105)) b!1428521))

(assert (= (and b!1428521 res!963305) b!1428525))

(assert (= (and b!1428525 (not res!963303)) b!1428523))

(assert (= (and b!1428523 (not res!963304)) b!1428522))

(declare-fun m!1318737 () Bool)

(assert (=> b!1428523 m!1318737))

(assert (=> b!1428522 m!1318737))

(assert (=> b!1428524 m!1318511))

(declare-fun m!1318739 () Bool)

(assert (=> b!1428524 m!1318739))

(assert (=> b!1428524 m!1318739))

(assert (=> b!1428524 m!1318497))

(declare-fun m!1318741 () Bool)

(assert (=> b!1428524 m!1318741))

(assert (=> b!1428525 m!1318737))

(assert (=> d!153449 m!1318511))

(declare-fun m!1318743 () Bool)

(assert (=> d!153449 m!1318743))

(assert (=> d!153449 m!1318515))

(assert (=> b!1428197 d!153449))

(declare-fun d!153451 () Bool)

(declare-fun lt!628979 () (_ BitVec 32))

(declare-fun lt!628978 () (_ BitVec 32))

(assert (=> d!153451 (= lt!628979 (bvmul (bvxor lt!628978 (bvlshr lt!628978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153451 (= lt!628978 ((_ extract 31 0) (bvand (bvxor (select (arr!46978 a!2831) j!81) (bvlshr (select (arr!46978 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153451 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!963302 (let ((h!34980 ((_ extract 31 0) (bvand (bvxor (select (arr!46978 a!2831) j!81) (bvlshr (select (arr!46978 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129158 (bvmul (bvxor h!34980 (bvlshr h!34980 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129158 (bvlshr x!129158 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!963302 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!963302 #b00000000000000000000000000000000))))))

(assert (=> d!153451 (= (toIndex!0 (select (arr!46978 a!2831) j!81) mask!2608) (bvand (bvxor lt!628979 (bvlshr lt!628979 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1428197 d!153451))

(declare-fun b!1428528 () Bool)

(declare-fun e!806788 () SeekEntryResult!11279)

(assert (=> b!1428528 (= e!806788 (Intermediate!11279 true index!585 x!605))))

(declare-fun b!1428529 () Bool)

(declare-fun e!806787 () Bool)

(declare-fun lt!628981 () SeekEntryResult!11279)

(assert (=> b!1428529 (= e!806787 (bvsge (x!129150 lt!628981) #b01111111111111111111111111111110))))

(declare-fun b!1428530 () Bool)

(declare-fun e!806784 () Bool)

(assert (=> b!1428530 (= e!806787 e!806784)))

(declare-fun res!963308 () Bool)

(assert (=> b!1428530 (= res!963308 (and (is-Intermediate!11279 lt!628981) (not (undefined!12091 lt!628981)) (bvslt (x!129150 lt!628981) #b01111111111111111111111111111110) (bvsge (x!129150 lt!628981) #b00000000000000000000000000000000) (bvsge (x!129150 lt!628981) x!605)))))

(assert (=> b!1428530 (=> (not res!963308) (not e!806784))))

(declare-fun b!1428531 () Bool)

(assert (=> b!1428531 (and (bvsge (index!47509 lt!628981) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628981) (size!47529 a!2831)))))

(declare-fun e!806786 () Bool)

(assert (=> b!1428531 (= e!806786 (= (select (arr!46978 a!2831) (index!47509 lt!628981)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428532 () Bool)

(assert (=> b!1428532 (and (bvsge (index!47509 lt!628981) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628981) (size!47529 a!2831)))))

(declare-fun res!963307 () Bool)

(assert (=> b!1428532 (= res!963307 (= (select (arr!46978 a!2831) (index!47509 lt!628981)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428532 (=> res!963307 e!806786)))

(declare-fun b!1428533 () Bool)

(declare-fun e!806785 () SeekEntryResult!11279)

(assert (=> b!1428533 (= e!806785 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46978 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428534 () Bool)

(assert (=> b!1428534 (and (bvsge (index!47509 lt!628981) #b00000000000000000000000000000000) (bvslt (index!47509 lt!628981) (size!47529 a!2831)))))

(declare-fun res!963306 () Bool)

(assert (=> b!1428534 (= res!963306 (= (select (arr!46978 a!2831) (index!47509 lt!628981)) (select (arr!46978 a!2831) j!81)))))

(assert (=> b!1428534 (=> res!963306 e!806786)))

(assert (=> b!1428534 (= e!806784 e!806786)))

(declare-fun b!1428536 () Bool)

(assert (=> b!1428536 (= e!806788 e!806785)))

(declare-fun lt!628980 () (_ BitVec 64))

(declare-fun c!132107 () Bool)

(assert (=> b!1428536 (= c!132107 (or (= lt!628980 (select (arr!46978 a!2831) j!81)) (= (bvadd lt!628980 lt!628980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!153453 () Bool)

(assert (=> d!153453 e!806787))

(declare-fun c!132108 () Bool)

(assert (=> d!153453 (= c!132108 (and (is-Intermediate!11279 lt!628981) (undefined!12091 lt!628981)))))

(assert (=> d!153453 (= lt!628981 e!806788)))

(declare-fun c!132106 () Bool)

(assert (=> d!153453 (= c!132106 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153453 (= lt!628980 (select (arr!46978 a!2831) index!585))))

(assert (=> d!153453 (validMask!0 mask!2608)))

(assert (=> d!153453 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46978 a!2831) j!81) a!2831 mask!2608) lt!628981)))

(declare-fun b!1428535 () Bool)

(assert (=> b!1428535 (= e!806785 (Intermediate!11279 false index!585 x!605))))

(assert (= (and d!153453 c!132106) b!1428528))

(assert (= (and d!153453 (not c!132106)) b!1428536))

(assert (= (and b!1428536 c!132107) b!1428535))

(assert (= (and b!1428536 (not c!132107)) b!1428533))

(assert (= (and d!153453 c!132108) b!1428529))

(assert (= (and d!153453 (not c!132108)) b!1428530))

(assert (= (and b!1428530 res!963308) b!1428534))

(assert (= (and b!1428534 (not res!963306)) b!1428532))

(assert (= (and b!1428532 (not res!963307)) b!1428531))

(declare-fun m!1318745 () Bool)

(assert (=> b!1428532 m!1318745))

(assert (=> b!1428531 m!1318745))

(assert (=> b!1428533 m!1318655))

(assert (=> b!1428533 m!1318655))

(assert (=> b!1428533 m!1318497))

(declare-fun m!1318747 () Bool)

(assert (=> b!1428533 m!1318747))

(assert (=> b!1428534 m!1318745))

(assert (=> d!153453 m!1318523))

(assert (=> d!153453 m!1318515))

(assert (=> b!1428200 d!153453))

(declare-fun d!153455 () Bool)

(assert (=> d!153455 (= (validKeyInArray!0 (select (arr!46978 a!2831) j!81)) (and (not (= (select (arr!46978 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46978 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1428206 d!153455))

(declare-fun b!1428555 () Bool)

(declare-fun e!806803 () Bool)

(declare-fun e!806801 () Bool)

(assert (=> b!1428555 (= e!806803 e!806801)))

(declare-fun lt!628998 () (_ BitVec 64))

(assert (=> b!1428555 (= lt!628998 (select (arr!46978 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628997 () Unit!48252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97338 (_ BitVec 64) (_ BitVec 32)) Unit!48252)

(assert (=> b!1428555 (= lt!628997 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628998 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1428555 (arrayContainsKey!0 a!2831 lt!628998 #b00000000000000000000000000000000)))

(declare-fun lt!628999 () Unit!48252)

(assert (=> b!1428555 (= lt!628999 lt!628997)))

(declare-fun res!963315 () Bool)

(assert (=> b!1428555 (= res!963315 (= (seekEntryOrOpen!0 (select (arr!46978 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11279 #b00000000000000000000000000000000)))))

(assert (=> b!1428555 (=> (not res!963315) (not e!806801))))

(declare-fun b!1428556 () Bool)

(declare-fun call!67400 () Bool)

(assert (=> b!1428556 (= e!806803 call!67400)))

(declare-fun b!1428557 () Bool)

(declare-fun e!806802 () Bool)

(assert (=> b!1428557 (= e!806802 e!806803)))

(declare-fun c!132115 () Bool)

(assert (=> b!1428557 (= c!132115 (validKeyInArray!0 (select (arr!46978 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153457 () Bool)

(declare-fun res!963316 () Bool)

(assert (=> d!153457 (=> res!963316 e!806802)))

(assert (=> d!153457 (= res!963316 (bvsge #b00000000000000000000000000000000 (size!47529 a!2831)))))

(assert (=> d!153457 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806802)))

(declare-fun bm!67397 () Bool)

(assert (=> bm!67397 (= call!67400 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1428558 () Bool)

(assert (=> b!1428558 (= e!806801 call!67400)))

(assert (= (and d!153457 (not res!963316)) b!1428557))

(assert (= (and b!1428557 c!132115) b!1428555))

(assert (= (and b!1428557 (not c!132115)) b!1428556))

(assert (= (and b!1428555 res!963315) b!1428558))

(assert (= (or b!1428558 b!1428556) bm!67397))

(assert (=> b!1428555 m!1318717))

(declare-fun m!1318767 () Bool)

(assert (=> b!1428555 m!1318767))

(declare-fun m!1318769 () Bool)

(assert (=> b!1428555 m!1318769))

(assert (=> b!1428555 m!1318717))

(declare-fun m!1318771 () Bool)

(assert (=> b!1428555 m!1318771))

(assert (=> b!1428557 m!1318717))

(assert (=> b!1428557 m!1318717))

(assert (=> b!1428557 m!1318719))

(declare-fun m!1318773 () Bool)

(assert (=> bm!67397 m!1318773))

(assert (=> b!1428201 d!153457))

(declare-fun b!1428559 () Bool)

(declare-fun e!806806 () Bool)

(declare-fun e!806804 () Bool)

(assert (=> b!1428559 (= e!806806 e!806804)))

(declare-fun lt!629001 () (_ BitVec 64))

(assert (=> b!1428559 (= lt!629001 (select (arr!46978 a!2831) j!81))))

(declare-fun lt!629000 () Unit!48252)

(assert (=> b!1428559 (= lt!629000 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629001 j!81))))

(assert (=> b!1428559 (arrayContainsKey!0 a!2831 lt!629001 #b00000000000000000000000000000000)))

(declare-fun lt!629002 () Unit!48252)

(assert (=> b!1428559 (= lt!629002 lt!629000)))

(declare-fun res!963317 () Bool)

(assert (=> b!1428559 (= res!963317 (= (seekEntryOrOpen!0 (select (arr!46978 a!2831) j!81) a!2831 mask!2608) (Found!11279 j!81)))))

(assert (=> b!1428559 (=> (not res!963317) (not e!806804))))

(declare-fun b!1428560 () Bool)

(declare-fun call!67401 () Bool)

(assert (=> b!1428560 (= e!806806 call!67401)))

(declare-fun b!1428561 () Bool)

(declare-fun e!806805 () Bool)

(assert (=> b!1428561 (= e!806805 e!806806)))

(declare-fun c!132116 () Bool)

(assert (=> b!1428561 (= c!132116 (validKeyInArray!0 (select (arr!46978 a!2831) j!81)))))

(declare-fun d!153465 () Bool)

(declare-fun res!963318 () Bool)

(assert (=> d!153465 (=> res!963318 e!806805)))

(assert (=> d!153465 (= res!963318 (bvsge j!81 (size!47529 a!2831)))))

(assert (=> d!153465 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806805)))

(declare-fun bm!67398 () Bool)

(assert (=> bm!67398 (= call!67401 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1428562 () Bool)

(assert (=> b!1428562 (= e!806804 call!67401)))

(assert (= (and d!153465 (not res!963318)) b!1428561))

(assert (= (and b!1428561 c!132116) b!1428559))

(assert (= (and b!1428561 (not c!132116)) b!1428560))

(assert (= (and b!1428559 res!963317) b!1428562))

(assert (= (or b!1428562 b!1428560) bm!67398))

(assert (=> b!1428559 m!1318497))

(declare-fun m!1318775 () Bool)

(assert (=> b!1428559 m!1318775))

(declare-fun m!1318777 () Bool)

(assert (=> b!1428559 m!1318777))

(assert (=> b!1428559 m!1318497))

(assert (=> b!1428559 m!1318501))

(assert (=> b!1428561 m!1318497))

(assert (=> b!1428561 m!1318497))

(assert (=> b!1428561 m!1318499))

(declare-fun m!1318779 () Bool)

(assert (=> bm!67398 m!1318779))

(assert (=> b!1428205 d!153465))

(declare-fun d!153467 () Bool)

(assert (=> d!153467 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629005 () Unit!48252)

(declare-fun choose!38 (array!97338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48252)

(assert (=> d!153467 (= lt!629005 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153467 (validMask!0 mask!2608)))

(assert (=> d!153467 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629005)))

(declare-fun bs!41620 () Bool)

(assert (= bs!41620 d!153467))

(assert (=> bs!41620 m!1318525))

(declare-fun m!1318781 () Bool)

(assert (=> bs!41620 m!1318781))

(assert (=> bs!41620 m!1318515))

(assert (=> b!1428205 d!153467))

(push 1)

