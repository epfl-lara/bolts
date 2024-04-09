; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67732 () Bool)

(assert start!67732)

(declare-fun b!785243 () Bool)

(declare-fun res!531653 () Bool)

(declare-fun e!436572 () Bool)

(assert (=> b!785243 (=> (not res!531653) (not e!436572))))

(declare-datatypes ((array!42727 0))(
  ( (array!42728 (arr!20448 (Array (_ BitVec 32) (_ BitVec 64))) (size!20869 (_ BitVec 32))) )
))
(declare-fun lt!350144 () array!42727)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!350141 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8055 0))(
  ( (MissingZero!8055 (index!34587 (_ BitVec 32))) (Found!8055 (index!34588 (_ BitVec 32))) (Intermediate!8055 (undefined!8867 Bool) (index!34589 (_ BitVec 32)) (x!65564 (_ BitVec 32))) (Undefined!8055) (MissingVacant!8055 (index!34590 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42727 (_ BitVec 32)) SeekEntryResult!8055)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42727 (_ BitVec 32)) SeekEntryResult!8055)

(assert (=> b!785243 (= res!531653 (= (seekEntryOrOpen!0 lt!350141 lt!350144 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350141 lt!350144 mask!3328)))))

(declare-fun b!785244 () Bool)

(declare-fun e!436574 () Bool)

(declare-fun e!436580 () Bool)

(assert (=> b!785244 (= e!436574 e!436580)))

(declare-fun res!531649 () Bool)

(assert (=> b!785244 (=> (not res!531649) (not e!436580))))

