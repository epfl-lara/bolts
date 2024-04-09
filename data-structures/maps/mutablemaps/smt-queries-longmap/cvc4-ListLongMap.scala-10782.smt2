; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126236 () Bool)

(assert start!126236)

(declare-datatypes ((array!99259 0))(
  ( (array!99260 (arr!47904 (Array (_ BitVec 32) (_ BitVec 64))) (size!48455 (_ BitVec 32))) )
))
(declare-fun lt!645548 () array!99259)

(declare-fun b!1478132 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!645546 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!829223 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12167 0))(
  ( (MissingZero!12167 (index!51059 (_ BitVec 32))) (Found!12167 (index!51060 (_ BitVec 32))) (Intermediate!12167 (undefined!12979 Bool) (index!51061 (_ BitVec 32)) (x!132649 (_ BitVec 32))) (Undefined!12167) (MissingVacant!12167 (index!51062 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99259 (_ BitVec 32)) SeekEntryResult!12167)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99259 (_ BitVec 32)) SeekEntryResult!12167)

(assert (=> b!1478132 (= e!829223 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645546 lt!645548 mask!2687) (seekEntryOrOpen!0 lt!645546 lt!645548 mask!2687)))))

(declare-fun b!1478133 () Bool)

(declare-fun e!829222 () Bool)

(declare-fun e!829221 () Bool)

(assert (=> b!1478133 (= e!829222 e!829221)))

(declare-fun res!1004290 () Bool)

(assert (=> b!1478133 (=> res!1004290 e!829221)))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99259)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1478133 (= res!1004290 (or (and (= (select (arr!47904 a!2862) index!646) (select (store (arr!47904 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47904 a!2862) index!646) (select (arr!47904 a!2862) j!93))) (not (= (select (arr!47904 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478134 () Bool)

(declare-fun res!1004289 () Bool)

(declare-fun e!829217 () Bool)

(assert (=> b!1478134 (=> (not res!1004289) (not e!829217))))

(declare-fun lt!645547 () SeekEntryResult!12167)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99259 (_ BitVec 32)) SeekEntryResult!12167)

(assert (=> b!1478134 (= res!1004289 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47904 a!2862) j!93) a!2862 mask!2687) lt!645547))))

(declare-fun b!1478135 () Bool)

(declare-fun res!1004292 () Bool)

(declare-fun e!829219 () Bool)

