; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126406 () Bool)

(assert start!126406)

(declare-fun b!1481022 () Bool)

(declare-fun res!1006508 () Bool)

(declare-fun e!830725 () Bool)

(assert (=> b!1481022 (=> (not res!1006508) (not e!830725))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99342 0))(
  ( (array!99343 (arr!47944 (Array (_ BitVec 32) (_ BitVec 64))) (size!48495 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99342)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12207 0))(
  ( (MissingZero!12207 (index!51219 (_ BitVec 32))) (Found!12207 (index!51220 (_ BitVec 32))) (Intermediate!12207 (undefined!13019 Bool) (index!51221 (_ BitVec 32)) (x!132813 (_ BitVec 32))) (Undefined!12207) (MissingVacant!12207 (index!51222 (_ BitVec 32))) )
))
(declare-fun lt!646621 () SeekEntryResult!12207)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99342 (_ BitVec 32)) SeekEntryResult!12207)

(assert (=> b!1481022 (= res!1006508 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47944 a!2862) j!93) a!2862 mask!2687) lt!646621))))

(declare-fun b!1481023 () Bool)

(declare-fun res!1006498 () Bool)

(declare-fun e!830723 () Bool)

(assert (=> b!1481023 (=> (not res!1006498) (not e!830723))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99342 (_ BitVec 32)) SeekEntryResult!12207)

(assert (=> b!1481023 (= res!1006498 (= (seekEntryOrOpen!0 (select (arr!47944 a!2862) j!93) a!2862 mask!2687) (Found!12207 j!93)))))

(declare-fun b!1481024 () Bool)

(declare-fun e!830726 () Bool)

(assert (=> b!1481024 (= e!830726 (not true))))

(assert (=> b!1481024 e!830723))

(declare-fun res!1006497 () Bool)

(assert (=> b!1481024 (=> (not res!1006497) (not e!830723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99342 (_ BitVec 32)) Bool)

(assert (=> b!1481024 (= res!1006497 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49702 0))(
  ( (Unit!49703) )
))
(declare-fun lt!646620 () Unit!49702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49702)

(assert (=> b!1481024 (= lt!646620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!646619 () (_ BitVec 64))

(declare-fun b!1481025 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!830720 () Bool)

(declare-fun lt!646617 () array!99342)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99342 (_ BitVec 32)) SeekEntryResult!12207)

(assert (=> b!1481025 (= e!830720 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646619 lt!646617 mask!2687) (seekEntryOrOpen!0 lt!646619 lt!646617 mask!2687)))))

(declare-fun b!1481027 () Bool)

(declare-fun res!1006504 () Bool)

(declare-fun e!830721 () Bool)

