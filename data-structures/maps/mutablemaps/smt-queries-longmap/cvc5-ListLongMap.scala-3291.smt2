; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45700 () Bool)

(assert start!45700)

(declare-fun b!504328 () Bool)

(declare-fun e!295293 () Bool)

(declare-fun e!295294 () Bool)

(assert (=> b!504328 (= e!295293 e!295294)))

(declare-fun res!305661 () Bool)

(assert (=> b!504328 (=> (not res!305661) (not e!295294))))

(declare-datatypes ((SeekEntryResult!4059 0))(
  ( (MissingZero!4059 (index!18424 (_ BitVec 32))) (Found!4059 (index!18425 (_ BitVec 32))) (Intermediate!4059 (undefined!4871 Bool) (index!18426 (_ BitVec 32)) (x!47471 (_ BitVec 32))) (Undefined!4059) (MissingVacant!4059 (index!18427 (_ BitVec 32))) )
))
(declare-fun lt!229694 () SeekEntryResult!4059)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504328 (= res!305661 (or (= lt!229694 (MissingZero!4059 i!1204)) (= lt!229694 (MissingVacant!4059 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32416 0))(
  ( (array!32417 (arr!15585 (Array (_ BitVec 32) (_ BitVec 64))) (size!15949 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32416)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32416 (_ BitVec 32)) SeekEntryResult!4059)

(assert (=> b!504328 (= lt!229694 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504329 () Bool)

(declare-fun res!305657 () Bool)

(assert (=> b!504329 (=> (not res!305657) (not e!295294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32416 (_ BitVec 32)) Bool)

(assert (=> b!504329 (= res!305657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504330 () Bool)

(declare-fun res!305649 () Bool)

(declare-fun e!295296 () Bool)

(assert (=> b!504330 (=> res!305649 e!295296)))

(declare-fun lt!229697 () SeekEntryResult!4059)

(assert (=> b!504330 (= res!305649 (or (undefined!4871 lt!229697) (not (is-Intermediate!4059 lt!229697))))))

(declare-fun b!504331 () Bool)

(declare-datatypes ((Unit!15326 0))(
  ( (Unit!15327) )
))
(declare-fun e!295291 () Unit!15326)

(declare-fun Unit!15328 () Unit!15326)

(assert (=> b!504331 (= e!295291 Unit!15328)))

(declare-fun lt!229696 () Unit!15326)

(declare-fun lt!229691 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32416 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15326)

(assert (=> b!504331 (= lt!229696 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229691 #b00000000000000000000000000000000 (index!18426 lt!229697) (x!47471 lt!229697) mask!3524))))

(declare-fun lt!229692 () (_ BitVec 64))

(declare-fun lt!229690 () array!32416)

(declare-fun res!305650 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32416 (_ BitVec 32)) SeekEntryResult!4059)

(assert (=> b!504331 (= res!305650 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229691 lt!229692 lt!229690 mask!3524) (Intermediate!4059 false (index!18426 lt!229697) (x!47471 lt!229697))))))

(declare-fun e!295289 () Bool)

(assert (=> b!504331 (=> (not res!305650) (not e!295289))))

(assert (=> b!504331 e!295289))

(declare-fun b!504332 () Bool)

(declare-fun res!305653 () Bool)

(declare-fun e!295290 () Bool)

(assert (=> b!504332 (=> res!305653 e!295290)))

(declare-fun e!295295 () Bool)

(assert (=> b!504332 (= res!305653 e!295295)))

(declare-fun res!305651 () Bool)

(assert (=> b!504332 (=> (not res!305651) (not e!295295))))

(assert (=> b!504332 (= res!305651 (bvsgt #b00000000000000000000000000000000 (x!47471 lt!229697)))))

(declare-fun b!504333 () Bool)

(declare-fun res!305652 () Bool)

(assert (=> b!504333 (=> (not res!305652) (not e!295293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504333 (= res!305652 (validKeyInArray!0 k!2280))))

(declare-fun b!504335 () Bool)

(declare-fun res!305656 () Bool)

(assert (=> b!504335 (=> (not res!305656) (not e!295294))))

(declare-datatypes ((List!9796 0))(
  ( (Nil!9793) (Cons!9792 (h!10669 (_ BitVec 64)) (t!16032 List!9796)) )
))
(declare-fun arrayNoDuplicates!0 (array!32416 (_ BitVec 32) List!9796) Bool)

(assert (=> b!504335 (= res!305656 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9793))))

(declare-fun b!504336 () Bool)

(declare-fun res!305662 () Bool)

(assert (=> b!504336 (=> (not res!305662) (not e!295293))))

(declare-fun arrayContainsKey!0 (array!32416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504336 (= res!305662 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504337 () Bool)

(declare-fun e!295292 () Bool)

(assert (=> b!504337 (= e!295292 (= (seekEntryOrOpen!0 (select (arr!15585 a!3235) j!176) a!3235 mask!3524) (Found!4059 j!176)))))

(declare-fun b!504338 () Bool)

(declare-fun res!305655 () Bool)

(assert (=> b!504338 (=> (not res!305655) (not e!295293))))

(assert (=> b!504338 (= res!305655 (and (= (size!15949 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15949 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15949 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504339 () Bool)

(assert (=> b!504339 (= e!295296 e!295290)))

(declare-fun res!305659 () Bool)

(assert (=> b!504339 (=> res!305659 e!295290)))

(assert (=> b!504339 (= res!305659 (or (bvsgt (x!47471 lt!229697) #b01111111111111111111111111111110) (bvslt lt!229691 #b00000000000000000000000000000000) (bvsge lt!229691 (size!15949 a!3235)) (bvslt (index!18426 lt!229697) #b00000000000000000000000000000000) (bvsge (index!18426 lt!229697) (size!15949 a!3235)) (not (= lt!229697 (Intermediate!4059 false (index!18426 lt!229697) (x!47471 lt!229697))))))))

(assert (=> b!504339 (= (index!18426 lt!229697) i!1204)))

(declare-fun lt!229695 () Unit!15326)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32416 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15326)

(assert (=> b!504339 (= lt!229695 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229691 #b00000000000000000000000000000000 (index!18426 lt!229697) (x!47471 lt!229697) mask!3524))))

(assert (=> b!504339 (and (or (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229687 () Unit!15326)

(assert (=> b!504339 (= lt!229687 e!295291)))

(declare-fun c!59618 () Bool)

(assert (=> b!504339 (= c!59618 (= (select (arr!15585 a!3235) (index!18426 lt!229697)) (select (arr!15585 a!3235) j!176)))))

(assert (=> b!504339 (and (bvslt (x!47471 lt!229697) #b01111111111111111111111111111110) (or (= (select (arr!15585 a!3235) (index!18426 lt!229697)) (select (arr!15585 a!3235) j!176)) (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15585 a!3235) (index!18426 lt!229697)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504340 () Bool)

(declare-fun res!305660 () Bool)

(assert (=> b!504340 (=> (not res!305660) (not e!295293))))

(assert (=> b!504340 (= res!305660 (validKeyInArray!0 (select (arr!15585 a!3235) j!176)))))

(declare-fun b!504341 () Bool)

(assert (=> b!504341 (= e!295294 (not e!295296))))

(declare-fun res!305658 () Bool)

(assert (=> b!504341 (=> res!305658 e!295296)))

(declare-fun lt!229689 () (_ BitVec 32))

(assert (=> b!504341 (= res!305658 (= lt!229697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229689 lt!229692 lt!229690 mask!3524)))))

(assert (=> b!504341 (= lt!229697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229691 (select (arr!15585 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504341 (= lt!229689 (toIndex!0 lt!229692 mask!3524))))

(assert (=> b!504341 (= lt!229692 (select (store (arr!15585 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504341 (= lt!229691 (toIndex!0 (select (arr!15585 a!3235) j!176) mask!3524))))

(assert (=> b!504341 (= lt!229690 (array!32417 (store (arr!15585 a!3235) i!1204 k!2280) (size!15949 a!3235)))))

(assert (=> b!504341 e!295292))

(declare-fun res!305663 () Bool)

(assert (=> b!504341 (=> (not res!305663) (not e!295292))))

(assert (=> b!504341 (= res!305663 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229688 () Unit!15326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15326)

(assert (=> b!504341 (= lt!229688 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504334 () Bool)

(assert (=> b!504334 (= e!295289 false)))

(declare-fun res!305654 () Bool)

(assert (=> start!45700 (=> (not res!305654) (not e!295293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45700 (= res!305654 (validMask!0 mask!3524))))

(assert (=> start!45700 e!295293))

(assert (=> start!45700 true))

(declare-fun array_inv!11359 (array!32416) Bool)

(assert (=> start!45700 (array_inv!11359 a!3235)))

(declare-fun b!504342 () Bool)

(assert (=> b!504342 (= e!295290 true)))

(declare-fun lt!229693 () SeekEntryResult!4059)

(assert (=> b!504342 (= lt!229693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229691 lt!229692 lt!229690 mask!3524))))

(declare-fun b!504343 () Bool)

(declare-fun Unit!15329 () Unit!15326)

(assert (=> b!504343 (= e!295291 Unit!15329)))

(declare-fun b!504344 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32416 (_ BitVec 32)) SeekEntryResult!4059)

(assert (=> b!504344 (= e!295295 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229691 (index!18426 lt!229697) (select (arr!15585 a!3235) j!176) a!3235 mask!3524) (Found!4059 j!176))))))

(assert (= (and start!45700 res!305654) b!504338))

(assert (= (and b!504338 res!305655) b!504340))

(assert (= (and b!504340 res!305660) b!504333))

(assert (= (and b!504333 res!305652) b!504336))

(assert (= (and b!504336 res!305662) b!504328))

(assert (= (and b!504328 res!305661) b!504329))

(assert (= (and b!504329 res!305657) b!504335))

(assert (= (and b!504335 res!305656) b!504341))

(assert (= (and b!504341 res!305663) b!504337))

(assert (= (and b!504341 (not res!305658)) b!504330))

(assert (= (and b!504330 (not res!305649)) b!504339))

(assert (= (and b!504339 c!59618) b!504331))

(assert (= (and b!504339 (not c!59618)) b!504343))

(assert (= (and b!504331 res!305650) b!504334))

(assert (= (and b!504339 (not res!305659)) b!504332))

(assert (= (and b!504332 res!305651) b!504344))

(assert (= (and b!504332 (not res!305653)) b!504342))

(declare-fun m!485095 () Bool)

(assert (=> b!504337 m!485095))

(assert (=> b!504337 m!485095))

(declare-fun m!485097 () Bool)

(assert (=> b!504337 m!485097))

(declare-fun m!485099 () Bool)

(assert (=> b!504331 m!485099))

(declare-fun m!485101 () Bool)

(assert (=> b!504331 m!485101))

(declare-fun m!485103 () Bool)

(assert (=> start!45700 m!485103))

(declare-fun m!485105 () Bool)

(assert (=> start!45700 m!485105))

(declare-fun m!485107 () Bool)

(assert (=> b!504339 m!485107))

(declare-fun m!485109 () Bool)

(assert (=> b!504339 m!485109))

(assert (=> b!504339 m!485095))

(declare-fun m!485111 () Bool)

(assert (=> b!504328 m!485111))

(assert (=> b!504340 m!485095))

(assert (=> b!504340 m!485095))

(declare-fun m!485113 () Bool)

(assert (=> b!504340 m!485113))

(assert (=> b!504344 m!485095))

(assert (=> b!504344 m!485095))

(declare-fun m!485115 () Bool)

(assert (=> b!504344 m!485115))

(declare-fun m!485117 () Bool)

(assert (=> b!504329 m!485117))

(declare-fun m!485119 () Bool)

(assert (=> b!504333 m!485119))

(assert (=> b!504342 m!485101))

(declare-fun m!485121 () Bool)

(assert (=> b!504341 m!485121))

(declare-fun m!485123 () Bool)

(assert (=> b!504341 m!485123))

(declare-fun m!485125 () Bool)

(assert (=> b!504341 m!485125))

(declare-fun m!485127 () Bool)

(assert (=> b!504341 m!485127))

(declare-fun m!485129 () Bool)

(assert (=> b!504341 m!485129))

(assert (=> b!504341 m!485095))

(declare-fun m!485131 () Bool)

(assert (=> b!504341 m!485131))

(declare-fun m!485133 () Bool)

(assert (=> b!504341 m!485133))

(assert (=> b!504341 m!485095))

(declare-fun m!485135 () Bool)

(assert (=> b!504341 m!485135))

(assert (=> b!504341 m!485095))

(declare-fun m!485137 () Bool)

(assert (=> b!504336 m!485137))

(declare-fun m!485139 () Bool)

(assert (=> b!504335 m!485139))

(push 1)

