; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126920 () Bool)

(assert start!126920)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1490432 () Bool)

(declare-datatypes ((array!99610 0))(
  ( (array!99611 (arr!48072 (Array (_ BitVec 32) (_ BitVec 64))) (size!48623 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99610)

(declare-fun e!835198 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490432 (= e!835198 (or (= (select (arr!48072 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48072 a!2862) intermediateBeforeIndex!19) (select (arr!48072 a!2862) j!93))))))

(declare-fun b!1490433 () Bool)

(declare-fun e!835199 () Bool)

(declare-fun e!835202 () Bool)

(assert (=> b!1490433 (= e!835199 e!835202)))

(declare-fun res!1013822 () Bool)

(assert (=> b!1490433 (=> (not res!1013822) (not e!835202))))

(declare-datatypes ((SeekEntryResult!12335 0))(
  ( (MissingZero!12335 (index!51731 (_ BitVec 32))) (Found!12335 (index!51732 (_ BitVec 32))) (Intermediate!12335 (undefined!13147 Bool) (index!51733 (_ BitVec 32)) (x!133322 (_ BitVec 32))) (Undefined!12335) (MissingVacant!12335 (index!51734 (_ BitVec 32))) )
))
(declare-fun lt!649909 () SeekEntryResult!12335)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99610 (_ BitVec 32)) SeekEntryResult!12335)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490433 (= res!1013822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48072 a!2862) j!93) mask!2687) (select (arr!48072 a!2862) j!93) a!2862 mask!2687) lt!649909))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490433 (= lt!649909 (Intermediate!12335 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490434 () Bool)

(declare-fun res!1013821 () Bool)

(declare-fun e!835201 () Bool)

(assert (=> b!1490434 (=> (not res!1013821) (not e!835201))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490434 (= res!1013821 (and (= (size!48623 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48623 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48623 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649910 () array!99610)

(declare-fun b!1490435 () Bool)

(declare-fun e!835204 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!649907 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99610 (_ BitVec 32)) SeekEntryResult!12335)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99610 (_ BitVec 32)) SeekEntryResult!12335)

(assert (=> b!1490435 (= e!835204 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649907 lt!649910 mask!2687) (seekEntryOrOpen!0 lt!649907 lt!649910 mask!2687)))))

(declare-fun b!1490436 () Bool)

(declare-fun lt!649912 () SeekEntryResult!12335)

(assert (=> b!1490436 (= e!835204 (= lt!649912 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649907 lt!649910 mask!2687)))))

(declare-fun b!1490437 () Bool)

(declare-fun res!1013812 () Bool)

(assert (=> b!1490437 (=> (not res!1013812) (not e!835201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99610 (_ BitVec 32)) Bool)

(assert (=> b!1490437 (= res!1013812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490438 () Bool)

(declare-fun res!1013826 () Bool)

(assert (=> b!1490438 (=> (not res!1013826) (not e!835202))))

(assert (=> b!1490438 (= res!1013826 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48072 a!2862) j!93) a!2862 mask!2687) lt!649909))))

(declare-fun b!1490439 () Bool)

(declare-fun e!835203 () Bool)

(declare-fun e!835200 () Bool)

(assert (=> b!1490439 (= e!835203 (not e!835200))))

(declare-fun res!1013824 () Bool)

