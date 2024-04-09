; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67560 () Bool)

(assert start!67560)

(declare-fun b!781276 () Bool)

(declare-fun res!528636 () Bool)

(declare-fun e!434581 () Bool)

(assert (=> b!781276 (=> (not res!528636) (not e!434581))))

(declare-datatypes ((array!42618 0))(
  ( (array!42619 (arr!20395 (Array (_ BitVec 32) (_ BitVec 64))) (size!20816 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42618)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781276 (= res!528636 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781277 () Bool)

(declare-datatypes ((Unit!26918 0))(
  ( (Unit!26919) )
))
(declare-fun e!434577 () Unit!26918)

(declare-fun Unit!26920 () Unit!26918)

(assert (=> b!781277 (= e!434577 Unit!26920)))

(assert (=> b!781277 false))

(declare-fun b!781278 () Bool)

(declare-fun res!528647 () Bool)

(declare-fun e!434584 () Bool)

(assert (=> b!781278 (=> res!528647 e!434584)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8002 0))(
  ( (MissingZero!8002 (index!34375 (_ BitVec 32))) (Found!8002 (index!34376 (_ BitVec 32))) (Intermediate!8002 (undefined!8814 Bool) (index!34377 (_ BitVec 32)) (x!65358 (_ BitVec 32))) (Undefined!8002) (MissingVacant!8002 (index!34378 (_ BitVec 32))) )
))
(declare-fun lt!348184 () SeekEntryResult!8002)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42618 (_ BitVec 32)) SeekEntryResult!8002)

(assert (=> b!781278 (= res!528647 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20395 a!3186) j!159) a!3186 mask!3328) lt!348184)))))

(declare-fun b!781279 () Bool)

(declare-fun Unit!26921 () Unit!26918)

(assert (=> b!781279 (= e!434577 Unit!26921)))

(declare-fun b!781280 () Bool)

(declare-fun res!528638 () Bool)

(declare-fun e!434583 () Bool)

(assert (=> b!781280 (=> (not res!528638) (not e!434583))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!781280 (= res!528638 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20395 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781282 () Bool)

(declare-fun res!528637 () Bool)

(declare-fun e!434576 () Bool)

(assert (=> b!781282 (=> (not res!528637) (not e!434576))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781282 (= res!528637 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20816 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20816 a!3186))))))

(declare-fun b!781283 () Bool)

(declare-fun e!434579 () Bool)

(assert (=> b!781283 (= e!434579 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20395 a!3186) j!159) a!3186 mask!3328) lt!348184))))

(declare-fun b!781284 () Bool)

(declare-fun res!528651 () Bool)

(assert (=> b!781284 (=> (not res!528651) (not e!434576))))

(declare-datatypes ((List!14450 0))(
  ( (Nil!14447) (Cons!14446 (h!15566 (_ BitVec 64)) (t!20773 List!14450)) )
))
(declare-fun arrayNoDuplicates!0 (array!42618 (_ BitVec 32) List!14450) Bool)

(assert (=> b!781284 (= res!528651 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14447))))

(declare-fun b!781285 () Bool)

(declare-fun res!528646 () Bool)

(assert (=> b!781285 (=> res!528646 e!434584)))

(declare-fun lt!348175 () (_ BitVec 64))

(assert (=> b!781285 (= res!528646 (= (select (store (arr!20395 a!3186) i!1173 k0!2102) index!1321) lt!348175))))

(declare-fun b!781286 () Bool)

(declare-fun e!434580 () Bool)

(assert (=> b!781286 (= e!434583 e!434580)))

(declare-fun res!528641 () Bool)

(assert (=> b!781286 (=> (not res!528641) (not e!434580))))

(declare-fun lt!348177 () SeekEntryResult!8002)

(declare-fun lt!348181 () SeekEntryResult!8002)

(assert (=> b!781286 (= res!528641 (= lt!348177 lt!348181))))

(declare-fun lt!348176 () array!42618)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42618 (_ BitVec 32)) SeekEntryResult!8002)

(assert (=> b!781286 (= lt!348181 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348175 lt!348176 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781286 (= lt!348177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348175 mask!3328) lt!348175 lt!348176 mask!3328))))

