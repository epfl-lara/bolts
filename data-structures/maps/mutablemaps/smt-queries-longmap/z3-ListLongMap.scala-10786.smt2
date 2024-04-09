; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126258 () Bool)

(assert start!126258)

(declare-fun b!1478726 () Bool)

(declare-fun res!1004823 () Bool)

(declare-fun e!829515 () Bool)

(assert (=> b!1478726 (=> (not res!1004823) (not e!829515))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478726 (= res!1004823 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478727 () Bool)

(declare-fun e!829520 () Bool)

(declare-fun e!829514 () Bool)

(assert (=> b!1478727 (= e!829520 e!829514)))

(declare-fun res!1004808 () Bool)

(assert (=> b!1478727 (=> (not res!1004808) (not e!829514))))

(declare-datatypes ((array!99281 0))(
  ( (array!99282 (arr!47915 (Array (_ BitVec 32) (_ BitVec 64))) (size!48466 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99281)

(assert (=> b!1478727 (= res!1004808 (= (select (store (arr!47915 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645746 () array!99281)

(assert (=> b!1478727 (= lt!645746 (array!99282 (store (arr!47915 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48466 a!2862)))))

(declare-fun b!1478728 () Bool)

(declare-fun res!1004816 () Bool)

(assert (=> b!1478728 (=> (not res!1004816) (not e!829520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478728 (= res!1004816 (validKeyInArray!0 (select (arr!47915 a!2862) i!1006)))))

(declare-fun b!1478729 () Bool)

(assert (=> b!1478729 (= e!829515 (not true))))

(declare-fun e!829512 () Bool)

(assert (=> b!1478729 e!829512))

(declare-fun res!1004819 () Bool)

(assert (=> b!1478729 (=> (not res!1004819) (not e!829512))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12178 0))(
  ( (MissingZero!12178 (index!51103 (_ BitVec 32))) (Found!12178 (index!51104 (_ BitVec 32))) (Intermediate!12178 (undefined!12990 Bool) (index!51105 (_ BitVec 32)) (x!132692 (_ BitVec 32))) (Undefined!12178) (MissingVacant!12178 (index!51106 (_ BitVec 32))) )
))
(declare-fun lt!645745 () SeekEntryResult!12178)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1478729 (= res!1004819 (and (= lt!645745 (Found!12178 j!93)) (or (= (select (arr!47915 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47915 a!2862) intermediateBeforeIndex!19) (select (arr!47915 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99281 (_ BitVec 32)) SeekEntryResult!12178)

(assert (=> b!1478729 (= lt!645745 (seekEntryOrOpen!0 (select (arr!47915 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99281 (_ BitVec 32)) Bool)

(assert (=> b!1478729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49644 0))(
  ( (Unit!49645) )
))
(declare-fun lt!645748 () Unit!49644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49644)

(assert (=> b!1478729 (= lt!645748 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478730 () Bool)

(declare-fun res!1004813 () Bool)

(assert (=> b!1478730 (=> (not res!1004813) (not e!829520))))

(assert (=> b!1478730 (= res!1004813 (validKeyInArray!0 (select (arr!47915 a!2862) j!93)))))

(declare-fun b!1478731 () Bool)

(declare-fun res!1004811 () Bool)

(declare-fun e!829517 () Bool)

(assert (=> b!1478731 (=> (not res!1004811) (not e!829517))))

(declare-fun lt!645744 () SeekEntryResult!12178)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99281 (_ BitVec 32)) SeekEntryResult!12178)

(assert (=> b!1478731 (= res!1004811 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47915 a!2862) j!93) a!2862 mask!2687) lt!645744))))

(declare-fun lt!645743 () (_ BitVec 64))

(declare-fun b!1478732 () Bool)

(declare-fun e!829516 () Bool)

(declare-fun lt!645747 () SeekEntryResult!12178)

(assert (=> b!1478732 (= e!829516 (= lt!645747 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645743 lt!645746 mask!2687)))))

(declare-fun b!1478733 () Bool)

(declare-fun res!1004822 () Bool)

(assert (=> b!1478733 (=> (not res!1004822) (not e!829520))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478733 (= res!1004822 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48466 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48466 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48466 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478734 () Bool)

(declare-fun e!829519 () Bool)

(assert (=> b!1478734 (= e!829512 e!829519)))

(declare-fun res!1004817 () Bool)

(assert (=> b!1478734 (=> res!1004817 e!829519)))

(assert (=> b!1478734 (= res!1004817 (or (and (= (select (arr!47915 a!2862) index!646) (select (store (arr!47915 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47915 a!2862) index!646) (select (arr!47915 a!2862) j!93))) (not (= (select (arr!47915 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478736 () Bool)

(assert (=> b!1478736 (= e!829514 e!829517)))

(declare-fun res!1004812 () Bool)

(assert (=> b!1478736 (=> (not res!1004812) (not e!829517))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478736 (= res!1004812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47915 a!2862) j!93) mask!2687) (select (arr!47915 a!2862) j!93) a!2862 mask!2687) lt!645744))))

(assert (=> b!1478736 (= lt!645744 (Intermediate!12178 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478737 () Bool)

(declare-fun res!1004815 () Bool)

(assert (=> b!1478737 (=> (not res!1004815) (not e!829515))))

(assert (=> b!1478737 (= res!1004815 e!829516)))

(declare-fun c!136481 () Bool)

(assert (=> b!1478737 (= c!136481 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!829513 () Bool)

(declare-fun b!1478738 () Bool)

(assert (=> b!1478738 (= e!829513 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478739 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99281 (_ BitVec 32)) SeekEntryResult!12178)

(assert (=> b!1478739 (= e!829516 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645743 lt!645746 mask!2687) (seekEntryOrOpen!0 lt!645743 lt!645746 mask!2687)))))

(declare-fun b!1478740 () Bool)

(assert (=> b!1478740 (= e!829517 e!829515)))

(declare-fun res!1004809 () Bool)

(assert (=> b!1478740 (=> (not res!1004809) (not e!829515))))

(assert (=> b!1478740 (= res!1004809 (= lt!645747 (Intermediate!12178 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478740 (= lt!645747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645743 mask!2687) lt!645743 lt!645746 mask!2687))))

(assert (=> b!1478740 (= lt!645743 (select (store (arr!47915 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478741 () Bool)

(declare-fun res!1004814 () Bool)

(assert (=> b!1478741 (=> (not res!1004814) (not e!829520))))

(declare-datatypes ((List!34596 0))(
  ( (Nil!34593) (Cons!34592 (h!35960 (_ BitVec 64)) (t!49297 List!34596)) )
))
(declare-fun arrayNoDuplicates!0 (array!99281 (_ BitVec 32) List!34596) Bool)

(assert (=> b!1478741 (= res!1004814 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34593))))

(declare-fun b!1478735 () Bool)

(declare-fun res!1004821 () Bool)

(assert (=> b!1478735 (=> (not res!1004821) (not e!829520))))

(assert (=> b!1478735 (= res!1004821 (and (= (size!48466 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48466 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48466 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1004810 () Bool)

(assert (=> start!126258 (=> (not res!1004810) (not e!829520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126258 (= res!1004810 (validMask!0 mask!2687))))

(assert (=> start!126258 e!829520))

(assert (=> start!126258 true))

(declare-fun array_inv!36860 (array!99281) Bool)

(assert (=> start!126258 (array_inv!36860 a!2862)))

(declare-fun b!1478742 () Bool)

(assert (=> b!1478742 (= e!829519 e!829513)))

(declare-fun res!1004818 () Bool)

(assert (=> b!1478742 (=> (not res!1004818) (not e!829513))))

(assert (=> b!1478742 (= res!1004818 (= lt!645745 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47915 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478743 () Bool)

(declare-fun res!1004820 () Bool)

(assert (=> b!1478743 (=> (not res!1004820) (not e!829520))))

(assert (=> b!1478743 (= res!1004820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126258 res!1004810) b!1478735))

(assert (= (and b!1478735 res!1004821) b!1478728))

(assert (= (and b!1478728 res!1004816) b!1478730))

(assert (= (and b!1478730 res!1004813) b!1478743))

(assert (= (and b!1478743 res!1004820) b!1478741))

(assert (= (and b!1478741 res!1004814) b!1478733))

(assert (= (and b!1478733 res!1004822) b!1478727))

(assert (= (and b!1478727 res!1004808) b!1478736))

(assert (= (and b!1478736 res!1004812) b!1478731))

(assert (= (and b!1478731 res!1004811) b!1478740))

(assert (= (and b!1478740 res!1004809) b!1478737))

(assert (= (and b!1478737 c!136481) b!1478732))

(assert (= (and b!1478737 (not c!136481)) b!1478739))

(assert (= (and b!1478737 res!1004815) b!1478726))

(assert (= (and b!1478726 res!1004823) b!1478729))

(assert (= (and b!1478729 res!1004819) b!1478734))

(assert (= (and b!1478734 (not res!1004817)) b!1478742))

(assert (= (and b!1478742 res!1004818) b!1478738))

(declare-fun m!1364683 () Bool)

(assert (=> b!1478729 m!1364683))

(declare-fun m!1364685 () Bool)

(assert (=> b!1478729 m!1364685))

(declare-fun m!1364687 () Bool)

(assert (=> b!1478729 m!1364687))

(declare-fun m!1364689 () Bool)

(assert (=> b!1478729 m!1364689))

(declare-fun m!1364691 () Bool)

(assert (=> b!1478729 m!1364691))

(assert (=> b!1478729 m!1364687))

(declare-fun m!1364693 () Bool)

(assert (=> b!1478740 m!1364693))

(assert (=> b!1478740 m!1364693))

(declare-fun m!1364695 () Bool)

(assert (=> b!1478740 m!1364695))

(declare-fun m!1364697 () Bool)

(assert (=> b!1478740 m!1364697))

(declare-fun m!1364699 () Bool)

(assert (=> b!1478740 m!1364699))

(declare-fun m!1364701 () Bool)

(assert (=> b!1478741 m!1364701))

(declare-fun m!1364703 () Bool)

(assert (=> b!1478732 m!1364703))

(declare-fun m!1364705 () Bool)

(assert (=> b!1478743 m!1364705))

(assert (=> b!1478731 m!1364687))

(assert (=> b!1478731 m!1364687))

(declare-fun m!1364707 () Bool)

(assert (=> b!1478731 m!1364707))

(declare-fun m!1364709 () Bool)

(assert (=> b!1478739 m!1364709))

(declare-fun m!1364711 () Bool)

(assert (=> b!1478739 m!1364711))

(assert (=> b!1478736 m!1364687))

(assert (=> b!1478736 m!1364687))

(declare-fun m!1364713 () Bool)

(assert (=> b!1478736 m!1364713))

(assert (=> b!1478736 m!1364713))

(assert (=> b!1478736 m!1364687))

(declare-fun m!1364715 () Bool)

(assert (=> b!1478736 m!1364715))

(assert (=> b!1478727 m!1364697))

(declare-fun m!1364717 () Bool)

(assert (=> b!1478727 m!1364717))

(assert (=> b!1478742 m!1364687))

(assert (=> b!1478742 m!1364687))

(declare-fun m!1364719 () Bool)

(assert (=> b!1478742 m!1364719))

(assert (=> b!1478730 m!1364687))

(assert (=> b!1478730 m!1364687))

(declare-fun m!1364721 () Bool)

(assert (=> b!1478730 m!1364721))

(declare-fun m!1364723 () Bool)

(assert (=> start!126258 m!1364723))

(declare-fun m!1364725 () Bool)

(assert (=> start!126258 m!1364725))

(declare-fun m!1364727 () Bool)

(assert (=> b!1478734 m!1364727))

(assert (=> b!1478734 m!1364697))

(declare-fun m!1364729 () Bool)

(assert (=> b!1478734 m!1364729))

(assert (=> b!1478734 m!1364687))

(declare-fun m!1364731 () Bool)

(assert (=> b!1478728 m!1364731))

(assert (=> b!1478728 m!1364731))

(declare-fun m!1364733 () Bool)

(assert (=> b!1478728 m!1364733))

(check-sat (not b!1478742) (not b!1478743) (not b!1478728) (not b!1478741) (not b!1478736) (not b!1478740) (not b!1478739) (not start!126258) (not b!1478732) (not b!1478729) (not b!1478731) (not b!1478730))
(check-sat)