(assert (=> b!1490439 (=> res!1013824 e!835200)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490439 (= res!1013824 (or (and (= (select (arr!48072 a!2862) index!646) (select (store (arr!48072 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48072 a!2862) index!646) (select (arr!48072 a!2862) j!93))) (= (select (arr!48072 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490439 e!835198))

(declare-fun res!1013816 () Bool)

(assert (=> b!1490439 (=> (not res!1013816) (not e!835198))))

(assert (=> b!1490439 (= res!1013816 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49958 0))(
  ( (Unit!49959) )
))
(declare-fun lt!649908 () Unit!49958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49958)

(assert (=> b!1490439 (= lt!649908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490440 () Bool)

(assert (=> b!1490440 (= e!835202 e!835203)))

(declare-fun res!1013815 () Bool)

(assert (=> b!1490440 (=> (not res!1013815) (not e!835203))))

(assert (=> b!1490440 (= res!1013815 (= lt!649912 (Intermediate!12335 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490440 (= lt!649912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649907 mask!2687) lt!649907 lt!649910 mask!2687))))

(assert (=> b!1490440 (= lt!649907 (select (store (arr!48072 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490441 () Bool)

(declare-fun res!1013825 () Bool)

(assert (=> b!1490441 (=> (not res!1013825) (not e!835203))))

(assert (=> b!1490441 (= res!1013825 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490442 () Bool)

(declare-fun res!1013817 () Bool)

(assert (=> b!1490442 (=> (not res!1013817) (not e!835201))))

(assert (=> b!1490442 (= res!1013817 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48623 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48623 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48623 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490444 () Bool)

(assert (=> b!1490444 (= e!835201 e!835199)))

(declare-fun res!1013814 () Bool)

(assert (=> b!1490444 (=> (not res!1013814) (not e!835199))))

(assert (=> b!1490444 (= res!1013814 (= (select (store (arr!48072 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490444 (= lt!649910 (array!99611 (store (arr!48072 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48623 a!2862)))))

(declare-fun b!1490445 () Bool)

(assert (=> b!1490445 (= e!835200 true)))

(declare-fun lt!649911 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490445 (= lt!649911 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490446 () Bool)

(declare-fun res!1013823 () Bool)

(assert (=> b!1490446 (=> (not res!1013823) (not e!835201))))

(declare-datatypes ((List!34753 0))(
  ( (Nil!34750) (Cons!34749 (h!36132 (_ BitVec 64)) (t!49454 List!34753)) )
))
(declare-fun arrayNoDuplicates!0 (array!99610 (_ BitVec 32) List!34753) Bool)

(assert (=> b!1490446 (= res!1013823 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34750))))

(declare-fun b!1490447 () Bool)

(declare-fun res!1013811 () Bool)

(assert (=> b!1490447 (=> (not res!1013811) (not e!835201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490447 (= res!1013811 (validKeyInArray!0 (select (arr!48072 a!2862) j!93)))))

(declare-fun res!1013819 () Bool)

(assert (=> start!126920 (=> (not res!1013819) (not e!835201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126920 (= res!1013819 (validMask!0 mask!2687))))

(assert (=> start!126920 e!835201))

(assert (=> start!126920 true))

(declare-fun array_inv!37017 (array!99610) Bool)

(assert (=> start!126920 (array_inv!37017 a!2862)))

(declare-fun b!1490443 () Bool)

(declare-fun res!1013813 () Bool)

(assert (=> b!1490443 (=> (not res!1013813) (not e!835203))))

(assert (=> b!1490443 (= res!1013813 e!835204)))

(declare-fun c!137840 () Bool)

(assert (=> b!1490443 (= c!137840 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490448 () Bool)

(declare-fun res!1013818 () Bool)

(assert (=> b!1490448 (=> (not res!1013818) (not e!835201))))

(assert (=> b!1490448 (= res!1013818 (validKeyInArray!0 (select (arr!48072 a!2862) i!1006)))))

(declare-fun b!1490449 () Bool)

(declare-fun res!1013820 () Bool)

(assert (=> b!1490449 (=> (not res!1013820) (not e!835198))))

(assert (=> b!1490449 (= res!1013820 (= (seekEntryOrOpen!0 (select (arr!48072 a!2862) j!93) a!2862 mask!2687) (Found!12335 j!93)))))

(assert (= (and start!126920 res!1013819) b!1490434))

(assert (= (and b!1490434 res!1013821) b!1490448))

(assert (= (and b!1490448 res!1013818) b!1490447))

(assert (= (and b!1490447 res!1013811) b!1490437))

(assert (= (and b!1490437 res!1013812) b!1490446))

(assert (= (and b!1490446 res!1013823) b!1490442))

(assert (= (and b!1490442 res!1013817) b!1490444))

(assert (= (and b!1490444 res!1013814) b!1490433))

(assert (= (and b!1490433 res!1013822) b!1490438))

(assert (= (and b!1490438 res!1013826) b!1490440))

(assert (= (and b!1490440 res!1013815) b!1490443))

(assert (= (and b!1490443 c!137840) b!1490436))

(assert (= (and b!1490443 (not c!137840)) b!1490435))

(assert (= (and b!1490443 res!1013813) b!1490441))

(assert (= (and b!1490441 res!1013825) b!1490439))

(assert (= (and b!1490439 res!1013816) b!1490449))

(assert (= (and b!1490449 res!1013820) b!1490432))

(assert (= (and b!1490439 (not res!1013824)) b!1490445))

(declare-fun m!1374647 () Bool)

(assert (=> b!1490437 m!1374647))

(declare-fun m!1374649 () Bool)

(assert (=> b!1490436 m!1374649))

(declare-fun m!1374651 () Bool)

(assert (=> b!1490433 m!1374651))

(assert (=> b!1490433 m!1374651))

(declare-fun m!1374653 () Bool)

(assert (=> b!1490433 m!1374653))

(assert (=> b!1490433 m!1374653))

(assert (=> b!1490433 m!1374651))

(declare-fun m!1374655 () Bool)

(assert (=> b!1490433 m!1374655))

(declare-fun m!1374657 () Bool)

(assert (=> b!1490440 m!1374657))

(assert (=> b!1490440 m!1374657))

(declare-fun m!1374659 () Bool)

(assert (=> b!1490440 m!1374659))

(declare-fun m!1374661 () Bool)

(assert (=> b!1490440 m!1374661))

(declare-fun m!1374663 () Bool)

(assert (=> b!1490440 m!1374663))

(declare-fun m!1374665 () Bool)

(assert (=> b!1490446 m!1374665))

(declare-fun m!1374667 () Bool)

(assert (=> b!1490439 m!1374667))

(assert (=> b!1490439 m!1374661))

(declare-fun m!1374669 () Bool)

(assert (=> b!1490439 m!1374669))

(declare-fun m!1374671 () Bool)

(assert (=> b!1490439 m!1374671))

(declare-fun m!1374673 () Bool)

(assert (=> b!1490439 m!1374673))

(assert (=> b!1490439 m!1374651))

(declare-fun m!1374675 () Bool)

(assert (=> b!1490435 m!1374675))

(declare-fun m!1374677 () Bool)

(assert (=> b!1490435 m!1374677))

(declare-fun m!1374679 () Bool)

(assert (=> start!126920 m!1374679))

(declare-fun m!1374681 () Bool)

(assert (=> start!126920 m!1374681))

(assert (=> b!1490447 m!1374651))

(assert (=> b!1490447 m!1374651))

(declare-fun m!1374683 () Bool)

(assert (=> b!1490447 m!1374683))

(declare-fun m!1374685 () Bool)

(assert (=> b!1490432 m!1374685))

(assert (=> b!1490432 m!1374651))

(assert (=> b!1490438 m!1374651))

(assert (=> b!1490438 m!1374651))

(declare-fun m!1374687 () Bool)

(assert (=> b!1490438 m!1374687))

(declare-fun m!1374689 () Bool)

(assert (=> b!1490445 m!1374689))

(declare-fun m!1374691 () Bool)

(assert (=> b!1490448 m!1374691))

(assert (=> b!1490448 m!1374691))

(declare-fun m!1374693 () Bool)

(assert (=> b!1490448 m!1374693))

(assert (=> b!1490444 m!1374661))

(declare-fun m!1374695 () Bool)

(assert (=> b!1490444 m!1374695))

(assert (=> b!1490449 m!1374651))

(assert (=> b!1490449 m!1374651))

(declare-fun m!1374697 () Bool)

(assert (=> b!1490449 m!1374697))

(push 1)

(assert (not b!1490445))

(assert (not b!1490438))

(assert (not b!1490440))

(assert (not b!1490436))

(assert (not b!1490448))

(assert (not b!1490433))

(assert (not b!1490446))

(assert (not b!1490447))

(assert (not b!1490435))

(assert (not b!1490449))

(assert (not b!1490439))

(assert (not start!126920))

(assert (not b!1490437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

