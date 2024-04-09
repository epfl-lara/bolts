; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45628 () Bool)

(assert start!45628)

(declare-fun b!502492 () Bool)

(declare-datatypes ((Unit!15182 0))(
  ( (Unit!15183) )
))
(declare-fun e!294321 () Unit!15182)

(declare-fun Unit!15184 () Unit!15182)

(assert (=> b!502492 (= e!294321 Unit!15184)))

(declare-fun lt!228507 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32344 0))(
  ( (array!32345 (arr!15549 (Array (_ BitVec 32) (_ BitVec 64))) (size!15913 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32344)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4023 0))(
  ( (MissingZero!4023 (index!18280 (_ BitVec 32))) (Found!4023 (index!18281 (_ BitVec 32))) (Intermediate!4023 (undefined!4835 Bool) (index!18282 (_ BitVec 32)) (x!47339 (_ BitVec 32))) (Undefined!4023) (MissingVacant!4023 (index!18283 (_ BitVec 32))) )
))
(declare-fun lt!228502 () SeekEntryResult!4023)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228504 () Unit!15182)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32344 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15182)

(assert (=> b!502492 (= lt!228504 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228507 #b00000000000000000000000000000000 (index!18282 lt!228502) (x!47339 lt!228502) mask!3524))))

(declare-fun lt!228501 () array!32344)

(declare-fun res!304041 () Bool)

(declare-fun lt!228503 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32344 (_ BitVec 32)) SeekEntryResult!4023)

(assert (=> b!502492 (= res!304041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228507 lt!228503 lt!228501 mask!3524) (Intermediate!4023 false (index!18282 lt!228502) (x!47339 lt!228502))))))

(declare-fun e!294317 () Bool)

(assert (=> b!502492 (=> (not res!304041) (not e!294317))))

(assert (=> b!502492 e!294317))

(declare-fun b!502493 () Bool)

(declare-fun e!294324 () Bool)

(assert (=> b!502493 (= e!294324 true)))

(declare-fun lt!228499 () SeekEntryResult!4023)

(assert (=> b!502493 (= lt!228499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228507 lt!228503 lt!228501 mask!3524))))

(declare-fun b!502494 () Bool)

(declare-fun e!294323 () Bool)

(assert (=> b!502494 (= e!294323 e!294324)))

(declare-fun res!304043 () Bool)

(assert (=> b!502494 (=> res!304043 e!294324)))

