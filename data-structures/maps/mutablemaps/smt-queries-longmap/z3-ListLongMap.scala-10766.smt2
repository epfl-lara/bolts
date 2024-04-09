; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125958 () Bool)

(assert start!125958)

(declare-fun b!1474329 () Bool)

(declare-fun e!827248 () Bool)

(declare-fun e!827243 () Bool)

(assert (=> b!1474329 (= e!827248 e!827243)))

(declare-fun res!1001651 () Bool)

(assert (=> b!1474329 (=> (not res!1001651) (not e!827243))))

(declare-datatypes ((SeekEntryResult!12118 0))(
  ( (MissingZero!12118 (index!50863 (_ BitVec 32))) (Found!12118 (index!50864 (_ BitVec 32))) (Intermediate!12118 (undefined!12930 Bool) (index!50865 (_ BitVec 32)) (x!132445 (_ BitVec 32))) (Undefined!12118) (MissingVacant!12118 (index!50866 (_ BitVec 32))) )
))
(declare-fun lt!644181 () SeekEntryResult!12118)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474329 (= res!1001651 (= lt!644181 (Intermediate!12118 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644183 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99152 0))(
  ( (array!99153 (arr!47855 (Array (_ BitVec 32) (_ BitVec 64))) (size!48406 (_ BitVec 32))) )
))
(declare-fun lt!644182 () array!99152)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99152 (_ BitVec 32)) SeekEntryResult!12118)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474329 (= lt!644181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644183 mask!2687) lt!644183 lt!644182 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99152)

(assert (=> b!1474329 (= lt!644183 (select (store (arr!47855 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1474330 () Bool)

(declare-fun e!827247 () Bool)

(assert (=> b!1474330 (= e!827247 (or (= (select (arr!47855 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47855 a!2862) intermediateBeforeIndex!19) (select (arr!47855 a!2862) j!93))))))

(declare-fun b!1474331 () Bool)

(declare-fun res!1001650 () Bool)

(assert (=> b!1474331 (=> (not res!1001650) (not e!827248))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!644185 () SeekEntryResult!12118)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1474331 (= res!1001650 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47855 a!2862) j!93) a!2862 mask!2687) lt!644185))))

(declare-fun e!827249 () Bool)

(declare-fun b!1474332 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99152 (_ BitVec 32)) SeekEntryResult!12118)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99152 (_ BitVec 32)) SeekEntryResult!12118)

(assert (=> b!1474332 (= e!827249 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644183 lt!644182 mask!2687) (seekEntryOrOpen!0 lt!644183 lt!644182 mask!2687)))))

(declare-fun b!1474333 () Bool)

(declare-fun res!1001645 () Bool)

(declare-fun e!827245 () Bool)

