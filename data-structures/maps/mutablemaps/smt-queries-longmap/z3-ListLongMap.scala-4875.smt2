; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67182 () Bool)

(assert start!67182)

(declare-fun b!776317 () Bool)

(declare-fun res!525297 () Bool)

(declare-fun e!432027 () Bool)

(assert (=> b!776317 (=> (not res!525297) (not e!432027))))

(declare-datatypes ((array!42492 0))(
  ( (array!42493 (arr!20338 (Array (_ BitVec 32) (_ BitVec 64))) (size!20759 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42492)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776317 (= res!525297 (validKeyInArray!0 (select (arr!20338 a!3186) j!159)))))

(declare-fun b!776318 () Bool)

(declare-fun e!432021 () Bool)

(assert (=> b!776318 (= e!432021 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7945 0))(
  ( (MissingZero!7945 (index!34147 (_ BitVec 32))) (Found!7945 (index!34148 (_ BitVec 32))) (Intermediate!7945 (undefined!8757 Bool) (index!34149 (_ BitVec 32)) (x!65113 (_ BitVec 32))) (Undefined!7945) (MissingVacant!7945 (index!34150 (_ BitVec 32))) )
))
(declare-fun lt!345896 () SeekEntryResult!7945)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42492 (_ BitVec 32)) SeekEntryResult!7945)

(assert (=> b!776318 (= lt!345896 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20338 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776319 () Bool)

(declare-fun res!525287 () Bool)

(declare-fun e!432020 () Bool)

(assert (=> b!776319 (=> (not res!525287) (not e!432020))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776319 (= res!525287 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20759 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20759 a!3186))))))

(declare-fun b!776320 () Bool)

(declare-fun res!525298 () Bool)

(declare-fun e!432023 () Bool)

(assert (=> b!776320 (=> (not res!525298) (not e!432023))))

(declare-fun e!432025 () Bool)

(assert (=> b!776320 (= res!525298 e!432025)))

(declare-fun c!85917 () Bool)

