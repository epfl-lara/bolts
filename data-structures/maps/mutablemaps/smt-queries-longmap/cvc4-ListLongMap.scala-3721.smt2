; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51276 () Bool)

(assert start!51276)

(declare-fun res!351006 () Bool)

(declare-fun e!322316 () Bool)

(assert (=> start!51276 (=> (not res!351006) (not e!322316))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51276 (= res!351006 (validMask!0 mask!3119))))

(assert (=> start!51276 e!322316))

(assert (=> start!51276 true))

(declare-datatypes ((array!35158 0))(
  ( (array!35159 (arr!16877 (Array (_ BitVec 32) (_ BitVec 64))) (size!17241 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35158)

(declare-fun array_inv!12651 (array!35158) Bool)

(assert (=> start!51276 (array_inv!12651 a!3118)))

(declare-fun b!559461 () Bool)

(declare-fun res!351004 () Bool)

(assert (=> b!559461 (=> (not res!351004) (not e!322316))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559461 (= res!351004 (validKeyInArray!0 k!1914))))

(declare-fun b!559462 () Bool)

(declare-fun res!351001 () Bool)

(declare-fun e!322314 () Bool)

(assert (=> b!559462 (=> (not res!351001) (not e!322314))))

(declare-datatypes ((List!11010 0))(
  ( (Nil!11007) (Cons!11006 (h!12006 (_ BitVec 64)) (t!17246 List!11010)) )
))
(declare-fun arrayNoDuplicates!0 (array!35158 (_ BitVec 32) List!11010) Bool)

(assert (=> b!559462 (= res!351001 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11007))))

(declare-fun b!559463 () Bool)

(declare-fun res!351008 () Bool)

(assert (=> b!559463 (=> (not res!351008) (not e!322316))))

(declare-fun arrayContainsKey!0 (array!35158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559463 (= res!351008 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559464 () Bool)

(declare-fun e!322313 () Bool)

(declare-fun e!322312 () Bool)

(assert (=> b!559464 (= e!322313 e!322312)))

(declare-fun res!351005 () Bool)

(assert (=> b!559464 (=> res!351005 e!322312)))

(declare-datatypes ((SeekEntryResult!5333 0))(
  ( (MissingZero!5333 (index!23559 (_ BitVec 32))) (Found!5333 (index!23560 (_ BitVec 32))) (Intermediate!5333 (undefined!6145 Bool) (index!23561 (_ BitVec 32)) (x!52494 (_ BitVec 32))) (Undefined!5333) (MissingVacant!5333 (index!23562 (_ BitVec 32))) )
))
(declare-fun lt!254335 () SeekEntryResult!5333)

(assert (=> b!559464 (= res!351005 (or (undefined!6145 lt!254335) (not (is-Intermediate!5333 lt!254335))))))

(declare-fun b!559465 () Bool)

(declare-fun res!351002 () Bool)

(assert (=> b!559465 (=> (not res!351002) (not e!322314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35158 (_ BitVec 32)) Bool)

(assert (=> b!559465 (= res!351002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559466 () Bool)

(declare-fun res!351007 () Bool)

(assert (=> b!559466 (=> (not res!351007) (not e!322316))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!559466 (= res!351007 (validKeyInArray!0 (select (arr!16877 a!3118) j!142)))))

(declare-fun b!559467 () Bool)

(assert (=> b!559467 (= e!322316 e!322314)))

(declare-fun res!351003 () Bool)

(assert (=> b!559467 (=> (not res!351003) (not e!322314))))

(declare-fun lt!254337 () SeekEntryResult!5333)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!559467 (= res!351003 (or (= lt!254337 (MissingZero!5333 i!1132)) (= lt!254337 (MissingVacant!5333 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35158 (_ BitVec 32)) SeekEntryResult!5333)

(assert (=> b!559467 (= lt!254337 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!559468 () Bool)

(declare-fun e!322315 () Bool)

(assert (=> b!559468 (= e!322315 (not (or (undefined!6145 lt!254335) (not (is-Intermediate!5333 lt!254335)) (let ((bdg!16975 (select (arr!16877 a!3118) (index!23561 lt!254335)))) (or (= bdg!16975 (select (arr!16877 a!3118) j!142)) (= bdg!16975 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23561 lt!254335) #b00000000000000000000000000000000) (bvsge (index!23561 lt!254335) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52494 lt!254335) #b01111111111111111111111111111110) (bvslt (x!52494 lt!254335) #b00000000000000000000000000000000) (= (select (store (arr!16877 a!3118) i!1132 k!1914) (index!23561 lt!254335)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!559468 e!322313))

(declare-fun res!351011 () Bool)

(assert (=> b!559468 (=> (not res!351011) (not e!322313))))

(declare-fun lt!254338 () SeekEntryResult!5333)

(assert (=> b!559468 (= res!351011 (= lt!254338 (Found!5333 j!142)))))

(assert (=> b!559468 (= lt!254338 (seekEntryOrOpen!0 (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559468 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17440 0))(
  ( (Unit!17441) )
))
(declare-fun lt!254336 () Unit!17440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17440)

(assert (=> b!559468 (= lt!254336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun e!322317 () Bool)

(declare-fun b!559469 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35158 (_ BitVec 32)) SeekEntryResult!5333)

(assert (=> b!559469 (= e!322317 (= lt!254338 (seekKeyOrZeroReturnVacant!0 (x!52494 lt!254335) (index!23561 lt!254335) (index!23561 lt!254335) (select (arr!16877 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559470 () Bool)

(declare-fun res!351009 () Bool)

(assert (=> b!559470 (=> (not res!351009) (not e!322316))))

(assert (=> b!559470 (= res!351009 (and (= (size!17241 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17241 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17241 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559471 () Bool)

(assert (=> b!559471 (= e!322314 e!322315)))

(declare-fun res!351000 () Bool)

(assert (=> b!559471 (=> (not res!351000) (not e!322315))))

(declare-fun lt!254342 () (_ BitVec 32))

(declare-fun lt!254340 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35158 (_ BitVec 32)) SeekEntryResult!5333)

(assert (=> b!559471 (= res!351000 (= lt!254335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254342 lt!254340 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)) mask!3119)))))

(declare-fun lt!254341 () (_ BitVec 32))

(assert (=> b!559471 (= lt!254335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254341 (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559471 (= lt!254342 (toIndex!0 lt!254340 mask!3119))))

(assert (=> b!559471 (= lt!254340 (select (store (arr!16877 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!559471 (= lt!254341 (toIndex!0 (select (arr!16877 a!3118) j!142) mask!3119))))

(declare-fun b!559472 () Bool)

(assert (=> b!559472 (= e!322312 e!322317)))

(declare-fun res!351010 () Bool)

(assert (=> b!559472 (=> res!351010 e!322317)))

(declare-fun lt!254339 () (_ BitVec 64))

(assert (=> b!559472 (= res!351010 (or (= lt!254339 (select (arr!16877 a!3118) j!142)) (= lt!254339 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!559472 (= lt!254339 (select (arr!16877 a!3118) (index!23561 lt!254335)))))

(assert (= (and start!51276 res!351006) b!559470))

(assert (= (and b!559470 res!351009) b!559466))

(assert (= (and b!559466 res!351007) b!559461))

(assert (= (and b!559461 res!351004) b!559463))

(assert (= (and b!559463 res!351008) b!559467))

(assert (= (and b!559467 res!351003) b!559465))

(assert (= (and b!559465 res!351002) b!559462))

(assert (= (and b!559462 res!351001) b!559471))

(assert (= (and b!559471 res!351000) b!559468))

(assert (= (and b!559468 res!351011) b!559464))

(assert (= (and b!559464 (not res!351005)) b!559472))

(assert (= (and b!559472 (not res!351010)) b!559469))

(declare-fun m!537337 () Bool)

(assert (=> b!559466 m!537337))

(assert (=> b!559466 m!537337))

(declare-fun m!537339 () Bool)

(assert (=> b!559466 m!537339))

(assert (=> b!559468 m!537337))

(declare-fun m!537341 () Bool)

(assert (=> b!559468 m!537341))

(declare-fun m!537343 () Bool)

(assert (=> b!559468 m!537343))

(declare-fun m!537345 () Bool)

(assert (=> b!559468 m!537345))

(declare-fun m!537347 () Bool)

(assert (=> b!559468 m!537347))

(declare-fun m!537349 () Bool)

(assert (=> b!559468 m!537349))

(assert (=> b!559468 m!537337))

(declare-fun m!537351 () Bool)

(assert (=> b!559468 m!537351))

(declare-fun m!537353 () Bool)

(assert (=> b!559467 m!537353))

(declare-fun m!537355 () Bool)

(assert (=> b!559461 m!537355))

(assert (=> b!559471 m!537337))

(declare-fun m!537357 () Bool)

(assert (=> b!559471 m!537357))

(assert (=> b!559471 m!537337))

(declare-fun m!537359 () Bool)

(assert (=> b!559471 m!537359))

(declare-fun m!537361 () Bool)

(assert (=> b!559471 m!537361))

(declare-fun m!537363 () Bool)

(assert (=> b!559471 m!537363))

(assert (=> b!559471 m!537345))

(assert (=> b!559471 m!537337))

(declare-fun m!537365 () Bool)

(assert (=> b!559471 m!537365))

(declare-fun m!537367 () Bool)

(assert (=> b!559462 m!537367))

(assert (=> b!559472 m!537337))

(assert (=> b!559472 m!537347))

(declare-fun m!537369 () Bool)

(assert (=> start!51276 m!537369))

(declare-fun m!537371 () Bool)

(assert (=> start!51276 m!537371))

(declare-fun m!537373 () Bool)

(assert (=> b!559463 m!537373))

(declare-fun m!537375 () Bool)

(assert (=> b!559465 m!537375))

(assert (=> b!559469 m!537337))

(assert (=> b!559469 m!537337))

(declare-fun m!537377 () Bool)

(assert (=> b!559469 m!537377))

(push 1)

(assert (not b!559467))

(assert (not b!559466))

(assert (not b!559462))

(assert (not b!559463))

(assert (not start!51276))

(assert (not b!559465))

(assert (not b!559471))

(assert (not b!559469))

(assert (not b!559461))

(assert (not b!559468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83669 () Bool)

(declare-fun res!351016 () Bool)

(declare-fun e!322332 () Bool)

(assert (=> d!83669 (=> res!351016 e!322332)))

(assert (=> d!83669 (= res!351016 (= (select (arr!16877 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83669 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!322332)))

(declare-fun b!559495 () Bool)

(declare-fun e!322333 () Bool)

(assert (=> b!559495 (= e!322332 e!322333)))

(declare-fun res!351017 () Bool)

(assert (=> b!559495 (=> (not res!351017) (not e!322333))))

(assert (=> b!559495 (= res!351017 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17241 a!3118)))))

(declare-fun b!559496 () Bool)

(assert (=> b!559496 (= e!322333 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83669 (not res!351016)) b!559495))

(assert (= (and b!559495 res!351017) b!559496))

(declare-fun m!537391 () Bool)

(assert (=> d!83669 m!537391))

(declare-fun m!537393 () Bool)

(assert (=> b!559496 m!537393))

(assert (=> b!559463 d!83669))

(declare-fun b!559569 () Bool)

(declare-fun e!322388 () SeekEntryResult!5333)

(declare-fun e!322389 () SeekEntryResult!5333)

(assert (=> b!559569 (= e!322388 e!322389)))

(declare-fun lt!254380 () (_ BitVec 64))

(declare-fun lt!254381 () SeekEntryResult!5333)

(assert (=> b!559569 (= lt!254380 (select (arr!16877 a!3118) (index!23561 lt!254381)))))

(declare-fun c!64603 () Bool)

(assert (=> b!559569 (= c!64603 (= lt!254380 (select (arr!16877 a!3118) j!142)))))

(declare-fun b!559571 () Bool)

(declare-fun c!64602 () Bool)

(assert (=> b!559571 (= c!64602 (= lt!254380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322390 () SeekEntryResult!5333)

(assert (=> b!559571 (= e!322389 e!322390)))

(declare-fun b!559572 () Bool)

(assert (=> b!559572 (= e!322388 Undefined!5333)))

(declare-fun b!559573 () Bool)

(assert (=> b!559573 (= e!322390 (seekKeyOrZeroReturnVacant!0 (x!52494 lt!254381) (index!23561 lt!254381) (index!23561 lt!254381) (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559574 () Bool)

(assert (=> b!559574 (= e!322389 (Found!5333 (index!23561 lt!254381)))))

(declare-fun d!83675 () Bool)

(declare-fun lt!254379 () SeekEntryResult!5333)

(assert (=> d!83675 (and (or (is-Undefined!5333 lt!254379) (not (is-Found!5333 lt!254379)) (and (bvsge (index!23560 lt!254379) #b00000000000000000000000000000000) (bvslt (index!23560 lt!254379) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254379) (is-Found!5333 lt!254379) (not (is-MissingZero!5333 lt!254379)) (and (bvsge (index!23559 lt!254379) #b00000000000000000000000000000000) (bvslt (index!23559 lt!254379) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254379) (is-Found!5333 lt!254379) (is-MissingZero!5333 lt!254379) (not (is-MissingVacant!5333 lt!254379)) (and (bvsge (index!23562 lt!254379) #b00000000000000000000000000000000) (bvslt (index!23562 lt!254379) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254379) (ite (is-Found!5333 lt!254379) (= (select (arr!16877 a!3118) (index!23560 lt!254379)) (select (arr!16877 a!3118) j!142)) (ite (is-MissingZero!5333 lt!254379) (= (select (arr!16877 a!3118) (index!23559 lt!254379)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5333 lt!254379) (= (select (arr!16877 a!3118) (index!23562 lt!254379)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83675 (= lt!254379 e!322388)))

(declare-fun c!64604 () Bool)

(assert (=> d!83675 (= c!64604 (and (is-Intermediate!5333 lt!254381) (undefined!6145 lt!254381)))))

(assert (=> d!83675 (= lt!254381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16877 a!3118) j!142) mask!3119) (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83675 (validMask!0 mask!3119)))

(assert (=> d!83675 (= (seekEntryOrOpen!0 (select (arr!16877 a!3118) j!142) a!3118 mask!3119) lt!254379)))

(declare-fun b!559570 () Bool)

(assert (=> b!559570 (= e!322390 (MissingZero!5333 (index!23561 lt!254381)))))

(assert (= (and d!83675 c!64604) b!559572))

(assert (= (and d!83675 (not c!64604)) b!559569))

(assert (= (and b!559569 c!64603) b!559574))

(assert (= (and b!559569 (not c!64603)) b!559571))

(assert (= (and b!559571 c!64602) b!559570))

(assert (= (and b!559571 (not c!64602)) b!559573))

(declare-fun m!537429 () Bool)

(assert (=> b!559569 m!537429))

(assert (=> b!559573 m!537337))

(declare-fun m!537431 () Bool)

(assert (=> b!559573 m!537431))

(declare-fun m!537433 () Bool)

(assert (=> d!83675 m!537433))

(declare-fun m!537435 () Bool)

(assert (=> d!83675 m!537435))

(assert (=> d!83675 m!537357))

(assert (=> d!83675 m!537337))

(declare-fun m!537437 () Bool)

(assert (=> d!83675 m!537437))

(declare-fun m!537439 () Bool)

(assert (=> d!83675 m!537439))

(assert (=> d!83675 m!537369))

(assert (=> d!83675 m!537337))

(assert (=> d!83675 m!537357))

(assert (=> b!559468 d!83675))

(declare-fun b!559584 () Bool)

(declare-fun e!322398 () Bool)

(declare-fun e!322397 () Bool)

(assert (=> b!559584 (= e!322398 e!322397)))

(declare-fun lt!254390 () (_ BitVec 64))

(assert (=> b!559584 (= lt!254390 (select (arr!16877 a!3118) j!142))))

(declare-fun lt!254389 () Unit!17440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35158 (_ BitVec 64) (_ BitVec 32)) Unit!17440)

(assert (=> b!559584 (= lt!254389 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254390 j!142))))

(assert (=> b!559584 (arrayContainsKey!0 a!3118 lt!254390 #b00000000000000000000000000000000)))

(declare-fun lt!254388 () Unit!17440)

(assert (=> b!559584 (= lt!254388 lt!254389)))

(declare-fun res!351059 () Bool)

(assert (=> b!559584 (= res!351059 (= (seekEntryOrOpen!0 (select (arr!16877 a!3118) j!142) a!3118 mask!3119) (Found!5333 j!142)))))

(assert (=> b!559584 (=> (not res!351059) (not e!322397))))

(declare-fun b!559585 () Bool)

(declare-fun call!32447 () Bool)

(assert (=> b!559585 (= e!322398 call!32447)))

(declare-fun b!559586 () Bool)

(declare-fun e!322399 () Bool)

(assert (=> b!559586 (= e!322399 e!322398)))

(declare-fun c!64607 () Bool)

(assert (=> b!559586 (= c!64607 (validKeyInArray!0 (select (arr!16877 a!3118) j!142)))))

(declare-fun bm!32444 () Bool)

(assert (=> bm!32444 (= call!32447 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559583 () Bool)

(assert (=> b!559583 (= e!322397 call!32447)))

(declare-fun d!83689 () Bool)

(declare-fun res!351058 () Bool)

(assert (=> d!83689 (=> res!351058 e!322399)))

(assert (=> d!83689 (= res!351058 (bvsge j!142 (size!17241 a!3118)))))

(assert (=> d!83689 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322399)))

(assert (= (and d!83689 (not res!351058)) b!559586))

(assert (= (and b!559586 c!64607) b!559584))

(assert (= (and b!559586 (not c!64607)) b!559585))

(assert (= (and b!559584 res!351059) b!559583))

(assert (= (or b!559583 b!559585) bm!32444))

(assert (=> b!559584 m!537337))

(declare-fun m!537441 () Bool)

(assert (=> b!559584 m!537441))

(declare-fun m!537443 () Bool)

(assert (=> b!559584 m!537443))

(assert (=> b!559584 m!537337))

(assert (=> b!559584 m!537351))

(assert (=> b!559586 m!537337))

(assert (=> b!559586 m!537337))

(assert (=> b!559586 m!537339))

(declare-fun m!537445 () Bool)

(assert (=> bm!32444 m!537445))

(assert (=> b!559468 d!83689))

(declare-fun d!83695 () Bool)

(assert (=> d!83695 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254397 () Unit!17440)

(declare-fun choose!38 (array!35158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17440)

(assert (=> d!83695 (= lt!254397 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83695 (validMask!0 mask!3119)))

(assert (=> d!83695 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254397)))

(declare-fun bs!17398 () Bool)

(assert (= bs!17398 d!83695))

(assert (=> bs!17398 m!537343))

(declare-fun m!537447 () Bool)

(assert (=> bs!17398 m!537447))

(assert (=> bs!17398 m!537369))

(assert (=> b!559468 d!83695))

(declare-fun b!559653 () Bool)

(declare-fun e!322435 () SeekEntryResult!5333)

(assert (=> b!559653 (= e!322435 (MissingVacant!5333 (index!23561 lt!254335)))))

(declare-fun b!559654 () Bool)

(declare-fun e!322436 () SeekEntryResult!5333)

(assert (=> b!559654 (= e!322436 (Found!5333 (index!23561 lt!254335)))))

(declare-fun lt!254424 () SeekEntryResult!5333)

(declare-fun d!83697 () Bool)

(assert (=> d!83697 (and (or (is-Undefined!5333 lt!254424) (not (is-Found!5333 lt!254424)) (and (bvsge (index!23560 lt!254424) #b00000000000000000000000000000000) (bvslt (index!23560 lt!254424) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254424) (is-Found!5333 lt!254424) (not (is-MissingVacant!5333 lt!254424)) (not (= (index!23562 lt!254424) (index!23561 lt!254335))) (and (bvsge (index!23562 lt!254424) #b00000000000000000000000000000000) (bvslt (index!23562 lt!254424) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254424) (ite (is-Found!5333 lt!254424) (= (select (arr!16877 a!3118) (index!23560 lt!254424)) (select (arr!16877 a!3118) j!142)) (and (is-MissingVacant!5333 lt!254424) (= (index!23562 lt!254424) (index!23561 lt!254335)) (= (select (arr!16877 a!3118) (index!23562 lt!254424)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!322437 () SeekEntryResult!5333)

(assert (=> d!83697 (= lt!254424 e!322437)))

(declare-fun c!64635 () Bool)

(assert (=> d!83697 (= c!64635 (bvsge (x!52494 lt!254335) #b01111111111111111111111111111110))))

(declare-fun lt!254423 () (_ BitVec 64))

(assert (=> d!83697 (= lt!254423 (select (arr!16877 a!3118) (index!23561 lt!254335)))))

(assert (=> d!83697 (validMask!0 mask!3119)))

(assert (=> d!83697 (= (seekKeyOrZeroReturnVacant!0 (x!52494 lt!254335) (index!23561 lt!254335) (index!23561 lt!254335) (select (arr!16877 a!3118) j!142) a!3118 mask!3119) lt!254424)))

(declare-fun b!559655 () Bool)

(declare-fun c!64636 () Bool)

(assert (=> b!559655 (= c!64636 (= lt!254423 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559655 (= e!322436 e!322435)))

(declare-fun b!559656 () Bool)

(assert (=> b!559656 (= e!322437 Undefined!5333)))

(declare-fun b!559657 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559657 (= e!322435 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52494 lt!254335) #b00000000000000000000000000000001) (nextIndex!0 (index!23561 lt!254335) (x!52494 lt!254335) mask!3119) (index!23561 lt!254335) (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559658 () Bool)

(assert (=> b!559658 (= e!322437 e!322436)))

(declare-fun c!64637 () Bool)

(assert (=> b!559658 (= c!64637 (= lt!254423 (select (arr!16877 a!3118) j!142)))))

(assert (= (and d!83697 c!64635) b!559656))

(assert (= (and d!83697 (not c!64635)) b!559658))

(assert (= (and b!559658 c!64637) b!559654))

(assert (= (and b!559658 (not c!64637)) b!559655))

(assert (= (and b!559655 c!64636) b!559653))

(assert (= (and b!559655 (not c!64636)) b!559657))

(declare-fun m!537479 () Bool)

(assert (=> d!83697 m!537479))

(declare-fun m!537481 () Bool)

(assert (=> d!83697 m!537481))

(assert (=> d!83697 m!537347))

(assert (=> d!83697 m!537369))

(declare-fun m!537483 () Bool)

(assert (=> b!559657 m!537483))

(assert (=> b!559657 m!537483))

(assert (=> b!559657 m!537337))

(declare-fun m!537485 () Bool)

(assert (=> b!559657 m!537485))

(assert (=> b!559469 d!83697))

(declare-fun b!559709 () Bool)

(declare-fun e!322465 () SeekEntryResult!5333)

(assert (=> b!559709 (= e!322465 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254342 #b00000000000000000000000000000000 mask!3119) lt!254340 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)) mask!3119))))

(declare-fun b!559710 () Bool)

(declare-fun e!322463 () Bool)

(declare-fun lt!254443 () SeekEntryResult!5333)

(assert (=> b!559710 (= e!322463 (bvsge (x!52494 lt!254443) #b01111111111111111111111111111110))))

(declare-fun b!559711 () Bool)

(assert (=> b!559711 (and (bvsge (index!23561 lt!254443) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254443) (size!17241 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)))))))

(declare-fun res!351079 () Bool)

(assert (=> b!559711 (= res!351079 (= (select (arr!16877 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118))) (index!23561 lt!254443)) lt!254340))))

(declare-fun e!322462 () Bool)

(assert (=> b!559711 (=> res!351079 e!322462)))

(declare-fun e!322467 () Bool)

(assert (=> b!559711 (= e!322467 e!322462)))

(declare-fun b!559712 () Bool)

(assert (=> b!559712 (= e!322463 e!322467)))

(declare-fun res!351081 () Bool)

(assert (=> b!559712 (= res!351081 (and (is-Intermediate!5333 lt!254443) (not (undefined!6145 lt!254443)) (bvslt (x!52494 lt!254443) #b01111111111111111111111111111110) (bvsge (x!52494 lt!254443) #b00000000000000000000000000000000) (bvsge (x!52494 lt!254443) #b00000000000000000000000000000000)))))

(assert (=> b!559712 (=> (not res!351081) (not e!322467))))

(declare-fun b!559713 () Bool)

(assert (=> b!559713 (= e!322465 (Intermediate!5333 false lt!254342 #b00000000000000000000000000000000))))

(declare-fun b!559714 () Bool)

(assert (=> b!559714 (and (bvsge (index!23561 lt!254443) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254443) (size!17241 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)))))))

(assert (=> b!559714 (= e!322462 (= (select (arr!16877 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118))) (index!23561 lt!254443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!83713 () Bool)

(assert (=> d!83713 e!322463))

(declare-fun c!64660 () Bool)

(assert (=> d!83713 (= c!64660 (and (is-Intermediate!5333 lt!254443) (undefined!6145 lt!254443)))))

(declare-fun e!322466 () SeekEntryResult!5333)

(assert (=> d!83713 (= lt!254443 e!322466)))

(declare-fun c!64659 () Bool)

(assert (=> d!83713 (= c!64659 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254442 () (_ BitVec 64))

(assert (=> d!83713 (= lt!254442 (select (arr!16877 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118))) lt!254342))))

(assert (=> d!83713 (validMask!0 mask!3119)))

(assert (=> d!83713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254342 lt!254340 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)) mask!3119) lt!254443)))

(declare-fun b!559715 () Bool)

(assert (=> b!559715 (= e!322466 (Intermediate!5333 true lt!254342 #b00000000000000000000000000000000))))

(declare-fun b!559716 () Bool)

(assert (=> b!559716 (= e!322466 e!322465)))

(declare-fun c!64658 () Bool)

(assert (=> b!559716 (= c!64658 (or (= lt!254442 lt!254340) (= (bvadd lt!254442 lt!254442) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559717 () Bool)

(assert (=> b!559717 (and (bvsge (index!23561 lt!254443) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254443) (size!17241 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118)))))))

(declare-fun res!351080 () Bool)

(assert (=> b!559717 (= res!351080 (= (select (arr!16877 (array!35159 (store (arr!16877 a!3118) i!1132 k!1914) (size!17241 a!3118))) (index!23561 lt!254443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559717 (=> res!351080 e!322462)))

(assert (= (and d!83713 c!64659) b!559715))

(assert (= (and d!83713 (not c!64659)) b!559716))

(assert (= (and b!559716 c!64658) b!559713))

(assert (= (and b!559716 (not c!64658)) b!559709))

(assert (= (and d!83713 c!64660) b!559710))

(assert (= (and d!83713 (not c!64660)) b!559712))

(assert (= (and b!559712 res!351081) b!559711))

(assert (= (and b!559711 (not res!351079)) b!559717))

(assert (= (and b!559717 (not res!351080)) b!559714))

(declare-fun m!537509 () Bool)

(assert (=> b!559717 m!537509))

(declare-fun m!537511 () Bool)

(assert (=> d!83713 m!537511))

(assert (=> d!83713 m!537369))

(declare-fun m!537513 () Bool)

(assert (=> b!559709 m!537513))

(assert (=> b!559709 m!537513))

(declare-fun m!537515 () Bool)

(assert (=> b!559709 m!537515))

(assert (=> b!559714 m!537509))

(assert (=> b!559711 m!537509))

(assert (=> b!559471 d!83713))

(declare-fun e!322473 () SeekEntryResult!5333)

(declare-fun b!559722 () Bool)

(assert (=> b!559722 (= e!322473 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254341 #b00000000000000000000000000000000 mask!3119) (select (arr!16877 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559723 () Bool)

(declare-fun e!322472 () Bool)

(declare-fun lt!254445 () SeekEntryResult!5333)

(assert (=> b!559723 (= e!322472 (bvsge (x!52494 lt!254445) #b01111111111111111111111111111110))))

(declare-fun b!559724 () Bool)

(assert (=> b!559724 (and (bvsge (index!23561 lt!254445) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254445) (size!17241 a!3118)))))

(declare-fun res!351082 () Bool)

(assert (=> b!559724 (= res!351082 (= (select (arr!16877 a!3118) (index!23561 lt!254445)) (select (arr!16877 a!3118) j!142)))))

(declare-fun e!322471 () Bool)

(assert (=> b!559724 (=> res!351082 e!322471)))

(declare-fun e!322475 () Bool)

(assert (=> b!559724 (= e!322475 e!322471)))

(declare-fun b!559725 () Bool)

(assert (=> b!559725 (= e!322472 e!322475)))

(declare-fun res!351084 () Bool)

(assert (=> b!559725 (= res!351084 (and (is-Intermediate!5333 lt!254445) (not (undefined!6145 lt!254445)) (bvslt (x!52494 lt!254445) #b01111111111111111111111111111110) (bvsge (x!52494 lt!254445) #b00000000000000000000000000000000) (bvsge (x!52494 lt!254445) #b00000000000000000000000000000000)))))

(assert (=> b!559725 (=> (not res!351084) (not e!322475))))

(declare-fun b!559726 () Bool)

(assert (=> b!559726 (= e!322473 (Intermediate!5333 false lt!254341 #b00000000000000000000000000000000))))

(declare-fun b!559727 () Bool)

(assert (=> b!559727 (and (bvsge (index!23561 lt!254445) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254445) (size!17241 a!3118)))))

(assert (=> b!559727 (= e!322471 (= (select (arr!16877 a!3118) (index!23561 lt!254445)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!83723 () Bool)

(assert (=> d!83723 e!322472))

(declare-fun c!64667 () Bool)

(assert (=> d!83723 (= c!64667 (and (is-Intermediate!5333 lt!254445) (undefined!6145 lt!254445)))))

(declare-fun e!322474 () SeekEntryResult!5333)

(assert (=> d!83723 (= lt!254445 e!322474)))

(declare-fun c!64666 () Bool)

(assert (=> d!83723 (= c!64666 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254444 () (_ BitVec 64))

(assert (=> d!83723 (= lt!254444 (select (arr!16877 a!3118) lt!254341))))

(assert (=> d!83723 (validMask!0 mask!3119)))

(assert (=> d!83723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254341 (select (arr!16877 a!3118) j!142) a!3118 mask!3119) lt!254445)))

(declare-fun b!559728 () Bool)

(assert (=> b!559728 (= e!322474 (Intermediate!5333 true lt!254341 #b00000000000000000000000000000000))))

(declare-fun b!559729 () Bool)

(assert (=> b!559729 (= e!322474 e!322473)))

(declare-fun c!64665 () Bool)

(assert (=> b!559729 (= c!64665 (or (= lt!254444 (select (arr!16877 a!3118) j!142)) (= (bvadd lt!254444 lt!254444) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559730 () Bool)

(assert (=> b!559730 (and (bvsge (index!23561 lt!254445) #b00000000000000000000000000000000) (bvslt (index!23561 lt!254445) (size!17241 a!3118)))))

(declare-fun res!351083 () Bool)

(assert (=> b!559730 (= res!351083 (= (select (arr!16877 a!3118) (index!23561 lt!254445)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559730 (=> res!351083 e!322471)))

(assert (= (and d!83723 c!64666) b!559728))

(assert (= (and d!83723 (not c!64666)) b!559729))

(assert (= (and b!559729 c!64665) b!559726))

(assert (= (and b!559729 (not c!64665)) b!559722))

(assert (= (and d!83723 c!64667) b!559723))

(assert (= (and d!83723 (not c!64667)) b!559725))

(assert (= (and b!559725 res!351084) b!559724))

(assert (= (and b!559724 (not res!351082)) b!559730))

(assert (= (and b!559730 (not res!351083)) b!559727))

(declare-fun m!537517 () Bool)

(assert (=> b!559730 m!537517))

(declare-fun m!537519 () Bool)

(assert (=> d!83723 m!537519))

(assert (=> d!83723 m!537369))

(declare-fun m!537521 () Bool)

(assert (=> b!559722 m!537521))

(assert (=> b!559722 m!537521))

(assert (=> b!559722 m!537337))

(declare-fun m!537523 () Bool)

(assert (=> b!559722 m!537523))

(assert (=> b!559727 m!537517))

(assert (=> b!559724 m!537517))

(assert (=> b!559471 d!83723))

(declare-fun d!83725 () Bool)

(declare-fun lt!254456 () (_ BitVec 32))

(declare-fun lt!254455 () (_ BitVec 32))

(assert (=> d!83725 (= lt!254456 (bvmul (bvxor lt!254455 (bvlshr lt!254455 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83725 (= lt!254455 ((_ extract 31 0) (bvand (bvxor lt!254340 (bvlshr lt!254340 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83725 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351085 (let ((h!12008 ((_ extract 31 0) (bvand (bvxor lt!254340 (bvlshr lt!254340 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52501 (bvmul (bvxor h!12008 (bvlshr h!12008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52501 (bvlshr x!52501 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351085 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351085 #b00000000000000000000000000000000))))))

(assert (=> d!83725 (= (toIndex!0 lt!254340 mask!3119) (bvand (bvxor lt!254456 (bvlshr lt!254456 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559471 d!83725))

(declare-fun d!83733 () Bool)

(declare-fun lt!254458 () (_ BitVec 32))

(declare-fun lt!254457 () (_ BitVec 32))

(assert (=> d!83733 (= lt!254458 (bvmul (bvxor lt!254457 (bvlshr lt!254457 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83733 (= lt!254457 ((_ extract 31 0) (bvand (bvxor (select (arr!16877 a!3118) j!142) (bvlshr (select (arr!16877 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83733 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351085 (let ((h!12008 ((_ extract 31 0) (bvand (bvxor (select (arr!16877 a!3118) j!142) (bvlshr (select (arr!16877 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52501 (bvmul (bvxor h!12008 (bvlshr h!12008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52501 (bvlshr x!52501 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351085 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351085 #b00000000000000000000000000000000))))))

(assert (=> d!83733 (= (toIndex!0 (select (arr!16877 a!3118) j!142) mask!3119) (bvand (bvxor lt!254458 (bvlshr lt!254458 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559471 d!83733))

(declare-fun d!83735 () Bool)

(assert (=> d!83735 (= (validKeyInArray!0 (select (arr!16877 a!3118) j!142)) (and (not (= (select (arr!16877 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16877 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559466 d!83735))

(declare-fun b!559756 () Bool)

(declare-fun e!322493 () Bool)

(declare-fun e!322492 () Bool)

(assert (=> b!559756 (= e!322493 e!322492)))

(declare-fun lt!254465 () (_ BitVec 64))

(assert (=> b!559756 (= lt!254465 (select (arr!16877 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254464 () Unit!17440)

(assert (=> b!559756 (= lt!254464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254465 #b00000000000000000000000000000000))))

(assert (=> b!559756 (arrayContainsKey!0 a!3118 lt!254465 #b00000000000000000000000000000000)))

(declare-fun lt!254463 () Unit!17440)

(assert (=> b!559756 (= lt!254463 lt!254464)))

(declare-fun res!351095 () Bool)

(assert (=> b!559756 (= res!351095 (= (seekEntryOrOpen!0 (select (arr!16877 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5333 #b00000000000000000000000000000000)))))

(assert (=> b!559756 (=> (not res!351095) (not e!322492))))

(declare-fun b!559757 () Bool)

(declare-fun call!32449 () Bool)

(assert (=> b!559757 (= e!322493 call!32449)))

(declare-fun b!559758 () Bool)

(declare-fun e!322494 () Bool)

(assert (=> b!559758 (= e!322494 e!322493)))

(declare-fun c!64676 () Bool)

(assert (=> b!559758 (= c!64676 (validKeyInArray!0 (select (arr!16877 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32446 () Bool)

(assert (=> bm!32446 (= call!32449 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559755 () Bool)

(assert (=> b!559755 (= e!322492 call!32449)))

(declare-fun d!83737 () Bool)

(declare-fun res!351094 () Bool)

(assert (=> d!83737 (=> res!351094 e!322494)))

(assert (=> d!83737 (= res!351094 (bvsge #b00000000000000000000000000000000 (size!17241 a!3118)))))

(assert (=> d!83737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322494)))

(assert (= (and d!83737 (not res!351094)) b!559758))

(assert (= (and b!559758 c!64676) b!559756))

(assert (= (and b!559758 (not c!64676)) b!559757))

(assert (= (and b!559756 res!351095) b!559755))

(assert (= (or b!559755 b!559757) bm!32446))

(assert (=> b!559756 m!537391))

(declare-fun m!537543 () Bool)

(assert (=> b!559756 m!537543))

(declare-fun m!537545 () Bool)

(assert (=> b!559756 m!537545))

(assert (=> b!559756 m!537391))

(declare-fun m!537547 () Bool)

(assert (=> b!559756 m!537547))

(assert (=> b!559758 m!537391))

(assert (=> b!559758 m!537391))

(declare-fun m!537549 () Bool)

(assert (=> b!559758 m!537549))

(declare-fun m!537551 () Bool)

(assert (=> bm!32446 m!537551))

(assert (=> b!559465 d!83737))

(declare-fun d!83739 () Bool)

(assert (=> d!83739 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51276 d!83739))

(declare-fun d!83745 () Bool)

(assert (=> d!83745 (= (array_inv!12651 a!3118) (bvsge (size!17241 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51276 d!83745))

(declare-fun b!559787 () Bool)

(declare-fun e!322511 () SeekEntryResult!5333)

(declare-fun e!322512 () SeekEntryResult!5333)

(assert (=> b!559787 (= e!322511 e!322512)))

(declare-fun lt!254475 () (_ BitVec 64))

(declare-fun lt!254476 () SeekEntryResult!5333)

(assert (=> b!559787 (= lt!254475 (select (arr!16877 a!3118) (index!23561 lt!254476)))))

(declare-fun c!64686 () Bool)

(assert (=> b!559787 (= c!64686 (= lt!254475 k!1914))))

(declare-fun b!559789 () Bool)

(declare-fun c!64685 () Bool)

(assert (=> b!559789 (= c!64685 (= lt!254475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322513 () SeekEntryResult!5333)

(assert (=> b!559789 (= e!322512 e!322513)))

(declare-fun b!559790 () Bool)

(assert (=> b!559790 (= e!322511 Undefined!5333)))

(declare-fun b!559791 () Bool)

(assert (=> b!559791 (= e!322513 (seekKeyOrZeroReturnVacant!0 (x!52494 lt!254476) (index!23561 lt!254476) (index!23561 lt!254476) k!1914 a!3118 mask!3119))))

(declare-fun b!559792 () Bool)

(assert (=> b!559792 (= e!322512 (Found!5333 (index!23561 lt!254476)))))

(declare-fun d!83747 () Bool)

(declare-fun lt!254474 () SeekEntryResult!5333)

(assert (=> d!83747 (and (or (is-Undefined!5333 lt!254474) (not (is-Found!5333 lt!254474)) (and (bvsge (index!23560 lt!254474) #b00000000000000000000000000000000) (bvslt (index!23560 lt!254474) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254474) (is-Found!5333 lt!254474) (not (is-MissingZero!5333 lt!254474)) (and (bvsge (index!23559 lt!254474) #b00000000000000000000000000000000) (bvslt (index!23559 lt!254474) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254474) (is-Found!5333 lt!254474) (is-MissingZero!5333 lt!254474) (not (is-MissingVacant!5333 lt!254474)) (and (bvsge (index!23562 lt!254474) #b00000000000000000000000000000000) (bvslt (index!23562 lt!254474) (size!17241 a!3118)))) (or (is-Undefined!5333 lt!254474) (ite (is-Found!5333 lt!254474) (= (select (arr!16877 a!3118) (index!23560 lt!254474)) k!1914) (ite (is-MissingZero!5333 lt!254474) (= (select (arr!16877 a!3118) (index!23559 lt!254474)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5333 lt!254474) (= (select (arr!16877 a!3118) (index!23562 lt!254474)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83747 (= lt!254474 e!322511)))

(declare-fun c!64687 () Bool)

(assert (=> d!83747 (= c!64687 (and (is-Intermediate!5333 lt!254476) (undefined!6145 lt!254476)))))

(assert (=> d!83747 (= lt!254476 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83747 (validMask!0 mask!3119)))

(assert (=> d!83747 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!254474)))

(declare-fun b!559788 () Bool)

(assert (=> b!559788 (= e!322513 (MissingZero!5333 (index!23561 lt!254476)))))

(assert (= (and d!83747 c!64687) b!559790))

(assert (= (and d!83747 (not c!64687)) b!559787))

(assert (= (and b!559787 c!64686) b!559792))

(assert (= (and b!559787 (not c!64686)) b!559789))

(assert (= (and b!559789 c!64685) b!559788))

(assert (= (and b!559789 (not c!64685)) b!559791))

(declare-fun m!537569 () Bool)

(assert (=> b!559787 m!537569))

(declare-fun m!537571 () Bool)

(assert (=> b!559791 m!537571))

(declare-fun m!537573 () Bool)

(assert (=> d!83747 m!537573))

(declare-fun m!537575 () Bool)

(assert (=> d!83747 m!537575))

(declare-fun m!537577 () Bool)

(assert (=> d!83747 m!537577))

(declare-fun m!537579 () Bool)

(assert (=> d!83747 m!537579))

(declare-fun m!537581 () Bool)

(assert (=> d!83747 m!537581))

(assert (=> d!83747 m!537369))

(assert (=> d!83747 m!537577))

(assert (=> b!559467 d!83747))

(declare-fun b!559813 () Bool)

(declare-fun e!322529 () Bool)

(declare-fun e!322528 () Bool)

(assert (=> b!559813 (= e!322529 e!322528)))

(declare-fun res!351117 () Bool)

(assert (=> b!559813 (=> (not res!351117) (not e!322528))))

(declare-fun e!322531 () Bool)

(assert (=> b!559813 (= res!351117 (not e!322531))))

(declare-fun res!351118 () Bool)

(assert (=> b!559813 (=> (not res!351118) (not e!322531))))

(assert (=> b!559813 (= res!351118 (validKeyInArray!0 (select (arr!16877 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559814 () Bool)

(declare-fun e!322530 () Bool)

(assert (=> b!559814 (= e!322528 e!322530)))

(declare-fun c!64694 () Bool)

(assert (=> b!559814 (= c!64694 (validKeyInArray!0 (select (arr!16877 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559815 () Bool)

(declare-fun call!32453 () Bool)

(assert (=> b!559815 (= e!322530 call!32453)))

(declare-fun b!559816 () Bool)

(declare-fun contains!2865 (List!11010 (_ BitVec 64)) Bool)

(assert (=> b!559816 (= e!322531 (contains!2865 Nil!11007 (select (arr!16877 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32450 () Bool)

(assert (=> bm!32450 (= call!32453 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64694 (Cons!11006 (select (arr!16877 a!3118) #b00000000000000000000000000000000) Nil!11007) Nil!11007)))))

(declare-fun b!559817 () Bool)

(assert (=> b!559817 (= e!322530 call!32453)))

(declare-fun d!83749 () Bool)

(declare-fun res!351119 () Bool)

(assert (=> d!83749 (=> res!351119 e!322529)))

(assert (=> d!83749 (= res!351119 (bvsge #b00000000000000000000000000000000 (size!17241 a!3118)))))

(assert (=> d!83749 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11007) e!322529)))

(assert (= (and d!83749 (not res!351119)) b!559813))

(assert (= (and b!559813 res!351118) b!559816))

(assert (= (and b!559813 res!351117) b!559814))

(assert (= (and b!559814 c!64694) b!559817))

(assert (= (and b!559814 (not c!64694)) b!559815))

(assert (= (or b!559817 b!559815) bm!32450))

(assert (=> b!559813 m!537391))

(assert (=> b!559813 m!537391))

(assert (=> b!559813 m!537549))

(assert (=> b!559814 m!537391))

(assert (=> b!559814 m!537391))

(assert (=> b!559814 m!537549))

(assert (=> b!559816 m!537391))

(assert (=> b!559816 m!537391))

(declare-fun m!537603 () Bool)

(assert (=> b!559816 m!537603))

(assert (=> bm!32450 m!537391))

(declare-fun m!537605 () Bool)

(assert (=> bm!32450 m!537605))

(assert (=> b!559462 d!83749))

(declare-fun d!83761 () Bool)

(assert (=> d!83761 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559461 d!83761))

(push 1)

(assert (not b!559814))

(assert (not b!559573))

(assert (not b!559816))

(assert (not b!559722))

(assert (not b!559756))

(assert (not b!559586))

(assert (not b!559813))

(assert (not bm!32444))

(assert (not b!559496))

(assert (not b!559758))

(assert (not d!83695))

(assert (not bm!32446))

(assert (not d!83723))

(assert (not d!83675))

(assert (not b!559657))

(assert (not b!559709))

(assert (not b!559584))

(assert (not b!559791))

(assert (not d!83697))

(assert (not d!83747))

(assert (not d!83713))

(assert (not bm!32450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