(assert (=> b!1474333 (=> (not res!1001645) (not e!827245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474333 (= res!1001645 (validKeyInArray!0 (select (arr!47855 a!2862) j!93)))))

(declare-fun b!1474334 () Bool)

(declare-fun e!827246 () Bool)

(assert (=> b!1474334 (= e!827245 e!827246)))

(declare-fun res!1001648 () Bool)

(assert (=> b!1474334 (=> (not res!1001648) (not e!827246))))

(assert (=> b!1474334 (= res!1001648 (= (select (store (arr!47855 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474334 (= lt!644182 (array!99153 (store (arr!47855 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48406 a!2862)))))

(declare-fun b!1474335 () Bool)

(assert (=> b!1474335 (= e!827243 (not true))))

(assert (=> b!1474335 e!827247))

(declare-fun res!1001653 () Bool)

(assert (=> b!1474335 (=> (not res!1001653) (not e!827247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99152 (_ BitVec 32)) Bool)

(assert (=> b!1474335 (= res!1001653 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49524 0))(
  ( (Unit!49525) )
))
(declare-fun lt!644184 () Unit!49524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49524)

(assert (=> b!1474335 (= lt!644184 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1001649 () Bool)

(assert (=> start!125958 (=> (not res!1001649) (not e!827245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125958 (= res!1001649 (validMask!0 mask!2687))))

(assert (=> start!125958 e!827245))

(assert (=> start!125958 true))

(declare-fun array_inv!36800 (array!99152) Bool)

(assert (=> start!125958 (array_inv!36800 a!2862)))

(declare-fun b!1474336 () Bool)

(declare-fun res!1001658 () Bool)

(assert (=> b!1474336 (=> (not res!1001658) (not e!827245))))

(assert (=> b!1474336 (= res!1001658 (validKeyInArray!0 (select (arr!47855 a!2862) i!1006)))))

(declare-fun b!1474337 () Bool)

(declare-fun res!1001644 () Bool)

(assert (=> b!1474337 (=> (not res!1001644) (not e!827245))))

(declare-datatypes ((List!34536 0))(
  ( (Nil!34533) (Cons!34532 (h!35891 (_ BitVec 64)) (t!49237 List!34536)) )
))
(declare-fun arrayNoDuplicates!0 (array!99152 (_ BitVec 32) List!34536) Bool)

(assert (=> b!1474337 (= res!1001644 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34533))))

(declare-fun b!1474338 () Bool)

(declare-fun res!1001652 () Bool)

(assert (=> b!1474338 (=> (not res!1001652) (not e!827245))))

(assert (=> b!1474338 (= res!1001652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474339 () Bool)

(declare-fun res!1001647 () Bool)

(assert (=> b!1474339 (=> (not res!1001647) (not e!827243))))

(assert (=> b!1474339 (= res!1001647 e!827249)))

(declare-fun c!135860 () Bool)

(assert (=> b!1474339 (= c!135860 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474340 () Bool)

(declare-fun res!1001655 () Bool)

(assert (=> b!1474340 (=> (not res!1001655) (not e!827245))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474340 (= res!1001655 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48406 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48406 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48406 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474341 () Bool)

(assert (=> b!1474341 (= e!827249 (= lt!644181 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644183 lt!644182 mask!2687)))))

(declare-fun b!1474342 () Bool)

(declare-fun res!1001654 () Bool)

(assert (=> b!1474342 (=> (not res!1001654) (not e!827243))))

(assert (=> b!1474342 (= res!1001654 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474343 () Bool)

(declare-fun res!1001657 () Bool)

(assert (=> b!1474343 (=> (not res!1001657) (not e!827247))))

(assert (=> b!1474343 (= res!1001657 (= (seekEntryOrOpen!0 (select (arr!47855 a!2862) j!93) a!2862 mask!2687) (Found!12118 j!93)))))

(declare-fun b!1474344 () Bool)

(declare-fun res!1001656 () Bool)

(assert (=> b!1474344 (=> (not res!1001656) (not e!827245))))

(assert (=> b!1474344 (= res!1001656 (and (= (size!48406 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48406 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48406 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474345 () Bool)

(assert (=> b!1474345 (= e!827246 e!827248)))

(declare-fun res!1001646 () Bool)

(assert (=> b!1474345 (=> (not res!1001646) (not e!827248))))

(assert (=> b!1474345 (= res!1001646 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47855 a!2862) j!93) mask!2687) (select (arr!47855 a!2862) j!93) a!2862 mask!2687) lt!644185))))

(assert (=> b!1474345 (= lt!644185 (Intermediate!12118 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125958 res!1001649) b!1474344))

(assert (= (and b!1474344 res!1001656) b!1474336))

(assert (= (and b!1474336 res!1001658) b!1474333))

(assert (= (and b!1474333 res!1001645) b!1474338))

(assert (= (and b!1474338 res!1001652) b!1474337))

(assert (= (and b!1474337 res!1001644) b!1474340))

(assert (= (and b!1474340 res!1001655) b!1474334))

(assert (= (and b!1474334 res!1001648) b!1474345))

(assert (= (and b!1474345 res!1001646) b!1474331))

(assert (= (and b!1474331 res!1001650) b!1474329))

(assert (= (and b!1474329 res!1001651) b!1474339))

(assert (= (and b!1474339 c!135860) b!1474341))

(assert (= (and b!1474339 (not c!135860)) b!1474332))

(assert (= (and b!1474339 res!1001647) b!1474342))

(assert (= (and b!1474342 res!1001654) b!1474335))

(assert (= (and b!1474335 res!1001653) b!1474343))

(assert (= (and b!1474343 res!1001657) b!1474330))

(declare-fun m!1360837 () Bool)

(assert (=> start!125958 m!1360837))

(declare-fun m!1360839 () Bool)

(assert (=> start!125958 m!1360839))

(declare-fun m!1360841 () Bool)

(assert (=> b!1474331 m!1360841))

(assert (=> b!1474331 m!1360841))

(declare-fun m!1360843 () Bool)

(assert (=> b!1474331 m!1360843))

(declare-fun m!1360845 () Bool)

(assert (=> b!1474337 m!1360845))

(declare-fun m!1360847 () Bool)

(assert (=> b!1474330 m!1360847))

(assert (=> b!1474330 m!1360841))

(declare-fun m!1360849 () Bool)

(assert (=> b!1474336 m!1360849))

(assert (=> b!1474336 m!1360849))

(declare-fun m!1360851 () Bool)

(assert (=> b!1474336 m!1360851))

(assert (=> b!1474333 m!1360841))

(assert (=> b!1474333 m!1360841))

(declare-fun m!1360853 () Bool)

(assert (=> b!1474333 m!1360853))

(assert (=> b!1474343 m!1360841))

(assert (=> b!1474343 m!1360841))

(declare-fun m!1360855 () Bool)

(assert (=> b!1474343 m!1360855))

(declare-fun m!1360857 () Bool)

(assert (=> b!1474329 m!1360857))

(assert (=> b!1474329 m!1360857))

(declare-fun m!1360859 () Bool)

(assert (=> b!1474329 m!1360859))

(declare-fun m!1360861 () Bool)

(assert (=> b!1474329 m!1360861))

(declare-fun m!1360863 () Bool)

(assert (=> b!1474329 m!1360863))

(declare-fun m!1360865 () Bool)

(assert (=> b!1474341 m!1360865))

(declare-fun m!1360867 () Bool)

(assert (=> b!1474338 m!1360867))

(declare-fun m!1360869 () Bool)

(assert (=> b!1474332 m!1360869))

(declare-fun m!1360871 () Bool)

(assert (=> b!1474332 m!1360871))

(assert (=> b!1474334 m!1360861))

(declare-fun m!1360873 () Bool)

(assert (=> b!1474334 m!1360873))

(declare-fun m!1360875 () Bool)

(assert (=> b!1474335 m!1360875))

(declare-fun m!1360877 () Bool)

(assert (=> b!1474335 m!1360877))

(assert (=> b!1474345 m!1360841))

(assert (=> b!1474345 m!1360841))

(declare-fun m!1360879 () Bool)

(assert (=> b!1474345 m!1360879))

(assert (=> b!1474345 m!1360879))

(assert (=> b!1474345 m!1360841))

(declare-fun m!1360881 () Bool)

(assert (=> b!1474345 m!1360881))

(check-sat (not b!1474332) (not b!1474343) (not b!1474333) (not b!1474337) (not b!1474338) (not b!1474331) (not b!1474335) (not start!125958) (not b!1474329) (not b!1474341) (not b!1474336) (not b!1474345))
(check-sat)