(assert (=> b!502494 (= res!304043 (or (bvsgt (x!47339 lt!228502) #b01111111111111111111111111111110) (bvslt lt!228507 #b00000000000000000000000000000000) (bvsge lt!228507 (size!15913 a!3235)) (bvslt (index!18282 lt!228502) #b00000000000000000000000000000000) (bvsge (index!18282 lt!228502) (size!15913 a!3235)) (not (= lt!228502 (Intermediate!4023 false (index!18282 lt!228502) (x!47339 lt!228502))))))))

(assert (=> b!502494 (= (index!18282 lt!228502) i!1204)))

(declare-fun lt!228505 () Unit!15182)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32344 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15182)

(assert (=> b!502494 (= lt!228505 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228507 #b00000000000000000000000000000000 (index!18282 lt!228502) (x!47339 lt!228502) mask!3524))))

(assert (=> b!502494 (and (or (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228506 () Unit!15182)

(assert (=> b!502494 (= lt!228506 e!294321)))

(declare-fun c!59510 () Bool)

(assert (=> b!502494 (= c!59510 (= (select (arr!15549 a!3235) (index!18282 lt!228502)) (select (arr!15549 a!3235) j!176)))))

(assert (=> b!502494 (and (bvslt (x!47339 lt!228502) #b01111111111111111111111111111110) (or (= (select (arr!15549 a!3235) (index!18282 lt!228502)) (select (arr!15549 a!3235) j!176)) (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15549 a!3235) (index!18282 lt!228502)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502495 () Bool)

(declare-fun Unit!15185 () Unit!15182)

(assert (=> b!502495 (= e!294321 Unit!15185)))

(declare-fun b!502496 () Bool)

(declare-fun res!304034 () Bool)

(declare-fun e!294318 () Bool)

(assert (=> b!502496 (=> (not res!304034) (not e!294318))))

(assert (=> b!502496 (= res!304034 (and (= (size!15913 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15913 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15913 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502497 () Bool)

(declare-fun e!294320 () Bool)

(assert (=> b!502497 (= e!294318 e!294320)))

(declare-fun res!304035 () Bool)

(assert (=> b!502497 (=> (not res!304035) (not e!294320))))

(declare-fun lt!228500 () SeekEntryResult!4023)

(assert (=> b!502497 (= res!304035 (or (= lt!228500 (MissingZero!4023 i!1204)) (= lt!228500 (MissingVacant!4023 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32344 (_ BitVec 32)) SeekEntryResult!4023)

(assert (=> b!502497 (= lt!228500 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502498 () Bool)

(declare-fun res!304039 () Bool)

(assert (=> b!502498 (=> (not res!304039) (not e!294318))))

(declare-fun arrayContainsKey!0 (array!32344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502498 (= res!304039 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502499 () Bool)

(assert (=> b!502499 (= e!294317 false)))

(declare-fun b!502500 () Bool)

(declare-fun res!304037 () Bool)

(assert (=> b!502500 (=> (not res!304037) (not e!294320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32344 (_ BitVec 32)) Bool)

(assert (=> b!502500 (= res!304037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502501 () Bool)

(declare-fun res!304030 () Bool)

(assert (=> b!502501 (=> (not res!304030) (not e!294318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502501 (= res!304030 (validKeyInArray!0 (select (arr!15549 a!3235) j!176)))))

(declare-fun b!502502 () Bool)

(assert (=> b!502502 (= e!294320 (not e!294323))))

(declare-fun res!304036 () Bool)

(assert (=> b!502502 (=> res!304036 e!294323)))

(declare-fun lt!228509 () (_ BitVec 32))

(assert (=> b!502502 (= res!304036 (= lt!228502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228509 lt!228503 lt!228501 mask!3524)))))

(assert (=> b!502502 (= lt!228502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228507 (select (arr!15549 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502502 (= lt!228509 (toIndex!0 lt!228503 mask!3524))))

(assert (=> b!502502 (= lt!228503 (select (store (arr!15549 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502502 (= lt!228507 (toIndex!0 (select (arr!15549 a!3235) j!176) mask!3524))))

(assert (=> b!502502 (= lt!228501 (array!32345 (store (arr!15549 a!3235) i!1204 k!2280) (size!15913 a!3235)))))

(declare-fun e!294322 () Bool)

(assert (=> b!502502 e!294322))

(declare-fun res!304032 () Bool)

(assert (=> b!502502 (=> (not res!304032) (not e!294322))))

(assert (=> b!502502 (= res!304032 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228508 () Unit!15182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15182)

(assert (=> b!502502 (= lt!228508 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!304033 () Bool)

(assert (=> start!45628 (=> (not res!304033) (not e!294318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45628 (= res!304033 (validMask!0 mask!3524))))

(assert (=> start!45628 e!294318))

(assert (=> start!45628 true))

(declare-fun array_inv!11323 (array!32344) Bool)

(assert (=> start!45628 (array_inv!11323 a!3235)))

(declare-fun e!294325 () Bool)

(declare-fun b!502503 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32344 (_ BitVec 32)) SeekEntryResult!4023)

(assert (=> b!502503 (= e!294325 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228507 (index!18282 lt!228502) (select (arr!15549 a!3235) j!176) a!3235 mask!3524) (Found!4023 j!176))))))

(declare-fun b!502504 () Bool)

(declare-fun res!304040 () Bool)

(assert (=> b!502504 (=> res!304040 e!294324)))

(assert (=> b!502504 (= res!304040 e!294325)))

(declare-fun res!304029 () Bool)

(assert (=> b!502504 (=> (not res!304029) (not e!294325))))

(assert (=> b!502504 (= res!304029 (bvsgt #b00000000000000000000000000000000 (x!47339 lt!228502)))))

(declare-fun b!502505 () Bool)

(assert (=> b!502505 (= e!294322 (= (seekEntryOrOpen!0 (select (arr!15549 a!3235) j!176) a!3235 mask!3524) (Found!4023 j!176)))))

(declare-fun b!502506 () Bool)

(declare-fun res!304031 () Bool)

(assert (=> b!502506 (=> res!304031 e!294323)))

(assert (=> b!502506 (= res!304031 (or (undefined!4835 lt!228502) (not (is-Intermediate!4023 lt!228502))))))

(declare-fun b!502507 () Bool)

(declare-fun res!304038 () Bool)

(assert (=> b!502507 (=> (not res!304038) (not e!294320))))

(declare-datatypes ((List!9760 0))(
  ( (Nil!9757) (Cons!9756 (h!10633 (_ BitVec 64)) (t!15996 List!9760)) )
))
(declare-fun arrayNoDuplicates!0 (array!32344 (_ BitVec 32) List!9760) Bool)

(assert (=> b!502507 (= res!304038 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9757))))

(declare-fun b!502508 () Bool)

(declare-fun res!304042 () Bool)

(assert (=> b!502508 (=> (not res!304042) (not e!294318))))

(assert (=> b!502508 (= res!304042 (validKeyInArray!0 k!2280))))

(assert (= (and start!45628 res!304033) b!502496))

(assert (= (and b!502496 res!304034) b!502501))

(assert (= (and b!502501 res!304030) b!502508))

(assert (= (and b!502508 res!304042) b!502498))

(assert (= (and b!502498 res!304039) b!502497))

(assert (= (and b!502497 res!304035) b!502500))

(assert (= (and b!502500 res!304037) b!502507))

(assert (= (and b!502507 res!304038) b!502502))

(assert (= (and b!502502 res!304032) b!502505))

(assert (= (and b!502502 (not res!304036)) b!502506))

(assert (= (and b!502506 (not res!304031)) b!502494))

(assert (= (and b!502494 c!59510) b!502492))

(assert (= (and b!502494 (not c!59510)) b!502495))

(assert (= (and b!502492 res!304041) b!502499))

(assert (= (and b!502494 (not res!304043)) b!502504))

(assert (= (and b!502504 res!304029) b!502503))

(assert (= (and b!502504 (not res!304040)) b!502493))

(declare-fun m!483439 () Bool)

(assert (=> b!502492 m!483439))

(declare-fun m!483441 () Bool)

(assert (=> b!502492 m!483441))

(declare-fun m!483443 () Bool)

(assert (=> b!502498 m!483443))

(declare-fun m!483445 () Bool)

(assert (=> b!502508 m!483445))

(declare-fun m!483447 () Bool)

(assert (=> b!502501 m!483447))

(assert (=> b!502501 m!483447))

(declare-fun m!483449 () Bool)

(assert (=> b!502501 m!483449))

(assert (=> b!502493 m!483441))

(assert (=> b!502505 m!483447))

(assert (=> b!502505 m!483447))

(declare-fun m!483451 () Bool)

(assert (=> b!502505 m!483451))

(assert (=> b!502503 m!483447))

(assert (=> b!502503 m!483447))

(declare-fun m!483453 () Bool)

(assert (=> b!502503 m!483453))

(assert (=> b!502502 m!483447))

(declare-fun m!483455 () Bool)

(assert (=> b!502502 m!483455))

(declare-fun m!483457 () Bool)

(assert (=> b!502502 m!483457))

(declare-fun m!483459 () Bool)

(assert (=> b!502502 m!483459))

(assert (=> b!502502 m!483447))

(declare-fun m!483461 () Bool)

(assert (=> b!502502 m!483461))

(assert (=> b!502502 m!483447))

(declare-fun m!483463 () Bool)

(assert (=> b!502502 m!483463))

(declare-fun m!483465 () Bool)

(assert (=> b!502502 m!483465))

(declare-fun m!483467 () Bool)

(assert (=> b!502502 m!483467))

(declare-fun m!483469 () Bool)

(assert (=> b!502502 m!483469))

(declare-fun m!483471 () Bool)

(assert (=> b!502500 m!483471))

(declare-fun m!483473 () Bool)

(assert (=> b!502497 m!483473))

(declare-fun m!483475 () Bool)

(assert (=> b!502507 m!483475))

(declare-fun m!483477 () Bool)

(assert (=> start!45628 m!483477))

(declare-fun m!483479 () Bool)

(assert (=> start!45628 m!483479))

(declare-fun m!483481 () Bool)

(assert (=> b!502494 m!483481))

(declare-fun m!483483 () Bool)

(assert (=> b!502494 m!483483))

(assert (=> b!502494 m!483447))

(push 1)

