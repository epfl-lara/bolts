; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48032 () Bool)

(assert start!48032)

(declare-fun b!528730 () Bool)

(declare-datatypes ((Unit!16714 0))(
  ( (Unit!16715) )
))
(declare-fun e!308116 () Unit!16714)

(declare-fun Unit!16716 () Unit!16714)

(assert (=> b!528730 (= e!308116 Unit!16716)))

(declare-fun lt!243683 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4562 0))(
  ( (MissingZero!4562 (index!20472 (_ BitVec 32))) (Found!4562 (index!20473 (_ BitVec 32))) (Intermediate!4562 (undefined!5374 Bool) (index!20474 (_ BitVec 32)) (x!49469 (_ BitVec 32))) (Undefined!4562) (MissingVacant!4562 (index!20475 (_ BitVec 32))) )
))
(declare-fun lt!243682 () SeekEntryResult!4562)

(declare-datatypes ((array!33485 0))(
  ( (array!33486 (arr!16088 (Array (_ BitVec 32) (_ BitVec 64))) (size!16452 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33485)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!243688 () Unit!16714)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16714)

(assert (=> b!528730 (= lt!243688 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243683 #b00000000000000000000000000000000 (index!20474 lt!243682) (x!49469 lt!243682) mask!3524))))

(declare-fun res!324809 () Bool)

(declare-fun lt!243680 () (_ BitVec 64))

(declare-fun lt!243685 () array!33485)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33485 (_ BitVec 32)) SeekEntryResult!4562)

(assert (=> b!528730 (= res!324809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243683 lt!243680 lt!243685 mask!3524) (Intermediate!4562 false (index!20474 lt!243682) (x!49469 lt!243682))))))

(declare-fun e!308121 () Bool)

(assert (=> b!528730 (=> (not res!324809) (not e!308121))))

(assert (=> b!528730 e!308121))

(declare-fun b!528731 () Bool)

(declare-fun e!308118 () Bool)

(declare-fun e!308117 () Bool)

(assert (=> b!528731 (= e!308118 (not e!308117))))

(declare-fun res!324814 () Bool)

(assert (=> b!528731 (=> res!324814 e!308117)))

(declare-fun lt!243689 () SeekEntryResult!4562)

(assert (=> b!528731 (= res!324814 (or (= lt!243682 lt!243689) (undefined!5374 lt!243682) (not (is-Intermediate!4562 lt!243682))))))

(declare-fun lt!243681 () (_ BitVec 32))

(assert (=> b!528731 (= lt!243689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243681 lt!243680 lt!243685 mask!3524))))

