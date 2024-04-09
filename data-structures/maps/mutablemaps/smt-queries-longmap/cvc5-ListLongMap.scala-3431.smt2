; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47716 () Bool)

(assert start!47716)

(declare-fun b!524424 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33313 0))(
  ( (array!33314 (arr!16005 (Array (_ BitVec 32) (_ BitVec 64))) (size!16369 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33313)

(declare-fun e!305841 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4479 0))(
  ( (MissingZero!4479 (index!20128 (_ BitVec 32))) (Found!4479 (index!20129 (_ BitVec 32))) (Intermediate!4479 (undefined!5291 Bool) (index!20130 (_ BitVec 32)) (x!49143 (_ BitVec 32))) (Undefined!4479) (MissingVacant!4479 (index!20131 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33313 (_ BitVec 32)) SeekEntryResult!4479)

(assert (=> b!524424 (= e!305841 (= (seekEntryOrOpen!0 (select (arr!16005 a!3235) j!176) a!3235 mask!3524) (Found!4479 j!176)))))

(declare-fun lt!240772 () (_ BitVec 32))

(declare-fun lt!240769 () array!33313)

(declare-fun lt!240777 () SeekEntryResult!4479)

(declare-fun b!524425 () Bool)

(declare-fun lt!240775 () (_ BitVec 64))

(declare-fun e!305842 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33313 (_ BitVec 32)) SeekEntryResult!4479)

(assert (=> b!524425 (= e!305842 (not (= lt!240777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240772 lt!240775 lt!240769 mask!3524))))))

(declare-fun b!524426 () Bool)

(declare-fun res!321456 () Bool)

(declare-fun e!305845 () Bool)

(assert (=> b!524426 (=> res!321456 e!305845)))

(assert (=> b!524426 (= res!321456 (or (undefined!5291 lt!240777) (not (is-Intermediate!4479 lt!240777))))))

(declare-fun b!524427 () Bool)

(declare-fun e!305840 () Bool)

(assert (=> b!524427 (= e!305840 (not e!305845))))

(declare-fun res!321462 () Bool)

(assert (=> b!524427 (=> res!321462 e!305845)))

(declare-fun lt!240770 () (_ BitVec 32))

(assert (=> b!524427 (= res!321462 (= lt!240777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240770 lt!240775 lt!240769 mask!3524)))))

(assert (=> b!524427 (= lt!240777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240772 (select (arr!16005 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524427 (= lt!240770 (toIndex!0 lt!240775 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524427 (= lt!240775 (select (store (arr!16005 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524427 (= lt!240772 (toIndex!0 (select (arr!16005 a!3235) j!176) mask!3524))))

(assert (=> b!524427 (= lt!240769 (array!33314 (store (arr!16005 a!3235) i!1204 k!2280) (size!16369 a!3235)))))

(assert (=> b!524427 e!305841))

(declare-fun res!321463 () Bool)

(assert (=> b!524427 (=> (not res!321463) (not e!305841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33313 (_ BitVec 32)) Bool)

(assert (=> b!524427 (= res!321463 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16382 0))(
  ( (Unit!16383) )
))
(declare-fun lt!240776 () Unit!16382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16382)

(assert (=> b!524427 (= lt!240776 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524428 () Bool)

(declare-fun res!321466 () Bool)

(declare-fun e!305838 () Bool)

(assert (=> b!524428 (=> (not res!321466) (not e!305838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524428 (= res!321466 (validKeyInArray!0 k!2280))))

(declare-fun res!321465 () Bool)

(assert (=> start!47716 (=> (not res!321465) (not e!305838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47716 (= res!321465 (validMask!0 mask!3524))))

(assert (=> start!47716 e!305838))

(assert (=> start!47716 true))

(declare-fun array_inv!11779 (array!33313) Bool)

(assert (=> start!47716 (array_inv!11779 a!3235)))

(declare-fun b!524429 () Bool)

(declare-fun res!321461 () Bool)

(assert (=> b!524429 (=> (not res!321461) (not e!305838))))

(assert (=> b!524429 (= res!321461 (and (= (size!16369 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16369 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16369 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524430 () Bool)

(declare-fun res!321459 () Bool)

(assert (=> b!524430 (=> (not res!321459) (not e!305838))))

(declare-fun arrayContainsKey!0 (array!33313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524430 (= res!321459 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524431 () Bool)

(assert (=> b!524431 (= e!305838 e!305840)))

(declare-fun res!321457 () Bool)

(assert (=> b!524431 (=> (not res!321457) (not e!305840))))

(declare-fun lt!240771 () SeekEntryResult!4479)

(assert (=> b!524431 (= res!321457 (or (= lt!240771 (MissingZero!4479 i!1204)) (= lt!240771 (MissingVacant!4479 i!1204))))))

(assert (=> b!524431 (= lt!240771 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524432 () Bool)

(declare-fun e!305839 () Unit!16382)

(declare-fun Unit!16384 () Unit!16382)

(assert (=> b!524432 (= e!305839 Unit!16384)))

(declare-fun b!524433 () Bool)

(declare-fun res!321455 () Bool)

(assert (=> b!524433 (=> (not res!321455) (not e!305840))))

(declare-datatypes ((List!10216 0))(
  ( (Nil!10213) (Cons!10212 (h!11143 (_ BitVec 64)) (t!16452 List!10216)) )
))
(declare-fun arrayNoDuplicates!0 (array!33313 (_ BitVec 32) List!10216) Bool)

(assert (=> b!524433 (= res!321455 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10213))))

(declare-fun b!524434 () Bool)

(declare-fun res!321458 () Bool)

(assert (=> b!524434 (=> (not res!321458) (not e!305838))))

(assert (=> b!524434 (= res!321458 (validKeyInArray!0 (select (arr!16005 a!3235) j!176)))))

(declare-fun b!524435 () Bool)

(declare-fun res!321460 () Bool)

(assert (=> b!524435 (=> (not res!321460) (not e!305840))))

(assert (=> b!524435 (= res!321460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524436 () Bool)

(assert (=> b!524436 (= e!305845 e!305842)))

(declare-fun res!321464 () Bool)

(assert (=> b!524436 (=> res!321464 e!305842)))

(assert (=> b!524436 (= res!321464 (or (bvsgt #b00000000000000000000000000000000 (x!49143 lt!240777)) (bvsgt (x!49143 lt!240777) #b01111111111111111111111111111110) (bvslt lt!240772 #b00000000000000000000000000000000) (bvsge lt!240772 (size!16369 a!3235)) (bvslt (index!20130 lt!240777) #b00000000000000000000000000000000) (bvsge (index!20130 lt!240777) (size!16369 a!3235)) (not (= lt!240777 (Intermediate!4479 false (index!20130 lt!240777) (x!49143 lt!240777))))))))

(declare-fun lt!240773 () Bool)

(declare-fun lt!240778 () (_ BitVec 64))

(assert (=> b!524436 (and (or lt!240773 (= lt!240778 #b1000000000000000000000000000000000000000000000000000000000000000)) (not lt!240773) (= lt!240778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!524436 (= lt!240773 (= lt!240778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240774 () Unit!16382)

(assert (=> b!524436 (= lt!240774 e!305839)))

(declare-fun c!61790 () Bool)

(assert (=> b!524436 (= c!61790 (= lt!240778 (select (arr!16005 a!3235) j!176)))))

(assert (=> b!524436 (= lt!240778 (select (arr!16005 a!3235) (index!20130 lt!240777)))))

(assert (=> b!524436 (and (bvslt (x!49143 lt!240777) #b01111111111111111111111111111110) (let ((bdg!15564 (select (arr!16005 a!3235) (index!20130 lt!240777)))) (or (= bdg!15564 (select (arr!16005 a!3235) j!176)) (= bdg!15564 #b0000000000000000000000000000000000000000000000000000000000000000) (= bdg!15564 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!524437 () Bool)

(declare-fun Unit!16385 () Unit!16382)

(assert (=> b!524437 (= e!305839 Unit!16385)))

(declare-fun lt!240779 () Unit!16382)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33313 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16382)

(assert (=> b!524437 (= lt!240779 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240772 #b00000000000000000000000000000000 (index!20130 lt!240777) (x!49143 lt!240777) mask!3524))))

(declare-fun res!321467 () Bool)

(assert (=> b!524437 (= res!321467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240772 lt!240775 lt!240769 mask!3524) (Intermediate!4479 false (index!20130 lt!240777) (x!49143 lt!240777))))))

(declare-fun e!305844 () Bool)

(assert (=> b!524437 (=> (not res!321467) (not e!305844))))

(assert (=> b!524437 e!305844))

(declare-fun b!524438 () Bool)

(assert (=> b!524438 (= e!305844 false)))

(assert (= (and start!47716 res!321465) b!524429))

(assert (= (and b!524429 res!321461) b!524434))

(assert (= (and b!524434 res!321458) b!524428))

(assert (= (and b!524428 res!321466) b!524430))

(assert (= (and b!524430 res!321459) b!524431))

(assert (= (and b!524431 res!321457) b!524435))

(assert (= (and b!524435 res!321460) b!524433))

(assert (= (and b!524433 res!321455) b!524427))

(assert (= (and b!524427 res!321463) b!524424))

(assert (= (and b!524427 (not res!321462)) b!524426))

(assert (= (and b!524426 (not res!321456)) b!524436))

(assert (= (and b!524436 c!61790) b!524437))

(assert (= (and b!524436 (not c!61790)) b!524432))

(assert (= (and b!524437 res!321467) b!524438))

(assert (= (and b!524436 (not res!321464)) b!524425))

(declare-fun m!505093 () Bool)

(assert (=> b!524425 m!505093))

(declare-fun m!505095 () Bool)

(assert (=> b!524427 m!505095))

(declare-fun m!505097 () Bool)

(assert (=> b!524427 m!505097))

(declare-fun m!505099 () Bool)

(assert (=> b!524427 m!505099))

(declare-fun m!505101 () Bool)

(assert (=> b!524427 m!505101))

(declare-fun m!505103 () Bool)

(assert (=> b!524427 m!505103))

(declare-fun m!505105 () Bool)

(assert (=> b!524427 m!505105))

(assert (=> b!524427 m!505095))

(declare-fun m!505107 () Bool)

(assert (=> b!524427 m!505107))

(assert (=> b!524427 m!505095))

(declare-fun m!505109 () Bool)

(assert (=> b!524427 m!505109))

(declare-fun m!505111 () Bool)

(assert (=> b!524427 m!505111))

(declare-fun m!505113 () Bool)

(assert (=> b!524435 m!505113))

(assert (=> b!524424 m!505095))

(assert (=> b!524424 m!505095))

(declare-fun m!505115 () Bool)

(assert (=> b!524424 m!505115))

(declare-fun m!505117 () Bool)

(assert (=> start!47716 m!505117))

(declare-fun m!505119 () Bool)

(assert (=> start!47716 m!505119))

(declare-fun m!505121 () Bool)

(assert (=> b!524431 m!505121))

(declare-fun m!505123 () Bool)

(assert (=> b!524430 m!505123))

(assert (=> b!524436 m!505095))

(declare-fun m!505125 () Bool)

(assert (=> b!524436 m!505125))

(declare-fun m!505127 () Bool)

(assert (=> b!524428 m!505127))

(declare-fun m!505129 () Bool)

(assert (=> b!524437 m!505129))

(assert (=> b!524437 m!505093))

(declare-fun m!505131 () Bool)

(assert (=> b!524433 m!505131))

(assert (=> b!524434 m!505095))

(assert (=> b!524434 m!505095))

(declare-fun m!505133 () Bool)

(assert (=> b!524434 m!505133))

(push 1)

