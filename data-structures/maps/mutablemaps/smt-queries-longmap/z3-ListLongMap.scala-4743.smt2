; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65538 () Bool)

(assert start!65538)

(declare-fun b!747470 () Bool)

(declare-fun res!504194 () Bool)

(declare-fun e!417330 () Bool)

(assert (=> b!747470 (=> (not res!504194) (not e!417330))))

(declare-fun e!417339 () Bool)

(assert (=> b!747470 (= res!504194 e!417339)))

(declare-fun c!82019 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747470 (= c!82019 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747471 () Bool)

(declare-fun e!417337 () Bool)

(declare-fun lt!332267 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747471 (= e!417337 (validKeyInArray!0 lt!332267))))

(declare-fun b!747472 () Bool)

(declare-fun e!417331 () Bool)

(assert (=> b!747472 (= e!417331 e!417330)))

(declare-fun res!504198 () Bool)

(assert (=> b!747472 (=> (not res!504198) (not e!417330))))

(declare-datatypes ((array!41664 0))(
  ( (array!41665 (arr!19942 (Array (_ BitVec 32) (_ BitVec 64))) (size!20363 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41664)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7549 0))(
  ( (MissingZero!7549 (index!32563 (_ BitVec 32))) (Found!7549 (index!32564 (_ BitVec 32))) (Intermediate!7549 (undefined!8361 Bool) (index!32565 (_ BitVec 32)) (x!63532 (_ BitVec 32))) (Undefined!7549) (MissingVacant!7549 (index!32566 (_ BitVec 32))) )
))
(declare-fun lt!332269 () SeekEntryResult!7549)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41664 (_ BitVec 32)) SeekEntryResult!7549)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747472 (= res!504198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19942 a!3186) j!159) mask!3328) (select (arr!19942 a!3186) j!159) a!3186 mask!3328) lt!332269))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!747472 (= lt!332269 (Intermediate!7549 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747473 () Bool)

(declare-fun e!417334 () Bool)

(assert (=> b!747473 (= e!417334 e!417331)))

(declare-fun res!504207 () Bool)

(assert (=> b!747473 (=> (not res!504207) (not e!417331))))

(declare-fun lt!332275 () SeekEntryResult!7549)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747473 (= res!504207 (or (= lt!332275 (MissingZero!7549 i!1173)) (= lt!332275 (MissingVacant!7549 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41664 (_ BitVec 32)) SeekEntryResult!7549)

(assert (=> b!747473 (= lt!332275 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!747474 () Bool)

(declare-fun res!504201 () Bool)

(assert (=> b!747474 (=> (not res!504201) (not e!417334))))

(assert (=> b!747474 (= res!504201 (and (= (size!20363 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20363 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20363 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747475 () Bool)

(declare-fun res!504205 () Bool)

(assert (=> b!747475 (=> (not res!504205) (not e!417331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41664 (_ BitVec 32)) Bool)

(assert (=> b!747475 (= res!504205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747476 () Bool)

(declare-fun res!504197 () Bool)

(assert (=> b!747476 (=> (not res!504197) (not e!417331))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!747476 (= res!504197 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20363 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20363 a!3186))))))

(declare-fun b!747477 () Bool)

(declare-fun res!504208 () Bool)

(assert (=> b!747477 (=> (not res!504208) (not e!417334))))

(declare-fun arrayContainsKey!0 (array!41664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747477 (= res!504208 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747478 () Bool)

(declare-fun res!504202 () Bool)

(assert (=> b!747478 (=> (not res!504202) (not e!417330))))

(assert (=> b!747478 (= res!504202 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19942 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747479 () Bool)

(declare-fun res!504204 () Bool)

(assert (=> b!747479 (=> (not res!504204) (not e!417334))))

(assert (=> b!747479 (= res!504204 (validKeyInArray!0 (select (arr!19942 a!3186) j!159)))))

(declare-fun b!747480 () Bool)

(declare-fun res!504196 () Bool)

(assert (=> b!747480 (=> (not res!504196) (not e!417334))))

(assert (=> b!747480 (= res!504196 (validKeyInArray!0 k0!2102))))

(declare-fun b!747481 () Bool)

(declare-fun res!504195 () Bool)

(declare-fun e!417333 () Bool)

(assert (=> b!747481 (=> res!504195 e!417333)))

(assert (=> b!747481 (= res!504195 (= (select (store (arr!19942 a!3186) i!1173 k0!2102) index!1321) lt!332267))))

(declare-fun b!747482 () Bool)

(assert (=> b!747482 (= e!417339 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19942 a!3186) j!159) a!3186 mask!3328) lt!332269))))

(declare-fun b!747484 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41664 (_ BitVec 32)) SeekEntryResult!7549)

(assert (=> b!747484 (= e!417339 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19942 a!3186) j!159) a!3186 mask!3328) (Found!7549 j!159)))))

(declare-fun b!747485 () Bool)

(assert (=> b!747485 (= e!417333 e!417337)))

(declare-fun res!504209 () Bool)

(assert (=> b!747485 (=> res!504209 e!417337)))

(assert (=> b!747485 (= res!504209 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747485 (= (select (store (arr!19942 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25598 0))(
  ( (Unit!25599) )
))
(declare-fun lt!332271 () Unit!25598)

(declare-fun e!417332 () Unit!25598)

(assert (=> b!747485 (= lt!332271 e!417332)))

(declare-fun c!82020 () Bool)

(assert (=> b!747485 (= c!82020 (= (select (store (arr!19942 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747486 () Bool)

(declare-fun Unit!25600 () Unit!25598)

(assert (=> b!747486 (= e!417332 Unit!25600)))

(assert (=> b!747486 false))

(declare-fun b!747487 () Bool)

(declare-fun Unit!25601 () Unit!25598)

(assert (=> b!747487 (= e!417332 Unit!25601)))

(declare-fun b!747488 () Bool)

(declare-fun e!417336 () Bool)

(assert (=> b!747488 (= e!417336 (not e!417333))))

(declare-fun res!504193 () Bool)

(assert (=> b!747488 (=> res!504193 e!417333)))

(declare-fun lt!332272 () SeekEntryResult!7549)

(get-info :version)

(assert (=> b!747488 (= res!504193 (or (not ((_ is Intermediate!7549) lt!332272)) (bvslt x!1131 (x!63532 lt!332272)) (not (= x!1131 (x!63532 lt!332272))) (not (= index!1321 (index!32565 lt!332272)))))))

(declare-fun e!417338 () Bool)

(assert (=> b!747488 e!417338))

(declare-fun res!504210 () Bool)

(assert (=> b!747488 (=> (not res!504210) (not e!417338))))

(declare-fun lt!332270 () SeekEntryResult!7549)

(declare-fun lt!332274 () SeekEntryResult!7549)

(assert (=> b!747488 (= res!504210 (= lt!332270 lt!332274))))

(assert (=> b!747488 (= lt!332274 (Found!7549 j!159))))

(assert (=> b!747488 (= lt!332270 (seekEntryOrOpen!0 (select (arr!19942 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747488 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332276 () Unit!25598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25598)

(assert (=> b!747488 (= lt!332276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747489 () Bool)

(declare-fun res!504206 () Bool)

(assert (=> b!747489 (=> (not res!504206) (not e!417331))))

(declare-datatypes ((List!13997 0))(
  ( (Nil!13994) (Cons!13993 (h!15065 (_ BitVec 64)) (t!20320 List!13997)) )
))
(declare-fun arrayNoDuplicates!0 (array!41664 (_ BitVec 32) List!13997) Bool)

(assert (=> b!747489 (= res!504206 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13994))))

(declare-fun b!747490 () Bool)

(declare-fun res!504199 () Bool)

(assert (=> b!747490 (=> res!504199 e!417333)))

(assert (=> b!747490 (= res!504199 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19942 a!3186) j!159) a!3186 mask!3328) lt!332274)))))

(declare-fun b!747491 () Bool)

(assert (=> b!747491 (= e!417338 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19942 a!3186) j!159) a!3186 mask!3328) lt!332274))))

(declare-fun res!504203 () Bool)

(assert (=> start!65538 (=> (not res!504203) (not e!417334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65538 (= res!504203 (validMask!0 mask!3328))))

(assert (=> start!65538 e!417334))

(assert (=> start!65538 true))

(declare-fun array_inv!15716 (array!41664) Bool)

(assert (=> start!65538 (array_inv!15716 a!3186)))

(declare-fun b!747483 () Bool)

(assert (=> b!747483 (= e!417330 e!417336)))

(declare-fun res!504200 () Bool)

(assert (=> b!747483 (=> (not res!504200) (not e!417336))))

(declare-fun lt!332273 () SeekEntryResult!7549)

(assert (=> b!747483 (= res!504200 (= lt!332273 lt!332272))))

(declare-fun lt!332268 () array!41664)

(assert (=> b!747483 (= lt!332272 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332267 lt!332268 mask!3328))))

(assert (=> b!747483 (= lt!332273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332267 mask!3328) lt!332267 lt!332268 mask!3328))))

(assert (=> b!747483 (= lt!332267 (select (store (arr!19942 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!747483 (= lt!332268 (array!41665 (store (arr!19942 a!3186) i!1173 k0!2102) (size!20363 a!3186)))))

(assert (= (and start!65538 res!504203) b!747474))

(assert (= (and b!747474 res!504201) b!747479))

(assert (= (and b!747479 res!504204) b!747480))

(assert (= (and b!747480 res!504196) b!747477))

(assert (= (and b!747477 res!504208) b!747473))

(assert (= (and b!747473 res!504207) b!747475))

(assert (= (and b!747475 res!504205) b!747489))

(assert (= (and b!747489 res!504206) b!747476))

(assert (= (and b!747476 res!504197) b!747472))

(assert (= (and b!747472 res!504198) b!747478))

(assert (= (and b!747478 res!504202) b!747470))

(assert (= (and b!747470 c!82019) b!747482))

(assert (= (and b!747470 (not c!82019)) b!747484))

(assert (= (and b!747470 res!504194) b!747483))

(assert (= (and b!747483 res!504200) b!747488))

(assert (= (and b!747488 res!504210) b!747491))

(assert (= (and b!747488 (not res!504193)) b!747490))

(assert (= (and b!747490 (not res!504199)) b!747481))

(assert (= (and b!747481 (not res!504195)) b!747485))

(assert (= (and b!747485 c!82020) b!747486))

(assert (= (and b!747485 (not c!82020)) b!747487))

(assert (= (and b!747485 (not res!504209)) b!747471))

(declare-fun m!697611 () Bool)

(assert (=> b!747475 m!697611))

(declare-fun m!697613 () Bool)

(assert (=> b!747491 m!697613))

(assert (=> b!747491 m!697613))

(declare-fun m!697615 () Bool)

(assert (=> b!747491 m!697615))

(assert (=> b!747482 m!697613))

(assert (=> b!747482 m!697613))

(declare-fun m!697617 () Bool)

(assert (=> b!747482 m!697617))

(assert (=> b!747479 m!697613))

(assert (=> b!747479 m!697613))

(declare-fun m!697619 () Bool)

(assert (=> b!747479 m!697619))

(declare-fun m!697621 () Bool)

(assert (=> b!747481 m!697621))

(declare-fun m!697623 () Bool)

(assert (=> b!747481 m!697623))

(declare-fun m!697625 () Bool)

(assert (=> start!65538 m!697625))

(declare-fun m!697627 () Bool)

(assert (=> start!65538 m!697627))

(assert (=> b!747488 m!697613))

(assert (=> b!747488 m!697613))

(declare-fun m!697629 () Bool)

(assert (=> b!747488 m!697629))

(declare-fun m!697631 () Bool)

(assert (=> b!747488 m!697631))

(declare-fun m!697633 () Bool)

(assert (=> b!747488 m!697633))

(declare-fun m!697635 () Bool)

(assert (=> b!747471 m!697635))

(declare-fun m!697637 () Bool)

(assert (=> b!747489 m!697637))

(assert (=> b!747485 m!697621))

(assert (=> b!747485 m!697623))

(declare-fun m!697639 () Bool)

(assert (=> b!747473 m!697639))

(assert (=> b!747490 m!697613))

(assert (=> b!747490 m!697613))

(declare-fun m!697641 () Bool)

(assert (=> b!747490 m!697641))

(declare-fun m!697643 () Bool)

(assert (=> b!747478 m!697643))

(declare-fun m!697645 () Bool)

(assert (=> b!747480 m!697645))

(assert (=> b!747472 m!697613))

(assert (=> b!747472 m!697613))

(declare-fun m!697647 () Bool)

(assert (=> b!747472 m!697647))

(assert (=> b!747472 m!697647))

(assert (=> b!747472 m!697613))

(declare-fun m!697649 () Bool)

(assert (=> b!747472 m!697649))

(assert (=> b!747484 m!697613))

(assert (=> b!747484 m!697613))

(assert (=> b!747484 m!697641))

(declare-fun m!697651 () Bool)

(assert (=> b!747477 m!697651))

(declare-fun m!697653 () Bool)

(assert (=> b!747483 m!697653))

(declare-fun m!697655 () Bool)

(assert (=> b!747483 m!697655))

(assert (=> b!747483 m!697653))

(assert (=> b!747483 m!697621))

(declare-fun m!697657 () Bool)

(assert (=> b!747483 m!697657))

(declare-fun m!697659 () Bool)

(assert (=> b!747483 m!697659))

(check-sat (not b!747472) (not b!747471) (not b!747491) (not b!747484) (not b!747483) (not b!747475) (not b!747479) (not b!747490) (not b!747489) (not b!747480) (not b!747482) (not b!747473) (not b!747488) (not start!65538) (not b!747477))
(check-sat)