(assert (=> b!1481027 (=> (not res!1006504) (not e!830721))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481027 (= res!1006504 (and (= (size!48495 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48495 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48495 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481028 () Bool)

(declare-fun res!1006503 () Bool)

(assert (=> b!1481028 (=> (not res!1006503) (not e!830726))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481028 (= res!1006503 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481029 () Bool)

(declare-fun res!1006509 () Bool)

(assert (=> b!1481029 (=> (not res!1006509) (not e!830721))))

(assert (=> b!1481029 (= res!1006509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1481030 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481030 (= e!830723 (and (or (= (select (arr!47944 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47944 a!2862) intermediateBeforeIndex!19) (select (arr!47944 a!2862) j!93))) (or (and (= (select (arr!47944 a!2862) index!646) (select (store (arr!47944 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47944 a!2862) index!646) (select (arr!47944 a!2862) j!93))) (= (select (arr!47944 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun res!1006499 () Bool)

(assert (=> start!126406 (=> (not res!1006499) (not e!830721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126406 (= res!1006499 (validMask!0 mask!2687))))

(assert (=> start!126406 e!830721))

(assert (=> start!126406 true))

(declare-fun array_inv!36889 (array!99342) Bool)

(assert (=> start!126406 (array_inv!36889 a!2862)))

(declare-fun b!1481026 () Bool)

(declare-fun res!1006500 () Bool)

(assert (=> b!1481026 (=> (not res!1006500) (not e!830721))))

(assert (=> b!1481026 (= res!1006500 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48495 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48495 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48495 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481031 () Bool)

(declare-fun res!1006502 () Bool)

(assert (=> b!1481031 (=> (not res!1006502) (not e!830721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481031 (= res!1006502 (validKeyInArray!0 (select (arr!47944 a!2862) j!93)))))

(declare-fun b!1481032 () Bool)

(declare-fun res!1006496 () Bool)

(assert (=> b!1481032 (=> (not res!1006496) (not e!830721))))

(declare-datatypes ((List!34625 0))(
  ( (Nil!34622) (Cons!34621 (h!35992 (_ BitVec 64)) (t!49326 List!34625)) )
))
(declare-fun arrayNoDuplicates!0 (array!99342 (_ BitVec 32) List!34625) Bool)

(assert (=> b!1481032 (= res!1006496 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34622))))

(declare-fun b!1481033 () Bool)

(declare-fun res!1006506 () Bool)

(assert (=> b!1481033 (=> (not res!1006506) (not e!830726))))

(assert (=> b!1481033 (= res!1006506 e!830720)))

(declare-fun c!136787 () Bool)

(assert (=> b!1481033 (= c!136787 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481034 () Bool)

(assert (=> b!1481034 (= e!830725 e!830726)))

(declare-fun res!1006495 () Bool)

(assert (=> b!1481034 (=> (not res!1006495) (not e!830726))))

(declare-fun lt!646618 () SeekEntryResult!12207)

(assert (=> b!1481034 (= res!1006495 (= lt!646618 (Intermediate!12207 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481034 (= lt!646618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646619 mask!2687) lt!646619 lt!646617 mask!2687))))

(assert (=> b!1481034 (= lt!646619 (select (store (arr!47944 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481035 () Bool)

(declare-fun e!830724 () Bool)

(assert (=> b!1481035 (= e!830721 e!830724)))

(declare-fun res!1006505 () Bool)

(assert (=> b!1481035 (=> (not res!1006505) (not e!830724))))

(assert (=> b!1481035 (= res!1006505 (= (select (store (arr!47944 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481035 (= lt!646617 (array!99343 (store (arr!47944 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48495 a!2862)))))

(declare-fun b!1481036 () Bool)

(assert (=> b!1481036 (= e!830724 e!830725)))

(declare-fun res!1006507 () Bool)

(assert (=> b!1481036 (=> (not res!1006507) (not e!830725))))

(assert (=> b!1481036 (= res!1006507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47944 a!2862) j!93) mask!2687) (select (arr!47944 a!2862) j!93) a!2862 mask!2687) lt!646621))))

(assert (=> b!1481036 (= lt!646621 (Intermediate!12207 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481037 () Bool)

(assert (=> b!1481037 (= e!830720 (= lt!646618 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646619 lt!646617 mask!2687)))))

(declare-fun b!1481038 () Bool)

(declare-fun res!1006501 () Bool)

(assert (=> b!1481038 (=> (not res!1006501) (not e!830721))))

(assert (=> b!1481038 (= res!1006501 (validKeyInArray!0 (select (arr!47944 a!2862) i!1006)))))

(assert (= (and start!126406 res!1006499) b!1481027))

(assert (= (and b!1481027 res!1006504) b!1481038))

(assert (= (and b!1481038 res!1006501) b!1481031))

(assert (= (and b!1481031 res!1006502) b!1481029))

(assert (= (and b!1481029 res!1006509) b!1481032))

(assert (= (and b!1481032 res!1006496) b!1481026))

(assert (= (and b!1481026 res!1006500) b!1481035))

(assert (= (and b!1481035 res!1006505) b!1481036))

(assert (= (and b!1481036 res!1006507) b!1481022))

(assert (= (and b!1481022 res!1006508) b!1481034))

(assert (= (and b!1481034 res!1006495) b!1481033))

(assert (= (and b!1481033 c!136787) b!1481037))

(assert (= (and b!1481033 (not c!136787)) b!1481025))

(assert (= (and b!1481033 res!1006506) b!1481028))

(assert (= (and b!1481028 res!1006503) b!1481024))

(assert (= (and b!1481024 res!1006497) b!1481023))

(assert (= (and b!1481023 res!1006498) b!1481030))

(declare-fun m!1366827 () Bool)

(assert (=> b!1481023 m!1366827))

(assert (=> b!1481023 m!1366827))

(declare-fun m!1366829 () Bool)

(assert (=> b!1481023 m!1366829))

(declare-fun m!1366831 () Bool)

(assert (=> b!1481035 m!1366831))

(declare-fun m!1366833 () Bool)

(assert (=> b!1481035 m!1366833))

(declare-fun m!1366835 () Bool)

(assert (=> b!1481029 m!1366835))

(declare-fun m!1366837 () Bool)

(assert (=> b!1481034 m!1366837))

(assert (=> b!1481034 m!1366837))

(declare-fun m!1366839 () Bool)

(assert (=> b!1481034 m!1366839))

(assert (=> b!1481034 m!1366831))

(declare-fun m!1366841 () Bool)

(assert (=> b!1481034 m!1366841))

(declare-fun m!1366843 () Bool)

(assert (=> b!1481025 m!1366843))

(declare-fun m!1366845 () Bool)

(assert (=> b!1481025 m!1366845))

(assert (=> b!1481022 m!1366827))

(assert (=> b!1481022 m!1366827))

(declare-fun m!1366847 () Bool)

(assert (=> b!1481022 m!1366847))

(assert (=> b!1481036 m!1366827))

(assert (=> b!1481036 m!1366827))

(declare-fun m!1366849 () Bool)

(assert (=> b!1481036 m!1366849))

(assert (=> b!1481036 m!1366849))

(assert (=> b!1481036 m!1366827))

(declare-fun m!1366851 () Bool)

(assert (=> b!1481036 m!1366851))

(declare-fun m!1366853 () Bool)

(assert (=> b!1481038 m!1366853))

(assert (=> b!1481038 m!1366853))

(declare-fun m!1366855 () Bool)

(assert (=> b!1481038 m!1366855))

(assert (=> b!1481031 m!1366827))

(assert (=> b!1481031 m!1366827))

(declare-fun m!1366857 () Bool)

(assert (=> b!1481031 m!1366857))

(assert (=> b!1481030 m!1366831))

(declare-fun m!1366859 () Bool)

(assert (=> b!1481030 m!1366859))

(declare-fun m!1366861 () Bool)

(assert (=> b!1481030 m!1366861))

(declare-fun m!1366863 () Bool)

(assert (=> b!1481030 m!1366863))

(assert (=> b!1481030 m!1366827))

(declare-fun m!1366865 () Bool)

(assert (=> b!1481024 m!1366865))

(declare-fun m!1366867 () Bool)

(assert (=> b!1481024 m!1366867))

(declare-fun m!1366869 () Bool)

(assert (=> b!1481032 m!1366869))

(declare-fun m!1366871 () Bool)

(assert (=> b!1481037 m!1366871))

(declare-fun m!1366873 () Bool)

(assert (=> start!126406 m!1366873))

(declare-fun m!1366875 () Bool)

(assert (=> start!126406 m!1366875))

(push 1)

