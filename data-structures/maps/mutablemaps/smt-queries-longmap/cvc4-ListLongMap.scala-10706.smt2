; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125420 () Bool)

(assert start!125420)

(declare-fun b!1465861 () Bool)

(declare-fun res!994766 () Bool)

(declare-fun e!823635 () Bool)

(assert (=> b!1465861 (=> (not res!994766) (not e!823635))))

(declare-datatypes ((array!98785 0))(
  ( (array!98786 (arr!47676 (Array (_ BitVec 32) (_ BitVec 64))) (size!48227 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98785)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98785 (_ BitVec 32)) Bool)

(assert (=> b!1465861 (= res!994766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465862 () Bool)

(declare-fun res!994782 () Bool)

(assert (=> b!1465862 (=> (not res!994782) (not e!823635))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465862 (= res!994782 (validKeyInArray!0 (select (arr!47676 a!2862) i!1006)))))

(declare-fun b!1465863 () Bool)

(declare-fun res!994778 () Bool)

(assert (=> b!1465863 (=> (not res!994778) (not e!823635))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1465863 (= res!994778 (and (= (size!48227 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48227 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48227 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465864 () Bool)

(declare-fun res!994774 () Bool)

(declare-fun e!823636 () Bool)

(assert (=> b!1465864 (=> (not res!994774) (not e!823636))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465864 (= res!994774 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465865 () Bool)

(declare-fun res!994773 () Bool)

(assert (=> b!1465865 (=> (not res!994773) (not e!823635))))

(assert (=> b!1465865 (= res!994773 (validKeyInArray!0 (select (arr!47676 a!2862) j!93)))))

(declare-fun e!823638 () Bool)

(declare-fun lt!641517 () (_ BitVec 64))

(declare-fun b!1465866 () Bool)

(declare-fun lt!641512 () (_ BitVec 32))

(declare-fun lt!641511 () array!98785)

(declare-datatypes ((SeekEntryResult!11951 0))(
  ( (MissingZero!11951 (index!50195 (_ BitVec 32))) (Found!11951 (index!50196 (_ BitVec 32))) (Intermediate!11951 (undefined!12763 Bool) (index!50197 (_ BitVec 32)) (x!131771 (_ BitVec 32))) (Undefined!11951) (MissingVacant!11951 (index!50198 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98785 (_ BitVec 32)) SeekEntryResult!11951)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98785 (_ BitVec 32)) SeekEntryResult!11951)

(assert (=> b!1465866 (= e!823638 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641512 intermediateAfterIndex!19 lt!641517 lt!641511 mask!2687) (seekEntryOrOpen!0 lt!641517 lt!641511 mask!2687))))))

(declare-fun b!1465867 () Bool)

(declare-fun res!994770 () Bool)

(assert (=> b!1465867 (=> (not res!994770) (not e!823635))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1465867 (= res!994770 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48227 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48227 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48227 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465868 () Bool)

(declare-fun res!994767 () Bool)

(declare-fun e!823643 () Bool)

(assert (=> b!1465868 (=> res!994767 e!823643)))

(declare-fun lt!641518 () SeekEntryResult!11951)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98785 (_ BitVec 32)) SeekEntryResult!11951)

(assert (=> b!1465868 (= res!994767 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641512 (select (arr!47676 a!2862) j!93) a!2862 mask!2687) lt!641518)))))

(declare-fun b!1465870 () Bool)

(declare-fun e!823640 () Bool)

(assert (=> b!1465870 (= e!823636 (not e!823640))))

(declare-fun res!994772 () Bool)

(assert (=> b!1465870 (=> res!994772 e!823640)))

(assert (=> b!1465870 (= res!994772 (or (and (= (select (arr!47676 a!2862) index!646) (select (store (arr!47676 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47676 a!2862) index!646) (select (arr!47676 a!2862) j!93))) (= (select (arr!47676 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641514 () SeekEntryResult!11951)

(assert (=> b!1465870 (and (= lt!641514 (Found!11951 j!93)) (or (= (select (arr!47676 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47676 a!2862) intermediateBeforeIndex!19) (select (arr!47676 a!2862) j!93))))))

(assert (=> b!1465870 (= lt!641514 (seekEntryOrOpen!0 (select (arr!47676 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1465870 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49346 0))(
  ( (Unit!49347) )
))
(declare-fun lt!641516 () Unit!49346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49346)

(assert (=> b!1465870 (= lt!641516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465871 () Bool)

(declare-fun e!823642 () Bool)

(assert (=> b!1465871 (= e!823642 e!823636)))

(declare-fun res!994771 () Bool)

(assert (=> b!1465871 (=> (not res!994771) (not e!823636))))

(declare-fun lt!641515 () SeekEntryResult!11951)

(assert (=> b!1465871 (= res!994771 (= lt!641515 (Intermediate!11951 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465871 (= lt!641515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641517 mask!2687) lt!641517 lt!641511 mask!2687))))

(assert (=> b!1465871 (= lt!641517 (select (store (arr!47676 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465872 () Bool)

(declare-fun res!994769 () Bool)

(assert (=> b!1465872 (=> res!994769 e!823643)))

(assert (=> b!1465872 (= res!994769 e!823638)))

(declare-fun c!135062 () Bool)

(assert (=> b!1465872 (= c!135062 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465873 () Bool)

(declare-fun e!823641 () Bool)

(assert (=> b!1465873 (= e!823641 e!823642)))

(declare-fun res!994765 () Bool)

(assert (=> b!1465873 (=> (not res!994765) (not e!823642))))

(assert (=> b!1465873 (= res!994765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47676 a!2862) j!93) mask!2687) (select (arr!47676 a!2862) j!93) a!2862 mask!2687) lt!641518))))

(assert (=> b!1465873 (= lt!641518 (Intermediate!11951 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465874 () Bool)

(assert (=> b!1465874 (= e!823640 e!823643)))

(declare-fun res!994775 () Bool)

(assert (=> b!1465874 (=> res!994775 e!823643)))

(assert (=> b!1465874 (= res!994775 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641512 #b00000000000000000000000000000000) (bvsge lt!641512 (size!48227 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465874 (= lt!641512 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465875 () Bool)

(declare-fun e!823637 () Bool)

(assert (=> b!1465875 (= e!823637 (= lt!641515 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641517 lt!641511 mask!2687)))))

(declare-fun res!994781 () Bool)

(assert (=> start!125420 (=> (not res!994781) (not e!823635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125420 (= res!994781 (validMask!0 mask!2687))))

(assert (=> start!125420 e!823635))

(assert (=> start!125420 true))

(declare-fun array_inv!36621 (array!98785) Bool)

(assert (=> start!125420 (array_inv!36621 a!2862)))

(declare-fun b!1465869 () Bool)

(assert (=> b!1465869 (= e!823638 (not (= lt!641515 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641512 lt!641517 lt!641511 mask!2687))))))

(declare-fun b!1465876 () Bool)

(assert (=> b!1465876 (= e!823643 true)))

(assert (=> b!1465876 (= lt!641514 (seekEntryOrOpen!0 lt!641517 lt!641511 mask!2687))))

(declare-fun lt!641513 () Unit!49346)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49346)

(assert (=> b!1465876 (= lt!641513 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641512 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1465877 () Bool)

(assert (=> b!1465877 (= e!823637 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641517 lt!641511 mask!2687) (seekEntryOrOpen!0 lt!641517 lt!641511 mask!2687)))))

(declare-fun b!1465878 () Bool)

(declare-fun res!994779 () Bool)

(assert (=> b!1465878 (=> (not res!994779) (not e!823636))))

(assert (=> b!1465878 (= res!994779 e!823637)))

(declare-fun c!135061 () Bool)

(assert (=> b!1465878 (= c!135061 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465879 () Bool)

(declare-fun res!994776 () Bool)

(assert (=> b!1465879 (=> (not res!994776) (not e!823642))))

(assert (=> b!1465879 (= res!994776 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47676 a!2862) j!93) a!2862 mask!2687) lt!641518))))

(declare-fun b!1465880 () Bool)

(declare-fun res!994768 () Bool)

(assert (=> b!1465880 (=> (not res!994768) (not e!823635))))

(declare-datatypes ((List!34357 0))(
  ( (Nil!34354) (Cons!34353 (h!35703 (_ BitVec 64)) (t!49058 List!34357)) )
))
(declare-fun arrayNoDuplicates!0 (array!98785 (_ BitVec 32) List!34357) Bool)

(assert (=> b!1465880 (= res!994768 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34354))))

(declare-fun b!1465881 () Bool)

(declare-fun res!994777 () Bool)

(assert (=> b!1465881 (=> res!994777 e!823643)))

(assert (=> b!1465881 (= res!994777 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1465882 () Bool)

(assert (=> b!1465882 (= e!823635 e!823641)))

(declare-fun res!994780 () Bool)

(assert (=> b!1465882 (=> (not res!994780) (not e!823641))))

(assert (=> b!1465882 (= res!994780 (= (select (store (arr!47676 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465882 (= lt!641511 (array!98786 (store (arr!47676 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48227 a!2862)))))

(assert (= (and start!125420 res!994781) b!1465863))

(assert (= (and b!1465863 res!994778) b!1465862))

(assert (= (and b!1465862 res!994782) b!1465865))

(assert (= (and b!1465865 res!994773) b!1465861))

(assert (= (and b!1465861 res!994766) b!1465880))

(assert (= (and b!1465880 res!994768) b!1465867))

(assert (= (and b!1465867 res!994770) b!1465882))

(assert (= (and b!1465882 res!994780) b!1465873))

(assert (= (and b!1465873 res!994765) b!1465879))

(assert (= (and b!1465879 res!994776) b!1465871))

(assert (= (and b!1465871 res!994771) b!1465878))

(assert (= (and b!1465878 c!135061) b!1465875))

(assert (= (and b!1465878 (not c!135061)) b!1465877))

(assert (= (and b!1465878 res!994779) b!1465864))

(assert (= (and b!1465864 res!994774) b!1465870))

(assert (= (and b!1465870 (not res!994772)) b!1465874))

(assert (= (and b!1465874 (not res!994775)) b!1465868))

(assert (= (and b!1465868 (not res!994767)) b!1465872))

(assert (= (and b!1465872 c!135062) b!1465869))

(assert (= (and b!1465872 (not c!135062)) b!1465866))

(assert (= (and b!1465872 (not res!994769)) b!1465881))

(assert (= (and b!1465881 (not res!994777)) b!1465876))

(declare-fun m!1352955 () Bool)

(assert (=> b!1465873 m!1352955))

(assert (=> b!1465873 m!1352955))

(declare-fun m!1352957 () Bool)

(assert (=> b!1465873 m!1352957))

(assert (=> b!1465873 m!1352957))

(assert (=> b!1465873 m!1352955))

(declare-fun m!1352959 () Bool)

(assert (=> b!1465873 m!1352959))

(declare-fun m!1352961 () Bool)

(assert (=> b!1465880 m!1352961))

(declare-fun m!1352963 () Bool)

(assert (=> start!125420 m!1352963))

(declare-fun m!1352965 () Bool)

(assert (=> start!125420 m!1352965))

(declare-fun m!1352967 () Bool)

(assert (=> b!1465866 m!1352967))

(declare-fun m!1352969 () Bool)

(assert (=> b!1465866 m!1352969))

(assert (=> b!1465876 m!1352969))

(declare-fun m!1352971 () Bool)

(assert (=> b!1465876 m!1352971))

(declare-fun m!1352973 () Bool)

(assert (=> b!1465875 m!1352973))

(declare-fun m!1352975 () Bool)

(assert (=> b!1465862 m!1352975))

(assert (=> b!1465862 m!1352975))

(declare-fun m!1352977 () Bool)

(assert (=> b!1465862 m!1352977))

(assert (=> b!1465868 m!1352955))

(assert (=> b!1465868 m!1352955))

(declare-fun m!1352979 () Bool)

(assert (=> b!1465868 m!1352979))

(declare-fun m!1352981 () Bool)

(assert (=> b!1465861 m!1352981))

(declare-fun m!1352983 () Bool)

(assert (=> b!1465874 m!1352983))

(assert (=> b!1465879 m!1352955))

(assert (=> b!1465879 m!1352955))

(declare-fun m!1352985 () Bool)

(assert (=> b!1465879 m!1352985))

(declare-fun m!1352987 () Bool)

(assert (=> b!1465877 m!1352987))

(assert (=> b!1465877 m!1352969))

(declare-fun m!1352989 () Bool)

(assert (=> b!1465871 m!1352989))

(assert (=> b!1465871 m!1352989))

(declare-fun m!1352991 () Bool)

(assert (=> b!1465871 m!1352991))

(declare-fun m!1352993 () Bool)

(assert (=> b!1465871 m!1352993))

(declare-fun m!1352995 () Bool)

(assert (=> b!1465871 m!1352995))

(assert (=> b!1465865 m!1352955))

(assert (=> b!1465865 m!1352955))

(declare-fun m!1352997 () Bool)

(assert (=> b!1465865 m!1352997))

(declare-fun m!1352999 () Bool)

(assert (=> b!1465869 m!1352999))

(assert (=> b!1465882 m!1352993))

(declare-fun m!1353001 () Bool)

(assert (=> b!1465882 m!1353001))

(declare-fun m!1353003 () Bool)

(assert (=> b!1465870 m!1353003))

(assert (=> b!1465870 m!1352993))

(declare-fun m!1353005 () Bool)

(assert (=> b!1465870 m!1353005))

(declare-fun m!1353007 () Bool)

(assert (=> b!1465870 m!1353007))

(declare-fun m!1353009 () Bool)

(assert (=> b!1465870 m!1353009))

(assert (=> b!1465870 m!1352955))

(declare-fun m!1353011 () Bool)

(assert (=> b!1465870 m!1353011))

(declare-fun m!1353013 () Bool)

(assert (=> b!1465870 m!1353013))

(assert (=> b!1465870 m!1352955))

(push 1)

(assert (not b!1465868))

(assert (not b!1465862))

(assert (not b!1465879))

(assert (not b!1465880))

(assert (not b!1465861))

(assert (not b!1465875))

(assert (not b!1465870))

(assert (not b!1465873))

(assert (not b!1465866))

(assert (not b!1465877))

(assert (not b!1465874))

(assert (not b!1465865))

(assert (not b!1465876))

(assert (not b!1465869))

(assert (not b!1465871))

(assert (not start!125420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

