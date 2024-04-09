; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124924 () Bool)

(assert start!124924)

(declare-fun b!1450317 () Bool)

(declare-fun res!981786 () Bool)

(declare-fun e!816707 () Bool)

(assert (=> b!1450317 (=> (not res!981786) (not e!816707))))

(declare-datatypes ((array!98289 0))(
  ( (array!98290 (arr!47428 (Array (_ BitVec 32) (_ BitVec 64))) (size!47979 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98289)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98289 (_ BitVec 32)) Bool)

(assert (=> b!1450317 (= res!981786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450318 () Bool)

(declare-fun e!816708 () Bool)

(declare-fun e!816712 () Bool)

(assert (=> b!1450318 (= e!816708 (not e!816712))))

(declare-fun res!981776 () Bool)

(assert (=> b!1450318 (=> res!981776 e!816712)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1450318 (= res!981776 (or (and (= (select (arr!47428 a!2862) index!646) (select (store (arr!47428 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47428 a!2862) index!646) (select (arr!47428 a!2862) j!93))) (not (= (select (arr!47428 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47428 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816716 () Bool)

(assert (=> b!1450318 e!816716))

(declare-fun res!981779 () Bool)

(assert (=> b!1450318 (=> (not res!981779) (not e!816716))))

(declare-datatypes ((SeekEntryResult!11703 0))(
  ( (MissingZero!11703 (index!49203 (_ BitVec 32))) (Found!11703 (index!49204 (_ BitVec 32))) (Intermediate!11703 (undefined!12515 Bool) (index!49205 (_ BitVec 32)) (x!130867 (_ BitVec 32))) (Undefined!11703) (MissingVacant!11703 (index!49206 (_ BitVec 32))) )
))
(declare-fun lt!636220 () SeekEntryResult!11703)

(declare-fun lt!636221 () SeekEntryResult!11703)

(assert (=> b!1450318 (= res!981779 (and (= lt!636221 lt!636220) (or (= (select (arr!47428 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47428 a!2862) intermediateBeforeIndex!19) (select (arr!47428 a!2862) j!93)))))))

(assert (=> b!1450318 (= lt!636220 (Found!11703 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98289 (_ BitVec 32)) SeekEntryResult!11703)

(assert (=> b!1450318 (= lt!636221 (seekEntryOrOpen!0 (select (arr!47428 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450318 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48850 0))(
  ( (Unit!48851) )
))
(declare-fun lt!636219 () Unit!48850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48850)

(assert (=> b!1450318 (= lt!636219 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450319 () Bool)

(declare-fun e!816710 () Bool)

(assert (=> b!1450319 (= e!816707 e!816710)))

(declare-fun res!981772 () Bool)

(assert (=> b!1450319 (=> (not res!981772) (not e!816710))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450319 (= res!981772 (= (select (store (arr!47428 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636218 () array!98289)

(assert (=> b!1450319 (= lt!636218 (array!98290 (store (arr!47428 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47979 a!2862)))))

(declare-fun res!981784 () Bool)

(assert (=> start!124924 (=> (not res!981784) (not e!816707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124924 (= res!981784 (validMask!0 mask!2687))))

(assert (=> start!124924 e!816707))

(assert (=> start!124924 true))

(declare-fun array_inv!36373 (array!98289) Bool)

(assert (=> start!124924 (array_inv!36373 a!2862)))

(declare-fun b!1450320 () Bool)

(declare-fun res!981774 () Bool)

(assert (=> b!1450320 (=> (not res!981774) (not e!816707))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450320 (= res!981774 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47979 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47979 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47979 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450321 () Bool)

(declare-fun e!816714 () Bool)

(assert (=> b!1450321 (= e!816716 e!816714)))

(declare-fun res!981773 () Bool)

(assert (=> b!1450321 (=> res!981773 e!816714)))

(assert (=> b!1450321 (= res!981773 (or (and (= (select (arr!47428 a!2862) index!646) (select (store (arr!47428 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47428 a!2862) index!646) (select (arr!47428 a!2862) j!93))) (not (= (select (arr!47428 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450322 () Bool)

(declare-fun res!981785 () Bool)

(assert (=> b!1450322 (=> (not res!981785) (not e!816707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450322 (= res!981785 (validKeyInArray!0 (select (arr!47428 a!2862) i!1006)))))

(declare-fun e!816709 () Bool)

(declare-fun b!1450323 () Bool)

(assert (=> b!1450323 (= e!816709 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450324 () Bool)

(declare-fun res!981775 () Bool)

(assert (=> b!1450324 (=> (not res!981775) (not e!816708))))

(declare-fun e!816711 () Bool)

(assert (=> b!1450324 (= res!981775 e!816711)))

(declare-fun c!133787 () Bool)

(assert (=> b!1450324 (= c!133787 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450325 () Bool)

(declare-fun e!816715 () Bool)

(assert (=> b!1450325 (= e!816710 e!816715)))

(declare-fun res!981770 () Bool)

(assert (=> b!1450325 (=> (not res!981770) (not e!816715))))

(declare-fun lt!636216 () SeekEntryResult!11703)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98289 (_ BitVec 32)) SeekEntryResult!11703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450325 (= res!981770 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47428 a!2862) j!93) mask!2687) (select (arr!47428 a!2862) j!93) a!2862 mask!2687) lt!636216))))

(assert (=> b!1450325 (= lt!636216 (Intermediate!11703 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450326 () Bool)

(declare-fun res!981783 () Bool)

(assert (=> b!1450326 (=> (not res!981783) (not e!816715))))

(assert (=> b!1450326 (= res!981783 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47428 a!2862) j!93) a!2862 mask!2687) lt!636216))))

(declare-fun b!1450327 () Bool)

(assert (=> b!1450327 (= e!816715 e!816708)))

(declare-fun res!981769 () Bool)

(assert (=> b!1450327 (=> (not res!981769) (not e!816708))))

(declare-fun lt!636223 () SeekEntryResult!11703)

(assert (=> b!1450327 (= res!981769 (= lt!636223 (Intermediate!11703 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636217 () (_ BitVec 64))

(assert (=> b!1450327 (= lt!636223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636217 mask!2687) lt!636217 lt!636218 mask!2687))))

(assert (=> b!1450327 (= lt!636217 (select (store (arr!47428 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450328 () Bool)

(assert (=> b!1450328 (= e!816712 true)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98289 (_ BitVec 32)) SeekEntryResult!11703)

(assert (=> b!1450328 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636217 lt!636218 mask!2687) lt!636220)))

(declare-fun lt!636222 () Unit!48850)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48850)

(assert (=> b!1450328 (= lt!636222 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450329 () Bool)

(declare-fun res!981777 () Bool)

(assert (=> b!1450329 (=> (not res!981777) (not e!816707))))

(declare-datatypes ((List!34109 0))(
  ( (Nil!34106) (Cons!34105 (h!35455 (_ BitVec 64)) (t!48810 List!34109)) )
))
(declare-fun arrayNoDuplicates!0 (array!98289 (_ BitVec 32) List!34109) Bool)

(assert (=> b!1450329 (= res!981777 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34106))))

(declare-fun b!1450330 () Bool)

(declare-fun res!981780 () Bool)

(assert (=> b!1450330 (=> (not res!981780) (not e!816707))))

(assert (=> b!1450330 (= res!981780 (validKeyInArray!0 (select (arr!47428 a!2862) j!93)))))

(declare-fun b!1450331 () Bool)

(assert (=> b!1450331 (= e!816714 e!816709)))

(declare-fun res!981778 () Bool)

(assert (=> b!1450331 (=> (not res!981778) (not e!816709))))

(assert (=> b!1450331 (= res!981778 (= lt!636221 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47428 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450332 () Bool)

(declare-fun res!981771 () Bool)

(assert (=> b!1450332 (=> (not res!981771) (not e!816708))))

(assert (=> b!1450332 (= res!981771 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450333 () Bool)

(assert (=> b!1450333 (= e!816711 (= lt!636223 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636217 lt!636218 mask!2687)))))

(declare-fun b!1450334 () Bool)

(declare-fun res!981782 () Bool)

(assert (=> b!1450334 (=> res!981782 e!816712)))

(assert (=> b!1450334 (= res!981782 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47428 a!2862) j!93) a!2862 mask!2687) lt!636220)))))

(declare-fun b!1450335 () Bool)

(declare-fun res!981781 () Bool)

(assert (=> b!1450335 (=> (not res!981781) (not e!816707))))

(assert (=> b!1450335 (= res!981781 (and (= (size!47979 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47979 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47979 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450336 () Bool)

(assert (=> b!1450336 (= e!816711 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636217 lt!636218 mask!2687) (seekEntryOrOpen!0 lt!636217 lt!636218 mask!2687)))))

(assert (= (and start!124924 res!981784) b!1450335))

(assert (= (and b!1450335 res!981781) b!1450322))

(assert (= (and b!1450322 res!981785) b!1450330))

(assert (= (and b!1450330 res!981780) b!1450317))

(assert (= (and b!1450317 res!981786) b!1450329))

(assert (= (and b!1450329 res!981777) b!1450320))

(assert (= (and b!1450320 res!981774) b!1450319))

(assert (= (and b!1450319 res!981772) b!1450325))

(assert (= (and b!1450325 res!981770) b!1450326))

(assert (= (and b!1450326 res!981783) b!1450327))

(assert (= (and b!1450327 res!981769) b!1450324))

(assert (= (and b!1450324 c!133787) b!1450333))

(assert (= (and b!1450324 (not c!133787)) b!1450336))

(assert (= (and b!1450324 res!981775) b!1450332))

(assert (= (and b!1450332 res!981771) b!1450318))

(assert (= (and b!1450318 res!981779) b!1450321))

(assert (= (and b!1450321 (not res!981773)) b!1450331))

(assert (= (and b!1450331 res!981778) b!1450323))

(assert (= (and b!1450318 (not res!981776)) b!1450334))

(assert (= (and b!1450334 (not res!981782)) b!1450328))

(declare-fun m!1339023 () Bool)

(assert (=> b!1450321 m!1339023))

(declare-fun m!1339025 () Bool)

(assert (=> b!1450321 m!1339025))

(declare-fun m!1339027 () Bool)

(assert (=> b!1450321 m!1339027))

(declare-fun m!1339029 () Bool)

(assert (=> b!1450321 m!1339029))

(declare-fun m!1339031 () Bool)

(assert (=> b!1450329 m!1339031))

(assert (=> b!1450330 m!1339029))

(assert (=> b!1450330 m!1339029))

(declare-fun m!1339033 () Bool)

(assert (=> b!1450330 m!1339033))

(declare-fun m!1339035 () Bool)

(assert (=> b!1450336 m!1339035))

(declare-fun m!1339037 () Bool)

(assert (=> b!1450336 m!1339037))

(declare-fun m!1339039 () Bool)

(assert (=> b!1450318 m!1339039))

(assert (=> b!1450318 m!1339025))

(declare-fun m!1339041 () Bool)

(assert (=> b!1450318 m!1339041))

(assert (=> b!1450318 m!1339027))

(assert (=> b!1450318 m!1339023))

(assert (=> b!1450318 m!1339029))

(declare-fun m!1339043 () Bool)

(assert (=> b!1450318 m!1339043))

(declare-fun m!1339045 () Bool)

(assert (=> b!1450318 m!1339045))

(assert (=> b!1450318 m!1339029))

(assert (=> b!1450325 m!1339029))

(assert (=> b!1450325 m!1339029))

(declare-fun m!1339047 () Bool)

(assert (=> b!1450325 m!1339047))

(assert (=> b!1450325 m!1339047))

(assert (=> b!1450325 m!1339029))

(declare-fun m!1339049 () Bool)

(assert (=> b!1450325 m!1339049))

(assert (=> b!1450319 m!1339025))

(declare-fun m!1339051 () Bool)

(assert (=> b!1450319 m!1339051))

(declare-fun m!1339053 () Bool)

(assert (=> b!1450327 m!1339053))

(assert (=> b!1450327 m!1339053))

(declare-fun m!1339055 () Bool)

(assert (=> b!1450327 m!1339055))

(assert (=> b!1450327 m!1339025))

(declare-fun m!1339057 () Bool)

(assert (=> b!1450327 m!1339057))

(assert (=> b!1450334 m!1339029))

(assert (=> b!1450334 m!1339029))

(declare-fun m!1339059 () Bool)

(assert (=> b!1450334 m!1339059))

(assert (=> b!1450331 m!1339029))

(assert (=> b!1450331 m!1339029))

(declare-fun m!1339061 () Bool)

(assert (=> b!1450331 m!1339061))

(assert (=> b!1450328 m!1339035))

(declare-fun m!1339063 () Bool)

(assert (=> b!1450328 m!1339063))

(assert (=> b!1450326 m!1339029))

(assert (=> b!1450326 m!1339029))

(declare-fun m!1339065 () Bool)

(assert (=> b!1450326 m!1339065))

(declare-fun m!1339067 () Bool)

(assert (=> b!1450322 m!1339067))

(assert (=> b!1450322 m!1339067))

(declare-fun m!1339069 () Bool)

(assert (=> b!1450322 m!1339069))

(declare-fun m!1339071 () Bool)

(assert (=> b!1450317 m!1339071))

(declare-fun m!1339073 () Bool)

(assert (=> start!124924 m!1339073))

(declare-fun m!1339075 () Bool)

(assert (=> start!124924 m!1339075))

(declare-fun m!1339077 () Bool)

(assert (=> b!1450333 m!1339077))

(push 1)

