; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124682 () Bool)

(assert start!124682)

(declare-fun b!1443653 () Bool)

(declare-fun res!975833 () Bool)

(declare-fun e!813513 () Bool)

(assert (=> b!1443653 (=> (not res!975833) (not e!813513))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98047 0))(
  ( (array!98048 (arr!47307 (Array (_ BitVec 32) (_ BitVec 64))) (size!47858 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98047)

(assert (=> b!1443653 (= res!975833 (and (= (size!47858 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47858 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47858 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443654 () Bool)

(declare-fun res!975838 () Bool)

(assert (=> b!1443654 (=> (not res!975838) (not e!813513))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443654 (= res!975838 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47858 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47858 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47858 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443655 () Bool)

(declare-fun res!975831 () Bool)

(assert (=> b!1443655 (=> (not res!975831) (not e!813513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98047 (_ BitVec 32)) Bool)

(assert (=> b!1443655 (= res!975831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443656 () Bool)

(declare-fun e!813518 () Bool)

(assert (=> b!1443656 (= e!813518 true)))

(declare-datatypes ((SeekEntryResult!11582 0))(
  ( (MissingZero!11582 (index!48719 (_ BitVec 32))) (Found!11582 (index!48720 (_ BitVec 32))) (Intermediate!11582 (undefined!12394 Bool) (index!48721 (_ BitVec 32)) (x!130418 (_ BitVec 32))) (Undefined!11582) (MissingVacant!11582 (index!48722 (_ BitVec 32))) )
))
(declare-fun lt!633902 () SeekEntryResult!11582)

(declare-fun lt!633900 () (_ BitVec 64))

(declare-fun lt!633903 () array!98047)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98047 (_ BitVec 32)) SeekEntryResult!11582)

(assert (=> b!1443656 (= lt!633902 (seekEntryOrOpen!0 lt!633900 lt!633903 mask!2687))))

(declare-fun b!1443657 () Bool)

(declare-fun res!975844 () Bool)

(assert (=> b!1443657 (=> (not res!975844) (not e!813513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443657 (= res!975844 (validKeyInArray!0 (select (arr!47307 a!2862) i!1006)))))

(declare-fun b!1443658 () Bool)

(declare-fun res!975837 () Bool)

(assert (=> b!1443658 (=> (not res!975837) (not e!813513))))

(assert (=> b!1443658 (= res!975837 (validKeyInArray!0 (select (arr!47307 a!2862) j!93)))))

(declare-fun b!1443659 () Bool)

(declare-fun res!975836 () Bool)

(declare-fun e!813511 () Bool)

(assert (=> b!1443659 (=> (not res!975836) (not e!813511))))

(assert (=> b!1443659 (= res!975836 (= (seekEntryOrOpen!0 (select (arr!47307 a!2862) j!93) a!2862 mask!2687) (Found!11582 j!93)))))

(declare-fun b!1443660 () Bool)

(declare-fun res!975843 () Bool)

(declare-fun e!813515 () Bool)

(assert (=> b!1443660 (=> (not res!975843) (not e!813515))))

(declare-fun e!813516 () Bool)

(assert (=> b!1443660 (= res!975843 e!813516)))

(declare-fun c!133424 () Bool)

(assert (=> b!1443660 (= c!133424 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443661 () Bool)

(declare-fun res!975835 () Bool)

(assert (=> b!1443661 (=> (not res!975835) (not e!813513))))

(declare-datatypes ((List!33988 0))(
  ( (Nil!33985) (Cons!33984 (h!35334 (_ BitVec 64)) (t!48689 List!33988)) )
))
(declare-fun arrayNoDuplicates!0 (array!98047 (_ BitVec 32) List!33988) Bool)

(assert (=> b!1443661 (= res!975835 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33985))))

(declare-fun b!1443662 () Bool)

(declare-fun e!813517 () Bool)

(assert (=> b!1443662 (= e!813513 e!813517)))

(declare-fun res!975832 () Bool)

(assert (=> b!1443662 (=> (not res!975832) (not e!813517))))

(assert (=> b!1443662 (= res!975832 (= (select (store (arr!47307 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443662 (= lt!633903 (array!98048 (store (arr!47307 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47858 a!2862)))))

(declare-fun b!1443663 () Bool)

(declare-fun e!813514 () Bool)

(assert (=> b!1443663 (= e!813514 e!813515)))

(declare-fun res!975841 () Bool)

(assert (=> b!1443663 (=> (not res!975841) (not e!813515))))

(declare-fun lt!633904 () SeekEntryResult!11582)

(assert (=> b!1443663 (= res!975841 (= lt!633904 (Intermediate!11582 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98047 (_ BitVec 32)) SeekEntryResult!11582)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443663 (= lt!633904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633900 mask!2687) lt!633900 lt!633903 mask!2687))))

(assert (=> b!1443663 (= lt!633900 (select (store (arr!47307 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443664 () Bool)

(assert (=> b!1443664 (= e!813516 (= lt!633904 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633900 lt!633903 mask!2687)))))

(declare-fun b!1443665 () Bool)

(assert (=> b!1443665 (= e!813515 (not e!813518))))

(declare-fun res!975846 () Bool)

(assert (=> b!1443665 (=> res!975846 e!813518)))

(assert (=> b!1443665 (= res!975846 (or (not (= (select (arr!47307 a!2862) index!646) (select (store (arr!47307 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47307 a!2862) index!646) (select (arr!47307 a!2862) j!93)))))))

(assert (=> b!1443665 e!813511))

(declare-fun res!975842 () Bool)

(assert (=> b!1443665 (=> (not res!975842) (not e!813511))))

(assert (=> b!1443665 (= res!975842 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48608 0))(
  ( (Unit!48609) )
))
(declare-fun lt!633899 () Unit!48608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48608)

(assert (=> b!1443665 (= lt!633899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!975845 () Bool)

(assert (=> start!124682 (=> (not res!975845) (not e!813513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124682 (= res!975845 (validMask!0 mask!2687))))

(assert (=> start!124682 e!813513))

(assert (=> start!124682 true))

(declare-fun array_inv!36252 (array!98047) Bool)

(assert (=> start!124682 (array_inv!36252 a!2862)))

(declare-fun b!1443666 () Bool)

(assert (=> b!1443666 (= e!813517 e!813514)))

(declare-fun res!975839 () Bool)

(assert (=> b!1443666 (=> (not res!975839) (not e!813514))))

(declare-fun lt!633901 () SeekEntryResult!11582)

(assert (=> b!1443666 (= res!975839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47307 a!2862) j!93) mask!2687) (select (arr!47307 a!2862) j!93) a!2862 mask!2687) lt!633901))))

(assert (=> b!1443666 (= lt!633901 (Intermediate!11582 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443667 () Bool)

(assert (=> b!1443667 (= e!813511 (or (= (select (arr!47307 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47307 a!2862) intermediateBeforeIndex!19) (select (arr!47307 a!2862) j!93))))))

(declare-fun b!1443668 () Bool)

(declare-fun res!975834 () Bool)

(assert (=> b!1443668 (=> (not res!975834) (not e!813514))))

(assert (=> b!1443668 (= res!975834 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47307 a!2862) j!93) a!2862 mask!2687) lt!633901))))

(declare-fun b!1443669 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98047 (_ BitVec 32)) SeekEntryResult!11582)

(assert (=> b!1443669 (= e!813516 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633900 lt!633903 mask!2687) (seekEntryOrOpen!0 lt!633900 lt!633903 mask!2687)))))

(declare-fun b!1443670 () Bool)

(declare-fun res!975840 () Bool)

(assert (=> b!1443670 (=> (not res!975840) (not e!813515))))

(assert (=> b!1443670 (= res!975840 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124682 res!975845) b!1443653))

(assert (= (and b!1443653 res!975833) b!1443657))

(assert (= (and b!1443657 res!975844) b!1443658))

(assert (= (and b!1443658 res!975837) b!1443655))

(assert (= (and b!1443655 res!975831) b!1443661))

(assert (= (and b!1443661 res!975835) b!1443654))

(assert (= (and b!1443654 res!975838) b!1443662))

(assert (= (and b!1443662 res!975832) b!1443666))

(assert (= (and b!1443666 res!975839) b!1443668))

(assert (= (and b!1443668 res!975834) b!1443663))

(assert (= (and b!1443663 res!975841) b!1443660))

(assert (= (and b!1443660 c!133424) b!1443664))

(assert (= (and b!1443660 (not c!133424)) b!1443669))

(assert (= (and b!1443660 res!975843) b!1443670))

(assert (= (and b!1443670 res!975840) b!1443665))

(assert (= (and b!1443665 res!975842) b!1443659))

(assert (= (and b!1443659 res!975836) b!1443667))

(assert (= (and b!1443665 (not res!975846)) b!1443656))

(declare-fun m!1332775 () Bool)

(assert (=> b!1443658 m!1332775))

(assert (=> b!1443658 m!1332775))

(declare-fun m!1332777 () Bool)

(assert (=> b!1443658 m!1332777))

(assert (=> b!1443659 m!1332775))

(assert (=> b!1443659 m!1332775))

(declare-fun m!1332779 () Bool)

(assert (=> b!1443659 m!1332779))

(declare-fun m!1332781 () Bool)

(assert (=> b!1443664 m!1332781))

(declare-fun m!1332783 () Bool)

(assert (=> b!1443665 m!1332783))

(declare-fun m!1332785 () Bool)

(assert (=> b!1443665 m!1332785))

(declare-fun m!1332787 () Bool)

(assert (=> b!1443665 m!1332787))

(declare-fun m!1332789 () Bool)

(assert (=> b!1443665 m!1332789))

(declare-fun m!1332791 () Bool)

(assert (=> b!1443665 m!1332791))

(assert (=> b!1443665 m!1332775))

(declare-fun m!1332793 () Bool)

(assert (=> b!1443657 m!1332793))

(assert (=> b!1443657 m!1332793))

(declare-fun m!1332795 () Bool)

(assert (=> b!1443657 m!1332795))

(declare-fun m!1332797 () Bool)

(assert (=> b!1443669 m!1332797))

(declare-fun m!1332799 () Bool)

(assert (=> b!1443669 m!1332799))

(declare-fun m!1332801 () Bool)

(assert (=> b!1443655 m!1332801))

(declare-fun m!1332803 () Bool)

(assert (=> start!124682 m!1332803))

(declare-fun m!1332805 () Bool)

(assert (=> start!124682 m!1332805))

(declare-fun m!1332807 () Bool)

(assert (=> b!1443661 m!1332807))

(declare-fun m!1332809 () Bool)

(assert (=> b!1443667 m!1332809))

(assert (=> b!1443667 m!1332775))

(declare-fun m!1332811 () Bool)

(assert (=> b!1443663 m!1332811))

(assert (=> b!1443663 m!1332811))

(declare-fun m!1332813 () Bool)

(assert (=> b!1443663 m!1332813))

(assert (=> b!1443663 m!1332785))

(declare-fun m!1332815 () Bool)

(assert (=> b!1443663 m!1332815))

(assert (=> b!1443656 m!1332799))

(assert (=> b!1443662 m!1332785))

(declare-fun m!1332817 () Bool)

(assert (=> b!1443662 m!1332817))

(assert (=> b!1443668 m!1332775))

(assert (=> b!1443668 m!1332775))

(declare-fun m!1332819 () Bool)

(assert (=> b!1443668 m!1332819))

(assert (=> b!1443666 m!1332775))

(assert (=> b!1443666 m!1332775))

(declare-fun m!1332821 () Bool)

(assert (=> b!1443666 m!1332821))

(assert (=> b!1443666 m!1332821))

(assert (=> b!1443666 m!1332775))

(declare-fun m!1332823 () Bool)

(assert (=> b!1443666 m!1332823))

(push 1)