(assert (=> b!781286 (= lt!348175 (select (store (arr!20395 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!781286 (= lt!348176 (array!42619 (store (arr!20395 a!3186) i!1173 k0!2102) (size!20816 a!3186)))))

(declare-fun b!781287 () Bool)

(assert (=> b!781287 (= e!434581 e!434576)))

(declare-fun res!528639 () Bool)

(assert (=> b!781287 (=> (not res!528639) (not e!434576))))

(declare-fun lt!348179 () SeekEntryResult!8002)

(assert (=> b!781287 (= res!528639 (or (= lt!348179 (MissingZero!8002 i!1173)) (= lt!348179 (MissingVacant!8002 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42618 (_ BitVec 32)) SeekEntryResult!8002)

(assert (=> b!781287 (= lt!348179 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!781288 () Bool)

(declare-fun res!528649 () Bool)

(assert (=> b!781288 (=> (not res!528649) (not e!434576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42618 (_ BitVec 32)) Bool)

(assert (=> b!781288 (= res!528649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781289 () Bool)

(assert (=> b!781289 (= e!434576 e!434583)))

(declare-fun res!528642 () Bool)

(assert (=> b!781289 (=> (not res!528642) (not e!434583))))

(declare-fun lt!348182 () SeekEntryResult!8002)

(assert (=> b!781289 (= res!528642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20395 a!3186) j!159) mask!3328) (select (arr!20395 a!3186) j!159) a!3186 mask!3328) lt!348182))))

(assert (=> b!781289 (= lt!348182 (Intermediate!8002 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781281 () Bool)

(declare-fun res!528645 () Bool)

(assert (=> b!781281 (=> (not res!528645) (not e!434581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781281 (= res!528645 (validKeyInArray!0 k0!2102))))

(declare-fun res!528648 () Bool)

(assert (=> start!67560 (=> (not res!528648) (not e!434581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67560 (= res!528648 (validMask!0 mask!3328))))

(assert (=> start!67560 e!434581))

(assert (=> start!67560 true))

(declare-fun array_inv!16169 (array!42618) Bool)

(assert (=> start!67560 (array_inv!16169 a!3186)))

(declare-fun b!781290 () Bool)

(declare-fun res!528640 () Bool)

(assert (=> b!781290 (=> (not res!528640) (not e!434583))))

(declare-fun e!434578 () Bool)

(assert (=> b!781290 (= res!528640 e!434578)))

(declare-fun c!86727 () Bool)

(assert (=> b!781290 (= c!86727 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781291 () Bool)

(declare-fun res!528644 () Bool)

(assert (=> b!781291 (=> (not res!528644) (not e!434581))))

(assert (=> b!781291 (= res!528644 (and (= (size!20816 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20816 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20816 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781292 () Bool)

(assert (=> b!781292 (= e!434578 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20395 a!3186) j!159) a!3186 mask!3328) (Found!8002 j!159)))))

(declare-fun b!781293 () Bool)

(assert (=> b!781293 (= e!434580 (not e!434584))))

(declare-fun res!528650 () Bool)

(assert (=> b!781293 (=> res!528650 e!434584)))

(get-info :version)

(assert (=> b!781293 (= res!528650 (or (not ((_ is Intermediate!8002) lt!348181)) (bvslt x!1131 (x!65358 lt!348181)) (not (= x!1131 (x!65358 lt!348181))) (not (= index!1321 (index!34377 lt!348181)))))))

(assert (=> b!781293 e!434579))

(declare-fun res!528652 () Bool)

(assert (=> b!781293 (=> (not res!528652) (not e!434579))))

(declare-fun lt!348178 () SeekEntryResult!8002)

(assert (=> b!781293 (= res!528652 (= lt!348178 lt!348184))))

(assert (=> b!781293 (= lt!348184 (Found!8002 j!159))))

(assert (=> b!781293 (= lt!348178 (seekEntryOrOpen!0 (select (arr!20395 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!781293 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348183 () Unit!26918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26918)

(assert (=> b!781293 (= lt!348183 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781294 () Bool)

(declare-fun res!528643 () Bool)

(assert (=> b!781294 (=> (not res!528643) (not e!434581))))

(assert (=> b!781294 (= res!528643 (validKeyInArray!0 (select (arr!20395 a!3186) j!159)))))

(declare-fun b!781295 () Bool)

(assert (=> b!781295 (= e!434578 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20395 a!3186) j!159) a!3186 mask!3328) lt!348182))))

(declare-fun b!781296 () Bool)

(assert (=> b!781296 (= e!434584 true)))

(assert (=> b!781296 (= (select (store (arr!20395 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348180 () Unit!26918)

(assert (=> b!781296 (= lt!348180 e!434577)))

(declare-fun c!86726 () Bool)

(assert (=> b!781296 (= c!86726 (= (select (store (arr!20395 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67560 res!528648) b!781291))

(assert (= (and b!781291 res!528644) b!781294))

(assert (= (and b!781294 res!528643) b!781281))

(assert (= (and b!781281 res!528645) b!781276))

(assert (= (and b!781276 res!528636) b!781287))

(assert (= (and b!781287 res!528639) b!781288))

(assert (= (and b!781288 res!528649) b!781284))

(assert (= (and b!781284 res!528651) b!781282))

(assert (= (and b!781282 res!528637) b!781289))

(assert (= (and b!781289 res!528642) b!781280))

(assert (= (and b!781280 res!528638) b!781290))

(assert (= (and b!781290 c!86727) b!781295))

(assert (= (and b!781290 (not c!86727)) b!781292))

(assert (= (and b!781290 res!528640) b!781286))

(assert (= (and b!781286 res!528641) b!781293))

(assert (= (and b!781293 res!528652) b!781283))

(assert (= (and b!781293 (not res!528650)) b!781278))

(assert (= (and b!781278 (not res!528647)) b!781285))

(assert (= (and b!781285 (not res!528646)) b!781296))

(assert (= (and b!781296 c!86726) b!781277))

(assert (= (and b!781296 (not c!86726)) b!781279))

(declare-fun m!724387 () Bool)

(assert (=> b!781295 m!724387))

(assert (=> b!781295 m!724387))

(declare-fun m!724389 () Bool)

(assert (=> b!781295 m!724389))

(declare-fun m!724391 () Bool)

(assert (=> b!781285 m!724391))

(declare-fun m!724393 () Bool)

(assert (=> b!781285 m!724393))

(declare-fun m!724395 () Bool)

(assert (=> b!781284 m!724395))

(declare-fun m!724397 () Bool)

(assert (=> start!67560 m!724397))

(declare-fun m!724399 () Bool)

(assert (=> start!67560 m!724399))

(declare-fun m!724401 () Bool)

(assert (=> b!781280 m!724401))

(declare-fun m!724403 () Bool)

(assert (=> b!781288 m!724403))

(declare-fun m!724405 () Bool)

(assert (=> b!781276 m!724405))

(assert (=> b!781283 m!724387))

(assert (=> b!781283 m!724387))

(declare-fun m!724407 () Bool)

(assert (=> b!781283 m!724407))

(assert (=> b!781294 m!724387))

(assert (=> b!781294 m!724387))

(declare-fun m!724409 () Bool)

(assert (=> b!781294 m!724409))

(assert (=> b!781292 m!724387))

(assert (=> b!781292 m!724387))

(declare-fun m!724411 () Bool)

(assert (=> b!781292 m!724411))

(assert (=> b!781293 m!724387))

(assert (=> b!781293 m!724387))

(declare-fun m!724413 () Bool)

(assert (=> b!781293 m!724413))

(declare-fun m!724415 () Bool)

(assert (=> b!781293 m!724415))

(declare-fun m!724417 () Bool)

(assert (=> b!781293 m!724417))

(assert (=> b!781296 m!724391))

(assert (=> b!781296 m!724393))

(assert (=> b!781289 m!724387))

(assert (=> b!781289 m!724387))

(declare-fun m!724419 () Bool)

(assert (=> b!781289 m!724419))

(assert (=> b!781289 m!724419))

(assert (=> b!781289 m!724387))

(declare-fun m!724421 () Bool)

(assert (=> b!781289 m!724421))

(assert (=> b!781278 m!724387))

(assert (=> b!781278 m!724387))

(assert (=> b!781278 m!724411))

(declare-fun m!724423 () Bool)

(assert (=> b!781287 m!724423))

(declare-fun m!724425 () Bool)

(assert (=> b!781286 m!724425))

(declare-fun m!724427 () Bool)

(assert (=> b!781286 m!724427))

(assert (=> b!781286 m!724391))

(declare-fun m!724429 () Bool)

(assert (=> b!781286 m!724429))

(declare-fun m!724431 () Bool)

(assert (=> b!781286 m!724431))

(assert (=> b!781286 m!724425))

(declare-fun m!724433 () Bool)

(assert (=> b!781281 m!724433))

(check-sat (not b!781283) (not b!781278) (not b!781295) (not b!781292) (not b!781286) (not b!781276) (not b!781281) (not b!781287) (not b!781293) (not start!67560) (not b!781289) (not b!781288) (not b!781294) (not b!781284))
(check-sat)
