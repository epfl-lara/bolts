; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65568 () Bool)

(assert start!65568)

(declare-fun b!748419 () Bool)

(declare-fun res!504969 () Bool)

(declare-fun e!417747 () Bool)

(assert (=> b!748419 (=> (not res!504969) (not e!417747))))

(declare-fun e!417741 () Bool)

(assert (=> b!748419 (= res!504969 e!417741)))

(declare-fun c!82110 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748419 (= c!82110 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748420 () Bool)

(declare-fun res!504967 () Bool)

(declare-fun e!417746 () Bool)

(assert (=> b!748420 (=> (not res!504967) (not e!417746))))

(declare-datatypes ((array!41694 0))(
  ( (array!41695 (arr!19957 (Array (_ BitVec 32) (_ BitVec 64))) (size!20378 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41694)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748420 (= res!504967 (validKeyInArray!0 (select (arr!19957 a!3186) j!159)))))

(declare-fun b!748421 () Bool)

(declare-fun e!417740 () Bool)

(assert (=> b!748421 (= e!417740 true)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!748421 (= (select (store (arr!19957 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25658 0))(
  ( (Unit!25659) )
))
(declare-fun lt!332724 () Unit!25658)

(declare-fun e!417739 () Unit!25658)

(assert (=> b!748421 (= lt!332724 e!417739)))

(declare-fun c!82109 () Bool)

(assert (=> b!748421 (= c!82109 (= (select (store (arr!19957 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748422 () Bool)

(declare-fun Unit!25660 () Unit!25658)

(assert (=> b!748422 (= e!417739 Unit!25660)))

(assert (=> b!748422 false))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!748423 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7564 0))(
  ( (MissingZero!7564 (index!32623 (_ BitVec 32))) (Found!7564 (index!32624 (_ BitVec 32))) (Intermediate!7564 (undefined!8376 Bool) (index!32625 (_ BitVec 32)) (x!63587 (_ BitVec 32))) (Undefined!7564) (MissingVacant!7564 (index!32626 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41694 (_ BitVec 32)) SeekEntryResult!7564)

(assert (=> b!748423 (= e!417741 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19957 a!3186) j!159) a!3186 mask!3328) (Found!7564 j!159)))))

(declare-fun lt!332722 () SeekEntryResult!7564)

(declare-fun b!748424 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41694 (_ BitVec 32)) SeekEntryResult!7564)

(assert (=> b!748424 (= e!417741 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19957 a!3186) j!159) a!3186 mask!3328) lt!332722))))

(declare-fun b!748425 () Bool)

(declare-fun e!417745 () Bool)

(assert (=> b!748425 (= e!417745 (not e!417740))))

(declare-fun res!504972 () Bool)

(assert (=> b!748425 (=> res!504972 e!417740)))

(declare-fun lt!332726 () SeekEntryResult!7564)

(get-info :version)

(assert (=> b!748425 (= res!504972 (or (not ((_ is Intermediate!7564) lt!332726)) (bvslt x!1131 (x!63587 lt!332726)) (not (= x!1131 (x!63587 lt!332726))) (not (= index!1321 (index!32625 lt!332726)))))))

(declare-fun e!417744 () Bool)

(assert (=> b!748425 e!417744))

(declare-fun res!504963 () Bool)

(assert (=> b!748425 (=> (not res!504963) (not e!417744))))

(declare-fun lt!332725 () SeekEntryResult!7564)

(declare-fun lt!332719 () SeekEntryResult!7564)

(assert (=> b!748425 (= res!504963 (= lt!332725 lt!332719))))

(assert (=> b!748425 (= lt!332719 (Found!7564 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41694 (_ BitVec 32)) SeekEntryResult!7564)

(assert (=> b!748425 (= lt!332725 (seekEntryOrOpen!0 (select (arr!19957 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41694 (_ BitVec 32)) Bool)

(assert (=> b!748425 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332723 () Unit!25658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25658)

(assert (=> b!748425 (= lt!332723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748426 () Bool)

(declare-fun res!504978 () Bool)

(assert (=> b!748426 (=> res!504978 e!417740)))

(declare-fun lt!332717 () (_ BitVec 64))

(assert (=> b!748426 (= res!504978 (= (select (store (arr!19957 a!3186) i!1173 k0!2102) index!1321) lt!332717))))

(declare-fun b!748427 () Bool)

(declare-fun res!504968 () Bool)

(assert (=> b!748427 (=> (not res!504968) (not e!417746))))

(assert (=> b!748427 (= res!504968 (validKeyInArray!0 k0!2102))))

(declare-fun b!748429 () Bool)

(declare-fun Unit!25661 () Unit!25658)

(assert (=> b!748429 (= e!417739 Unit!25661)))

(declare-fun b!748430 () Bool)

(declare-fun res!504970 () Bool)

(declare-fun e!417743 () Bool)

(assert (=> b!748430 (=> (not res!504970) (not e!417743))))

(declare-datatypes ((List!14012 0))(
  ( (Nil!14009) (Cons!14008 (h!15080 (_ BitVec 64)) (t!20335 List!14012)) )
))
(declare-fun arrayNoDuplicates!0 (array!41694 (_ BitVec 32) List!14012) Bool)

(assert (=> b!748430 (= res!504970 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14009))))

(declare-fun b!748431 () Bool)

(declare-fun res!504974 () Bool)

(assert (=> b!748431 (=> (not res!504974) (not e!417743))))

(assert (=> b!748431 (= res!504974 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20378 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20378 a!3186))))))

(declare-fun b!748432 () Bool)

(assert (=> b!748432 (= e!417743 e!417747)))

(declare-fun res!504966 () Bool)

(assert (=> b!748432 (=> (not res!504966) (not e!417747))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748432 (= res!504966 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19957 a!3186) j!159) mask!3328) (select (arr!19957 a!3186) j!159) a!3186 mask!3328) lt!332722))))

(assert (=> b!748432 (= lt!332722 (Intermediate!7564 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748433 () Bool)

(assert (=> b!748433 (= e!417744 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19957 a!3186) j!159) a!3186 mask!3328) lt!332719))))

(declare-fun b!748434 () Bool)

(declare-fun res!504971 () Bool)

(assert (=> b!748434 (=> (not res!504971) (not e!417747))))

(assert (=> b!748434 (= res!504971 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19957 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748435 () Bool)

(assert (=> b!748435 (= e!417747 e!417745)))

(declare-fun res!504977 () Bool)

(assert (=> b!748435 (=> (not res!504977) (not e!417745))))

(declare-fun lt!332718 () SeekEntryResult!7564)

(assert (=> b!748435 (= res!504977 (= lt!332718 lt!332726))))

(declare-fun lt!332720 () array!41694)

(assert (=> b!748435 (= lt!332726 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332717 lt!332720 mask!3328))))

(assert (=> b!748435 (= lt!332718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332717 mask!3328) lt!332717 lt!332720 mask!3328))))

(assert (=> b!748435 (= lt!332717 (select (store (arr!19957 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!748435 (= lt!332720 (array!41695 (store (arr!19957 a!3186) i!1173 k0!2102) (size!20378 a!3186)))))

(declare-fun b!748436 () Bool)

(assert (=> b!748436 (= e!417746 e!417743)))

(declare-fun res!504973 () Bool)

(assert (=> b!748436 (=> (not res!504973) (not e!417743))))

(declare-fun lt!332721 () SeekEntryResult!7564)

(assert (=> b!748436 (= res!504973 (or (= lt!332721 (MissingZero!7564 i!1173)) (= lt!332721 (MissingVacant!7564 i!1173))))))

(assert (=> b!748436 (= lt!332721 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!748437 () Bool)

(declare-fun res!504965 () Bool)

(assert (=> b!748437 (=> (not res!504965) (not e!417746))))

(declare-fun arrayContainsKey!0 (array!41694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748437 (= res!504965 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748438 () Bool)

(declare-fun res!504975 () Bool)

(assert (=> b!748438 (=> res!504975 e!417740)))

(assert (=> b!748438 (= res!504975 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19957 a!3186) j!159) a!3186 mask!3328) lt!332719)))))

(declare-fun b!748439 () Bool)

(declare-fun res!504976 () Bool)

(assert (=> b!748439 (=> (not res!504976) (not e!417743))))

(assert (=> b!748439 (= res!504976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748428 () Bool)

(declare-fun res!504962 () Bool)

(assert (=> b!748428 (=> (not res!504962) (not e!417746))))

(assert (=> b!748428 (= res!504962 (and (= (size!20378 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20378 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20378 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!504964 () Bool)

(assert (=> start!65568 (=> (not res!504964) (not e!417746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65568 (= res!504964 (validMask!0 mask!3328))))

(assert (=> start!65568 e!417746))

(assert (=> start!65568 true))

(declare-fun array_inv!15731 (array!41694) Bool)

(assert (=> start!65568 (array_inv!15731 a!3186)))

(assert (= (and start!65568 res!504964) b!748428))

(assert (= (and b!748428 res!504962) b!748420))

(assert (= (and b!748420 res!504967) b!748427))

(assert (= (and b!748427 res!504968) b!748437))

(assert (= (and b!748437 res!504965) b!748436))

(assert (= (and b!748436 res!504973) b!748439))

(assert (= (and b!748439 res!504976) b!748430))

(assert (= (and b!748430 res!504970) b!748431))

(assert (= (and b!748431 res!504974) b!748432))

(assert (= (and b!748432 res!504966) b!748434))

(assert (= (and b!748434 res!504971) b!748419))

(assert (= (and b!748419 c!82110) b!748424))

(assert (= (and b!748419 (not c!82110)) b!748423))

(assert (= (and b!748419 res!504969) b!748435))

(assert (= (and b!748435 res!504977) b!748425))

(assert (= (and b!748425 res!504963) b!748433))

(assert (= (and b!748425 (not res!504972)) b!748438))

(assert (= (and b!748438 (not res!504975)) b!748426))

(assert (= (and b!748426 (not res!504978)) b!748421))

(assert (= (and b!748421 c!82109) b!748422))

(assert (= (and b!748421 (not c!82109)) b!748429))

(declare-fun m!698335 () Bool)

(assert (=> b!748423 m!698335))

(assert (=> b!748423 m!698335))

(declare-fun m!698337 () Bool)

(assert (=> b!748423 m!698337))

(assert (=> b!748420 m!698335))

(assert (=> b!748420 m!698335))

(declare-fun m!698339 () Bool)

(assert (=> b!748420 m!698339))

(declare-fun m!698341 () Bool)

(assert (=> b!748437 m!698341))

(declare-fun m!698343 () Bool)

(assert (=> b!748430 m!698343))

(assert (=> b!748438 m!698335))

(assert (=> b!748438 m!698335))

(assert (=> b!748438 m!698337))

(assert (=> b!748424 m!698335))

(assert (=> b!748424 m!698335))

(declare-fun m!698345 () Bool)

(assert (=> b!748424 m!698345))

(declare-fun m!698347 () Bool)

(assert (=> b!748426 m!698347))

(declare-fun m!698349 () Bool)

(assert (=> b!748426 m!698349))

(declare-fun m!698351 () Bool)

(assert (=> b!748439 m!698351))

(assert (=> b!748425 m!698335))

(assert (=> b!748425 m!698335))

(declare-fun m!698353 () Bool)

(assert (=> b!748425 m!698353))

(declare-fun m!698355 () Bool)

(assert (=> b!748425 m!698355))

(declare-fun m!698357 () Bool)

(assert (=> b!748425 m!698357))

(declare-fun m!698359 () Bool)

(assert (=> b!748435 m!698359))

(declare-fun m!698361 () Bool)

(assert (=> b!748435 m!698361))

(declare-fun m!698363 () Bool)

(assert (=> b!748435 m!698363))

(assert (=> b!748435 m!698347))

(assert (=> b!748435 m!698359))

(declare-fun m!698365 () Bool)

(assert (=> b!748435 m!698365))

(declare-fun m!698367 () Bool)

(assert (=> b!748436 m!698367))

(assert (=> b!748421 m!698347))

(assert (=> b!748421 m!698349))

(assert (=> b!748433 m!698335))

(assert (=> b!748433 m!698335))

(declare-fun m!698369 () Bool)

(assert (=> b!748433 m!698369))

(assert (=> b!748432 m!698335))

(assert (=> b!748432 m!698335))

(declare-fun m!698371 () Bool)

(assert (=> b!748432 m!698371))

(assert (=> b!748432 m!698371))

(assert (=> b!748432 m!698335))

(declare-fun m!698373 () Bool)

(assert (=> b!748432 m!698373))

(declare-fun m!698375 () Bool)

(assert (=> b!748427 m!698375))

(declare-fun m!698377 () Bool)

(assert (=> b!748434 m!698377))

(declare-fun m!698379 () Bool)

(assert (=> start!65568 m!698379))

(declare-fun m!698381 () Bool)

(assert (=> start!65568 m!698381))

(check-sat (not b!748430) (not b!748424) (not b!748437) (not b!748427) (not b!748433) (not start!65568) (not b!748435) (not b!748436) (not b!748423) (not b!748432) (not b!748438) (not b!748420) (not b!748425) (not b!748439))
(check-sat)
