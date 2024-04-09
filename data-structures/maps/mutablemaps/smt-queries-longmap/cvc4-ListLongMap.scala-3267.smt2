; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45488 () Bool)

(assert start!45488)

(declare-fun b!500523 () Bool)

(declare-fun e!293246 () Bool)

(assert (=> b!500523 (= e!293246 true)))

(declare-datatypes ((SeekEntryResult!3989 0))(
  ( (MissingZero!3989 (index!18138 (_ BitVec 32))) (Found!3989 (index!18139 (_ BitVec 32))) (Intermediate!3989 (undefined!4801 Bool) (index!18140 (_ BitVec 32)) (x!47197 (_ BitVec 32))) (Undefined!3989) (MissingVacant!3989 (index!18141 (_ BitVec 32))) )
))
(declare-fun lt!227267 () SeekEntryResult!3989)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227263 () (_ BitVec 64))

(declare-fun lt!227264 () (_ BitVec 32))

(declare-datatypes ((array!32273 0))(
  ( (array!32274 (arr!15515 (Array (_ BitVec 32) (_ BitVec 64))) (size!15879 (_ BitVec 32))) )
))
(declare-fun lt!227262 () array!32273)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32273 (_ BitVec 32)) SeekEntryResult!3989)

(assert (=> b!500523 (= lt!227267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227264 lt!227263 lt!227262 mask!3524))))

(declare-fun b!500524 () Bool)

(declare-datatypes ((Unit!15046 0))(
  ( (Unit!15047) )
))
(declare-fun e!293248 () Unit!15046)

(declare-fun Unit!15048 () Unit!15046)

(assert (=> b!500524 (= e!293248 Unit!15048)))

(declare-fun lt!227261 () Unit!15046)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32273)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!227266 () SeekEntryResult!3989)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15046)

