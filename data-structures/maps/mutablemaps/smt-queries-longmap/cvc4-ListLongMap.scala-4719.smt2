; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65396 () Bool)

(assert start!65396)

(declare-fun b!743495 () Bool)

(declare-fun e!415412 () Bool)

(declare-fun e!415411 () Bool)

(assert (=> b!743495 (= e!415412 e!415411)))

(declare-fun res!500721 () Bool)

(assert (=> b!743495 (=> (not res!500721) (not e!415411))))

(declare-datatypes ((SeekEntryResult!7478 0))(
  ( (MissingZero!7478 (index!32279 (_ BitVec 32))) (Found!7478 (index!32280 (_ BitVec 32))) (Intermediate!7478 (undefined!8290 Bool) (index!32281 (_ BitVec 32)) (x!63269 (_ BitVec 32))) (Undefined!7478) (MissingVacant!7478 (index!32282 (_ BitVec 32))) )
))
(declare-fun lt!330289 () SeekEntryResult!7478)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743495 (= res!500721 (or (= lt!330289 (MissingZero!7478 i!1173)) (= lt!330289 (MissingVacant!7478 i!1173))))))

(declare-datatypes ((array!41522 0))(
  ( (array!41523 (arr!19871 (Array (_ BitVec 32) (_ BitVec 64))) (size!20292 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41522)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41522 (_ BitVec 32)) SeekEntryResult!7478)

(assert (=> b!743495 (= lt!330289 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!330286 () SeekEntryResult!7478)

(declare-fun b!743496 () Bool)

(declare-fun e!415413 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41522 (_ BitVec 32)) SeekEntryResult!7478)

(assert (=> b!743496 (= e!415413 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19871 a!3186) j!159) a!3186 mask!3328) lt!330286))))

(declare-fun b!743497 () Bool)

(declare-fun res!500716 () Bool)

(declare-fun e!415410 () Bool)

(assert (=> b!743497 (=> res!500716 e!415410)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!743497 (= res!500716 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19871 a!3186) j!159) a!3186 mask!3328) (Found!7478 j!159))))))

(declare-fun b!743498 () Bool)

(declare-fun res!500715 () Bool)