(assert (=> b!528731 (= lt!243682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243683 (select (arr!16088 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528731 (= lt!243681 (toIndex!0 lt!243680 mask!3524))))

(assert (=> b!528731 (= lt!243680 (select (store (arr!16088 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528731 (= lt!243683 (toIndex!0 (select (arr!16088 a!3235) j!176) mask!3524))))

(assert (=> b!528731 (= lt!243685 (array!33486 (store (arr!16088 a!3235) i!1204 k!2280) (size!16452 a!3235)))))

(declare-fun lt!243678 () SeekEntryResult!4562)

(assert (=> b!528731 (= lt!243678 (Found!4562 j!176))))

(declare-fun e!308119 () Bool)

(assert (=> b!528731 e!308119))

(declare-fun res!324820 () Bool)

(assert (=> b!528731 (=> (not res!324820) (not e!308119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33485 (_ BitVec 32)) Bool)

(assert (=> b!528731 (= res!324820 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243679 () Unit!16714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16714)

(assert (=> b!528731 (= lt!243679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528732 () Bool)

(declare-fun res!324812 () Bool)

(declare-fun e!308115 () Bool)

(assert (=> b!528732 (=> res!324812 e!308115)))

(declare-fun e!308114 () Bool)

(assert (=> b!528732 (= res!324812 e!308114)))

(declare-fun res!324813 () Bool)

(assert (=> b!528732 (=> (not res!324813) (not e!308114))))

(assert (=> b!528732 (= res!324813 (bvsgt #b00000000000000000000000000000000 (x!49469 lt!243682)))))

(declare-fun b!528733 () Bool)

(declare-fun res!324821 () Bool)

(declare-fun e!308122 () Bool)

(assert (=> b!528733 (=> (not res!324821) (not e!308122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528733 (= res!324821 (validKeyInArray!0 k!2280))))

(declare-fun b!528734 () Bool)

(assert (=> b!528734 (= e!308122 e!308118)))

(declare-fun res!324810 () Bool)

(assert (=> b!528734 (=> (not res!324810) (not e!308118))))

(declare-fun lt!243687 () SeekEntryResult!4562)

(assert (=> b!528734 (= res!324810 (or (= lt!243687 (MissingZero!4562 i!1204)) (= lt!243687 (MissingVacant!4562 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33485 (_ BitVec 32)) SeekEntryResult!4562)

(assert (=> b!528734 (= lt!243687 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528735 () Bool)

(assert (=> b!528735 (= e!308119 (= (seekEntryOrOpen!0 (select (arr!16088 a!3235) j!176) a!3235 mask!3524) (Found!4562 j!176)))))

(declare-fun res!324817 () Bool)

(assert (=> start!48032 (=> (not res!324817) (not e!308122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48032 (= res!324817 (validMask!0 mask!3524))))

(assert (=> start!48032 e!308122))

(assert (=> start!48032 true))

(declare-fun array_inv!11862 (array!33485) Bool)

(assert (=> start!48032 (array_inv!11862 a!3235)))

(declare-fun b!528736 () Bool)

(assert (=> b!528736 (= e!308115 true)))

(assert (=> b!528736 (= (seekEntryOrOpen!0 lt!243680 lt!243685 mask!3524) lt!243678)))

(declare-fun lt!243684 () Unit!16714)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16714)

(assert (=> b!528736 (= lt!243684 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243683 #b00000000000000000000000000000000 (index!20474 lt!243682) (x!49469 lt!243682) mask!3524))))

(declare-fun b!528737 () Bool)

(declare-fun Unit!16717 () Unit!16714)

(assert (=> b!528737 (= e!308116 Unit!16717)))

(declare-fun b!528738 () Bool)

(assert (=> b!528738 (= e!308117 e!308115)))

(declare-fun res!324808 () Bool)

(assert (=> b!528738 (=> res!324808 e!308115)))

(assert (=> b!528738 (= res!324808 (or (bvsgt (x!49469 lt!243682) #b01111111111111111111111111111110) (bvslt lt!243683 #b00000000000000000000000000000000) (bvsge lt!243683 (size!16452 a!3235)) (bvslt (index!20474 lt!243682) #b00000000000000000000000000000000) (bvsge (index!20474 lt!243682) (size!16452 a!3235)) (not (= lt!243682 (Intermediate!4562 false (index!20474 lt!243682) (x!49469 lt!243682))))))))

(assert (=> b!528738 (= (index!20474 lt!243682) i!1204)))

(declare-fun lt!243677 () Unit!16714)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16714)

(assert (=> b!528738 (= lt!243677 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243683 #b00000000000000000000000000000000 (index!20474 lt!243682) (x!49469 lt!243682) mask!3524))))

(assert (=> b!528738 (and (or (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243686 () Unit!16714)

(assert (=> b!528738 (= lt!243686 e!308116)))

(declare-fun c!62270 () Bool)

(assert (=> b!528738 (= c!62270 (= (select (arr!16088 a!3235) (index!20474 lt!243682)) (select (arr!16088 a!3235) j!176)))))

(assert (=> b!528738 (and (bvslt (x!49469 lt!243682) #b01111111111111111111111111111110) (or (= (select (arr!16088 a!3235) (index!20474 lt!243682)) (select (arr!16088 a!3235) j!176)) (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16088 a!3235) (index!20474 lt!243682)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528739 () Bool)

(declare-fun res!324818 () Bool)

(assert (=> b!528739 (=> (not res!324818) (not e!308122))))

(assert (=> b!528739 (= res!324818 (and (= (size!16452 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16452 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16452 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528740 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33485 (_ BitVec 32)) SeekEntryResult!4562)

(assert (=> b!528740 (= e!308114 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243683 (index!20474 lt!243682) (select (arr!16088 a!3235) j!176) a!3235 mask!3524) lt!243678)))))

(declare-fun b!528741 () Bool)

(assert (=> b!528741 (= e!308121 false)))

(declare-fun b!528742 () Bool)

(declare-fun res!324816 () Bool)

(assert (=> b!528742 (=> (not res!324816) (not e!308118))))

(assert (=> b!528742 (= res!324816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528743 () Bool)

(declare-fun res!324807 () Bool)

(assert (=> b!528743 (=> res!324807 e!308115)))

(assert (=> b!528743 (= res!324807 (not (= lt!243689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243683 lt!243680 lt!243685 mask!3524))))))

(declare-fun b!528744 () Bool)

(declare-fun res!324819 () Bool)

(assert (=> b!528744 (=> (not res!324819) (not e!308118))))

(declare-datatypes ((List!10299 0))(
  ( (Nil!10296) (Cons!10295 (h!11232 (_ BitVec 64)) (t!16535 List!10299)) )
))
(declare-fun arrayNoDuplicates!0 (array!33485 (_ BitVec 32) List!10299) Bool)

(assert (=> b!528744 (= res!324819 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10296))))

(declare-fun b!528745 () Bool)

(declare-fun res!324811 () Bool)

(assert (=> b!528745 (=> (not res!324811) (not e!308122))))

(assert (=> b!528745 (= res!324811 (validKeyInArray!0 (select (arr!16088 a!3235) j!176)))))

(declare-fun b!528746 () Bool)

(declare-fun res!324815 () Bool)

(assert (=> b!528746 (=> (not res!324815) (not e!308122))))

(declare-fun arrayContainsKey!0 (array!33485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528746 (= res!324815 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!48032 res!324817) b!528739))

(assert (= (and b!528739 res!324818) b!528745))

(assert (= (and b!528745 res!324811) b!528733))

(assert (= (and b!528733 res!324821) b!528746))

(assert (= (and b!528746 res!324815) b!528734))

(assert (= (and b!528734 res!324810) b!528742))

(assert (= (and b!528742 res!324816) b!528744))

(assert (= (and b!528744 res!324819) b!528731))

(assert (= (and b!528731 res!324820) b!528735))

(assert (= (and b!528731 (not res!324814)) b!528738))

(assert (= (and b!528738 c!62270) b!528730))

(assert (= (and b!528738 (not c!62270)) b!528737))

(assert (= (and b!528730 res!324809) b!528741))

(assert (= (and b!528738 (not res!324808)) b!528732))

(assert (= (and b!528732 res!324813) b!528740))

(assert (= (and b!528732 (not res!324812)) b!528743))

(assert (= (and b!528743 (not res!324807)) b!528736))

(declare-fun m!509297 () Bool)

(assert (=> b!528735 m!509297))

(assert (=> b!528735 m!509297))

(declare-fun m!509299 () Bool)

(assert (=> b!528735 m!509299))

(declare-fun m!509301 () Bool)

(assert (=> start!48032 m!509301))

(declare-fun m!509303 () Bool)

(assert (=> start!48032 m!509303))

(assert (=> b!528740 m!509297))

(assert (=> b!528740 m!509297))

(declare-fun m!509305 () Bool)

(assert (=> b!528740 m!509305))

(assert (=> b!528745 m!509297))

(assert (=> b!528745 m!509297))

(declare-fun m!509307 () Bool)

(assert (=> b!528745 m!509307))

(declare-fun m!509309 () Bool)

(assert (=> b!528730 m!509309))

(declare-fun m!509311 () Bool)

(assert (=> b!528730 m!509311))

(declare-fun m!509313 () Bool)

(assert (=> b!528734 m!509313))

(declare-fun m!509315 () Bool)

(assert (=> b!528746 m!509315))

(declare-fun m!509317 () Bool)

(assert (=> b!528744 m!509317))

(declare-fun m!509319 () Bool)

(assert (=> b!528736 m!509319))

(declare-fun m!509321 () Bool)

(assert (=> b!528736 m!509321))

(declare-fun m!509323 () Bool)

(assert (=> b!528742 m!509323))

(declare-fun m!509325 () Bool)

(assert (=> b!528738 m!509325))

(declare-fun m!509327 () Bool)

(assert (=> b!528738 m!509327))

(assert (=> b!528738 m!509297))

(declare-fun m!509329 () Bool)

(assert (=> b!528733 m!509329))

(declare-fun m!509331 () Bool)

(assert (=> b!528731 m!509331))

(declare-fun m!509333 () Bool)

(assert (=> b!528731 m!509333))

(declare-fun m!509335 () Bool)

(assert (=> b!528731 m!509335))

(declare-fun m!509337 () Bool)

(assert (=> b!528731 m!509337))

(assert (=> b!528731 m!509297))

(declare-fun m!509339 () Bool)

(assert (=> b!528731 m!509339))

(assert (=> b!528731 m!509297))

(declare-fun m!509341 () Bool)

(assert (=> b!528731 m!509341))

(assert (=> b!528731 m!509297))

(declare-fun m!509343 () Bool)

(assert (=> b!528731 m!509343))

(declare-fun m!509345 () Bool)

(assert (=> b!528731 m!509345))

(assert (=> b!528743 m!509311))

(push 1)