(assert (=> b!500524 (= lt!227261 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227264 #b00000000000000000000000000000000 (index!18140 lt!227266) (x!47197 lt!227266) mask!3524))))

(declare-fun res!302476 () Bool)

(assert (=> b!500524 (= res!302476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227264 lt!227263 lt!227262 mask!3524) (Intermediate!3989 false (index!18140 lt!227266) (x!47197 lt!227266))))))

(declare-fun e!293250 () Bool)

(assert (=> b!500524 (=> (not res!302476) (not e!293250))))

(assert (=> b!500524 e!293250))

(declare-fun b!500525 () Bool)

(declare-fun e!293244 () Bool)

(declare-fun e!293249 () Bool)

(assert (=> b!500525 (= e!293244 e!293249)))

(declare-fun res!302473 () Bool)

(assert (=> b!500525 (=> (not res!302473) (not e!293249))))

(declare-fun lt!227265 () SeekEntryResult!3989)

(assert (=> b!500525 (= res!302473 (or (= lt!227265 (MissingZero!3989 i!1204)) (= lt!227265 (MissingVacant!3989 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32273 (_ BitVec 32)) SeekEntryResult!3989)

(assert (=> b!500525 (= lt!227265 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500526 () Bool)

(declare-fun Unit!15049 () Unit!15046)

(assert (=> b!500526 (= e!293248 Unit!15049)))

(declare-fun b!500527 () Bool)

(declare-fun res!302469 () Bool)

(assert (=> b!500527 (=> (not res!302469) (not e!293244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500527 (= res!302469 (validKeyInArray!0 k!2280))))

(declare-fun res!302465 () Bool)

(assert (=> start!45488 (=> (not res!302465) (not e!293244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45488 (= res!302465 (validMask!0 mask!3524))))

(assert (=> start!45488 e!293244))

(assert (=> start!45488 true))

(declare-fun array_inv!11289 (array!32273) Bool)

(assert (=> start!45488 (array_inv!11289 a!3235)))

(declare-fun b!500528 () Bool)

(declare-fun res!302468 () Bool)

(assert (=> b!500528 (=> (not res!302468) (not e!293249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32273 (_ BitVec 32)) Bool)

(assert (=> b!500528 (= res!302468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500529 () Bool)

(declare-fun res!302474 () Bool)

(assert (=> b!500529 (=> (not res!302474) (not e!293244))))

(declare-fun arrayContainsKey!0 (array!32273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500529 (= res!302474 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500530 () Bool)

(declare-fun e!293251 () Bool)

(assert (=> b!500530 (= e!293251 e!293246)))

(declare-fun res!302472 () Bool)

(assert (=> b!500530 (=> res!302472 e!293246)))

(assert (=> b!500530 (= res!302472 (or (bvsgt #b00000000000000000000000000000000 (x!47197 lt!227266)) (bvsgt (x!47197 lt!227266) #b01111111111111111111111111111110) (bvslt lt!227264 #b00000000000000000000000000000000) (bvsge lt!227264 (size!15879 a!3235)) (bvslt (index!18140 lt!227266) #b00000000000000000000000000000000) (bvsge (index!18140 lt!227266) (size!15879 a!3235)) (not (= lt!227266 (Intermediate!3989 false (index!18140 lt!227266) (x!47197 lt!227266))))))))

(assert (=> b!500530 (and (or (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227268 () Unit!15046)

(assert (=> b!500530 (= lt!227268 e!293248)))

(declare-fun c!59306 () Bool)

(assert (=> b!500530 (= c!59306 (= (select (arr!15515 a!3235) (index!18140 lt!227266)) (select (arr!15515 a!3235) j!176)))))

(assert (=> b!500530 (and (bvslt (x!47197 lt!227266) #b01111111111111111111111111111110) (or (= (select (arr!15515 a!3235) (index!18140 lt!227266)) (select (arr!15515 a!3235) j!176)) (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15515 a!3235) (index!18140 lt!227266)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500531 () Bool)

(declare-fun res!302471 () Bool)

(assert (=> b!500531 (=> (not res!302471) (not e!293249))))

(declare-datatypes ((List!9726 0))(
  ( (Nil!9723) (Cons!9722 (h!10596 (_ BitVec 64)) (t!15962 List!9726)) )
))
(declare-fun arrayNoDuplicates!0 (array!32273 (_ BitVec 32) List!9726) Bool)

(assert (=> b!500531 (= res!302471 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9723))))

(declare-fun b!500532 () Bool)

(declare-fun res!302475 () Bool)

(assert (=> b!500532 (=> res!302475 e!293251)))

(assert (=> b!500532 (= res!302475 (or (undefined!4801 lt!227266) (not (is-Intermediate!3989 lt!227266))))))

(declare-fun b!500533 () Bool)

(assert (=> b!500533 (= e!293250 false)))

(declare-fun e!293247 () Bool)

(declare-fun b!500534 () Bool)

(assert (=> b!500534 (= e!293247 (= (seekEntryOrOpen!0 (select (arr!15515 a!3235) j!176) a!3235 mask!3524) (Found!3989 j!176)))))

(declare-fun b!500535 () Bool)

(declare-fun res!302470 () Bool)

(assert (=> b!500535 (=> (not res!302470) (not e!293244))))

(assert (=> b!500535 (= res!302470 (validKeyInArray!0 (select (arr!15515 a!3235) j!176)))))

(declare-fun b!500536 () Bool)

(assert (=> b!500536 (= e!293249 (not e!293251))))

(declare-fun res!302466 () Bool)

(assert (=> b!500536 (=> res!302466 e!293251)))

(declare-fun lt!227270 () (_ BitVec 32))

(assert (=> b!500536 (= res!302466 (= lt!227266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227270 lt!227263 lt!227262 mask!3524)))))

(assert (=> b!500536 (= lt!227266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227264 (select (arr!15515 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500536 (= lt!227270 (toIndex!0 lt!227263 mask!3524))))

(assert (=> b!500536 (= lt!227263 (select (store (arr!15515 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500536 (= lt!227264 (toIndex!0 (select (arr!15515 a!3235) j!176) mask!3524))))

(assert (=> b!500536 (= lt!227262 (array!32274 (store (arr!15515 a!3235) i!1204 k!2280) (size!15879 a!3235)))))

(assert (=> b!500536 e!293247))

(declare-fun res!302467 () Bool)

(assert (=> b!500536 (=> (not res!302467) (not e!293247))))

(assert (=> b!500536 (= res!302467 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227269 () Unit!15046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15046)

(assert (=> b!500536 (= lt!227269 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500537 () Bool)

(declare-fun res!302477 () Bool)

(assert (=> b!500537 (=> (not res!302477) (not e!293244))))

(assert (=> b!500537 (= res!302477 (and (= (size!15879 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15879 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15879 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45488 res!302465) b!500537))

(assert (= (and b!500537 res!302477) b!500535))

(assert (= (and b!500535 res!302470) b!500527))

(assert (= (and b!500527 res!302469) b!500529))

(assert (= (and b!500529 res!302474) b!500525))

(assert (= (and b!500525 res!302473) b!500528))

(assert (= (and b!500528 res!302468) b!500531))

(assert (= (and b!500531 res!302471) b!500536))

(assert (= (and b!500536 res!302467) b!500534))

(assert (= (and b!500536 (not res!302466)) b!500532))

(assert (= (and b!500532 (not res!302475)) b!500530))

(assert (= (and b!500530 c!59306) b!500524))

(assert (= (and b!500530 (not c!59306)) b!500526))

(assert (= (and b!500524 res!302476) b!500533))

(assert (= (and b!500530 (not res!302472)) b!500523))

(declare-fun m!481675 () Bool)

(assert (=> b!500529 m!481675))

(declare-fun m!481677 () Bool)

(assert (=> b!500524 m!481677))

(declare-fun m!481679 () Bool)

(assert (=> b!500524 m!481679))

(declare-fun m!481681 () Bool)

(assert (=> b!500528 m!481681))

(assert (=> b!500523 m!481679))

(declare-fun m!481683 () Bool)

(assert (=> b!500525 m!481683))

(declare-fun m!481685 () Bool)

(assert (=> b!500535 m!481685))

(assert (=> b!500535 m!481685))

(declare-fun m!481687 () Bool)

(assert (=> b!500535 m!481687))

(declare-fun m!481689 () Bool)

(assert (=> b!500531 m!481689))

(declare-fun m!481691 () Bool)

(assert (=> b!500527 m!481691))

(declare-fun m!481693 () Bool)

(assert (=> b!500536 m!481693))

(declare-fun m!481695 () Bool)

(assert (=> b!500536 m!481695))

(declare-fun m!481697 () Bool)

(assert (=> b!500536 m!481697))

(declare-fun m!481699 () Bool)

(assert (=> b!500536 m!481699))

(declare-fun m!481701 () Bool)

(assert (=> b!500536 m!481701))

(assert (=> b!500536 m!481685))

(declare-fun m!481703 () Bool)

(assert (=> b!500536 m!481703))

(assert (=> b!500536 m!481685))

(assert (=> b!500536 m!481685))

(declare-fun m!481705 () Bool)

(assert (=> b!500536 m!481705))

(declare-fun m!481707 () Bool)

(assert (=> b!500536 m!481707))

(declare-fun m!481709 () Bool)

(assert (=> b!500530 m!481709))

(assert (=> b!500530 m!481685))

(declare-fun m!481711 () Bool)

(assert (=> start!45488 m!481711))

(declare-fun m!481713 () Bool)

(assert (=> start!45488 m!481713))

(assert (=> b!500534 m!481685))

(assert (=> b!500534 m!481685))

(declare-fun m!481715 () Bool)

(assert (=> b!500534 m!481715))

(push 1)

