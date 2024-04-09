; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48020 () Bool)

(assert start!48020)

(declare-fun b!528424 () Bool)

(declare-fun e!307956 () Bool)

(declare-fun e!307958 () Bool)

(assert (=> b!528424 (= e!307956 e!307958)))

(declare-fun res!324544 () Bool)

(assert (=> b!528424 (=> (not res!324544) (not e!307958))))

(declare-datatypes ((SeekEntryResult!4556 0))(
  ( (MissingZero!4556 (index!20448 (_ BitVec 32))) (Found!4556 (index!20449 (_ BitVec 32))) (Intermediate!4556 (undefined!5368 Bool) (index!20450 (_ BitVec 32)) (x!49447 (_ BitVec 32))) (Undefined!4556) (MissingVacant!4556 (index!20451 (_ BitVec 32))) )
))
(declare-fun lt!243448 () SeekEntryResult!4556)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528424 (= res!324544 (or (= lt!243448 (MissingZero!4556 i!1204)) (= lt!243448 (MissingVacant!4556 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33473 0))(
  ( (array!33474 (arr!16082 (Array (_ BitVec 32) (_ BitVec 64))) (size!16446 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33473)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33473 (_ BitVec 32)) SeekEntryResult!4556)

(assert (=> b!528424 (= lt!243448 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528425 () Bool)

(declare-fun res!324543 () Bool)

(assert (=> b!528425 (=> (not res!324543) (not e!307956))))

(declare-fun arrayContainsKey!0 (array!33473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528425 (= res!324543 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528426 () Bool)

(declare-fun res!324545 () Bool)

(assert (=> b!528426 (=> (not res!324545) (not e!307956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528426 (= res!324545 (validKeyInArray!0 k!2280))))

(declare-fun e!307952 () Bool)

(declare-fun b!528427 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!528427 (= e!307952 (= (seekEntryOrOpen!0 (select (arr!16082 a!3235) j!176) a!3235 mask!3524) (Found!4556 j!176)))))

(declare-fun b!528428 () Bool)

(declare-fun e!307955 () Bool)

(assert (=> b!528428 (= e!307955 true)))

(declare-fun lt!243447 () SeekEntryResult!4556)

(declare-fun lt!243454 () array!33473)

(declare-fun lt!243453 () (_ BitVec 64))

(assert (=> b!528428 (= (seekEntryOrOpen!0 lt!243453 lt!243454 mask!3524) lt!243447)))

(declare-fun lt!243451 () (_ BitVec 32))

(declare-datatypes ((Unit!16690 0))(
  ( (Unit!16691) )
))
(declare-fun lt!243443 () Unit!16690)

(declare-fun lt!243446 () SeekEntryResult!4556)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16690)

(assert (=> b!528428 (= lt!243443 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243451 #b00000000000000000000000000000000 (index!20450 lt!243446) (x!49447 lt!243446) mask!3524))))

(declare-fun b!528429 () Bool)

(declare-fun e!307960 () Unit!16690)

(declare-fun Unit!16692 () Unit!16690)

(assert (=> b!528429 (= e!307960 Unit!16692)))

(declare-fun lt!243455 () Unit!16690)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16690)

(assert (=> b!528429 (= lt!243455 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243451 #b00000000000000000000000000000000 (index!20450 lt!243446) (x!49447 lt!243446) mask!3524))))

(declare-fun res!324540 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33473 (_ BitVec 32)) SeekEntryResult!4556)

(assert (=> b!528429 (= res!324540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243451 lt!243453 lt!243454 mask!3524) (Intermediate!4556 false (index!20450 lt!243446) (x!49447 lt!243446))))))

(declare-fun e!307953 () Bool)

(assert (=> b!528429 (=> (not res!324540) (not e!307953))))

(assert (=> b!528429 e!307953))

(declare-fun b!528430 () Bool)

(declare-fun res!324541 () Bool)

(assert (=> b!528430 (=> (not res!324541) (not e!307958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33473 (_ BitVec 32)) Bool)

(assert (=> b!528430 (= res!324541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528432 () Bool)

(declare-fun res!324548 () Bool)

(assert (=> b!528432 (=> res!324548 e!307955)))

(declare-fun e!307959 () Bool)

(assert (=> b!528432 (= res!324548 e!307959)))

(declare-fun res!324547 () Bool)

(assert (=> b!528432 (=> (not res!324547) (not e!307959))))

(assert (=> b!528432 (= res!324547 (bvsgt #b00000000000000000000000000000000 (x!49447 lt!243446)))))

(declare-fun b!528433 () Bool)

(declare-fun e!307957 () Bool)

(assert (=> b!528433 (= e!307957 e!307955)))

(declare-fun res!324542 () Bool)

(assert (=> b!528433 (=> res!324542 e!307955)))

(assert (=> b!528433 (= res!324542 (or (bvsgt (x!49447 lt!243446) #b01111111111111111111111111111110) (bvslt lt!243451 #b00000000000000000000000000000000) (bvsge lt!243451 (size!16446 a!3235)) (bvslt (index!20450 lt!243446) #b00000000000000000000000000000000) (bvsge (index!20450 lt!243446) (size!16446 a!3235)) (not (= lt!243446 (Intermediate!4556 false (index!20450 lt!243446) (x!49447 lt!243446))))))))

(assert (=> b!528433 (= (index!20450 lt!243446) i!1204)))

(declare-fun lt!243452 () Unit!16690)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16690)

(assert (=> b!528433 (= lt!243452 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243451 #b00000000000000000000000000000000 (index!20450 lt!243446) (x!49447 lt!243446) mask!3524))))

(assert (=> b!528433 (and (or (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243445 () Unit!16690)

(assert (=> b!528433 (= lt!243445 e!307960)))

(declare-fun c!62252 () Bool)

(assert (=> b!528433 (= c!62252 (= (select (arr!16082 a!3235) (index!20450 lt!243446)) (select (arr!16082 a!3235) j!176)))))

(assert (=> b!528433 (and (bvslt (x!49447 lt!243446) #b01111111111111111111111111111110) (or (= (select (arr!16082 a!3235) (index!20450 lt!243446)) (select (arr!16082 a!3235) j!176)) (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16082 a!3235) (index!20450 lt!243446)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528434 () Bool)

(assert (=> b!528434 (= e!307958 (not e!307957))))

(declare-fun res!324551 () Bool)

(assert (=> b!528434 (=> res!324551 e!307957)))

(declare-fun lt!243449 () SeekEntryResult!4556)

(assert (=> b!528434 (= res!324551 (or (= lt!243446 lt!243449) (undefined!5368 lt!243446) (not (is-Intermediate!4556 lt!243446))))))

(declare-fun lt!243450 () (_ BitVec 32))

(assert (=> b!528434 (= lt!243449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243450 lt!243453 lt!243454 mask!3524))))

(assert (=> b!528434 (= lt!243446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243451 (select (arr!16082 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528434 (= lt!243450 (toIndex!0 lt!243453 mask!3524))))

(assert (=> b!528434 (= lt!243453 (select (store (arr!16082 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528434 (= lt!243451 (toIndex!0 (select (arr!16082 a!3235) j!176) mask!3524))))

(assert (=> b!528434 (= lt!243454 (array!33474 (store (arr!16082 a!3235) i!1204 k!2280) (size!16446 a!3235)))))

(assert (=> b!528434 (= lt!243447 (Found!4556 j!176))))

(assert (=> b!528434 e!307952))

(declare-fun res!324539 () Bool)

(assert (=> b!528434 (=> (not res!324539) (not e!307952))))

(assert (=> b!528434 (= res!324539 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243444 () Unit!16690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33473 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16690)

(assert (=> b!528434 (= lt!243444 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528435 () Bool)

(assert (=> b!528435 (= e!307953 false)))

(declare-fun b!528436 () Bool)

(declare-fun Unit!16693 () Unit!16690)

(assert (=> b!528436 (= e!307960 Unit!16693)))

(declare-fun res!324537 () Bool)

(assert (=> start!48020 (=> (not res!324537) (not e!307956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48020 (= res!324537 (validMask!0 mask!3524))))

(assert (=> start!48020 e!307956))

(assert (=> start!48020 true))

(declare-fun array_inv!11856 (array!33473) Bool)

(assert (=> start!48020 (array_inv!11856 a!3235)))

(declare-fun b!528431 () Bool)

(declare-fun res!324538 () Bool)

(assert (=> b!528431 (=> res!324538 e!307955)))

(assert (=> b!528431 (= res!324538 (not (= lt!243449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243451 lt!243453 lt!243454 mask!3524))))))

(declare-fun b!528437 () Bool)

(declare-fun res!324546 () Bool)

(assert (=> b!528437 (=> (not res!324546) (not e!307956))))

(assert (=> b!528437 (= res!324546 (and (= (size!16446 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16446 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16446 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528438 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33473 (_ BitVec 32)) SeekEntryResult!4556)

(assert (=> b!528438 (= e!307959 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243451 (index!20450 lt!243446) (select (arr!16082 a!3235) j!176) a!3235 mask!3524) lt!243447)))))

(declare-fun b!528439 () Bool)

(declare-fun res!324549 () Bool)

(assert (=> b!528439 (=> (not res!324549) (not e!307958))))

(declare-datatypes ((List!10293 0))(
  ( (Nil!10290) (Cons!10289 (h!11226 (_ BitVec 64)) (t!16529 List!10293)) )
))
(declare-fun arrayNoDuplicates!0 (array!33473 (_ BitVec 32) List!10293) Bool)

(assert (=> b!528439 (= res!324549 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10290))))

(declare-fun b!528440 () Bool)

(declare-fun res!324550 () Bool)

(assert (=> b!528440 (=> (not res!324550) (not e!307956))))

(assert (=> b!528440 (= res!324550 (validKeyInArray!0 (select (arr!16082 a!3235) j!176)))))

(assert (= (and start!48020 res!324537) b!528437))

(assert (= (and b!528437 res!324546) b!528440))

(assert (= (and b!528440 res!324550) b!528426))

(assert (= (and b!528426 res!324545) b!528425))

(assert (= (and b!528425 res!324543) b!528424))

(assert (= (and b!528424 res!324544) b!528430))

(assert (= (and b!528430 res!324541) b!528439))

(assert (= (and b!528439 res!324549) b!528434))

(assert (= (and b!528434 res!324539) b!528427))

(assert (= (and b!528434 (not res!324551)) b!528433))

(assert (= (and b!528433 c!62252) b!528429))

(assert (= (and b!528433 (not c!62252)) b!528436))

(assert (= (and b!528429 res!324540) b!528435))

(assert (= (and b!528433 (not res!324542)) b!528432))

(assert (= (and b!528432 res!324547) b!528438))

(assert (= (and b!528432 (not res!324548)) b!528431))

(assert (= (and b!528431 (not res!324538)) b!528428))

(declare-fun m!508997 () Bool)

(assert (=> b!528425 m!508997))

(declare-fun m!508999 () Bool)

(assert (=> b!528424 m!508999))

(declare-fun m!509001 () Bool)

(assert (=> b!528430 m!509001))

(declare-fun m!509003 () Bool)

(assert (=> b!528428 m!509003))

(declare-fun m!509005 () Bool)

(assert (=> b!528428 m!509005))

(declare-fun m!509007 () Bool)

(assert (=> b!528440 m!509007))

(assert (=> b!528440 m!509007))

(declare-fun m!509009 () Bool)

(assert (=> b!528440 m!509009))

(assert (=> b!528427 m!509007))

(assert (=> b!528427 m!509007))

(declare-fun m!509011 () Bool)

(assert (=> b!528427 m!509011))

(declare-fun m!509013 () Bool)

(assert (=> start!48020 m!509013))

(declare-fun m!509015 () Bool)

(assert (=> start!48020 m!509015))

(declare-fun m!509017 () Bool)

(assert (=> b!528429 m!509017))

(declare-fun m!509019 () Bool)

(assert (=> b!528429 m!509019))

(declare-fun m!509021 () Bool)

(assert (=> b!528433 m!509021))

(declare-fun m!509023 () Bool)

(assert (=> b!528433 m!509023))

(assert (=> b!528433 m!509007))

(declare-fun m!509025 () Bool)

(assert (=> b!528434 m!509025))

(declare-fun m!509027 () Bool)

(assert (=> b!528434 m!509027))

(declare-fun m!509029 () Bool)

(assert (=> b!528434 m!509029))

(declare-fun m!509031 () Bool)

(assert (=> b!528434 m!509031))

(assert (=> b!528434 m!509007))

(declare-fun m!509033 () Bool)

(assert (=> b!528434 m!509033))

(assert (=> b!528434 m!509007))

(declare-fun m!509035 () Bool)

(assert (=> b!528434 m!509035))

(assert (=> b!528434 m!509007))

(declare-fun m!509037 () Bool)

(assert (=> b!528434 m!509037))

(declare-fun m!509039 () Bool)

(assert (=> b!528434 m!509039))

(declare-fun m!509041 () Bool)

(assert (=> b!528426 m!509041))

(declare-fun m!509043 () Bool)

(assert (=> b!528439 m!509043))

(assert (=> b!528431 m!509019))

(assert (=> b!528438 m!509007))

(assert (=> b!528438 m!509007))

(declare-fun m!509045 () Bool)

(assert (=> b!528438 m!509045))

(push 1)

