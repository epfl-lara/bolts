; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124928 () Bool)

(assert start!124928)

(declare-fun b!1450437 () Bool)

(declare-fun res!981881 () Bool)

(declare-fun e!816770 () Bool)

(assert (=> b!1450437 (=> res!981881 e!816770)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11705 0))(
  ( (MissingZero!11705 (index!49211 (_ BitVec 32))) (Found!11705 (index!49212 (_ BitVec 32))) (Intermediate!11705 (undefined!12517 Bool) (index!49213 (_ BitVec 32)) (x!130869 (_ BitVec 32))) (Undefined!11705) (MissingVacant!11705 (index!49214 (_ BitVec 32))) )
))
(declare-fun lt!636271 () SeekEntryResult!11705)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98293 0))(
  ( (array!98294 (arr!47430 (Array (_ BitVec 32) (_ BitVec 64))) (size!47981 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98293)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98293 (_ BitVec 32)) SeekEntryResult!11705)

(assert (=> b!1450437 (= res!981881 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47430 a!2862) j!93) a!2862 mask!2687) lt!636271)))))

(declare-fun b!1450438 () Bool)

(declare-fun lt!636270 () array!98293)

(declare-fun lt!636266 () (_ BitVec 64))

(declare-fun e!816775 () Bool)

(declare-fun lt!636267 () SeekEntryResult!11705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98293 (_ BitVec 32)) SeekEntryResult!11705)

(assert (=> b!1450438 (= e!816775 (= lt!636267 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636266 lt!636270 mask!2687)))))

(declare-fun b!1450439 () Bool)

(declare-fun e!816776 () Bool)

(assert (=> b!1450439 (= e!816776 (not e!816770))))

(declare-fun res!981877 () Bool)

