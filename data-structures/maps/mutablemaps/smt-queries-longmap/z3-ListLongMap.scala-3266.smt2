; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45480 () Bool)

(assert start!45480)

(declare-fun b!500343 () Bool)

(declare-fun e!293155 () Bool)

(assert (=> b!500343 (= e!293155 true)))

(declare-fun lt!227144 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3985 0))(
  ( (MissingZero!3985 (index!18122 (_ BitVec 32))) (Found!3985 (index!18123 (_ BitVec 32))) (Intermediate!3985 (undefined!4797 Bool) (index!18124 (_ BitVec 32)) (x!47185 (_ BitVec 32))) (Undefined!3985) (MissingVacant!3985 (index!18125 (_ BitVec 32))) )
))
(declare-fun lt!227148 () SeekEntryResult!3985)

(declare-datatypes ((array!32265 0))(
  ( (array!32266 (arr!15511 (Array (_ BitVec 32) (_ BitVec 64))) (size!15875 (_ BitVec 32))) )
))
(declare-fun lt!227142 () array!32265)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227141 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32265 (_ BitVec 32)) SeekEntryResult!3985)

(assert (=> b!500343 (= lt!227148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227141 lt!227144 lt!227142 mask!3524))))

(declare-fun b!500344 () Bool)

(declare-fun e!293153 () Bool)

(assert (=> b!500344 (= e!293153 e!293155)))

(declare-fun res!302310 () Bool)

(assert (=> b!500344 (=> res!302310 e!293155)))

(declare-fun a!3235 () array!32265)

(declare-fun lt!227143 () SeekEntryResult!3985)

