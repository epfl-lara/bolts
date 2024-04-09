; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125272 () Bool)

(assert start!125272)

(declare-fun b!1460977 () Bool)

(declare-fun e!821423 () Bool)

(declare-fun e!821427 () Bool)

(assert (=> b!1460977 (= e!821423 (not e!821427))))

(declare-fun res!990772 () Bool)

(assert (=> b!1460977 (=> res!990772 e!821427)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98637 0))(
  ( (array!98638 (arr!47602 (Array (_ BitVec 32) (_ BitVec 64))) (size!48153 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98637)

(assert (=> b!1460977 (= res!990772 (or (and (= (select (arr!47602 a!2862) index!646) (select (store (arr!47602 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47602 a!2862) index!646) (select (arr!47602 a!2862) j!93))) (= (select (arr!47602 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821432 () Bool)

(assert (=> b!1460977 e!821432))

(declare-fun res!990778 () Bool)

(assert (=> b!1460977 (=> (not res!990778) (not e!821432))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98637 (_ BitVec 32)) Bool)

(assert (=> b!1460977 (= res!990778 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49198 0))(
  ( (Unit!49199) )
))
(declare-fun lt!639949 () Unit!49198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49198)

(assert (=> b!1460977 (= lt!639949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460978 () Bool)

(declare-fun res!990775 () Bool)

(declare-fun e!821429 () Bool)

(assert (=> b!1460978 (=> (not res!990775) (not e!821429))))

(declare-datatypes ((SeekEntryResult!11877 0))(
  ( (MissingZero!11877 (index!49899 (_ BitVec 32))) (Found!11877 (index!49900 (_ BitVec 32))) (Intermediate!11877 (undefined!12689 Bool) (index!49901 (_ BitVec 32)) (x!131505 (_ BitVec 32))) (Undefined!11877) (MissingVacant!11877 (index!49902 (_ BitVec 32))) )
))
(declare-fun lt!639954 () SeekEntryResult!11877)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98637 (_ BitVec 32)) SeekEntryResult!11877)

(assert (=> b!1460978 (= res!990775 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47602 a!2862) j!93) a!2862 mask!2687) lt!639954))))

(declare-fun b!1460980 () Bool)

(declare-fun res!990783 () Bool)

(declare-fun e!821431 () Bool)

(assert (=> b!1460980 (=> (not res!990783) (not e!821431))))

(declare-datatypes ((List!34283 0))(
  ( (Nil!34280) (Cons!34279 (h!35629 (_ BitVec 64)) (t!48984 List!34283)) )
))
(declare-fun arrayNoDuplicates!0 (array!98637 (_ BitVec 32) List!34283) Bool)

(assert (=> b!1460980 (= res!990783 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34280))))

(declare-fun b!1460981 () Bool)

(declare-fun res!990780 () Bool)

(assert (=> b!1460981 (=> (not res!990780) (not e!821431))))

(assert (=> b!1460981 (= res!990780 (and (= (size!48153 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48153 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48153 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460982 () Bool)

(declare-fun res!990771 () Bool)

(assert (=> b!1460982 (=> (not res!990771) (not e!821431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460982 (= res!990771 (validKeyInArray!0 (select (arr!47602 a!2862) i!1006)))))

(declare-fun b!1460983 () Bool)

(declare-fun e!821426 () Bool)

(assert (=> b!1460983 (= e!821426 true)))

(declare-fun lt!639955 () Bool)

(declare-fun e!821430 () Bool)

(assert (=> b!1460983 (= lt!639955 e!821430)))

(declare-fun c!134617 () Bool)

(assert (=> b!1460983 (= c!134617 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460984 () Bool)

(declare-fun res!990779 () Bool)

(assert (=> b!1460984 (=> res!990779 e!821426)))

(declare-fun lt!639950 () (_ BitVec 32))

(assert (=> b!1460984 (= res!990779 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639950 (select (arr!47602 a!2862) j!93) a!2862 mask!2687) lt!639954)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1460985 () Bool)

(assert (=> b!1460985 (= e!821432 (or (= (select (arr!47602 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47602 a!2862) intermediateBeforeIndex!19) (select (arr!47602 a!2862) j!93))))))

(declare-fun b!1460986 () Bool)

(declare-fun res!990784 () Bool)

(assert (=> b!1460986 (=> (not res!990784) (not e!821423))))

(declare-fun e!821424 () Bool)

(assert (=> b!1460986 (= res!990784 e!821424)))

(declare-fun c!134618 () Bool)

(assert (=> b!1460986 (= c!134618 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!639952 () array!98637)

(declare-fun lt!639951 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1460987 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98637 (_ BitVec 32)) SeekEntryResult!11877)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98637 (_ BitVec 32)) SeekEntryResult!11877)

(assert (=> b!1460987 (= e!821430 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639950 intermediateAfterIndex!19 lt!639951 lt!639952 mask!2687) (seekEntryOrOpen!0 lt!639951 lt!639952 mask!2687))))))

(declare-fun b!1460988 () Bool)

(declare-fun res!990786 () Bool)

(assert (=> b!1460988 (=> (not res!990786) (not e!821432))))

(assert (=> b!1460988 (= res!990786 (= (seekEntryOrOpen!0 (select (arr!47602 a!2862) j!93) a!2862 mask!2687) (Found!11877 j!93)))))

(declare-fun b!1460989 () Bool)

(declare-fun res!990776 () Bool)

(assert (=> b!1460989 (=> (not res!990776) (not e!821431))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460989 (= res!990776 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48153 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48153 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48153 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460979 () Bool)

(assert (=> b!1460979 (= e!821427 e!821426)))

(declare-fun res!990782 () Bool)

(assert (=> b!1460979 (=> res!990782 e!821426)))

(assert (=> b!1460979 (= res!990782 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639950 #b00000000000000000000000000000000) (bvsge lt!639950 (size!48153 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460979 (= lt!639950 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!990785 () Bool)

(assert (=> start!125272 (=> (not res!990785) (not e!821431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125272 (= res!990785 (validMask!0 mask!2687))))

(assert (=> start!125272 e!821431))

(assert (=> start!125272 true))

(declare-fun array_inv!36547 (array!98637) Bool)

(assert (=> start!125272 (array_inv!36547 a!2862)))

(declare-fun lt!639953 () SeekEntryResult!11877)

(declare-fun b!1460990 () Bool)

(assert (=> b!1460990 (= e!821424 (= lt!639953 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639951 lt!639952 mask!2687)))))

(declare-fun b!1460991 () Bool)

(declare-fun e!821428 () Bool)

(assert (=> b!1460991 (= e!821428 e!821429)))

(declare-fun res!990769 () Bool)

(assert (=> b!1460991 (=> (not res!990769) (not e!821429))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460991 (= res!990769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47602 a!2862) j!93) mask!2687) (select (arr!47602 a!2862) j!93) a!2862 mask!2687) lt!639954))))

(assert (=> b!1460991 (= lt!639954 (Intermediate!11877 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460992 () Bool)

(assert (=> b!1460992 (= e!821430 (not (= lt!639953 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639950 lt!639951 lt!639952 mask!2687))))))

(declare-fun b!1460993 () Bool)

(declare-fun res!990770 () Bool)

(assert (=> b!1460993 (=> (not res!990770) (not e!821431))))

(assert (=> b!1460993 (= res!990770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460994 () Bool)

(assert (=> b!1460994 (= e!821431 e!821428)))

(declare-fun res!990777 () Bool)

(assert (=> b!1460994 (=> (not res!990777) (not e!821428))))

(assert (=> b!1460994 (= res!990777 (= (select (store (arr!47602 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460994 (= lt!639952 (array!98638 (store (arr!47602 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48153 a!2862)))))

(declare-fun b!1460995 () Bool)

(declare-fun res!990781 () Bool)

(assert (=> b!1460995 (=> (not res!990781) (not e!821423))))

(assert (=> b!1460995 (= res!990781 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460996 () Bool)

(assert (=> b!1460996 (= e!821429 e!821423)))

(declare-fun res!990774 () Bool)

(assert (=> b!1460996 (=> (not res!990774) (not e!821423))))

(assert (=> b!1460996 (= res!990774 (= lt!639953 (Intermediate!11877 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460996 (= lt!639953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639951 mask!2687) lt!639951 lt!639952 mask!2687))))

(assert (=> b!1460996 (= lt!639951 (select (store (arr!47602 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460997 () Bool)

(declare-fun res!990773 () Bool)

(assert (=> b!1460997 (=> (not res!990773) (not e!821431))))

(assert (=> b!1460997 (= res!990773 (validKeyInArray!0 (select (arr!47602 a!2862) j!93)))))

(declare-fun b!1460998 () Bool)

(assert (=> b!1460998 (= e!821424 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639951 lt!639952 mask!2687) (seekEntryOrOpen!0 lt!639951 lt!639952 mask!2687)))))

(assert (= (and start!125272 res!990785) b!1460981))

(assert (= (and b!1460981 res!990780) b!1460982))

(assert (= (and b!1460982 res!990771) b!1460997))

(assert (= (and b!1460997 res!990773) b!1460993))

(assert (= (and b!1460993 res!990770) b!1460980))

(assert (= (and b!1460980 res!990783) b!1460989))

(assert (= (and b!1460989 res!990776) b!1460994))

(assert (= (and b!1460994 res!990777) b!1460991))

(assert (= (and b!1460991 res!990769) b!1460978))

(assert (= (and b!1460978 res!990775) b!1460996))

(assert (= (and b!1460996 res!990774) b!1460986))

(assert (= (and b!1460986 c!134618) b!1460990))

(assert (= (and b!1460986 (not c!134618)) b!1460998))

(assert (= (and b!1460986 res!990784) b!1460995))

(assert (= (and b!1460995 res!990781) b!1460977))

(assert (= (and b!1460977 res!990778) b!1460988))

(assert (= (and b!1460988 res!990786) b!1460985))

(assert (= (and b!1460977 (not res!990772)) b!1460979))

(assert (= (and b!1460979 (not res!990782)) b!1460984))

(assert (= (and b!1460984 (not res!990779)) b!1460983))

(assert (= (and b!1460983 c!134617) b!1460992))

(assert (= (and b!1460983 (not c!134617)) b!1460987))

(declare-fun m!1348659 () Bool)

(assert (=> start!125272 m!1348659))

(declare-fun m!1348661 () Bool)

(assert (=> start!125272 m!1348661))

(declare-fun m!1348663 () Bool)

(assert (=> b!1460978 m!1348663))

(assert (=> b!1460978 m!1348663))

(declare-fun m!1348665 () Bool)

(assert (=> b!1460978 m!1348665))

(declare-fun m!1348667 () Bool)

(assert (=> b!1460985 m!1348667))

(assert (=> b!1460985 m!1348663))

(assert (=> b!1460997 m!1348663))

(assert (=> b!1460997 m!1348663))

(declare-fun m!1348669 () Bool)

(assert (=> b!1460997 m!1348669))

(declare-fun m!1348671 () Bool)

(assert (=> b!1460996 m!1348671))

(assert (=> b!1460996 m!1348671))

(declare-fun m!1348673 () Bool)

(assert (=> b!1460996 m!1348673))

(declare-fun m!1348675 () Bool)

(assert (=> b!1460996 m!1348675))

(declare-fun m!1348677 () Bool)

(assert (=> b!1460996 m!1348677))

(declare-fun m!1348679 () Bool)

(assert (=> b!1460992 m!1348679))

(declare-fun m!1348681 () Bool)

(assert (=> b!1460977 m!1348681))

(assert (=> b!1460977 m!1348675))

(declare-fun m!1348683 () Bool)

(assert (=> b!1460977 m!1348683))

(declare-fun m!1348685 () Bool)

(assert (=> b!1460977 m!1348685))

(declare-fun m!1348687 () Bool)

(assert (=> b!1460977 m!1348687))

(assert (=> b!1460977 m!1348663))

(declare-fun m!1348689 () Bool)

(assert (=> b!1460987 m!1348689))

(declare-fun m!1348691 () Bool)

(assert (=> b!1460987 m!1348691))

(declare-fun m!1348693 () Bool)

(assert (=> b!1460982 m!1348693))

(assert (=> b!1460982 m!1348693))

(declare-fun m!1348695 () Bool)

(assert (=> b!1460982 m!1348695))

(assert (=> b!1460994 m!1348675))

(declare-fun m!1348697 () Bool)

(assert (=> b!1460994 m!1348697))

(declare-fun m!1348699 () Bool)

(assert (=> b!1460990 m!1348699))

(declare-fun m!1348701 () Bool)

(assert (=> b!1460998 m!1348701))

(assert (=> b!1460998 m!1348691))

(assert (=> b!1460991 m!1348663))

(assert (=> b!1460991 m!1348663))

(declare-fun m!1348703 () Bool)

(assert (=> b!1460991 m!1348703))

(assert (=> b!1460991 m!1348703))

(assert (=> b!1460991 m!1348663))

(declare-fun m!1348705 () Bool)

(assert (=> b!1460991 m!1348705))

(declare-fun m!1348707 () Bool)

(assert (=> b!1460993 m!1348707))

(declare-fun m!1348709 () Bool)

(assert (=> b!1460980 m!1348709))

(assert (=> b!1460988 m!1348663))

(assert (=> b!1460988 m!1348663))

(declare-fun m!1348711 () Bool)

(assert (=> b!1460988 m!1348711))

(declare-fun m!1348713 () Bool)

(assert (=> b!1460979 m!1348713))

(assert (=> b!1460984 m!1348663))

(assert (=> b!1460984 m!1348663))

(declare-fun m!1348715 () Bool)

(assert (=> b!1460984 m!1348715))

(push 1)