(assert (=> b!1478135 (=> (not res!1004292) (not e!829219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478135 (= res!1004292 (validKeyInArray!0 (select (arr!47904 a!2862) j!93)))))

(declare-fun b!1478136 () Bool)

(declare-fun res!1004282 () Bool)

(assert (=> b!1478136 (=> (not res!1004282) (not e!829219))))

(assert (=> b!1478136 (= res!1004282 (validKeyInArray!0 (select (arr!47904 a!2862) i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1478137 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!829220 () Bool)

(assert (=> b!1478137 (= e!829220 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478138 () Bool)

(declare-fun e!829215 () Bool)

(assert (=> b!1478138 (= e!829217 e!829215)))

(declare-fun res!1004287 () Bool)

(assert (=> b!1478138 (=> (not res!1004287) (not e!829215))))

(declare-fun lt!645545 () SeekEntryResult!12167)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478138 (= res!1004287 (= lt!645545 (Intermediate!12167 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478138 (= lt!645545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645546 mask!2687) lt!645546 lt!645548 mask!2687))))

(assert (=> b!1478138 (= lt!645546 (select (store (arr!47904 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478140 () Bool)

(assert (=> b!1478140 (= e!829223 (= lt!645545 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645546 lt!645548 mask!2687)))))

(declare-fun b!1478141 () Bool)

(declare-fun res!1004294 () Bool)

(assert (=> b!1478141 (=> (not res!1004294) (not e!829215))))

(assert (=> b!1478141 (= res!1004294 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478142 () Bool)

(declare-fun e!829216 () Bool)

(assert (=> b!1478142 (= e!829216 e!829217)))

(declare-fun res!1004283 () Bool)

(assert (=> b!1478142 (=> (not res!1004283) (not e!829217))))

(assert (=> b!1478142 (= res!1004283 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47904 a!2862) j!93) mask!2687) (select (arr!47904 a!2862) j!93) a!2862 mask!2687) lt!645547))))

(assert (=> b!1478142 (= lt!645547 (Intermediate!12167 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478143 () Bool)

(assert (=> b!1478143 (= e!829215 (not true))))

(assert (=> b!1478143 e!829222))

(declare-fun res!1004281 () Bool)

(assert (=> b!1478143 (=> (not res!1004281) (not e!829222))))

(declare-fun lt!645550 () SeekEntryResult!12167)

(assert (=> b!1478143 (= res!1004281 (and (= lt!645550 (Found!12167 j!93)) (or (= (select (arr!47904 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47904 a!2862) intermediateBeforeIndex!19) (select (arr!47904 a!2862) j!93)))))))

(assert (=> b!1478143 (= lt!645550 (seekEntryOrOpen!0 (select (arr!47904 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99259 (_ BitVec 32)) Bool)

(assert (=> b!1478143 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49622 0))(
  ( (Unit!49623) )
))
(declare-fun lt!645549 () Unit!49622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49622)

(assert (=> b!1478143 (= lt!645549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478144 () Bool)

(declare-fun res!1004293 () Bool)

(assert (=> b!1478144 (=> (not res!1004293) (not e!829215))))

(assert (=> b!1478144 (= res!1004293 e!829223)))

(declare-fun c!136448 () Bool)

(assert (=> b!1478144 (= c!136448 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478145 () Bool)

(declare-fun res!1004288 () Bool)

(assert (=> b!1478145 (=> (not res!1004288) (not e!829219))))

(assert (=> b!1478145 (= res!1004288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478146 () Bool)

(declare-fun res!1004295 () Bool)

(assert (=> b!1478146 (=> (not res!1004295) (not e!829219))))

(assert (=> b!1478146 (= res!1004295 (and (= (size!48455 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48455 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48455 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478147 () Bool)

(assert (=> b!1478147 (= e!829219 e!829216)))

(declare-fun res!1004286 () Bool)

(assert (=> b!1478147 (=> (not res!1004286) (not e!829216))))

(assert (=> b!1478147 (= res!1004286 (= (select (store (arr!47904 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478147 (= lt!645548 (array!99260 (store (arr!47904 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48455 a!2862)))))

(declare-fun b!1478148 () Bool)

(declare-fun res!1004284 () Bool)

(assert (=> b!1478148 (=> (not res!1004284) (not e!829219))))

(declare-datatypes ((List!34585 0))(
  ( (Nil!34582) (Cons!34581 (h!35949 (_ BitVec 64)) (t!49286 List!34585)) )
))
(declare-fun arrayNoDuplicates!0 (array!99259 (_ BitVec 32) List!34585) Bool)

(assert (=> b!1478148 (= res!1004284 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34582))))

(declare-fun b!1478149 () Bool)

(assert (=> b!1478149 (= e!829221 e!829220)))

(declare-fun res!1004291 () Bool)

(assert (=> b!1478149 (=> (not res!1004291) (not e!829220))))

(assert (=> b!1478149 (= res!1004291 (= lt!645550 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47904 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1004285 () Bool)

(assert (=> start!126236 (=> (not res!1004285) (not e!829219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126236 (= res!1004285 (validMask!0 mask!2687))))

(assert (=> start!126236 e!829219))

(assert (=> start!126236 true))

(declare-fun array_inv!36849 (array!99259) Bool)

(assert (=> start!126236 (array_inv!36849 a!2862)))

(declare-fun b!1478139 () Bool)

(declare-fun res!1004280 () Bool)

(assert (=> b!1478139 (=> (not res!1004280) (not e!829219))))

(assert (=> b!1478139 (= res!1004280 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48455 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48455 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48455 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126236 res!1004285) b!1478146))

(assert (= (and b!1478146 res!1004295) b!1478136))

(assert (= (and b!1478136 res!1004282) b!1478135))

(assert (= (and b!1478135 res!1004292) b!1478145))

(assert (= (and b!1478145 res!1004288) b!1478148))

(assert (= (and b!1478148 res!1004284) b!1478139))

(assert (= (and b!1478139 res!1004280) b!1478147))

(assert (= (and b!1478147 res!1004286) b!1478142))

(assert (= (and b!1478142 res!1004283) b!1478134))

(assert (= (and b!1478134 res!1004289) b!1478138))

(assert (= (and b!1478138 res!1004287) b!1478144))

(assert (= (and b!1478144 c!136448) b!1478140))

(assert (= (and b!1478144 (not c!136448)) b!1478132))

(assert (= (and b!1478144 res!1004293) b!1478141))

(assert (= (and b!1478141 res!1004294) b!1478143))

(assert (= (and b!1478143 res!1004281) b!1478133))

(assert (= (and b!1478133 (not res!1004290)) b!1478149))

(assert (= (and b!1478149 res!1004291) b!1478137))

(declare-fun m!1364111 () Bool)

(assert (=> start!126236 m!1364111))

(declare-fun m!1364113 () Bool)

(assert (=> start!126236 m!1364113))

(declare-fun m!1364115 () Bool)

(assert (=> b!1478136 m!1364115))

(assert (=> b!1478136 m!1364115))

(declare-fun m!1364117 () Bool)

(assert (=> b!1478136 m!1364117))

(declare-fun m!1364119 () Bool)

(assert (=> b!1478132 m!1364119))

(declare-fun m!1364121 () Bool)

(assert (=> b!1478132 m!1364121))

(declare-fun m!1364123 () Bool)

(assert (=> b!1478147 m!1364123))

(declare-fun m!1364125 () Bool)

(assert (=> b!1478147 m!1364125))

(declare-fun m!1364127 () Bool)

(assert (=> b!1478140 m!1364127))

(declare-fun m!1364129 () Bool)

(assert (=> b!1478138 m!1364129))

(assert (=> b!1478138 m!1364129))

(declare-fun m!1364131 () Bool)

(assert (=> b!1478138 m!1364131))

(assert (=> b!1478138 m!1364123))

(declare-fun m!1364133 () Bool)

(assert (=> b!1478138 m!1364133))

(declare-fun m!1364135 () Bool)

(assert (=> b!1478145 m!1364135))

(declare-fun m!1364137 () Bool)

(assert (=> b!1478133 m!1364137))

(assert (=> b!1478133 m!1364123))

(declare-fun m!1364139 () Bool)

(assert (=> b!1478133 m!1364139))

(declare-fun m!1364141 () Bool)

(assert (=> b!1478133 m!1364141))

(assert (=> b!1478135 m!1364141))

(assert (=> b!1478135 m!1364141))

(declare-fun m!1364143 () Bool)

(assert (=> b!1478135 m!1364143))

(declare-fun m!1364145 () Bool)

(assert (=> b!1478148 m!1364145))

(assert (=> b!1478134 m!1364141))

(assert (=> b!1478134 m!1364141))

(declare-fun m!1364147 () Bool)

(assert (=> b!1478134 m!1364147))

(declare-fun m!1364149 () Bool)

(assert (=> b!1478143 m!1364149))

(declare-fun m!1364151 () Bool)

(assert (=> b!1478143 m!1364151))

(assert (=> b!1478143 m!1364141))

(declare-fun m!1364153 () Bool)

(assert (=> b!1478143 m!1364153))

(declare-fun m!1364155 () Bool)

(assert (=> b!1478143 m!1364155))

(assert (=> b!1478143 m!1364141))

(assert (=> b!1478142 m!1364141))

(assert (=> b!1478142 m!1364141))

(declare-fun m!1364157 () Bool)

(assert (=> b!1478142 m!1364157))

(assert (=> b!1478142 m!1364157))

(assert (=> b!1478142 m!1364141))

(declare-fun m!1364159 () Bool)

(assert (=> b!1478142 m!1364159))

(assert (=> b!1478149 m!1364141))

(assert (=> b!1478149 m!1364141))

(declare-fun m!1364161 () Bool)

(assert (=> b!1478149 m!1364161))

(push 1)

(assert (not b!1478140))

(assert (not b!1478135))

(assert (not b!1478136))

(assert (not b!1478138))

(assert (not b!1478134))

(assert (not b!1478149))

(assert (not start!126236))

(assert (not b!1478142))

(assert (not b!1478145))

(assert (not b!1478148))

(assert (not b!1478132))

(assert (not b!1478143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

