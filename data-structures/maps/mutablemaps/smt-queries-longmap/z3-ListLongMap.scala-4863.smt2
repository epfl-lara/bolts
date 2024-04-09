; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67038 () Bool)

(assert start!67038)

(declare-fun b!773504 () Bool)

(declare-fun e!430603 () Bool)

(declare-fun e!430592 () Bool)

(assert (=> b!773504 (= e!430603 e!430592)))

(declare-fun res!523275 () Bool)

(assert (=> b!773504 (=> (not res!523275) (not e!430592))))

(declare-datatypes ((array!42417 0))(
  ( (array!42418 (arr!20302 (Array (_ BitVec 32) (_ BitVec 64))) (size!20723 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42417)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7909 0))(
  ( (MissingZero!7909 (index!34003 (_ BitVec 32))) (Found!7909 (index!34004 (_ BitVec 32))) (Intermediate!7909 (undefined!8721 Bool) (index!34005 (_ BitVec 32)) (x!64969 (_ BitVec 32))) (Undefined!7909) (MissingVacant!7909 (index!34006 (_ BitVec 32))) )
))
(declare-fun lt!344492 () SeekEntryResult!7909)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42417 (_ BitVec 32)) SeekEntryResult!7909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773504 (= res!523275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20302 a!3186) j!159) mask!3328) (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344492))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773504 (= lt!344492 (Intermediate!7909 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773505 () Bool)

(declare-fun res!523272 () Bool)

(declare-fun e!430594 () Bool)

(assert (=> b!773505 (=> (not res!523272) (not e!430594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773505 (= res!523272 (validKeyInArray!0 (select (arr!20302 a!3186) j!159)))))

(declare-fun b!773506 () Bool)

(declare-fun e!430601 () Bool)

(declare-fun e!430602 () Bool)

(assert (=> b!773506 (= e!430601 e!430602)))

(declare-fun c!85519 () Bool)

(declare-fun lt!344496 () Bool)

(assert (=> b!773506 (= c!85519 lt!344496)))

(declare-fun b!773507 () Bool)

(declare-fun res!523267 () Bool)

(assert (=> b!773507 (=> (not res!523267) (not e!430594))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773507 (= res!523267 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!344493 () (_ BitVec 32))

(declare-fun lt!344486 () SeekEntryResult!7909)

(declare-fun b!773508 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42417 (_ BitVec 32)) SeekEntryResult!7909)

(assert (=> b!773508 (= e!430602 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344493 resIntermediateIndex!5 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344486))))

(declare-fun b!773509 () Bool)

(declare-fun e!430600 () Bool)

(declare-fun e!430597 () Bool)

(assert (=> b!773509 (= e!430600 (not e!430597))))

(declare-fun res!523265 () Bool)

(assert (=> b!773509 (=> res!523265 e!430597)))

(declare-fun lt!344489 () SeekEntryResult!7909)

(get-info :version)

(assert (=> b!773509 (= res!523265 (or (not ((_ is Intermediate!7909) lt!344489)) (bvsge x!1131 (x!64969 lt!344489))))))

(assert (=> b!773509 (= lt!344486 (Found!7909 j!159))))

(declare-fun e!430593 () Bool)

(assert (=> b!773509 e!430593))

(declare-fun res!523274 () Bool)

(assert (=> b!773509 (=> (not res!523274) (not e!430593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42417 (_ BitVec 32)) Bool)

(assert (=> b!773509 (= res!523274 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26672 0))(
  ( (Unit!26673) )
))
(declare-fun lt!344487 () Unit!26672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26672)

(assert (=> b!773509 (= lt!344487 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773510 () Bool)

(declare-fun res!523269 () Bool)

(assert (=> b!773510 (=> (not res!523269) (not e!430603))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!773510 (= res!523269 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20723 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20723 a!3186))))))

(declare-fun b!773511 () Bool)

(declare-fun e!430599 () Unit!26672)

(declare-fun Unit!26674 () Unit!26672)

(assert (=> b!773511 (= e!430599 Unit!26674)))

(assert (=> b!773511 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344493 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344492)))

(declare-fun lt!344494 () SeekEntryResult!7909)

(declare-fun e!430596 () Bool)

(declare-fun b!773512 () Bool)

(assert (=> b!773512 (= e!430596 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344494))))

(declare-fun b!773513 () Bool)

(assert (=> b!773513 (= e!430602 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344493 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344492))))

(declare-fun b!773514 () Bool)

(declare-fun res!523278 () Bool)

(assert (=> b!773514 (=> (not res!523278) (not e!430594))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773514 (= res!523278 (and (= (size!20723 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20723 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20723 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773515 () Bool)

(assert (=> b!773515 (= e!430597 e!430601)))

(declare-fun res!523276 () Bool)

(assert (=> b!773515 (=> res!523276 e!430601)))

(assert (=> b!773515 (= res!523276 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344493 #b00000000000000000000000000000000) (bvsge lt!344493 (size!20723 a!3186))))))

(declare-fun lt!344488 () Unit!26672)

(assert (=> b!773515 (= lt!344488 e!430599)))

(declare-fun c!85521 () Bool)

(assert (=> b!773515 (= c!85521 lt!344496)))

(assert (=> b!773515 (= lt!344496 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773515 (= lt!344493 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773516 () Bool)

(declare-fun res!523277 () Bool)

(assert (=> b!773516 (=> (not res!523277) (not e!430603))))

(assert (=> b!773516 (= res!523277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!430595 () Bool)

(declare-fun b!773517 () Bool)

(assert (=> b!773517 (= e!430595 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344492))))

(declare-fun b!773518 () Bool)

(assert (=> b!773518 (= e!430595 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) (Found!7909 j!159)))))

(declare-fun b!773519 () Bool)

(declare-fun res!523266 () Bool)

(assert (=> b!773519 (=> (not res!523266) (not e!430592))))

(assert (=> b!773519 (= res!523266 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20302 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773520 () Bool)

(declare-fun Unit!26675 () Unit!26672)

(assert (=> b!773520 (= e!430599 Unit!26675)))

(declare-fun lt!344497 () SeekEntryResult!7909)

(assert (=> b!773520 (= lt!344497 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20302 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773520 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344493 resIntermediateIndex!5 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344486)))

(declare-fun b!773521 () Bool)

(declare-fun res!523264 () Bool)

(assert (=> b!773521 (=> (not res!523264) (not e!430594))))

(assert (=> b!773521 (= res!523264 (validKeyInArray!0 k0!2102))))

(declare-fun b!773522 () Bool)

(declare-fun res!523273 () Bool)

(assert (=> b!773522 (=> (not res!523273) (not e!430603))))

(declare-datatypes ((List!14357 0))(
  ( (Nil!14354) (Cons!14353 (h!15458 (_ BitVec 64)) (t!20680 List!14357)) )
))
(declare-fun arrayNoDuplicates!0 (array!42417 (_ BitVec 32) List!14357) Bool)

(assert (=> b!773522 (= res!523273 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14354))))

(declare-fun b!773523 () Bool)

(assert (=> b!773523 (= e!430593 e!430596)))

(declare-fun res!523270 () Bool)

(assert (=> b!773523 (=> (not res!523270) (not e!430596))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42417 (_ BitVec 32)) SeekEntryResult!7909)

(assert (=> b!773523 (= res!523270 (= (seekEntryOrOpen!0 (select (arr!20302 a!3186) j!159) a!3186 mask!3328) lt!344494))))

(assert (=> b!773523 (= lt!344494 (Found!7909 j!159))))

(declare-fun b!773524 () Bool)

(assert (=> b!773524 (= e!430594 e!430603)))

(declare-fun res!523268 () Bool)

(assert (=> b!773524 (=> (not res!523268) (not e!430603))))

(declare-fun lt!344495 () SeekEntryResult!7909)

(assert (=> b!773524 (= res!523268 (or (= lt!344495 (MissingZero!7909 i!1173)) (= lt!344495 (MissingVacant!7909 i!1173))))))

(assert (=> b!773524 (= lt!344495 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!523279 () Bool)

(assert (=> start!67038 (=> (not res!523279) (not e!430594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67038 (= res!523279 (validMask!0 mask!3328))))

(assert (=> start!67038 e!430594))

(assert (=> start!67038 true))

(declare-fun array_inv!16076 (array!42417) Bool)

(assert (=> start!67038 (array_inv!16076 a!3186)))

(declare-fun b!773525 () Bool)

(assert (=> b!773525 (= e!430592 e!430600)))

(declare-fun res!523271 () Bool)

(assert (=> b!773525 (=> (not res!523271) (not e!430600))))

(declare-fun lt!344485 () SeekEntryResult!7909)

(assert (=> b!773525 (= res!523271 (= lt!344485 lt!344489))))

(declare-fun lt!344491 () (_ BitVec 64))

(declare-fun lt!344490 () array!42417)

(assert (=> b!773525 (= lt!344489 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344491 lt!344490 mask!3328))))

(assert (=> b!773525 (= lt!344485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344491 mask!3328) lt!344491 lt!344490 mask!3328))))

(assert (=> b!773525 (= lt!344491 (select (store (arr!20302 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!773525 (= lt!344490 (array!42418 (store (arr!20302 a!3186) i!1173 k0!2102) (size!20723 a!3186)))))

(declare-fun b!773526 () Bool)

(declare-fun res!523263 () Bool)

(assert (=> b!773526 (=> (not res!523263) (not e!430592))))

(assert (=> b!773526 (= res!523263 e!430595)))

(declare-fun c!85520 () Bool)

(assert (=> b!773526 (= c!85520 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67038 res!523279) b!773514))

(assert (= (and b!773514 res!523278) b!773505))

(assert (= (and b!773505 res!523272) b!773521))

(assert (= (and b!773521 res!523264) b!773507))

(assert (= (and b!773507 res!523267) b!773524))

(assert (= (and b!773524 res!523268) b!773516))

(assert (= (and b!773516 res!523277) b!773522))

(assert (= (and b!773522 res!523273) b!773510))

(assert (= (and b!773510 res!523269) b!773504))

(assert (= (and b!773504 res!523275) b!773519))

(assert (= (and b!773519 res!523266) b!773526))

(assert (= (and b!773526 c!85520) b!773517))

(assert (= (and b!773526 (not c!85520)) b!773518))

(assert (= (and b!773526 res!523263) b!773525))

(assert (= (and b!773525 res!523271) b!773509))

(assert (= (and b!773509 res!523274) b!773523))

(assert (= (and b!773523 res!523270) b!773512))

(assert (= (and b!773509 (not res!523265)) b!773515))

(assert (= (and b!773515 c!85521) b!773511))

(assert (= (and b!773515 (not c!85521)) b!773520))

(assert (= (and b!773515 (not res!523276)) b!773506))

(assert (= (and b!773506 c!85519) b!773513))

(assert (= (and b!773506 (not c!85519)) b!773508))

(declare-fun m!718271 () Bool)

(assert (=> b!773517 m!718271))

(assert (=> b!773517 m!718271))

(declare-fun m!718273 () Bool)

(assert (=> b!773517 m!718273))

(declare-fun m!718275 () Bool)

(assert (=> b!773509 m!718275))

(declare-fun m!718277 () Bool)

(assert (=> b!773509 m!718277))

(assert (=> b!773512 m!718271))

(assert (=> b!773512 m!718271))

(declare-fun m!718279 () Bool)

(assert (=> b!773512 m!718279))

(declare-fun m!718281 () Bool)

(assert (=> b!773521 m!718281))

(assert (=> b!773505 m!718271))

(assert (=> b!773505 m!718271))

(declare-fun m!718283 () Bool)

(assert (=> b!773505 m!718283))

(declare-fun m!718285 () Bool)

(assert (=> b!773515 m!718285))

(assert (=> b!773508 m!718271))

(assert (=> b!773508 m!718271))

(declare-fun m!718287 () Bool)

(assert (=> b!773508 m!718287))

(assert (=> b!773511 m!718271))

(assert (=> b!773511 m!718271))

(declare-fun m!718289 () Bool)

(assert (=> b!773511 m!718289))

(declare-fun m!718291 () Bool)

(assert (=> b!773519 m!718291))

(assert (=> b!773513 m!718271))

(assert (=> b!773513 m!718271))

(assert (=> b!773513 m!718289))

(assert (=> b!773520 m!718271))

(assert (=> b!773520 m!718271))

(declare-fun m!718293 () Bool)

(assert (=> b!773520 m!718293))

(assert (=> b!773520 m!718271))

(assert (=> b!773520 m!718287))

(declare-fun m!718295 () Bool)

(assert (=> start!67038 m!718295))

(declare-fun m!718297 () Bool)

(assert (=> start!67038 m!718297))

(declare-fun m!718299 () Bool)

(assert (=> b!773524 m!718299))

(assert (=> b!773523 m!718271))

(assert (=> b!773523 m!718271))

(declare-fun m!718301 () Bool)

(assert (=> b!773523 m!718301))

(assert (=> b!773504 m!718271))

(assert (=> b!773504 m!718271))

(declare-fun m!718303 () Bool)

(assert (=> b!773504 m!718303))

(assert (=> b!773504 m!718303))

(assert (=> b!773504 m!718271))

(declare-fun m!718305 () Bool)

(assert (=> b!773504 m!718305))

(declare-fun m!718307 () Bool)

(assert (=> b!773516 m!718307))

(assert (=> b!773518 m!718271))

(assert (=> b!773518 m!718271))

(assert (=> b!773518 m!718293))

(declare-fun m!718309 () Bool)

(assert (=> b!773522 m!718309))

(declare-fun m!718311 () Bool)

(assert (=> b!773507 m!718311))

(declare-fun m!718313 () Bool)

(assert (=> b!773525 m!718313))

(declare-fun m!718315 () Bool)

(assert (=> b!773525 m!718315))

(assert (=> b!773525 m!718313))

(declare-fun m!718317 () Bool)

(assert (=> b!773525 m!718317))

(declare-fun m!718319 () Bool)

(assert (=> b!773525 m!718319))

(declare-fun m!718321 () Bool)

(assert (=> b!773525 m!718321))

(check-sat (not b!773523) (not b!773525) (not b!773521) (not b!773520) (not b!773518) (not b!773522) (not b!773511) (not b!773509) (not b!773517) (not b!773512) (not start!67038) (not b!773524) (not b!773508) (not b!773516) (not b!773504) (not b!773515) (not b!773513) (not b!773505) (not b!773507))
(check-sat)