(declare-fun a!3186 () array!42727)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!350138 () SeekEntryResult!8055)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42727 (_ BitVec 32)) SeekEntryResult!8055)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785244 (= res!531649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20448 a!3186) j!159) mask!3328) (select (arr!20448 a!3186) j!159) a!3186 mask!3328) lt!350138))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785244 (= lt!350138 (Intermediate!8055 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785245 () Bool)

(declare-fun res!531646 () Bool)

(declare-fun e!436581 () Bool)

(assert (=> b!785245 (=> (not res!531646) (not e!436581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785245 (= res!531646 (validKeyInArray!0 (select (arr!20448 a!3186) j!159)))))

(declare-fun b!785246 () Bool)

(declare-fun res!531658 () Bool)

(assert (=> b!785246 (=> (not res!531658) (not e!436580))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785246 (= res!531658 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20448 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785247 () Bool)

(declare-fun res!531647 () Bool)

(assert (=> b!785247 (=> (not res!531647) (not e!436581))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785247 (= res!531647 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785248 () Bool)

(declare-datatypes ((Unit!27130 0))(
  ( (Unit!27131) )
))
(declare-fun e!436578 () Unit!27130)

(declare-fun Unit!27132 () Unit!27130)

(assert (=> b!785248 (= e!436578 Unit!27132)))

(assert (=> b!785248 false))

(declare-fun b!785249 () Bool)

(declare-fun Unit!27133 () Unit!27130)

(assert (=> b!785249 (= e!436578 Unit!27133)))

(declare-fun b!785250 () Bool)

(declare-fun res!531648 () Bool)

(assert (=> b!785250 (=> (not res!531648) (not e!436580))))

(declare-fun e!436577 () Bool)

(assert (=> b!785250 (= res!531648 e!436577)))

(declare-fun c!87210 () Bool)

(assert (=> b!785250 (= c!87210 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785251 () Bool)

(declare-fun res!531656 () Bool)

(assert (=> b!785251 (=> (not res!531656) (not e!436574))))

(assert (=> b!785251 (= res!531656 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20869 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20869 a!3186))))))

(declare-fun b!785252 () Bool)

(declare-fun res!531655 () Bool)

(assert (=> b!785252 (=> (not res!531655) (not e!436581))))

(assert (=> b!785252 (= res!531655 (and (= (size!20869 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20869 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20869 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785253 () Bool)

(declare-fun e!436573 () Bool)

(declare-fun e!436576 () Bool)

(assert (=> b!785253 (= e!436573 e!436576)))

(declare-fun res!531657 () Bool)

(assert (=> b!785253 (=> res!531657 e!436576)))

(declare-fun lt!350149 () SeekEntryResult!8055)

(declare-fun lt!350148 () SeekEntryResult!8055)

(assert (=> b!785253 (= res!531657 (not (= lt!350149 lt!350148)))))

(assert (=> b!785253 (= lt!350149 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20448 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785254 () Bool)

(declare-fun e!436575 () Bool)

(assert (=> b!785254 (= e!436580 e!436575)))

(declare-fun res!531644 () Bool)

(assert (=> b!785254 (=> (not res!531644) (not e!436575))))

(declare-fun lt!350140 () SeekEntryResult!8055)

(declare-fun lt!350143 () SeekEntryResult!8055)

(assert (=> b!785254 (= res!531644 (= lt!350140 lt!350143))))

(assert (=> b!785254 (= lt!350143 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350141 lt!350144 mask!3328))))

(assert (=> b!785254 (= lt!350140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350141 mask!3328) lt!350141 lt!350144 mask!3328))))

(assert (=> b!785254 (= lt!350141 (select (store (arr!20448 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785254 (= lt!350144 (array!42728 (store (arr!20448 a!3186) i!1173 k!2102) (size!20869 a!3186)))))

(declare-fun b!785255 () Bool)

(declare-fun lt!350142 () SeekEntryResult!8055)

(assert (=> b!785255 (= e!436572 (= lt!350142 lt!350149))))

(declare-fun b!785256 () Bool)

(assert (=> b!785256 (= e!436577 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20448 a!3186) j!159) a!3186 mask!3328) lt!350138))))

(declare-fun b!785257 () Bool)

(assert (=> b!785257 (= e!436581 e!436574)))

(declare-fun res!531640 () Bool)

(assert (=> b!785257 (=> (not res!531640) (not e!436574))))

(declare-fun lt!350145 () SeekEntryResult!8055)

(assert (=> b!785257 (= res!531640 (or (= lt!350145 (MissingZero!8055 i!1173)) (= lt!350145 (MissingVacant!8055 i!1173))))))

(assert (=> b!785257 (= lt!350145 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785258 () Bool)

(assert (=> b!785258 (= e!436575 (not e!436573))))

(declare-fun res!531641 () Bool)

(assert (=> b!785258 (=> res!531641 e!436573)))

(assert (=> b!785258 (= res!531641 (or (not (is-Intermediate!8055 lt!350143)) (bvslt x!1131 (x!65564 lt!350143)) (not (= x!1131 (x!65564 lt!350143))) (not (= index!1321 (index!34589 lt!350143)))))))

(declare-fun e!436582 () Bool)

(assert (=> b!785258 e!436582))

(declare-fun res!531642 () Bool)

(assert (=> b!785258 (=> (not res!531642) (not e!436582))))

(assert (=> b!785258 (= res!531642 (= lt!350142 lt!350148))))

(assert (=> b!785258 (= lt!350148 (Found!8055 j!159))))

(assert (=> b!785258 (= lt!350142 (seekEntryOrOpen!0 (select (arr!20448 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42727 (_ BitVec 32)) Bool)

(assert (=> b!785258 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350139 () Unit!27130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27130)

(assert (=> b!785258 (= lt!350139 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785259 () Bool)

(assert (=> b!785259 (= e!436577 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20448 a!3186) j!159) a!3186 mask!3328) (Found!8055 j!159)))))

(declare-fun b!785260 () Bool)

(declare-fun res!531645 () Bool)

(assert (=> b!785260 (=> (not res!531645) (not e!436574))))

(assert (=> b!785260 (= res!531645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785261 () Bool)

(declare-fun res!531652 () Bool)

(assert (=> b!785261 (=> (not res!531652) (not e!436574))))

(declare-datatypes ((List!14503 0))(
  ( (Nil!14500) (Cons!14499 (h!15622 (_ BitVec 64)) (t!20826 List!14503)) )
))
(declare-fun arrayNoDuplicates!0 (array!42727 (_ BitVec 32) List!14503) Bool)

(assert (=> b!785261 (= res!531652 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14500))))

(declare-fun b!785262 () Bool)

(declare-fun e!436579 () Bool)

(assert (=> b!785262 (= e!436576 e!436579)))

(declare-fun res!531650 () Bool)

(assert (=> b!785262 (=> res!531650 e!436579)))

(declare-fun lt!350147 () (_ BitVec 64))

(assert (=> b!785262 (= res!531650 (= lt!350147 lt!350141))))

(assert (=> b!785262 (= lt!350147 (select (store (arr!20448 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785263 () Bool)

(declare-fun res!531643 () Bool)

(assert (=> b!785263 (=> (not res!531643) (not e!436581))))

(assert (=> b!785263 (= res!531643 (validKeyInArray!0 k!2102))))

(declare-fun res!531651 () Bool)

(assert (=> start!67732 (=> (not res!531651) (not e!436581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67732 (= res!531651 (validMask!0 mask!3328))))

(assert (=> start!67732 e!436581))

(assert (=> start!67732 true))

(declare-fun array_inv!16222 (array!42727) Bool)

(assert (=> start!67732 (array_inv!16222 a!3186)))

(declare-fun b!785264 () Bool)

(assert (=> b!785264 (= e!436582 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20448 a!3186) j!159) a!3186 mask!3328) lt!350148))))

(declare-fun b!785265 () Bool)

(assert (=> b!785265 (= e!436579 true)))

(assert (=> b!785265 e!436572))

(declare-fun res!531654 () Bool)

(assert (=> b!785265 (=> (not res!531654) (not e!436572))))

(assert (=> b!785265 (= res!531654 (= lt!350147 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350146 () Unit!27130)

(assert (=> b!785265 (= lt!350146 e!436578)))

(declare-fun c!87209 () Bool)

(assert (=> b!785265 (= c!87209 (= lt!350147 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67732 res!531651) b!785252))

(assert (= (and b!785252 res!531655) b!785245))

(assert (= (and b!785245 res!531646) b!785263))

(assert (= (and b!785263 res!531643) b!785247))

(assert (= (and b!785247 res!531647) b!785257))

(assert (= (and b!785257 res!531640) b!785260))

(assert (= (and b!785260 res!531645) b!785261))

(assert (= (and b!785261 res!531652) b!785251))

(assert (= (and b!785251 res!531656) b!785244))

(assert (= (and b!785244 res!531649) b!785246))

(assert (= (and b!785246 res!531658) b!785250))

(assert (= (and b!785250 c!87210) b!785256))

(assert (= (and b!785250 (not c!87210)) b!785259))

(assert (= (and b!785250 res!531648) b!785254))

(assert (= (and b!785254 res!531644) b!785258))

(assert (= (and b!785258 res!531642) b!785264))

(assert (= (and b!785258 (not res!531641)) b!785253))

(assert (= (and b!785253 (not res!531657)) b!785262))

(assert (= (and b!785262 (not res!531650)) b!785265))

(assert (= (and b!785265 c!87209) b!785248))

(assert (= (and b!785265 (not c!87209)) b!785249))

(assert (= (and b!785265 res!531654) b!785243))

(assert (= (and b!785243 res!531653) b!785255))

(declare-fun m!727405 () Bool)

(assert (=> b!785254 m!727405))

(declare-fun m!727407 () Bool)

(assert (=> b!785254 m!727407))

(declare-fun m!727409 () Bool)

(assert (=> b!785254 m!727409))

(declare-fun m!727411 () Bool)

(assert (=> b!785254 m!727411))

(assert (=> b!785254 m!727407))

(declare-fun m!727413 () Bool)

(assert (=> b!785254 m!727413))

(declare-fun m!727415 () Bool)

(assert (=> b!785258 m!727415))

(assert (=> b!785258 m!727415))

(declare-fun m!727417 () Bool)

(assert (=> b!785258 m!727417))

(declare-fun m!727419 () Bool)

(assert (=> b!785258 m!727419))

(declare-fun m!727421 () Bool)

(assert (=> b!785258 m!727421))

(declare-fun m!727423 () Bool)

(assert (=> b!785246 m!727423))

(declare-fun m!727425 () Bool)

(assert (=> b!785261 m!727425))

(declare-fun m!727427 () Bool)

(assert (=> start!67732 m!727427))

(declare-fun m!727429 () Bool)

(assert (=> start!67732 m!727429))

(declare-fun m!727431 () Bool)

(assert (=> b!785247 m!727431))

(declare-fun m!727433 () Bool)

(assert (=> b!785257 m!727433))

(declare-fun m!727435 () Bool)

(assert (=> b!785260 m!727435))

(assert (=> b!785264 m!727415))

(assert (=> b!785264 m!727415))

(declare-fun m!727437 () Bool)

(assert (=> b!785264 m!727437))

(assert (=> b!785256 m!727415))

(assert (=> b!785256 m!727415))

(declare-fun m!727439 () Bool)

(assert (=> b!785256 m!727439))

(assert (=> b!785245 m!727415))

(assert (=> b!785245 m!727415))

(declare-fun m!727441 () Bool)

(assert (=> b!785245 m!727441))

(declare-fun m!727443 () Bool)

(assert (=> b!785243 m!727443))

(declare-fun m!727445 () Bool)

(assert (=> b!785243 m!727445))

(assert (=> b!785259 m!727415))

(assert (=> b!785259 m!727415))

(declare-fun m!727447 () Bool)

(assert (=> b!785259 m!727447))

(assert (=> b!785262 m!727409))

(declare-fun m!727449 () Bool)

(assert (=> b!785262 m!727449))

(declare-fun m!727451 () Bool)

(assert (=> b!785263 m!727451))

(assert (=> b!785244 m!727415))

(assert (=> b!785244 m!727415))

(declare-fun m!727453 () Bool)

(assert (=> b!785244 m!727453))

(assert (=> b!785244 m!727453))

(assert (=> b!785244 m!727415))

(declare-fun m!727455 () Bool)

(assert (=> b!785244 m!727455))

(assert (=> b!785253 m!727415))

(assert (=> b!785253 m!727415))

(assert (=> b!785253 m!727447))

(push 1)