(assert (=> b!500344 (= res!302310 (or (bvsgt #b00000000000000000000000000000000 (x!47185 lt!227143)) (bvsgt (x!47185 lt!227143) #b01111111111111111111111111111110) (bvslt lt!227141 #b00000000000000000000000000000000) (bvsge lt!227141 (size!15875 a!3235)) (bvslt (index!18124 lt!227143) #b00000000000000000000000000000000) (bvsge (index!18124 lt!227143) (size!15875 a!3235)) (not (= lt!227143 (Intermediate!3985 false (index!18124 lt!227143) (x!47185 lt!227143))))))))

(assert (=> b!500344 (and (or (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!15030 0))(
  ( (Unit!15031) )
))
(declare-fun lt!227150 () Unit!15030)

(declare-fun e!293151 () Unit!15030)

(assert (=> b!500344 (= lt!227150 e!293151)))

(declare-fun c!59294 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500344 (= c!59294 (= (select (arr!15511 a!3235) (index!18124 lt!227143)) (select (arr!15511 a!3235) j!176)))))

(assert (=> b!500344 (and (bvslt (x!47185 lt!227143) #b01111111111111111111111111111110) (or (= (select (arr!15511 a!3235) (index!18124 lt!227143)) (select (arr!15511 a!3235) j!176)) (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15511 a!3235) (index!18124 lt!227143)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500345 () Bool)

(declare-fun e!293148 () Bool)

(assert (=> b!500345 (= e!293148 false)))

(declare-fun b!500346 () Bool)

(declare-fun res!302318 () Bool)

(declare-fun e!293150 () Bool)

(assert (=> b!500346 (=> (not res!302318) (not e!293150))))

(declare-datatypes ((List!9722 0))(
  ( (Nil!9719) (Cons!9718 (h!10592 (_ BitVec 64)) (t!15958 List!9722)) )
))
(declare-fun arrayNoDuplicates!0 (array!32265 (_ BitVec 32) List!9722) Bool)

(assert (=> b!500346 (= res!302318 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9719))))

(declare-fun res!302316 () Bool)

(declare-fun e!293154 () Bool)

(assert (=> start!45480 (=> (not res!302316) (not e!293154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45480 (= res!302316 (validMask!0 mask!3524))))

(assert (=> start!45480 e!293154))

(assert (=> start!45480 true))

(declare-fun array_inv!11285 (array!32265) Bool)

(assert (=> start!45480 (array_inv!11285 a!3235)))

(declare-fun b!500347 () Bool)

(declare-fun Unit!15032 () Unit!15030)

(assert (=> b!500347 (= e!293151 Unit!15032)))

(declare-fun b!500348 () Bool)

(declare-fun Unit!15033 () Unit!15030)

(assert (=> b!500348 (= e!293151 Unit!15033)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!227149 () Unit!15030)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15030)

(assert (=> b!500348 (= lt!227149 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227141 #b00000000000000000000000000000000 (index!18124 lt!227143) (x!47185 lt!227143) mask!3524))))

(declare-fun res!302320 () Bool)

(assert (=> b!500348 (= res!302320 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227141 lt!227144 lt!227142 mask!3524) (Intermediate!3985 false (index!18124 lt!227143) (x!47185 lt!227143))))))

(assert (=> b!500348 (=> (not res!302320) (not e!293148))))

(assert (=> b!500348 e!293148))

(declare-fun b!500349 () Bool)

(declare-fun e!293152 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32265 (_ BitVec 32)) SeekEntryResult!3985)

(assert (=> b!500349 (= e!293152 (= (seekEntryOrOpen!0 (select (arr!15511 a!3235) j!176) a!3235 mask!3524) (Found!3985 j!176)))))

(declare-fun b!500350 () Bool)

(declare-fun res!302313 () Bool)

(assert (=> b!500350 (=> res!302313 e!293153)))

(get-info :version)

(assert (=> b!500350 (= res!302313 (or (undefined!4797 lt!227143) (not ((_ is Intermediate!3985) lt!227143))))))

(declare-fun b!500351 () Bool)

(declare-fun res!302309 () Bool)

(assert (=> b!500351 (=> (not res!302309) (not e!293154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500351 (= res!302309 (validKeyInArray!0 k0!2280))))

(declare-fun b!500352 () Bool)

(declare-fun res!302315 () Bool)

(assert (=> b!500352 (=> (not res!302315) (not e!293154))))

(declare-fun arrayContainsKey!0 (array!32265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500352 (= res!302315 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500353 () Bool)

(assert (=> b!500353 (= e!293150 (not e!293153))))

(declare-fun res!302312 () Bool)

(assert (=> b!500353 (=> res!302312 e!293153)))

(declare-fun lt!227147 () (_ BitVec 32))

(assert (=> b!500353 (= res!302312 (= lt!227143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227147 lt!227144 lt!227142 mask!3524)))))

(assert (=> b!500353 (= lt!227143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227141 (select (arr!15511 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500353 (= lt!227147 (toIndex!0 lt!227144 mask!3524))))

(assert (=> b!500353 (= lt!227144 (select (store (arr!15511 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500353 (= lt!227141 (toIndex!0 (select (arr!15511 a!3235) j!176) mask!3524))))

(assert (=> b!500353 (= lt!227142 (array!32266 (store (arr!15511 a!3235) i!1204 k0!2280) (size!15875 a!3235)))))

(assert (=> b!500353 e!293152))

(declare-fun res!302311 () Bool)

(assert (=> b!500353 (=> (not res!302311) (not e!293152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32265 (_ BitVec 32)) Bool)

(assert (=> b!500353 (= res!302311 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227145 () Unit!15030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15030)

(assert (=> b!500353 (= lt!227145 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500354 () Bool)

(declare-fun res!302321 () Bool)

(assert (=> b!500354 (=> (not res!302321) (not e!293154))))

(assert (=> b!500354 (= res!302321 (and (= (size!15875 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15875 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15875 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500355 () Bool)

(declare-fun res!302314 () Bool)

(assert (=> b!500355 (=> (not res!302314) (not e!293150))))

(assert (=> b!500355 (= res!302314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500356 () Bool)

(declare-fun res!302319 () Bool)

(assert (=> b!500356 (=> (not res!302319) (not e!293154))))

(assert (=> b!500356 (= res!302319 (validKeyInArray!0 (select (arr!15511 a!3235) j!176)))))

(declare-fun b!500357 () Bool)

(assert (=> b!500357 (= e!293154 e!293150)))

(declare-fun res!302317 () Bool)

(assert (=> b!500357 (=> (not res!302317) (not e!293150))))

(declare-fun lt!227146 () SeekEntryResult!3985)

(assert (=> b!500357 (= res!302317 (or (= lt!227146 (MissingZero!3985 i!1204)) (= lt!227146 (MissingVacant!3985 i!1204))))))

(assert (=> b!500357 (= lt!227146 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45480 res!302316) b!500354))

(assert (= (and b!500354 res!302321) b!500356))

(assert (= (and b!500356 res!302319) b!500351))

(assert (= (and b!500351 res!302309) b!500352))

(assert (= (and b!500352 res!302315) b!500357))

(assert (= (and b!500357 res!302317) b!500355))

(assert (= (and b!500355 res!302314) b!500346))

(assert (= (and b!500346 res!302318) b!500353))

(assert (= (and b!500353 res!302311) b!500349))

(assert (= (and b!500353 (not res!302312)) b!500350))

(assert (= (and b!500350 (not res!302313)) b!500344))

(assert (= (and b!500344 c!59294) b!500348))

(assert (= (and b!500344 (not c!59294)) b!500347))

(assert (= (and b!500348 res!302320) b!500345))

(assert (= (and b!500344 (not res!302310)) b!500343))

(declare-fun m!481507 () Bool)

(assert (=> b!500357 m!481507))

(declare-fun m!481509 () Bool)

(assert (=> b!500344 m!481509))

(declare-fun m!481511 () Bool)

(assert (=> b!500344 m!481511))

(declare-fun m!481513 () Bool)

(assert (=> b!500351 m!481513))

(declare-fun m!481515 () Bool)

(assert (=> b!500353 m!481515))

(declare-fun m!481517 () Bool)

(assert (=> b!500353 m!481517))

(declare-fun m!481519 () Bool)

(assert (=> b!500353 m!481519))

(declare-fun m!481521 () Bool)

(assert (=> b!500353 m!481521))

(assert (=> b!500353 m!481511))

(declare-fun m!481523 () Bool)

(assert (=> b!500353 m!481523))

(assert (=> b!500353 m!481511))

(declare-fun m!481525 () Bool)

(assert (=> b!500353 m!481525))

(declare-fun m!481527 () Bool)

(assert (=> b!500353 m!481527))

(assert (=> b!500353 m!481511))

(declare-fun m!481529 () Bool)

(assert (=> b!500353 m!481529))

(declare-fun m!481531 () Bool)

(assert (=> b!500348 m!481531))

(declare-fun m!481533 () Bool)

(assert (=> b!500348 m!481533))

(assert (=> b!500356 m!481511))

(assert (=> b!500356 m!481511))

(declare-fun m!481535 () Bool)

(assert (=> b!500356 m!481535))

(assert (=> b!500343 m!481533))

(declare-fun m!481537 () Bool)

(assert (=> b!500346 m!481537))

(declare-fun m!481539 () Bool)

(assert (=> b!500355 m!481539))

(assert (=> b!500349 m!481511))

(assert (=> b!500349 m!481511))

(declare-fun m!481541 () Bool)

(assert (=> b!500349 m!481541))

(declare-fun m!481543 () Bool)

(assert (=> b!500352 m!481543))

(declare-fun m!481545 () Bool)

(assert (=> start!45480 m!481545))

(declare-fun m!481547 () Bool)

(assert (=> start!45480 m!481547))

(check-sat (not b!500343) (not b!500349) (not b!500355) (not b!500351) (not b!500356) (not b!500346) (not b!500353) (not b!500352) (not b!500357) (not start!45480) (not b!500348))
(check-sat)
