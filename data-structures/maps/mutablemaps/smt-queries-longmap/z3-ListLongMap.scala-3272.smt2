; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45588 () Bool)

(assert start!45588)

(declare-fun b!501472 () Bool)

(declare-fun res!303130 () Bool)

(declare-fun e!293779 () Bool)

(assert (=> b!501472 (=> (not res!303130) (not e!293779))))

(declare-datatypes ((array!32304 0))(
  ( (array!32305 (arr!15529 (Array (_ BitVec 32) (_ BitVec 64))) (size!15893 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32304)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32304 (_ BitVec 32)) Bool)

(assert (=> b!501472 (= res!303130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!303142 () Bool)

(declare-fun e!293782 () Bool)

(assert (=> start!45588 (=> (not res!303142) (not e!293782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45588 (= res!303142 (validMask!0 mask!3524))))

(assert (=> start!45588 e!293782))

(assert (=> start!45588 true))

(declare-fun array_inv!11303 (array!32304) Bool)

(assert (=> start!45588 (array_inv!11303 a!3235)))

(declare-fun b!501473 () Bool)

(declare-fun e!293777 () Bool)

(assert (=> b!501473 (= e!293777 true)))

(declare-fun lt!227844 () array!32304)

(declare-datatypes ((SeekEntryResult!4003 0))(
  ( (MissingZero!4003 (index!18200 (_ BitVec 32))) (Found!4003 (index!18201 (_ BitVec 32))) (Intermediate!4003 (undefined!4815 Bool) (index!18202 (_ BitVec 32)) (x!47263 (_ BitVec 32))) (Undefined!4003) (MissingVacant!4003 (index!18203 (_ BitVec 32))) )
))
(declare-fun lt!227842 () SeekEntryResult!4003)

(declare-fun lt!227849 () (_ BitVec 32))

(declare-fun lt!227839 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32304 (_ BitVec 32)) SeekEntryResult!4003)

(assert (=> b!501473 (= lt!227842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227849 lt!227839 lt!227844 mask!3524))))

(declare-fun b!501474 () Bool)

(declare-fun res!303139 () Bool)

(assert (=> b!501474 (=> (not res!303139) (not e!293782))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501474 (= res!303139 (validKeyInArray!0 k0!2280))))

(declare-fun b!501475 () Bool)

(declare-fun res!303133 () Bool)

(assert (=> b!501475 (=> (not res!303133) (not e!293779))))

(declare-datatypes ((List!9740 0))(
  ( (Nil!9737) (Cons!9736 (h!10613 (_ BitVec 64)) (t!15976 List!9740)) )
))
(declare-fun arrayNoDuplicates!0 (array!32304 (_ BitVec 32) List!9740) Bool)

(assert (=> b!501475 (= res!303133 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9737))))

(declare-fun b!501476 () Bool)

(declare-datatypes ((Unit!15102 0))(
  ( (Unit!15103) )
))
(declare-fun e!293785 () Unit!15102)

(declare-fun Unit!15104 () Unit!15102)

(assert (=> b!501476 (= e!293785 Unit!15104)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!227840 () Unit!15102)

(declare-fun lt!227841 () SeekEntryResult!4003)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32304 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15102)

(assert (=> b!501476 (= lt!227840 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227849 #b00000000000000000000000000000000 (index!18202 lt!227841) (x!47263 lt!227841) mask!3524))))

(declare-fun res!303132 () Bool)

(assert (=> b!501476 (= res!303132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227849 lt!227839 lt!227844 mask!3524) (Intermediate!4003 false (index!18202 lt!227841) (x!47263 lt!227841))))))

(declare-fun e!293783 () Bool)

(assert (=> b!501476 (=> (not res!303132) (not e!293783))))

(assert (=> b!501476 e!293783))

(declare-fun b!501477 () Bool)

(declare-fun res!303143 () Bool)

(assert (=> b!501477 (=> res!303143 e!293777)))

(declare-fun e!293784 () Bool)

(assert (=> b!501477 (= res!303143 e!293784)))

(declare-fun res!303135 () Bool)

(assert (=> b!501477 (=> (not res!303135) (not e!293784))))

(assert (=> b!501477 (= res!303135 (bvsgt #b00000000000000000000000000000000 (x!47263 lt!227841)))))

(declare-fun b!501478 () Bool)

(declare-fun e!293780 () Bool)

(assert (=> b!501478 (= e!293779 (not e!293780))))

(declare-fun res!303141 () Bool)

(assert (=> b!501478 (=> res!303141 e!293780)))

(declare-fun lt!227848 () (_ BitVec 32))

(assert (=> b!501478 (= res!303141 (= lt!227841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227848 lt!227839 lt!227844 mask!3524)))))

(assert (=> b!501478 (= lt!227841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227849 (select (arr!15529 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501478 (= lt!227848 (toIndex!0 lt!227839 mask!3524))))

(assert (=> b!501478 (= lt!227839 (select (store (arr!15529 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!501478 (= lt!227849 (toIndex!0 (select (arr!15529 a!3235) j!176) mask!3524))))

(assert (=> b!501478 (= lt!227844 (array!32305 (store (arr!15529 a!3235) i!1204 k0!2280) (size!15893 a!3235)))))

(declare-fun e!293781 () Bool)

(assert (=> b!501478 e!293781))

(declare-fun res!303137 () Bool)

(assert (=> b!501478 (=> (not res!303137) (not e!293781))))

(assert (=> b!501478 (= res!303137 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227845 () Unit!15102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15102)

(assert (=> b!501478 (= lt!227845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501479 () Bool)

(assert (=> b!501479 (= e!293783 false)))

(declare-fun b!501480 () Bool)

(declare-fun res!303129 () Bool)

(assert (=> b!501480 (=> res!303129 e!293780)))

(get-info :version)

(assert (=> b!501480 (= res!303129 (or (undefined!4815 lt!227841) (not ((_ is Intermediate!4003) lt!227841))))))

(declare-fun b!501481 () Bool)

(assert (=> b!501481 (= e!293780 e!293777)))

(declare-fun res!303136 () Bool)

(assert (=> b!501481 (=> res!303136 e!293777)))

(assert (=> b!501481 (= res!303136 (or (bvsgt (x!47263 lt!227841) #b01111111111111111111111111111110) (bvslt lt!227849 #b00000000000000000000000000000000) (bvsge lt!227849 (size!15893 a!3235)) (bvslt (index!18202 lt!227841) #b00000000000000000000000000000000) (bvsge (index!18202 lt!227841) (size!15893 a!3235)) (not (= lt!227841 (Intermediate!4003 false (index!18202 lt!227841) (x!47263 lt!227841))))))))

(assert (=> b!501481 (= (index!18202 lt!227841) i!1204)))

(declare-fun lt!227847 () Unit!15102)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32304 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15102)

(assert (=> b!501481 (= lt!227847 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!227849 #b00000000000000000000000000000000 (index!18202 lt!227841) (x!47263 lt!227841) mask!3524))))

(assert (=> b!501481 (and (or (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227843 () Unit!15102)

(assert (=> b!501481 (= lt!227843 e!293785)))

(declare-fun c!59450 () Bool)

(assert (=> b!501481 (= c!59450 (= (select (arr!15529 a!3235) (index!18202 lt!227841)) (select (arr!15529 a!3235) j!176)))))

(assert (=> b!501481 (and (bvslt (x!47263 lt!227841) #b01111111111111111111111111111110) (or (= (select (arr!15529 a!3235) (index!18202 lt!227841)) (select (arr!15529 a!3235) j!176)) (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15529 a!3235) (index!18202 lt!227841)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501482 () Bool)

(declare-fun Unit!15105 () Unit!15102)

(assert (=> b!501482 (= e!293785 Unit!15105)))

(declare-fun b!501483 () Bool)

(declare-fun res!303140 () Bool)

(assert (=> b!501483 (=> (not res!303140) (not e!293782))))

(assert (=> b!501483 (= res!303140 (validKeyInArray!0 (select (arr!15529 a!3235) j!176)))))

(declare-fun b!501484 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32304 (_ BitVec 32)) SeekEntryResult!4003)

(assert (=> b!501484 (= e!293781 (= (seekEntryOrOpen!0 (select (arr!15529 a!3235) j!176) a!3235 mask!3524) (Found!4003 j!176)))))

(declare-fun b!501485 () Bool)

(declare-fun res!303138 () Bool)

(assert (=> b!501485 (=> (not res!303138) (not e!293782))))

(assert (=> b!501485 (= res!303138 (and (= (size!15893 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15893 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15893 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501486 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32304 (_ BitVec 32)) SeekEntryResult!4003)

(assert (=> b!501486 (= e!293784 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227849 (index!18202 lt!227841) (select (arr!15529 a!3235) j!176) a!3235 mask!3524) (Found!4003 j!176))))))

(declare-fun b!501487 () Bool)

(declare-fun res!303134 () Bool)

(assert (=> b!501487 (=> (not res!303134) (not e!293782))))

(declare-fun arrayContainsKey!0 (array!32304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501487 (= res!303134 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501488 () Bool)

(assert (=> b!501488 (= e!293782 e!293779)))

(declare-fun res!303131 () Bool)

(assert (=> b!501488 (=> (not res!303131) (not e!293779))))

(declare-fun lt!227846 () SeekEntryResult!4003)

(assert (=> b!501488 (= res!303131 (or (= lt!227846 (MissingZero!4003 i!1204)) (= lt!227846 (MissingVacant!4003 i!1204))))))

(assert (=> b!501488 (= lt!227846 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45588 res!303142) b!501485))

(assert (= (and b!501485 res!303138) b!501483))

(assert (= (and b!501483 res!303140) b!501474))

(assert (= (and b!501474 res!303139) b!501487))

(assert (= (and b!501487 res!303134) b!501488))

(assert (= (and b!501488 res!303131) b!501472))

(assert (= (and b!501472 res!303130) b!501475))

(assert (= (and b!501475 res!303133) b!501478))

(assert (= (and b!501478 res!303137) b!501484))

(assert (= (and b!501478 (not res!303141)) b!501480))

(assert (= (and b!501480 (not res!303129)) b!501481))

(assert (= (and b!501481 c!59450) b!501476))

(assert (= (and b!501481 (not c!59450)) b!501482))

(assert (= (and b!501476 res!303132) b!501479))

(assert (= (and b!501481 (not res!303136)) b!501477))

(assert (= (and b!501477 res!303135) b!501486))

(assert (= (and b!501477 (not res!303143)) b!501473))

(declare-fun m!482519 () Bool)

(assert (=> b!501478 m!482519))

(declare-fun m!482521 () Bool)

(assert (=> b!501478 m!482521))

(declare-fun m!482523 () Bool)

(assert (=> b!501478 m!482523))

(declare-fun m!482525 () Bool)

(assert (=> b!501478 m!482525))

(assert (=> b!501478 m!482523))

(declare-fun m!482527 () Bool)

(assert (=> b!501478 m!482527))

(assert (=> b!501478 m!482523))

(declare-fun m!482529 () Bool)

(assert (=> b!501478 m!482529))

(declare-fun m!482531 () Bool)

(assert (=> b!501478 m!482531))

(declare-fun m!482533 () Bool)

(assert (=> b!501478 m!482533))

(declare-fun m!482535 () Bool)

(assert (=> b!501478 m!482535))

(declare-fun m!482537 () Bool)

(assert (=> start!45588 m!482537))

(declare-fun m!482539 () Bool)

(assert (=> start!45588 m!482539))

(declare-fun m!482541 () Bool)

(assert (=> b!501488 m!482541))

(assert (=> b!501484 m!482523))

(assert (=> b!501484 m!482523))

(declare-fun m!482543 () Bool)

(assert (=> b!501484 m!482543))

(assert (=> b!501486 m!482523))

(assert (=> b!501486 m!482523))

(declare-fun m!482545 () Bool)

(assert (=> b!501486 m!482545))

(declare-fun m!482547 () Bool)

(assert (=> b!501474 m!482547))

(declare-fun m!482549 () Bool)

(assert (=> b!501481 m!482549))

(declare-fun m!482551 () Bool)

(assert (=> b!501481 m!482551))

(assert (=> b!501481 m!482523))

(declare-fun m!482553 () Bool)

(assert (=> b!501473 m!482553))

(declare-fun m!482555 () Bool)

(assert (=> b!501476 m!482555))

(assert (=> b!501476 m!482553))

(declare-fun m!482557 () Bool)

(assert (=> b!501472 m!482557))

(assert (=> b!501483 m!482523))

(assert (=> b!501483 m!482523))

(declare-fun m!482559 () Bool)

(assert (=> b!501483 m!482559))

(declare-fun m!482561 () Bool)

(assert (=> b!501475 m!482561))

(declare-fun m!482563 () Bool)

(assert (=> b!501487 m!482563))

(check-sat (not b!501484) (not b!501486) (not b!501478) (not b!501476) (not b!501474) (not start!45588) (not b!501472) (not b!501473) (not b!501475) (not b!501483) (not b!501487) (not b!501481) (not b!501488))
(check-sat)
