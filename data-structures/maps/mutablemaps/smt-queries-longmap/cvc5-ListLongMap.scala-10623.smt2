; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124918 () Bool)

(assert start!124918)

(declare-fun b!1450137 () Bool)

(declare-fun res!981624 () Bool)

(declare-fun e!816617 () Bool)

(assert (=> b!1450137 (=> (not res!981624) (not e!816617))))

(declare-datatypes ((array!98283 0))(
  ( (array!98284 (arr!47425 (Array (_ BitVec 32) (_ BitVec 64))) (size!47976 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98283)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450137 (= res!981624 (validKeyInArray!0 (select (arr!47425 a!2862) j!93)))))

(declare-fun e!816620 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1450138 () Bool)

(assert (=> b!1450138 (= e!816620 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450139 () Bool)

(declare-fun e!816625 () Bool)

(assert (=> b!1450139 (= e!816625 e!816620)))

(declare-fun res!981609 () Bool)

(assert (=> b!1450139 (=> (not res!981609) (not e!816620))))

(declare-datatypes ((SeekEntryResult!11700 0))(
  ( (MissingZero!11700 (index!49191 (_ BitVec 32))) (Found!11700 (index!49192 (_ BitVec 32))) (Intermediate!11700 (undefined!12512 Bool) (index!49193 (_ BitVec 32)) (x!130856 (_ BitVec 32))) (Undefined!11700) (MissingVacant!11700 (index!49194 (_ BitVec 32))) )
))
(declare-fun lt!636144 () SeekEntryResult!11700)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98283 (_ BitVec 32)) SeekEntryResult!11700)

(assert (=> b!1450139 (= res!981609 (= lt!636144 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47425 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450140 () Bool)

(declare-fun res!981614 () Bool)

(assert (=> b!1450140 (=> (not res!981614) (not e!816617))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450140 (= res!981614 (and (= (size!47976 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47976 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47976 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450141 () Bool)

(declare-fun e!816623 () Bool)

(assert (=> b!1450141 (= e!816617 e!816623)))

(declare-fun res!981623 () Bool)

(assert (=> b!1450141 (=> (not res!981623) (not e!816623))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450141 (= res!981623 (= (select (store (arr!47425 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636149 () array!98283)

(assert (=> b!1450141 (= lt!636149 (array!98284 (store (arr!47425 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47976 a!2862)))))

(declare-fun b!1450142 () Bool)

(declare-fun e!816622 () Bool)

(assert (=> b!1450142 (= e!816623 e!816622)))

(declare-fun res!981617 () Bool)

(assert (=> b!1450142 (=> (not res!981617) (not e!816622))))

(declare-fun lt!636148 () SeekEntryResult!11700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98283 (_ BitVec 32)) SeekEntryResult!11700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450142 (= res!981617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47425 a!2862) j!93) mask!2687) (select (arr!47425 a!2862) j!93) a!2862 mask!2687) lt!636148))))

(assert (=> b!1450142 (= lt!636148 (Intermediate!11700 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450143 () Bool)

(declare-fun e!816624 () Bool)

(assert (=> b!1450143 (= e!816624 true)))

(declare-fun lt!636151 () SeekEntryResult!11700)

(declare-fun lt!636146 () (_ BitVec 64))

(assert (=> b!1450143 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636146 lt!636149 mask!2687) lt!636151)))

(declare-datatypes ((Unit!48844 0))(
  ( (Unit!48845) )
))
(declare-fun lt!636145 () Unit!48844)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48844)

(assert (=> b!1450143 (= lt!636145 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!981607 () Bool)

(assert (=> start!124918 (=> (not res!981607) (not e!816617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124918 (= res!981607 (validMask!0 mask!2687))))

(assert (=> start!124918 e!816617))

(assert (=> start!124918 true))

(declare-fun array_inv!36370 (array!98283) Bool)

(assert (=> start!124918 (array_inv!36370 a!2862)))

(declare-fun e!816626 () Bool)

(declare-fun b!1450144 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98283 (_ BitVec 32)) SeekEntryResult!11700)

(assert (=> b!1450144 (= e!816626 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636146 lt!636149 mask!2687) (seekEntryOrOpen!0 lt!636146 lt!636149 mask!2687)))))

(declare-fun lt!636150 () SeekEntryResult!11700)

(declare-fun b!1450145 () Bool)

(assert (=> b!1450145 (= e!816626 (= lt!636150 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636146 lt!636149 mask!2687)))))

(declare-fun b!1450146 () Bool)

(declare-fun e!816621 () Bool)

(assert (=> b!1450146 (= e!816621 (not e!816624))))

(declare-fun res!981612 () Bool)

(assert (=> b!1450146 (=> res!981612 e!816624)))

(assert (=> b!1450146 (= res!981612 (or (and (= (select (arr!47425 a!2862) index!646) (select (store (arr!47425 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47425 a!2862) index!646) (select (arr!47425 a!2862) j!93))) (not (= (select (arr!47425 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47425 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816618 () Bool)

(assert (=> b!1450146 e!816618))

(declare-fun res!981621 () Bool)

(assert (=> b!1450146 (=> (not res!981621) (not e!816618))))

(assert (=> b!1450146 (= res!981621 (and (= lt!636144 lt!636151) (or (= (select (arr!47425 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47425 a!2862) intermediateBeforeIndex!19) (select (arr!47425 a!2862) j!93)))))))

(assert (=> b!1450146 (= lt!636151 (Found!11700 j!93))))

(assert (=> b!1450146 (= lt!636144 (seekEntryOrOpen!0 (select (arr!47425 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98283 (_ BitVec 32)) Bool)

(assert (=> b!1450146 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636147 () Unit!48844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48844)

(assert (=> b!1450146 (= lt!636147 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450147 () Bool)

(declare-fun res!981620 () Bool)

(assert (=> b!1450147 (=> (not res!981620) (not e!816622))))

(assert (=> b!1450147 (= res!981620 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47425 a!2862) j!93) a!2862 mask!2687) lt!636148))))

(declare-fun b!1450148 () Bool)

(declare-fun res!981622 () Bool)

(assert (=> b!1450148 (=> (not res!981622) (not e!816617))))

(assert (=> b!1450148 (= res!981622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450149 () Bool)

(declare-fun res!981613 () Bool)

(assert (=> b!1450149 (=> (not res!981613) (not e!816617))))

(declare-datatypes ((List!34106 0))(
  ( (Nil!34103) (Cons!34102 (h!35452 (_ BitVec 64)) (t!48807 List!34106)) )
))
(declare-fun arrayNoDuplicates!0 (array!98283 (_ BitVec 32) List!34106) Bool)

(assert (=> b!1450149 (= res!981613 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34103))))

(declare-fun b!1450150 () Bool)

(declare-fun res!981615 () Bool)

(assert (=> b!1450150 (=> (not res!981615) (not e!816617))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450150 (= res!981615 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47976 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47976 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47976 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450151 () Bool)

(assert (=> b!1450151 (= e!816622 e!816621)))

(declare-fun res!981616 () Bool)

(assert (=> b!1450151 (=> (not res!981616) (not e!816621))))

(assert (=> b!1450151 (= res!981616 (= lt!636150 (Intermediate!11700 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450151 (= lt!636150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636146 mask!2687) lt!636146 lt!636149 mask!2687))))

(assert (=> b!1450151 (= lt!636146 (select (store (arr!47425 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450152 () Bool)

(declare-fun res!981610 () Bool)

(assert (=> b!1450152 (=> (not res!981610) (not e!816621))))

(assert (=> b!1450152 (= res!981610 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450153 () Bool)

(assert (=> b!1450153 (= e!816618 e!816625)))

(declare-fun res!981611 () Bool)

(assert (=> b!1450153 (=> res!981611 e!816625)))

(assert (=> b!1450153 (= res!981611 (or (and (= (select (arr!47425 a!2862) index!646) (select (store (arr!47425 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47425 a!2862) index!646) (select (arr!47425 a!2862) j!93))) (not (= (select (arr!47425 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450154 () Bool)

(declare-fun res!981618 () Bool)

(assert (=> b!1450154 (=> (not res!981618) (not e!816617))))

(assert (=> b!1450154 (= res!981618 (validKeyInArray!0 (select (arr!47425 a!2862) i!1006)))))

(declare-fun b!1450155 () Bool)

(declare-fun res!981619 () Bool)

(assert (=> b!1450155 (=> (not res!981619) (not e!816621))))

(assert (=> b!1450155 (= res!981619 e!816626)))

(declare-fun c!133778 () Bool)

(assert (=> b!1450155 (= c!133778 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450156 () Bool)

(declare-fun res!981608 () Bool)

(assert (=> b!1450156 (=> res!981608 e!816624)))

(assert (=> b!1450156 (= res!981608 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47425 a!2862) j!93) a!2862 mask!2687) lt!636151)))))

(assert (= (and start!124918 res!981607) b!1450140))

(assert (= (and b!1450140 res!981614) b!1450154))

(assert (= (and b!1450154 res!981618) b!1450137))

(assert (= (and b!1450137 res!981624) b!1450148))

(assert (= (and b!1450148 res!981622) b!1450149))

(assert (= (and b!1450149 res!981613) b!1450150))

(assert (= (and b!1450150 res!981615) b!1450141))

(assert (= (and b!1450141 res!981623) b!1450142))

(assert (= (and b!1450142 res!981617) b!1450147))

(assert (= (and b!1450147 res!981620) b!1450151))

(assert (= (and b!1450151 res!981616) b!1450155))

(assert (= (and b!1450155 c!133778) b!1450145))

(assert (= (and b!1450155 (not c!133778)) b!1450144))

(assert (= (and b!1450155 res!981619) b!1450152))

(assert (= (and b!1450152 res!981610) b!1450146))

(assert (= (and b!1450146 res!981621) b!1450153))

(assert (= (and b!1450153 (not res!981611)) b!1450139))

(assert (= (and b!1450139 res!981609) b!1450138))

(assert (= (and b!1450146 (not res!981612)) b!1450156))

(assert (= (and b!1450156 (not res!981608)) b!1450143))

(declare-fun m!1338855 () Bool)

(assert (=> b!1450145 m!1338855))

(declare-fun m!1338857 () Bool)

(assert (=> b!1450141 m!1338857))

(declare-fun m!1338859 () Bool)

(assert (=> b!1450141 m!1338859))

(declare-fun m!1338861 () Bool)

(assert (=> b!1450149 m!1338861))

(declare-fun m!1338863 () Bool)

(assert (=> b!1450156 m!1338863))

(assert (=> b!1450156 m!1338863))

(declare-fun m!1338865 () Bool)

(assert (=> b!1450156 m!1338865))

(declare-fun m!1338867 () Bool)

(assert (=> b!1450144 m!1338867))

(declare-fun m!1338869 () Bool)

(assert (=> b!1450144 m!1338869))

(declare-fun m!1338871 () Bool)

(assert (=> b!1450154 m!1338871))

(assert (=> b!1450154 m!1338871))

(declare-fun m!1338873 () Bool)

(assert (=> b!1450154 m!1338873))

(declare-fun m!1338875 () Bool)

(assert (=> start!124918 m!1338875))

(declare-fun m!1338877 () Bool)

(assert (=> start!124918 m!1338877))

(declare-fun m!1338879 () Bool)

(assert (=> b!1450146 m!1338879))

(assert (=> b!1450146 m!1338857))

(declare-fun m!1338881 () Bool)

(assert (=> b!1450146 m!1338881))

(declare-fun m!1338883 () Bool)

(assert (=> b!1450146 m!1338883))

(declare-fun m!1338885 () Bool)

(assert (=> b!1450146 m!1338885))

(assert (=> b!1450146 m!1338863))

(declare-fun m!1338887 () Bool)

(assert (=> b!1450146 m!1338887))

(declare-fun m!1338889 () Bool)

(assert (=> b!1450146 m!1338889))

(assert (=> b!1450146 m!1338863))

(declare-fun m!1338891 () Bool)

(assert (=> b!1450148 m!1338891))

(assert (=> b!1450143 m!1338867))

(declare-fun m!1338893 () Bool)

(assert (=> b!1450143 m!1338893))

(assert (=> b!1450153 m!1338885))

(assert (=> b!1450153 m!1338857))

(assert (=> b!1450153 m!1338883))

(assert (=> b!1450153 m!1338863))

(assert (=> b!1450137 m!1338863))

(assert (=> b!1450137 m!1338863))

(declare-fun m!1338895 () Bool)

(assert (=> b!1450137 m!1338895))

(assert (=> b!1450147 m!1338863))

(assert (=> b!1450147 m!1338863))

(declare-fun m!1338897 () Bool)

(assert (=> b!1450147 m!1338897))

(assert (=> b!1450142 m!1338863))

(assert (=> b!1450142 m!1338863))

(declare-fun m!1338899 () Bool)

(assert (=> b!1450142 m!1338899))

(assert (=> b!1450142 m!1338899))

(assert (=> b!1450142 m!1338863))

(declare-fun m!1338901 () Bool)

(assert (=> b!1450142 m!1338901))

(declare-fun m!1338903 () Bool)

(assert (=> b!1450151 m!1338903))

(assert (=> b!1450151 m!1338903))

(declare-fun m!1338905 () Bool)

(assert (=> b!1450151 m!1338905))

(assert (=> b!1450151 m!1338857))

(declare-fun m!1338907 () Bool)

(assert (=> b!1450151 m!1338907))

(assert (=> b!1450139 m!1338863))

(assert (=> b!1450139 m!1338863))

(declare-fun m!1338909 () Bool)

(assert (=> b!1450139 m!1338909))

(push 1)