(assert (=> b!743498 (=> (not res!500715) (not e!415411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41522 (_ BitVec 32)) Bool)

(assert (=> b!743498 (= res!500715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743499 () Bool)

(declare-fun e!415414 () Bool)

(assert (=> b!743499 (= e!415414 e!415413)))

(declare-fun res!500727 () Bool)

(assert (=> b!743499 (=> (not res!500727) (not e!415413))))

(assert (=> b!743499 (= res!500727 (= (seekEntryOrOpen!0 (select (arr!19871 a!3186) j!159) a!3186 mask!3328) lt!330286))))

(assert (=> b!743499 (= lt!330286 (Found!7478 j!159))))

(declare-fun b!743500 () Bool)

(declare-fun res!500712 () Bool)

(declare-fun e!415416 () Bool)

(assert (=> b!743500 (=> (not res!500712) (not e!415416))))

(assert (=> b!743500 (= res!500712 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19871 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743501 () Bool)

(declare-fun res!500722 () Bool)

(assert (=> b!743501 (=> res!500722 e!415410)))

(declare-fun lt!330290 () (_ BitVec 64))

(declare-fun lt!330284 () SeekEntryResult!7478)

(assert (=> b!743501 (= res!500722 (or (not (= (select (store (arr!19871 a!3186) i!1173 k!2102) index!1321) lt!330290)) (undefined!8290 lt!330284)))))

(declare-fun b!743502 () Bool)

(declare-fun res!500718 () Bool)

(assert (=> b!743502 (=> res!500718 e!415410)))

(declare-fun lt!330285 () array!41522)

(assert (=> b!743502 (= res!500718 (not (= (seekEntryOrOpen!0 lt!330290 lt!330285 mask!3328) (Found!7478 index!1321))))))

(declare-fun b!743504 () Bool)

(declare-fun e!415408 () Bool)

(assert (=> b!743504 (= e!415416 e!415408)))

(declare-fun res!500711 () Bool)

(assert (=> b!743504 (=> (not res!500711) (not e!415408))))

(declare-fun lt!330287 () SeekEntryResult!7478)

(assert (=> b!743504 (= res!500711 (= lt!330287 lt!330284))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41522 (_ BitVec 32)) SeekEntryResult!7478)

(assert (=> b!743504 (= lt!330284 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330290 lt!330285 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743504 (= lt!330287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330290 mask!3328) lt!330290 lt!330285 mask!3328))))

(assert (=> b!743504 (= lt!330290 (select (store (arr!19871 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743504 (= lt!330285 (array!41523 (store (arr!19871 a!3186) i!1173 k!2102) (size!20292 a!3186)))))

(declare-fun b!743505 () Bool)

(declare-fun res!500708 () Bool)

(assert (=> b!743505 (=> (not res!500708) (not e!415412))))

(assert (=> b!743505 (= res!500708 (and (= (size!20292 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20292 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20292 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743506 () Bool)

(declare-fun res!500709 () Bool)

(assert (=> b!743506 (=> (not res!500709) (not e!415416))))

(declare-fun e!415409 () Bool)

(assert (=> b!743506 (= res!500709 e!415409)))

(declare-fun c!81774 () Bool)

(assert (=> b!743506 (= c!81774 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743507 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743507 (= e!415410 (validKeyInArray!0 lt!330290))))

(declare-fun b!743508 () Bool)

(declare-fun lt!330288 () SeekEntryResult!7478)

(assert (=> b!743508 (= e!415409 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19871 a!3186) j!159) a!3186 mask!3328) lt!330288))))

(declare-fun b!743509 () Bool)

(declare-fun res!500719 () Bool)

(assert (=> b!743509 (=> (not res!500719) (not e!415412))))

(assert (=> b!743509 (= res!500719 (validKeyInArray!0 k!2102))))

(declare-fun b!743510 () Bool)

(declare-fun res!500713 () Bool)

(assert (=> b!743510 (=> (not res!500713) (not e!415411))))

(assert (=> b!743510 (= res!500713 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20292 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20292 a!3186))))))

(declare-fun b!743511 () Bool)

(declare-fun res!500725 () Bool)

(assert (=> b!743511 (=> (not res!500725) (not e!415412))))

(declare-fun arrayContainsKey!0 (array!41522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743511 (= res!500725 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743512 () Bool)

(declare-fun res!500723 () Bool)

(assert (=> b!743512 (=> (not res!500723) (not e!415412))))

(assert (=> b!743512 (= res!500723 (validKeyInArray!0 (select (arr!19871 a!3186) j!159)))))

(declare-fun res!500726 () Bool)

(assert (=> start!65396 (=> (not res!500726) (not e!415412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65396 (= res!500726 (validMask!0 mask!3328))))

(assert (=> start!65396 e!415412))

(assert (=> start!65396 true))

(declare-fun array_inv!15645 (array!41522) Bool)

(assert (=> start!65396 (array_inv!15645 a!3186)))

(declare-fun b!743503 () Bool)

(declare-fun res!500720 () Bool)

(assert (=> b!743503 (=> res!500720 e!415410)))

(assert (=> b!743503 (= res!500720 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743513 () Bool)

(assert (=> b!743513 (= e!415411 e!415416)))

(declare-fun res!500717 () Bool)

(assert (=> b!743513 (=> (not res!500717) (not e!415416))))

(assert (=> b!743513 (= res!500717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19871 a!3186) j!159) mask!3328) (select (arr!19871 a!3186) j!159) a!3186 mask!3328) lt!330288))))

(assert (=> b!743513 (= lt!330288 (Intermediate!7478 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743514 () Bool)

(assert (=> b!743514 (= e!415408 (not e!415410))))

(declare-fun res!500710 () Bool)

(assert (=> b!743514 (=> res!500710 e!415410)))

(assert (=> b!743514 (= res!500710 (or (not (is-Intermediate!7478 lt!330284)) (bvslt x!1131 (x!63269 lt!330284)) (not (= x!1131 (x!63269 lt!330284))) (not (= index!1321 (index!32281 lt!330284)))))))

(assert (=> b!743514 e!415414))

(declare-fun res!500724 () Bool)

(assert (=> b!743514 (=> (not res!500724) (not e!415414))))

(assert (=> b!743514 (= res!500724 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25436 0))(
  ( (Unit!25437) )
))
(declare-fun lt!330283 () Unit!25436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25436)

(assert (=> b!743514 (= lt!330283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743515 () Bool)

(assert (=> b!743515 (= e!415409 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19871 a!3186) j!159) a!3186 mask!3328) (Found!7478 j!159)))))

(declare-fun b!743516 () Bool)

(declare-fun res!500714 () Bool)

(assert (=> b!743516 (=> (not res!500714) (not e!415411))))

(declare-datatypes ((List!13926 0))(
  ( (Nil!13923) (Cons!13922 (h!14994 (_ BitVec 64)) (t!20249 List!13926)) )
))
(declare-fun arrayNoDuplicates!0 (array!41522 (_ BitVec 32) List!13926) Bool)

(assert (=> b!743516 (= res!500714 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13923))))

(assert (= (and start!65396 res!500726) b!743505))

(assert (= (and b!743505 res!500708) b!743512))

(assert (= (and b!743512 res!500723) b!743509))

(assert (= (and b!743509 res!500719) b!743511))

(assert (= (and b!743511 res!500725) b!743495))

(assert (= (and b!743495 res!500721) b!743498))

(assert (= (and b!743498 res!500715) b!743516))

(assert (= (and b!743516 res!500714) b!743510))

(assert (= (and b!743510 res!500713) b!743513))

(assert (= (and b!743513 res!500717) b!743500))

(assert (= (and b!743500 res!500712) b!743506))

(assert (= (and b!743506 c!81774) b!743508))

(assert (= (and b!743506 (not c!81774)) b!743515))

(assert (= (and b!743506 res!500709) b!743504))

(assert (= (and b!743504 res!500711) b!743514))

(assert (= (and b!743514 res!500724) b!743499))

(assert (= (and b!743499 res!500727) b!743496))

(assert (= (and b!743514 (not res!500710)) b!743497))

(assert (= (and b!743497 (not res!500716)) b!743501))

(assert (= (and b!743501 (not res!500722)) b!743502))

(assert (= (and b!743502 (not res!500718)) b!743503))

(assert (= (and b!743503 (not res!500720)) b!743507))

(declare-fun m!694245 () Bool)

(assert (=> b!743509 m!694245))

(declare-fun m!694247 () Bool)

(assert (=> b!743499 m!694247))

(assert (=> b!743499 m!694247))

(declare-fun m!694249 () Bool)

(assert (=> b!743499 m!694249))

(declare-fun m!694251 () Bool)

(assert (=> b!743511 m!694251))

(declare-fun m!694253 () Bool)

(assert (=> b!743514 m!694253))

(declare-fun m!694255 () Bool)

(assert (=> b!743514 m!694255))

(declare-fun m!694257 () Bool)

(assert (=> b!743501 m!694257))

(declare-fun m!694259 () Bool)

(assert (=> b!743501 m!694259))

(declare-fun m!694261 () Bool)

(assert (=> b!743500 m!694261))

(assert (=> b!743497 m!694247))

(assert (=> b!743497 m!694247))

(declare-fun m!694263 () Bool)

(assert (=> b!743497 m!694263))

(declare-fun m!694265 () Bool)

(assert (=> b!743502 m!694265))

(declare-fun m!694267 () Bool)

(assert (=> b!743516 m!694267))

(declare-fun m!694269 () Bool)

(assert (=> b!743495 m!694269))

(assert (=> b!743513 m!694247))

(assert (=> b!743513 m!694247))

(declare-fun m!694271 () Bool)

(assert (=> b!743513 m!694271))

(assert (=> b!743513 m!694271))

(assert (=> b!743513 m!694247))

(declare-fun m!694273 () Bool)

(assert (=> b!743513 m!694273))

(declare-fun m!694275 () Bool)

(assert (=> b!743507 m!694275))

(declare-fun m!694277 () Bool)

(assert (=> start!65396 m!694277))

(declare-fun m!694279 () Bool)

(assert (=> start!65396 m!694279))

(assert (=> b!743508 m!694247))

(assert (=> b!743508 m!694247))

(declare-fun m!694281 () Bool)

(assert (=> b!743508 m!694281))

(assert (=> b!743512 m!694247))

(assert (=> b!743512 m!694247))

(declare-fun m!694283 () Bool)

(assert (=> b!743512 m!694283))

(declare-fun m!694285 () Bool)

(assert (=> b!743498 m!694285))

(declare-fun m!694287 () Bool)

(assert (=> b!743504 m!694287))

(declare-fun m!694289 () Bool)

(assert (=> b!743504 m!694289))

(declare-fun m!694291 () Bool)

(assert (=> b!743504 m!694291))

(assert (=> b!743504 m!694287))

(declare-fun m!694293 () Bool)

(assert (=> b!743504 m!694293))

(assert (=> b!743504 m!694257))

(assert (=> b!743496 m!694247))

(assert (=> b!743496 m!694247))

(declare-fun m!694295 () Bool)

(assert (=> b!743496 m!694295))

(assert (=> b!743515 m!694247))

(assert (=> b!743515 m!694247))

(assert (=> b!743515 m!694263))

(push 1)

