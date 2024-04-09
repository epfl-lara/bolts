; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64504 () Bool)

(assert start!64504)

(declare-fun b!725338 () Bool)

(declare-fun res!486588 () Bool)

(declare-fun e!406220 () Bool)

(assert (=> b!725338 (=> (not res!486588) (not e!406220))))

(declare-datatypes ((array!40975 0))(
  ( (array!40976 (arr!19605 (Array (_ BitVec 32) (_ BitVec 64))) (size!20026 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40975)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!725338 (= res!486588 (and (= (size!20026 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20026 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20026 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725339 () Bool)

(declare-fun res!486577 () Bool)

(assert (=> b!725339 (=> (not res!486577) (not e!406220))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725339 (= res!486577 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725340 () Bool)

(declare-fun e!406224 () Bool)

(declare-fun e!406223 () Bool)

(assert (=> b!725340 (= e!406224 e!406223)))

(declare-fun res!486587 () Bool)

(assert (=> b!725340 (=> (not res!486587) (not e!406223))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321315 () array!40975)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321316 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7212 0))(
  ( (MissingZero!7212 (index!31215 (_ BitVec 32))) (Found!7212 (index!31216 (_ BitVec 32))) (Intermediate!7212 (undefined!8024 Bool) (index!31217 (_ BitVec 32)) (x!62239 (_ BitVec 32))) (Undefined!7212) (MissingVacant!7212 (index!31218 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40975 (_ BitVec 32)) SeekEntryResult!7212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725340 (= res!486587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321316 mask!3328) lt!321316 lt!321315 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321316 lt!321315 mask!3328)))))

(assert (=> b!725340 (= lt!321316 (select (store (arr!19605 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725340 (= lt!321315 (array!40976 (store (arr!19605 a!3186) i!1173 k!2102) (size!20026 a!3186)))))

(declare-fun b!725341 () Bool)

(declare-fun e!406219 () Bool)

(declare-fun e!406218 () Bool)

(assert (=> b!725341 (= e!406219 e!406218)))

(declare-fun res!486585 () Bool)

(assert (=> b!725341 (=> (not res!486585) (not e!406218))))

(declare-fun lt!321317 () SeekEntryResult!7212)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40975 (_ BitVec 32)) SeekEntryResult!7212)

(assert (=> b!725341 (= res!486585 (= (seekEntryOrOpen!0 (select (arr!19605 a!3186) j!159) a!3186 mask!3328) lt!321317))))

(assert (=> b!725341 (= lt!321317 (Found!7212 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!406217 () Bool)

(declare-fun b!725342 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40975 (_ BitVec 32)) SeekEntryResult!7212)

(assert (=> b!725342 (= e!406217 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19605 a!3186) j!159) a!3186 mask!3328) (Found!7212 j!159)))))

(declare-fun lt!321319 () SeekEntryResult!7212)

(declare-fun b!725343 () Bool)

(assert (=> b!725343 (= e!406217 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19605 a!3186) j!159) a!3186 mask!3328) lt!321319))))

(declare-fun res!486575 () Bool)

(assert (=> start!64504 (=> (not res!486575) (not e!406220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64504 (= res!486575 (validMask!0 mask!3328))))

(assert (=> start!64504 e!406220))

(assert (=> start!64504 true))

(declare-fun array_inv!15379 (array!40975) Bool)

(assert (=> start!64504 (array_inv!15379 a!3186)))

(declare-fun b!725344 () Bool)

(declare-fun res!486586 () Bool)

(assert (=> b!725344 (=> (not res!486586) (not e!406220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725344 (= res!486586 (validKeyInArray!0 (select (arr!19605 a!3186) j!159)))))

(declare-fun b!725345 () Bool)

(declare-fun res!486581 () Bool)

(assert (=> b!725345 (=> (not res!486581) (not e!406220))))

(assert (=> b!725345 (= res!486581 (validKeyInArray!0 k!2102))))

(declare-fun b!725346 () Bool)

(declare-fun e!406222 () Bool)

(assert (=> b!725346 (= e!406220 e!406222)))

(declare-fun res!486579 () Bool)

(assert (=> b!725346 (=> (not res!486579) (not e!406222))))

(declare-fun lt!321318 () SeekEntryResult!7212)

(assert (=> b!725346 (= res!486579 (or (= lt!321318 (MissingZero!7212 i!1173)) (= lt!321318 (MissingVacant!7212 i!1173))))))

(assert (=> b!725346 (= lt!321318 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725347 () Bool)

(assert (=> b!725347 (= e!406222 e!406224)))

(declare-fun res!486574 () Bool)

(assert (=> b!725347 (=> (not res!486574) (not e!406224))))

(assert (=> b!725347 (= res!486574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19605 a!3186) j!159) mask!3328) (select (arr!19605 a!3186) j!159) a!3186 mask!3328) lt!321319))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725347 (= lt!321319 (Intermediate!7212 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725348 () Bool)

(declare-fun res!486583 () Bool)

(assert (=> b!725348 (=> (not res!486583) (not e!406224))))

(assert (=> b!725348 (= res!486583 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19605 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725349 () Bool)

(declare-fun res!486580 () Bool)

(assert (=> b!725349 (=> (not res!486580) (not e!406222))))

(declare-datatypes ((List!13660 0))(
  ( (Nil!13657) (Cons!13656 (h!14713 (_ BitVec 64)) (t!19983 List!13660)) )
))
(declare-fun arrayNoDuplicates!0 (array!40975 (_ BitVec 32) List!13660) Bool)

(assert (=> b!725349 (= res!486580 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13657))))

(declare-fun b!725350 () Bool)

(assert (=> b!725350 (= e!406218 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19605 a!3186) j!159) a!3186 mask!3328) lt!321317))))

(declare-fun b!725351 () Bool)

(declare-fun res!486576 () Bool)

(assert (=> b!725351 (=> (not res!486576) (not e!406222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40975 (_ BitVec 32)) Bool)

(assert (=> b!725351 (= res!486576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725352 () Bool)

(declare-fun res!486582 () Bool)

(assert (=> b!725352 (=> (not res!486582) (not e!406222))))

(assert (=> b!725352 (= res!486582 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20026 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20026 a!3186))))))

(declare-fun b!725353 () Bool)

(declare-fun res!486584 () Bool)

(assert (=> b!725353 (=> (not res!486584) (not e!406224))))

(assert (=> b!725353 (= res!486584 e!406217)))

(declare-fun c!79755 () Bool)

(assert (=> b!725353 (= c!79755 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725354 () Bool)

(assert (=> b!725354 (= e!406223 (not true))))

(assert (=> b!725354 e!406219))

(declare-fun res!486578 () Bool)

(assert (=> b!725354 (=> (not res!486578) (not e!406219))))

(assert (=> b!725354 (= res!486578 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24742 0))(
  ( (Unit!24743) )
))
(declare-fun lt!321320 () Unit!24742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24742)

(assert (=> b!725354 (= lt!321320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64504 res!486575) b!725338))

(assert (= (and b!725338 res!486588) b!725344))

(assert (= (and b!725344 res!486586) b!725345))

(assert (= (and b!725345 res!486581) b!725339))

(assert (= (and b!725339 res!486577) b!725346))

(assert (= (and b!725346 res!486579) b!725351))

(assert (= (and b!725351 res!486576) b!725349))

(assert (= (and b!725349 res!486580) b!725352))

(assert (= (and b!725352 res!486582) b!725347))

(assert (= (and b!725347 res!486574) b!725348))

(assert (= (and b!725348 res!486583) b!725353))

(assert (= (and b!725353 c!79755) b!725343))

(assert (= (and b!725353 (not c!79755)) b!725342))

(assert (= (and b!725353 res!486584) b!725340))

(assert (= (and b!725340 res!486587) b!725354))

(assert (= (and b!725354 res!486578) b!725341))

(assert (= (and b!725341 res!486585) b!725350))

(declare-fun m!679597 () Bool)

(assert (=> b!725350 m!679597))

(assert (=> b!725350 m!679597))

(declare-fun m!679599 () Bool)

(assert (=> b!725350 m!679599))

(declare-fun m!679601 () Bool)

(assert (=> b!725345 m!679601))

(declare-fun m!679603 () Bool)

(assert (=> b!725346 m!679603))

(declare-fun m!679605 () Bool)

(assert (=> b!725354 m!679605))

(declare-fun m!679607 () Bool)

(assert (=> b!725354 m!679607))

(declare-fun m!679609 () Bool)

(assert (=> b!725339 m!679609))

(assert (=> b!725347 m!679597))

(assert (=> b!725347 m!679597))

(declare-fun m!679611 () Bool)

(assert (=> b!725347 m!679611))

(assert (=> b!725347 m!679611))

(assert (=> b!725347 m!679597))

(declare-fun m!679613 () Bool)

(assert (=> b!725347 m!679613))

(declare-fun m!679615 () Bool)

(assert (=> b!725349 m!679615))

(declare-fun m!679617 () Bool)

(assert (=> b!725340 m!679617))

(declare-fun m!679619 () Bool)

(assert (=> b!725340 m!679619))

(declare-fun m!679621 () Bool)

(assert (=> b!725340 m!679621))

(declare-fun m!679623 () Bool)

(assert (=> b!725340 m!679623))

(assert (=> b!725340 m!679617))

(declare-fun m!679625 () Bool)

(assert (=> b!725340 m!679625))

(assert (=> b!725341 m!679597))

(assert (=> b!725341 m!679597))

(declare-fun m!679627 () Bool)

(assert (=> b!725341 m!679627))

(declare-fun m!679629 () Bool)

(assert (=> b!725351 m!679629))

(assert (=> b!725342 m!679597))

(assert (=> b!725342 m!679597))

(declare-fun m!679631 () Bool)

(assert (=> b!725342 m!679631))

(assert (=> b!725344 m!679597))

(assert (=> b!725344 m!679597))

(declare-fun m!679633 () Bool)

(assert (=> b!725344 m!679633))

(declare-fun m!679635 () Bool)

(assert (=> b!725348 m!679635))

(declare-fun m!679637 () Bool)

(assert (=> start!64504 m!679637))

(declare-fun m!679639 () Bool)

(assert (=> start!64504 m!679639))

(assert (=> b!725343 m!679597))

(assert (=> b!725343 m!679597))

(declare-fun m!679641 () Bool)

(assert (=> b!725343 m!679641))

(push 1)

