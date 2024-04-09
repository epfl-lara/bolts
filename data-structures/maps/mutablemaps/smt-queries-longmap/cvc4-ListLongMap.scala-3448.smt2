; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47822 () Bool)

(assert start!47822)

(declare-fun b!526657 () Bool)

(declare-datatypes ((Unit!16594 0))(
  ( (Unit!16595) )
))
(declare-fun e!306963 () Unit!16594)

(declare-fun Unit!16596 () Unit!16594)

(assert (=> b!526657 (= e!306963 Unit!16596)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!242370 () (_ BitVec 32))

(declare-datatypes ((array!33419 0))(
  ( (array!33420 (arr!16058 (Array (_ BitVec 32) (_ BitVec 64))) (size!16422 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33419)

(declare-datatypes ((SeekEntryResult!4532 0))(
  ( (MissingZero!4532 (index!20340 (_ BitVec 32))) (Found!4532 (index!20341 (_ BitVec 32))) (Intermediate!4532 (undefined!5344 Bool) (index!20342 (_ BitVec 32)) (x!49332 (_ BitVec 32))) (Undefined!4532) (MissingVacant!4532 (index!20343 (_ BitVec 32))) )
))
(declare-fun lt!242371 () SeekEntryResult!4532)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!242374 () Unit!16594)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16594)

(assert (=> b!526657 (= lt!242374 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242370 #b00000000000000000000000000000000 (index!20342 lt!242371) (x!49332 lt!242371) mask!3524))))

(declare-fun res!323371 () Bool)

(declare-fun lt!242375 () array!33419)

(declare-fun lt!242373 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33419 (_ BitVec 32)) SeekEntryResult!4532)

(assert (=> b!526657 (= res!323371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242370 lt!242373 lt!242375 mask!3524) (Intermediate!4532 false (index!20342 lt!242371) (x!49332 lt!242371))))))

(declare-fun e!306962 () Bool)

(assert (=> b!526657 (=> (not res!323371) (not e!306962))))

(assert (=> b!526657 e!306962))

(declare-fun b!526658 () Bool)

(declare-fun e!306959 () Bool)

(declare-fun e!306961 () Bool)

(assert (=> b!526658 (= e!306959 (not e!306961))))

(declare-fun res!323373 () Bool)

(assert (=> b!526658 (=> res!323373 e!306961)))

(declare-fun lt!242372 () (_ BitVec 32))

(assert (=> b!526658 (= res!323373 (= lt!242371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242372 lt!242373 lt!242375 mask!3524)))))

(assert (=> b!526658 (= lt!242371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242370 (select (arr!16058 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526658 (= lt!242372 (toIndex!0 lt!242373 mask!3524))))

(assert (=> b!526658 (= lt!242373 (select (store (arr!16058 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526658 (= lt!242370 (toIndex!0 (select (arr!16058 a!3235) j!176) mask!3524))))

(assert (=> b!526658 (= lt!242375 (array!33420 (store (arr!16058 a!3235) i!1204 k!2280) (size!16422 a!3235)))))

(declare-fun e!306960 () Bool)

(assert (=> b!526658 e!306960))

(declare-fun res!323378 () Bool)

(assert (=> b!526658 (=> (not res!323378) (not e!306960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33419 (_ BitVec 32)) Bool)

(assert (=> b!526658 (= res!323378 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242366 () Unit!16594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16594)

(assert (=> b!526658 (= lt!242366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526659 () Bool)

(assert (=> b!526659 (= e!306962 false)))

(declare-fun b!526660 () Bool)

(declare-fun e!306958 () Bool)

(assert (=> b!526660 (= e!306958 e!306959)))

(declare-fun res!323372 () Bool)

(assert (=> b!526660 (=> (not res!323372) (not e!306959))))

(declare-fun lt!242368 () SeekEntryResult!4532)

(assert (=> b!526660 (= res!323372 (or (= lt!242368 (MissingZero!4532 i!1204)) (= lt!242368 (MissingVacant!4532 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33419 (_ BitVec 32)) SeekEntryResult!4532)

(assert (=> b!526660 (= lt!242368 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526661 () Bool)

(declare-fun res!323380 () Bool)

(assert (=> b!526661 (=> (not res!323380) (not e!306958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526661 (= res!323380 (validKeyInArray!0 k!2280))))

(declare-fun b!526662 () Bool)

(declare-fun res!323374 () Bool)

(assert (=> b!526662 (=> res!323374 e!306961)))

(assert (=> b!526662 (= res!323374 (or (undefined!5344 lt!242371) (not (is-Intermediate!4532 lt!242371))))))

(declare-fun b!526663 () Bool)

(declare-fun res!323370 () Bool)

(assert (=> b!526663 (=> (not res!323370) (not e!306958))))

(assert (=> b!526663 (= res!323370 (validKeyInArray!0 (select (arr!16058 a!3235) j!176)))))

(declare-fun b!526665 () Bool)

(declare-fun res!323375 () Bool)

(assert (=> b!526665 (=> (not res!323375) (not e!306959))))

(assert (=> b!526665 (= res!323375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526666 () Bool)

(declare-fun res!323376 () Bool)

(assert (=> b!526666 (=> (not res!323376) (not e!306958))))

(assert (=> b!526666 (= res!323376 (and (= (size!16422 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16422 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16422 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526667 () Bool)

(declare-fun res!323377 () Bool)

(assert (=> b!526667 (=> (not res!323377) (not e!306958))))

(declare-fun arrayContainsKey!0 (array!33419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526667 (= res!323377 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526668 () Bool)

(declare-fun Unit!16597 () Unit!16594)

(assert (=> b!526668 (= e!306963 Unit!16597)))

(declare-fun b!526669 () Bool)

(declare-fun res!323379 () Bool)

(assert (=> b!526669 (=> (not res!323379) (not e!306959))))

(declare-datatypes ((List!10269 0))(
  ( (Nil!10266) (Cons!10265 (h!11196 (_ BitVec 64)) (t!16505 List!10269)) )
))
(declare-fun arrayNoDuplicates!0 (array!33419 (_ BitVec 32) List!10269) Bool)

(assert (=> b!526669 (= res!323379 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10266))))

(declare-fun b!526670 () Bool)

(assert (=> b!526670 (= e!306960 (= (seekEntryOrOpen!0 (select (arr!16058 a!3235) j!176) a!3235 mask!3524) (Found!4532 j!176)))))

(declare-fun b!526664 () Bool)

(assert (=> b!526664 (= e!306961 (bvsle (x!49332 lt!242371) #b01111111111111111111111111111110))))

(assert (=> b!526664 (= (index!20342 lt!242371) i!1204)))

(declare-fun lt!242367 () Unit!16594)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16594)

(assert (=> b!526664 (= lt!242367 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242370 #b00000000000000000000000000000000 (index!20342 lt!242371) (x!49332 lt!242371) mask!3524))))

(assert (=> b!526664 (and (or (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242369 () Unit!16594)

(assert (=> b!526664 (= lt!242369 e!306963)))

(declare-fun c!61949 () Bool)

(assert (=> b!526664 (= c!61949 (= (select (arr!16058 a!3235) (index!20342 lt!242371)) (select (arr!16058 a!3235) j!176)))))

(assert (=> b!526664 (and (bvslt (x!49332 lt!242371) #b01111111111111111111111111111110) (or (= (select (arr!16058 a!3235) (index!20342 lt!242371)) (select (arr!16058 a!3235) j!176)) (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16058 a!3235) (index!20342 lt!242371)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!323381 () Bool)

(assert (=> start!47822 (=> (not res!323381) (not e!306958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47822 (= res!323381 (validMask!0 mask!3524))))

(assert (=> start!47822 e!306958))

(assert (=> start!47822 true))

(declare-fun array_inv!11832 (array!33419) Bool)

(assert (=> start!47822 (array_inv!11832 a!3235)))

(assert (= (and start!47822 res!323381) b!526666))

(assert (= (and b!526666 res!323376) b!526663))

(assert (= (and b!526663 res!323370) b!526661))

(assert (= (and b!526661 res!323380) b!526667))

(assert (= (and b!526667 res!323377) b!526660))

(assert (= (and b!526660 res!323372) b!526665))

(assert (= (and b!526665 res!323375) b!526669))

(assert (= (and b!526669 res!323379) b!526658))

(assert (= (and b!526658 res!323378) b!526670))

(assert (= (and b!526658 (not res!323373)) b!526662))

(assert (= (and b!526662 (not res!323374)) b!526664))

(assert (= (and b!526664 c!61949) b!526657))

(assert (= (and b!526664 (not c!61949)) b!526668))

(assert (= (and b!526657 res!323371) b!526659))

(declare-fun m!507419 () Bool)

(assert (=> b!526663 m!507419))

(assert (=> b!526663 m!507419))

(declare-fun m!507421 () Bool)

(assert (=> b!526663 m!507421))

(declare-fun m!507423 () Bool)

(assert (=> b!526658 m!507423))

(declare-fun m!507425 () Bool)

(assert (=> b!526658 m!507425))

(declare-fun m!507427 () Bool)

(assert (=> b!526658 m!507427))

(assert (=> b!526658 m!507419))

(declare-fun m!507429 () Bool)

(assert (=> b!526658 m!507429))

(declare-fun m!507431 () Bool)

(assert (=> b!526658 m!507431))

(assert (=> b!526658 m!507419))

(declare-fun m!507433 () Bool)

(assert (=> b!526658 m!507433))

(assert (=> b!526658 m!507419))

(declare-fun m!507435 () Bool)

(assert (=> b!526658 m!507435))

(declare-fun m!507437 () Bool)

(assert (=> b!526658 m!507437))

(declare-fun m!507439 () Bool)

(assert (=> b!526669 m!507439))

(declare-fun m!507441 () Bool)

(assert (=> b!526657 m!507441))

(declare-fun m!507443 () Bool)

(assert (=> b!526657 m!507443))

(declare-fun m!507445 () Bool)

(assert (=> b!526661 m!507445))

(assert (=> b!526670 m!507419))

(assert (=> b!526670 m!507419))

(declare-fun m!507447 () Bool)

(assert (=> b!526670 m!507447))

(declare-fun m!507449 () Bool)

(assert (=> b!526660 m!507449))

(declare-fun m!507451 () Bool)

(assert (=> b!526667 m!507451))

(declare-fun m!507453 () Bool)

(assert (=> start!47822 m!507453))

(declare-fun m!507455 () Bool)

(assert (=> start!47822 m!507455))

(declare-fun m!507457 () Bool)

(assert (=> b!526665 m!507457))

(declare-fun m!507459 () Bool)

(assert (=> b!526664 m!507459))

(declare-fun m!507461 () Bool)

(assert (=> b!526664 m!507461))

(assert (=> b!526664 m!507419))

(push 1)

