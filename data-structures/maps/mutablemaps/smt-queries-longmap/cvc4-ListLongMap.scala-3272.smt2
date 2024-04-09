; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45590 () Bool)

(assert start!45590)

(declare-fun b!501523 () Bool)

(declare-fun res!303176 () Bool)

(declare-fun e!293811 () Bool)

(assert (=> b!501523 (=> res!303176 e!293811)))

(declare-fun e!293810 () Bool)

(assert (=> b!501523 (= res!303176 e!293810)))

(declare-fun res!303184 () Bool)

(assert (=> b!501523 (=> (not res!303184) (not e!293810))))

(declare-datatypes ((SeekEntryResult!4004 0))(
  ( (MissingZero!4004 (index!18204 (_ BitVec 32))) (Found!4004 (index!18205 (_ BitVec 32))) (Intermediate!4004 (undefined!4816 Bool) (index!18206 (_ BitVec 32)) (x!47264 (_ BitVec 32))) (Undefined!4004) (MissingVacant!4004 (index!18207 (_ BitVec 32))) )
))
(declare-fun lt!227879 () SeekEntryResult!4004)

(assert (=> b!501523 (= res!303184 (bvsgt #b00000000000000000000000000000000 (x!47264 lt!227879)))))

(declare-fun b!501524 () Bool)

(declare-fun res!303174 () Bool)

(declare-fun e!293812 () Bool)

(assert (=> b!501524 (=> (not res!303174) (not e!293812))))

(declare-datatypes ((array!32306 0))(
  ( (array!32307 (arr!15530 (Array (_ BitVec 32) (_ BitVec 64))) (size!15894 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32306)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501524 (= res!303174 (validKeyInArray!0 (select (arr!15530 a!3235) j!176)))))

(declare-fun b!501525 () Bool)

(declare-fun res!303186 () Bool)

(assert (=> b!501525 (=> (not res!303186) (not e!293812))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501525 (= res!303186 (and (= (size!15894 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15894 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15894 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501526 () Bool)

(declare-fun res!303183 () Bool)

(assert (=> b!501526 (=> (not res!303183) (not e!293812))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501526 (= res!303183 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501527 () Bool)

(declare-datatypes ((Unit!15106 0))(
  ( (Unit!15107) )
))
(declare-fun e!293809 () Unit!15106)

(declare-fun Unit!15108 () Unit!15106)

(assert (=> b!501527 (= e!293809 Unit!15108)))

(declare-fun b!501528 () Bool)

(declare-fun res!303177 () Bool)

(declare-fun e!293807 () Bool)

(assert (=> b!501528 (=> res!303177 e!293807)))

(assert (=> b!501528 (= res!303177 (or (undefined!4816 lt!227879) (not (is-Intermediate!4004 lt!227879))))))

(declare-fun b!501529 () Bool)

(declare-fun e!293805 () Bool)

(assert (=> b!501529 (= e!293805 false)))

(declare-fun b!501531 () Bool)

(declare-fun e!293808 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32306 (_ BitVec 32)) SeekEntryResult!4004)

(assert (=> b!501531 (= e!293808 (= (seekEntryOrOpen!0 (select (arr!15530 a!3235) j!176) a!3235 mask!3524) (Found!4004 j!176)))))

(declare-fun b!501532 () Bool)

(declare-fun e!293806 () Bool)

(assert (=> b!501532 (= e!293812 e!293806)))

(declare-fun res!303175 () Bool)

(assert (=> b!501532 (=> (not res!303175) (not e!293806))))

(declare-fun lt!227880 () SeekEntryResult!4004)

(assert (=> b!501532 (= res!303175 (or (= lt!227880 (MissingZero!4004 i!1204)) (= lt!227880 (MissingVacant!4004 i!1204))))))

(assert (=> b!501532 (= lt!227880 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501533 () Bool)

(assert (=> b!501533 (= e!293807 e!293811)))

(declare-fun res!303182 () Bool)

(assert (=> b!501533 (=> res!303182 e!293811)))

(declare-fun lt!227876 () (_ BitVec 32))

(assert (=> b!501533 (= res!303182 (or (bvsgt (x!47264 lt!227879) #b01111111111111111111111111111110) (bvslt lt!227876 #b00000000000000000000000000000000) (bvsge lt!227876 (size!15894 a!3235)) (bvslt (index!18206 lt!227879) #b00000000000000000000000000000000) (bvsge (index!18206 lt!227879) (size!15894 a!3235)) (not (= lt!227879 (Intermediate!4004 false (index!18206 lt!227879) (x!47264 lt!227879))))))))

(assert (=> b!501533 (= (index!18206 lt!227879) i!1204)))

(declare-fun lt!227877 () Unit!15106)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32306 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15106)

(assert (=> b!501533 (= lt!227877 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227876 #b00000000000000000000000000000000 (index!18206 lt!227879) (x!47264 lt!227879) mask!3524))))

(assert (=> b!501533 (and (or (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227882 () Unit!15106)

(assert (=> b!501533 (= lt!227882 e!293809)))

(declare-fun c!59453 () Bool)

(assert (=> b!501533 (= c!59453 (= (select (arr!15530 a!3235) (index!18206 lt!227879)) (select (arr!15530 a!3235) j!176)))))

(assert (=> b!501533 (and (bvslt (x!47264 lt!227879) #b01111111111111111111111111111110) (or (= (select (arr!15530 a!3235) (index!18206 lt!227879)) (select (arr!15530 a!3235) j!176)) (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15530 a!3235) (index!18206 lt!227879)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501534 () Bool)

(assert (=> b!501534 (= e!293811 true)))

(declare-fun lt!227872 () (_ BitVec 64))

(declare-fun lt!227881 () array!32306)

(declare-fun lt!227874 () SeekEntryResult!4004)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32306 (_ BitVec 32)) SeekEntryResult!4004)

(assert (=> b!501534 (= lt!227874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227876 lt!227872 lt!227881 mask!3524))))

(declare-fun b!501535 () Bool)

(declare-fun Unit!15109 () Unit!15106)

(assert (=> b!501535 (= e!293809 Unit!15109)))

(declare-fun lt!227878 () Unit!15106)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32306 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15106)

(assert (=> b!501535 (= lt!227878 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227876 #b00000000000000000000000000000000 (index!18206 lt!227879) (x!47264 lt!227879) mask!3524))))

(declare-fun res!303178 () Bool)

(assert (=> b!501535 (= res!303178 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227876 lt!227872 lt!227881 mask!3524) (Intermediate!4004 false (index!18206 lt!227879) (x!47264 lt!227879))))))

(assert (=> b!501535 (=> (not res!303178) (not e!293805))))

(assert (=> b!501535 e!293805))

(declare-fun b!501536 () Bool)

(declare-fun res!303187 () Bool)

(assert (=> b!501536 (=> (not res!303187) (not e!293812))))

(assert (=> b!501536 (= res!303187 (validKeyInArray!0 k!2280))))

(declare-fun b!501537 () Bool)

(declare-fun res!303180 () Bool)

(assert (=> b!501537 (=> (not res!303180) (not e!293806))))

(declare-datatypes ((List!9741 0))(
  ( (Nil!9738) (Cons!9737 (h!10614 (_ BitVec 64)) (t!15977 List!9741)) )
))
(declare-fun arrayNoDuplicates!0 (array!32306 (_ BitVec 32) List!9741) Bool)

(assert (=> b!501537 (= res!303180 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9738))))

(declare-fun b!501538 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32306 (_ BitVec 32)) SeekEntryResult!4004)

(assert (=> b!501538 (= e!293810 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227876 (index!18206 lt!227879) (select (arr!15530 a!3235) j!176) a!3235 mask!3524) (Found!4004 j!176))))))

(declare-fun b!501539 () Bool)

(declare-fun res!303185 () Bool)

(assert (=> b!501539 (=> (not res!303185) (not e!293806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32306 (_ BitVec 32)) Bool)

(assert (=> b!501539 (= res!303185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501530 () Bool)

(assert (=> b!501530 (= e!293806 (not e!293807))))

(declare-fun res!303179 () Bool)

(assert (=> b!501530 (=> res!303179 e!293807)))

(declare-fun lt!227873 () (_ BitVec 32))

(assert (=> b!501530 (= res!303179 (= lt!227879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227873 lt!227872 lt!227881 mask!3524)))))

(assert (=> b!501530 (= lt!227879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227876 (select (arr!15530 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501530 (= lt!227873 (toIndex!0 lt!227872 mask!3524))))

(assert (=> b!501530 (= lt!227872 (select (store (arr!15530 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501530 (= lt!227876 (toIndex!0 (select (arr!15530 a!3235) j!176) mask!3524))))

(assert (=> b!501530 (= lt!227881 (array!32307 (store (arr!15530 a!3235) i!1204 k!2280) (size!15894 a!3235)))))

(assert (=> b!501530 e!293808))

(declare-fun res!303188 () Bool)

(assert (=> b!501530 (=> (not res!303188) (not e!293808))))

(assert (=> b!501530 (= res!303188 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227875 () Unit!15106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32306 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15106)

(assert (=> b!501530 (= lt!227875 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!303181 () Bool)

(assert (=> start!45590 (=> (not res!303181) (not e!293812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45590 (= res!303181 (validMask!0 mask!3524))))

(assert (=> start!45590 e!293812))

(assert (=> start!45590 true))

(declare-fun array_inv!11304 (array!32306) Bool)

(assert (=> start!45590 (array_inv!11304 a!3235)))

(assert (= (and start!45590 res!303181) b!501525))

(assert (= (and b!501525 res!303186) b!501524))

(assert (= (and b!501524 res!303174) b!501536))

(assert (= (and b!501536 res!303187) b!501526))

(assert (= (and b!501526 res!303183) b!501532))

(assert (= (and b!501532 res!303175) b!501539))

(assert (= (and b!501539 res!303185) b!501537))

(assert (= (and b!501537 res!303180) b!501530))

(assert (= (and b!501530 res!303188) b!501531))

(assert (= (and b!501530 (not res!303179)) b!501528))

(assert (= (and b!501528 (not res!303177)) b!501533))

(assert (= (and b!501533 c!59453) b!501535))

(assert (= (and b!501533 (not c!59453)) b!501527))

(assert (= (and b!501535 res!303178) b!501529))

(assert (= (and b!501533 (not res!303182)) b!501523))

(assert (= (and b!501523 res!303184) b!501538))

(assert (= (and b!501523 (not res!303176)) b!501534))

(declare-fun m!482565 () Bool)

(assert (=> b!501530 m!482565))

(declare-fun m!482567 () Bool)

(assert (=> b!501530 m!482567))

(declare-fun m!482569 () Bool)

(assert (=> b!501530 m!482569))

(declare-fun m!482571 () Bool)

(assert (=> b!501530 m!482571))

(declare-fun m!482573 () Bool)

(assert (=> b!501530 m!482573))

(assert (=> b!501530 m!482569))

(declare-fun m!482575 () Bool)

(assert (=> b!501530 m!482575))

(declare-fun m!482577 () Bool)

(assert (=> b!501530 m!482577))

(assert (=> b!501530 m!482569))

(declare-fun m!482579 () Bool)

(assert (=> b!501530 m!482579))

(declare-fun m!482581 () Bool)

(assert (=> b!501530 m!482581))

(assert (=> b!501538 m!482569))

(assert (=> b!501538 m!482569))

(declare-fun m!482583 () Bool)

(assert (=> b!501538 m!482583))

(declare-fun m!482585 () Bool)

(assert (=> start!45590 m!482585))

(declare-fun m!482587 () Bool)

(assert (=> start!45590 m!482587))

(declare-fun m!482589 () Bool)

(assert (=> b!501532 m!482589))

(declare-fun m!482591 () Bool)

(assert (=> b!501526 m!482591))

(assert (=> b!501524 m!482569))

(assert (=> b!501524 m!482569))

(declare-fun m!482593 () Bool)

(assert (=> b!501524 m!482593))

(declare-fun m!482595 () Bool)

(assert (=> b!501536 m!482595))

(declare-fun m!482597 () Bool)

(assert (=> b!501533 m!482597))

(declare-fun m!482599 () Bool)

(assert (=> b!501533 m!482599))

(assert (=> b!501533 m!482569))

(declare-fun m!482601 () Bool)

(assert (=> b!501539 m!482601))

(declare-fun m!482603 () Bool)

(assert (=> b!501534 m!482603))

(declare-fun m!482605 () Bool)

(assert (=> b!501535 m!482605))

(assert (=> b!501535 m!482603))

(assert (=> b!501531 m!482569))

(assert (=> b!501531 m!482569))

(declare-fun m!482607 () Bool)

(assert (=> b!501531 m!482607))

(declare-fun m!482609 () Bool)

(assert (=> b!501537 m!482609))

(push 1)

(assert (not b!501534))

(assert (not b!501539))

(assert (not b!501538))

(assert (not b!501530))

(assert (not b!501533))

(assert (not start!45590))

(assert (not b!501526))

(assert (not b!501531))

(assert (not b!501536))

(assert (not b!501524))

(assert (not b!501535))