(assert (=> b!1450439 (=> res!981877 e!816770)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450439 (= res!981877 (or (and (= (select (arr!47430 a!2862) index!646) (select (store (arr!47430 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47430 a!2862) index!646) (select (arr!47430 a!2862) j!93))) (not (= (select (arr!47430 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47430 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816771 () Bool)

(assert (=> b!1450439 e!816771))

(declare-fun res!981884 () Bool)

(assert (=> b!1450439 (=> (not res!981884) (not e!816771))))

(declare-fun lt!636265 () SeekEntryResult!11705)

(assert (=> b!1450439 (= res!981884 (and (= lt!636265 lt!636271) (or (= (select (arr!47430 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47430 a!2862) intermediateBeforeIndex!19) (select (arr!47430 a!2862) j!93)))))))

(assert (=> b!1450439 (= lt!636271 (Found!11705 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98293 (_ BitVec 32)) SeekEntryResult!11705)

(assert (=> b!1450439 (= lt!636265 (seekEntryOrOpen!0 (select (arr!47430 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98293 (_ BitVec 32)) Bool)

(assert (=> b!1450439 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48854 0))(
  ( (Unit!48855) )
))
(declare-fun lt!636264 () Unit!48854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48854)

(assert (=> b!1450439 (= lt!636264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450440 () Bool)

(declare-fun e!816772 () Bool)

(assert (=> b!1450440 (= e!816772 e!816776)))

(declare-fun res!981890 () Bool)

(assert (=> b!1450440 (=> (not res!981890) (not e!816776))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450440 (= res!981890 (= lt!636267 (Intermediate!11705 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450440 (= lt!636267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636266 mask!2687) lt!636266 lt!636270 mask!2687))))

(assert (=> b!1450440 (= lt!636266 (select (store (arr!47430 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450441 () Bool)

(assert (=> b!1450441 (= e!816770 true)))

(assert (=> b!1450441 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636266 lt!636270 mask!2687) lt!636271)))

(declare-fun lt!636268 () Unit!48854)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48854)

(assert (=> b!1450441 (= lt!636268 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450442 () Bool)

(declare-fun res!981891 () Bool)

(assert (=> b!1450442 (=> (not res!981891) (not e!816776))))

(assert (=> b!1450442 (= res!981891 e!816775)))

(declare-fun c!133793 () Bool)

(assert (=> b!1450442 (= c!133793 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450443 () Bool)

(declare-fun e!816773 () Bool)

(declare-fun e!816768 () Bool)

(assert (=> b!1450443 (= e!816773 e!816768)))

(declare-fun res!981879 () Bool)

(assert (=> b!1450443 (=> (not res!981879) (not e!816768))))

(assert (=> b!1450443 (= res!981879 (= (select (store (arr!47430 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450443 (= lt!636270 (array!98294 (store (arr!47430 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47981 a!2862)))))

(declare-fun b!1450444 () Bool)

(declare-fun e!816769 () Bool)

(assert (=> b!1450444 (= e!816771 e!816769)))

(declare-fun res!981889 () Bool)

(assert (=> b!1450444 (=> res!981889 e!816769)))

(assert (=> b!1450444 (= res!981889 (or (and (= (select (arr!47430 a!2862) index!646) (select (store (arr!47430 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47430 a!2862) index!646) (select (arr!47430 a!2862) j!93))) (not (= (select (arr!47430 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450445 () Bool)

(declare-fun res!981894 () Bool)

(assert (=> b!1450445 (=> (not res!981894) (not e!816773))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450445 (= res!981894 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47981 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47981 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47981 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450446 () Bool)

(declare-fun res!981887 () Bool)

(assert (=> b!1450446 (=> (not res!981887) (not e!816776))))

(assert (=> b!1450446 (= res!981887 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450447 () Bool)

(assert (=> b!1450447 (= e!816775 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636266 lt!636270 mask!2687) (seekEntryOrOpen!0 lt!636266 lt!636270 mask!2687)))))

(declare-fun e!816774 () Bool)

(declare-fun b!1450448 () Bool)

(assert (=> b!1450448 (= e!816774 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450449 () Bool)

(declare-fun res!981878 () Bool)

(assert (=> b!1450449 (=> (not res!981878) (not e!816773))))

(declare-datatypes ((List!34111 0))(
  ( (Nil!34108) (Cons!34107 (h!35457 (_ BitVec 64)) (t!48812 List!34111)) )
))
(declare-fun arrayNoDuplicates!0 (array!98293 (_ BitVec 32) List!34111) Bool)

(assert (=> b!1450449 (= res!981878 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34108))))

(declare-fun b!1450450 () Bool)

(declare-fun res!981883 () Bool)

(assert (=> b!1450450 (=> (not res!981883) (not e!816773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450450 (= res!981883 (validKeyInArray!0 (select (arr!47430 a!2862) i!1006)))))

(declare-fun res!981886 () Bool)

(assert (=> start!124928 (=> (not res!981886) (not e!816773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124928 (= res!981886 (validMask!0 mask!2687))))

(assert (=> start!124928 e!816773))

(assert (=> start!124928 true))

(declare-fun array_inv!36375 (array!98293) Bool)

(assert (=> start!124928 (array_inv!36375 a!2862)))

(declare-fun b!1450451 () Bool)

(declare-fun res!981888 () Bool)

(assert (=> b!1450451 (=> (not res!981888) (not e!816772))))

(declare-fun lt!636269 () SeekEntryResult!11705)

(assert (=> b!1450451 (= res!981888 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47430 a!2862) j!93) a!2862 mask!2687) lt!636269))))

(declare-fun b!1450452 () Bool)

(assert (=> b!1450452 (= e!816768 e!816772)))

(declare-fun res!981880 () Bool)

(assert (=> b!1450452 (=> (not res!981880) (not e!816772))))

(assert (=> b!1450452 (= res!981880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47430 a!2862) j!93) mask!2687) (select (arr!47430 a!2862) j!93) a!2862 mask!2687) lt!636269))))

(assert (=> b!1450452 (= lt!636269 (Intermediate!11705 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450453 () Bool)

(assert (=> b!1450453 (= e!816769 e!816774)))

(declare-fun res!981885 () Bool)

(assert (=> b!1450453 (=> (not res!981885) (not e!816774))))

(assert (=> b!1450453 (= res!981885 (= lt!636265 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47430 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450454 () Bool)

(declare-fun res!981892 () Bool)

(assert (=> b!1450454 (=> (not res!981892) (not e!816773))))

(assert (=> b!1450454 (= res!981892 (and (= (size!47981 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47981 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47981 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450455 () Bool)

(declare-fun res!981882 () Bool)

(assert (=> b!1450455 (=> (not res!981882) (not e!816773))))

(assert (=> b!1450455 (= res!981882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450456 () Bool)

(declare-fun res!981893 () Bool)

(assert (=> b!1450456 (=> (not res!981893) (not e!816773))))

(assert (=> b!1450456 (= res!981893 (validKeyInArray!0 (select (arr!47430 a!2862) j!93)))))

(assert (= (and start!124928 res!981886) b!1450454))

(assert (= (and b!1450454 res!981892) b!1450450))

(assert (= (and b!1450450 res!981883) b!1450456))

(assert (= (and b!1450456 res!981893) b!1450455))

(assert (= (and b!1450455 res!981882) b!1450449))

(assert (= (and b!1450449 res!981878) b!1450445))

(assert (= (and b!1450445 res!981894) b!1450443))

(assert (= (and b!1450443 res!981879) b!1450452))

(assert (= (and b!1450452 res!981880) b!1450451))

(assert (= (and b!1450451 res!981888) b!1450440))

(assert (= (and b!1450440 res!981890) b!1450442))

(assert (= (and b!1450442 c!133793) b!1450438))

(assert (= (and b!1450442 (not c!133793)) b!1450447))

(assert (= (and b!1450442 res!981891) b!1450446))

(assert (= (and b!1450446 res!981887) b!1450439))

(assert (= (and b!1450439 res!981884) b!1450444))

(assert (= (and b!1450444 (not res!981889)) b!1450453))

(assert (= (and b!1450453 res!981885) b!1450448))

(assert (= (and b!1450439 (not res!981877)) b!1450437))

(assert (= (and b!1450437 (not res!981881)) b!1450441))

(declare-fun m!1339135 () Bool)

(assert (=> b!1450451 m!1339135))

(assert (=> b!1450451 m!1339135))

(declare-fun m!1339137 () Bool)

(assert (=> b!1450451 m!1339137))

(declare-fun m!1339139 () Bool)

(assert (=> b!1450438 m!1339139))

(declare-fun m!1339141 () Bool)

(assert (=> start!124928 m!1339141))

(declare-fun m!1339143 () Bool)

(assert (=> start!124928 m!1339143))

(declare-fun m!1339145 () Bool)

(assert (=> b!1450444 m!1339145))

(declare-fun m!1339147 () Bool)

(assert (=> b!1450444 m!1339147))

(declare-fun m!1339149 () Bool)

(assert (=> b!1450444 m!1339149))

(assert (=> b!1450444 m!1339135))

(assert (=> b!1450443 m!1339147))

(declare-fun m!1339151 () Bool)

(assert (=> b!1450443 m!1339151))

(assert (=> b!1450452 m!1339135))

(assert (=> b!1450452 m!1339135))

(declare-fun m!1339153 () Bool)

(assert (=> b!1450452 m!1339153))

(assert (=> b!1450452 m!1339153))

(assert (=> b!1450452 m!1339135))

(declare-fun m!1339155 () Bool)

(assert (=> b!1450452 m!1339155))

(declare-fun m!1339157 () Bool)

(assert (=> b!1450439 m!1339157))

(assert (=> b!1450439 m!1339147))

(declare-fun m!1339159 () Bool)

(assert (=> b!1450439 m!1339159))

(assert (=> b!1450439 m!1339149))

(assert (=> b!1450439 m!1339145))

(assert (=> b!1450439 m!1339135))

(declare-fun m!1339161 () Bool)

(assert (=> b!1450439 m!1339161))

(declare-fun m!1339163 () Bool)

(assert (=> b!1450439 m!1339163))

(assert (=> b!1450439 m!1339135))

(declare-fun m!1339165 () Bool)

(assert (=> b!1450447 m!1339165))

(declare-fun m!1339167 () Bool)

(assert (=> b!1450447 m!1339167))

(declare-fun m!1339169 () Bool)

(assert (=> b!1450450 m!1339169))

(assert (=> b!1450450 m!1339169))

(declare-fun m!1339171 () Bool)

(assert (=> b!1450450 m!1339171))

(declare-fun m!1339173 () Bool)

(assert (=> b!1450449 m!1339173))

(assert (=> b!1450453 m!1339135))

(assert (=> b!1450453 m!1339135))

(declare-fun m!1339175 () Bool)

(assert (=> b!1450453 m!1339175))

(assert (=> b!1450441 m!1339165))

(declare-fun m!1339177 () Bool)

(assert (=> b!1450441 m!1339177))

(declare-fun m!1339179 () Bool)

(assert (=> b!1450440 m!1339179))

(assert (=> b!1450440 m!1339179))

(declare-fun m!1339181 () Bool)

(assert (=> b!1450440 m!1339181))

(assert (=> b!1450440 m!1339147))

(declare-fun m!1339183 () Bool)

(assert (=> b!1450440 m!1339183))

(declare-fun m!1339185 () Bool)

(assert (=> b!1450455 m!1339185))

(assert (=> b!1450456 m!1339135))

(assert (=> b!1450456 m!1339135))

(declare-fun m!1339187 () Bool)

(assert (=> b!1450456 m!1339187))

(assert (=> b!1450437 m!1339135))

(assert (=> b!1450437 m!1339135))

(declare-fun m!1339189 () Bool)

(assert (=> b!1450437 m!1339189))

(push 1)