(assert (=> b!776320 (= c!85917 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776322 () Bool)

(declare-fun res!525295 () Bool)

(assert (=> b!776322 (=> (not res!525295) (not e!432020))))

(declare-datatypes ((List!14393 0))(
  ( (Nil!14390) (Cons!14389 (h!15497 (_ BitVec 64)) (t!20716 List!14393)) )
))
(declare-fun arrayNoDuplicates!0 (array!42492 (_ BitVec 32) List!14393) Bool)

(assert (=> b!776322 (= res!525295 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14390))))

(declare-fun b!776323 () Bool)

(declare-fun res!525288 () Bool)

(assert (=> b!776323 (=> (not res!525288) (not e!432023))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776323 (= res!525288 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20338 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776324 () Bool)

(assert (=> b!776324 (= e!432027 e!432020)))

(declare-fun res!525286 () Bool)

(assert (=> b!776324 (=> (not res!525286) (not e!432020))))

(declare-fun lt!345893 () SeekEntryResult!7945)

(assert (=> b!776324 (= res!525286 (or (= lt!345893 (MissingZero!7945 i!1173)) (= lt!345893 (MissingVacant!7945 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42492 (_ BitVec 32)) SeekEntryResult!7945)

(assert (=> b!776324 (= lt!345893 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun lt!345892 () SeekEntryResult!7945)

(declare-fun b!776325 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42492 (_ BitVec 32)) SeekEntryResult!7945)

(assert (=> b!776325 (= e!432025 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20338 a!3186) j!159) a!3186 mask!3328) lt!345892))))

(declare-fun b!776326 () Bool)

(declare-fun res!525290 () Bool)

(assert (=> b!776326 (=> (not res!525290) (not e!432027))))

(assert (=> b!776326 (= res!525290 (and (= (size!20759 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20759 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20759 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776327 () Bool)

(assert (=> b!776327 (= e!432020 e!432023)))

(declare-fun res!525291 () Bool)

(assert (=> b!776327 (=> (not res!525291) (not e!432023))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776327 (= res!525291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20338 a!3186) j!159) mask!3328) (select (arr!20338 a!3186) j!159) a!3186 mask!3328) lt!345892))))

(assert (=> b!776327 (= lt!345892 (Intermediate!7945 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!525296 () Bool)

(assert (=> start!67182 (=> (not res!525296) (not e!432027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67182 (= res!525296 (validMask!0 mask!3328))))

(assert (=> start!67182 e!432027))

(assert (=> start!67182 true))

(declare-fun array_inv!16112 (array!42492) Bool)

(assert (=> start!67182 (array_inv!16112 a!3186)))

(declare-fun b!776321 () Bool)

(declare-fun res!525293 () Bool)

(assert (=> b!776321 (=> (not res!525293) (not e!432027))))

(assert (=> b!776321 (= res!525293 (validKeyInArray!0 k0!2102))))

(declare-fun b!776328 () Bool)

(declare-fun res!525292 () Bool)

(assert (=> b!776328 (=> (not res!525292) (not e!432027))))

(declare-fun arrayContainsKey!0 (array!42492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776328 (= res!525292 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776329 () Bool)

(declare-fun res!525283 () Bool)

(assert (=> b!776329 (=> (not res!525283) (not e!432020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42492 (_ BitVec 32)) Bool)

(assert (=> b!776329 (= res!525283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776330 () Bool)

(declare-fun e!432024 () Bool)

(assert (=> b!776330 (= e!432024 (not e!432021))))

(declare-fun res!525289 () Bool)

(assert (=> b!776330 (=> res!525289 e!432021)))

(declare-fun lt!345891 () SeekEntryResult!7945)

(get-info :version)

(assert (=> b!776330 (= res!525289 (or (not ((_ is Intermediate!7945) lt!345891)) (bvslt x!1131 (x!65113 lt!345891)) (not (= x!1131 (x!65113 lt!345891))) (not (= index!1321 (index!34149 lt!345891)))))))

(declare-fun e!432028 () Bool)

(assert (=> b!776330 e!432028))

(declare-fun res!525284 () Bool)

(assert (=> b!776330 (=> (not res!525284) (not e!432028))))

(assert (=> b!776330 (= res!525284 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26784 0))(
  ( (Unit!26785) )
))
(declare-fun lt!345898 () Unit!26784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26784)

(assert (=> b!776330 (= lt!345898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776331 () Bool)

(assert (=> b!776331 (= e!432023 e!432024)))

(declare-fun res!525294 () Bool)

(assert (=> b!776331 (=> (not res!525294) (not e!432024))))

(declare-fun lt!345895 () SeekEntryResult!7945)

(assert (=> b!776331 (= res!525294 (= lt!345895 lt!345891))))

(declare-fun lt!345890 () (_ BitVec 64))

(declare-fun lt!345897 () array!42492)

(assert (=> b!776331 (= lt!345891 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345890 lt!345897 mask!3328))))

(assert (=> b!776331 (= lt!345895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345890 mask!3328) lt!345890 lt!345897 mask!3328))))

(assert (=> b!776331 (= lt!345890 (select (store (arr!20338 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776331 (= lt!345897 (array!42493 (store (arr!20338 a!3186) i!1173 k0!2102) (size!20759 a!3186)))))

(declare-fun lt!345894 () SeekEntryResult!7945)

(declare-fun e!432022 () Bool)

(declare-fun b!776332 () Bool)

(assert (=> b!776332 (= e!432022 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20338 a!3186) j!159) a!3186 mask!3328) lt!345894))))

(declare-fun b!776333 () Bool)

(assert (=> b!776333 (= e!432028 e!432022)))

(declare-fun res!525285 () Bool)

(assert (=> b!776333 (=> (not res!525285) (not e!432022))))

(assert (=> b!776333 (= res!525285 (= (seekEntryOrOpen!0 (select (arr!20338 a!3186) j!159) a!3186 mask!3328) lt!345894))))

(assert (=> b!776333 (= lt!345894 (Found!7945 j!159))))

(declare-fun b!776334 () Bool)

(assert (=> b!776334 (= e!432025 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20338 a!3186) j!159) a!3186 mask!3328) (Found!7945 j!159)))))

(assert (= (and start!67182 res!525296) b!776326))

(assert (= (and b!776326 res!525290) b!776317))

(assert (= (and b!776317 res!525297) b!776321))

(assert (= (and b!776321 res!525293) b!776328))

(assert (= (and b!776328 res!525292) b!776324))

(assert (= (and b!776324 res!525286) b!776329))

(assert (= (and b!776329 res!525283) b!776322))

(assert (= (and b!776322 res!525295) b!776319))

(assert (= (and b!776319 res!525287) b!776327))

(assert (= (and b!776327 res!525291) b!776323))

(assert (= (and b!776323 res!525288) b!776320))

(assert (= (and b!776320 c!85917) b!776325))

(assert (= (and b!776320 (not c!85917)) b!776334))

(assert (= (and b!776320 res!525298) b!776331))

(assert (= (and b!776331 res!525294) b!776330))

(assert (= (and b!776330 res!525284) b!776333))

(assert (= (and b!776333 res!525285) b!776332))

(assert (= (and b!776330 (not res!525289)) b!776318))

(declare-fun m!720473 () Bool)

(assert (=> b!776325 m!720473))

(assert (=> b!776325 m!720473))

(declare-fun m!720475 () Bool)

(assert (=> b!776325 m!720475))

(declare-fun m!720477 () Bool)

(assert (=> b!776330 m!720477))

(declare-fun m!720479 () Bool)

(assert (=> b!776330 m!720479))

(assert (=> b!776334 m!720473))

(assert (=> b!776334 m!720473))

(declare-fun m!720481 () Bool)

(assert (=> b!776334 m!720481))

(declare-fun m!720483 () Bool)

(assert (=> b!776329 m!720483))

(declare-fun m!720485 () Bool)

(assert (=> b!776328 m!720485))

(assert (=> b!776327 m!720473))

(assert (=> b!776327 m!720473))

(declare-fun m!720487 () Bool)

(assert (=> b!776327 m!720487))

(assert (=> b!776327 m!720487))

(assert (=> b!776327 m!720473))

(declare-fun m!720489 () Bool)

(assert (=> b!776327 m!720489))

(assert (=> b!776317 m!720473))

(assert (=> b!776317 m!720473))

(declare-fun m!720491 () Bool)

(assert (=> b!776317 m!720491))

(assert (=> b!776333 m!720473))

(assert (=> b!776333 m!720473))

(declare-fun m!720493 () Bool)

(assert (=> b!776333 m!720493))

(assert (=> b!776318 m!720473))

(assert (=> b!776318 m!720473))

(assert (=> b!776318 m!720481))

(declare-fun m!720495 () Bool)

(assert (=> b!776324 m!720495))

(declare-fun m!720497 () Bool)

(assert (=> b!776322 m!720497))

(assert (=> b!776332 m!720473))

(assert (=> b!776332 m!720473))

(declare-fun m!720499 () Bool)

(assert (=> b!776332 m!720499))

(declare-fun m!720501 () Bool)

(assert (=> b!776323 m!720501))

(declare-fun m!720503 () Bool)

(assert (=> b!776331 m!720503))

(declare-fun m!720505 () Bool)

(assert (=> b!776331 m!720505))

(declare-fun m!720507 () Bool)

(assert (=> b!776331 m!720507))

(assert (=> b!776331 m!720505))

(declare-fun m!720509 () Bool)

(assert (=> b!776331 m!720509))

(declare-fun m!720511 () Bool)

(assert (=> b!776331 m!720511))

(declare-fun m!720513 () Bool)

(assert (=> b!776321 m!720513))

(declare-fun m!720515 () Bool)

(assert (=> start!67182 m!720515))

(declare-fun m!720517 () Bool)

(assert (=> start!67182 m!720517))

(check-sat (not b!776332) (not b!776328) (not b!776334) (not start!67182) (not b!776321) (not b!776325) (not b!776331) (not b!776317) (not b!776318) (not b!776324) (not b!776329) (not b!776322) (not b!776330) (not b!776327) (not b!776333))
(check-sat)
