; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126200 () Bool)

(assert start!126200)

(declare-fun b!1477160 () Bool)

(declare-fun res!1003418 () Bool)

(declare-fun e!828737 () Bool)

(assert (=> b!1477160 (=> (not res!1003418) (not e!828737))))

(declare-fun e!828732 () Bool)

(assert (=> b!1477160 (= res!1003418 e!828732)))

(declare-fun c!136394 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477160 (= c!136394 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477161 () Bool)

(declare-fun e!828734 () Bool)

(declare-fun e!828730 () Bool)

(assert (=> b!1477161 (= e!828734 e!828730)))

(declare-fun res!1003424 () Bool)

(assert (=> b!1477161 (=> (not res!1003424) (not e!828730))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99223 0))(
  ( (array!99224 (arr!47886 (Array (_ BitVec 32) (_ BitVec 64))) (size!48437 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99223)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12149 0))(
  ( (MissingZero!12149 (index!50987 (_ BitVec 32))) (Found!12149 (index!50988 (_ BitVec 32))) (Intermediate!12149 (undefined!12961 Bool) (index!50989 (_ BitVec 32)) (x!132583 (_ BitVec 32))) (Undefined!12149) (MissingVacant!12149 (index!50990 (_ BitVec 32))) )
))
(declare-fun lt!645225 () SeekEntryResult!12149)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99223 (_ BitVec 32)) SeekEntryResult!12149)

(assert (=> b!1477161 (= res!1003424 (= lt!645225 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47886 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477162 () Bool)

(assert (=> b!1477162 (= e!828737 (not true))))

(declare-fun e!828733 () Bool)

(assert (=> b!1477162 e!828733))

(declare-fun res!1003428 () Bool)

(assert (=> b!1477162 (=> (not res!1003428) (not e!828733))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1477162 (= res!1003428 (and (= lt!645225 (Found!12149 j!93)) (or (= (select (arr!47886 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47886 a!2862) intermediateBeforeIndex!19) (select (arr!47886 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99223 (_ BitVec 32)) SeekEntryResult!12149)

(assert (=> b!1477162 (= lt!645225 (seekEntryOrOpen!0 (select (arr!47886 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99223 (_ BitVec 32)) Bool)

(assert (=> b!1477162 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49586 0))(
  ( (Unit!49587) )
))
(declare-fun lt!645226 () Unit!49586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99223 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49586)

(assert (=> b!1477162 (= lt!645226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477163 () Bool)

(declare-fun res!1003421 () Bool)

(declare-fun e!828731 () Bool)

(assert (=> b!1477163 (=> (not res!1003421) (not e!828731))))

(declare-datatypes ((List!34567 0))(
  ( (Nil!34564) (Cons!34563 (h!35931 (_ BitVec 64)) (t!49268 List!34567)) )
))
(declare-fun arrayNoDuplicates!0 (array!99223 (_ BitVec 32) List!34567) Bool)

(assert (=> b!1477163 (= res!1003421 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34564))))

(declare-fun b!1477164 () Bool)

(declare-fun res!1003431 () Bool)

(assert (=> b!1477164 (=> (not res!1003431) (not e!828731))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477164 (= res!1003431 (and (= (size!48437 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48437 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48437 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477165 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477165 (= e!828730 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun lt!645223 () SeekEntryResult!12149)

(declare-fun lt!645224 () (_ BitVec 64))

(declare-fun lt!645222 () array!99223)

(declare-fun b!1477166 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99223 (_ BitVec 32)) SeekEntryResult!12149)

(assert (=> b!1477166 (= e!828732 (= lt!645223 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645224 lt!645222 mask!2687)))))

(declare-fun b!1477167 () Bool)

(declare-fun res!1003420 () Bool)

(assert (=> b!1477167 (=> (not res!1003420) (not e!828731))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477167 (= res!1003420 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48437 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48437 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48437 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477168 () Bool)

(declare-fun res!1003426 () Bool)

(assert (=> b!1477168 (=> (not res!1003426) (not e!828731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477168 (= res!1003426 (validKeyInArray!0 (select (arr!47886 a!2862) j!93)))))

(declare-fun b!1477169 () Bool)

(assert (=> b!1477169 (= e!828732 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645224 lt!645222 mask!2687) (seekEntryOrOpen!0 lt!645224 lt!645222 mask!2687)))))

(declare-fun res!1003427 () Bool)

(assert (=> start!126200 (=> (not res!1003427) (not e!828731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126200 (= res!1003427 (validMask!0 mask!2687))))

(assert (=> start!126200 e!828731))

(assert (=> start!126200 true))

(declare-fun array_inv!36831 (array!99223) Bool)

(assert (=> start!126200 (array_inv!36831 a!2862)))

(declare-fun b!1477170 () Bool)

(declare-fun e!828729 () Bool)

(assert (=> b!1477170 (= e!828729 e!828737)))

(declare-fun res!1003429 () Bool)

(assert (=> b!1477170 (=> (not res!1003429) (not e!828737))))

(assert (=> b!1477170 (= res!1003429 (= lt!645223 (Intermediate!12149 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477170 (= lt!645223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645224 mask!2687) lt!645224 lt!645222 mask!2687))))

(assert (=> b!1477170 (= lt!645224 (select (store (arr!47886 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477171 () Bool)

(declare-fun res!1003419 () Bool)

(assert (=> b!1477171 (=> (not res!1003419) (not e!828731))))

(assert (=> b!1477171 (= res!1003419 (validKeyInArray!0 (select (arr!47886 a!2862) i!1006)))))

(declare-fun b!1477172 () Bool)

(declare-fun e!828735 () Bool)

(assert (=> b!1477172 (= e!828731 e!828735)))

(declare-fun res!1003422 () Bool)

(assert (=> b!1477172 (=> (not res!1003422) (not e!828735))))

(assert (=> b!1477172 (= res!1003422 (= (select (store (arr!47886 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477172 (= lt!645222 (array!99224 (store (arr!47886 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48437 a!2862)))))

(declare-fun b!1477173 () Bool)

(assert (=> b!1477173 (= e!828733 e!828734)))

(declare-fun res!1003423 () Bool)

(assert (=> b!1477173 (=> res!1003423 e!828734)))

(assert (=> b!1477173 (= res!1003423 (or (and (= (select (arr!47886 a!2862) index!646) (select (store (arr!47886 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47886 a!2862) index!646) (select (arr!47886 a!2862) j!93))) (not (= (select (arr!47886 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477174 () Bool)

(declare-fun res!1003425 () Bool)

(assert (=> b!1477174 (=> (not res!1003425) (not e!828729))))

(declare-fun lt!645221 () SeekEntryResult!12149)

(assert (=> b!1477174 (= res!1003425 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47886 a!2862) j!93) a!2862 mask!2687) lt!645221))))

(declare-fun b!1477175 () Bool)

(declare-fun res!1003430 () Bool)

(assert (=> b!1477175 (=> (not res!1003430) (not e!828731))))

(assert (=> b!1477175 (= res!1003430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477176 () Bool)

(assert (=> b!1477176 (= e!828735 e!828729)))

(declare-fun res!1003417 () Bool)

(assert (=> b!1477176 (=> (not res!1003417) (not e!828729))))

(assert (=> b!1477176 (= res!1003417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47886 a!2862) j!93) mask!2687) (select (arr!47886 a!2862) j!93) a!2862 mask!2687) lt!645221))))

(assert (=> b!1477176 (= lt!645221 (Intermediate!12149 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477177 () Bool)

(declare-fun res!1003416 () Bool)

(assert (=> b!1477177 (=> (not res!1003416) (not e!828737))))

(assert (=> b!1477177 (= res!1003416 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126200 res!1003427) b!1477164))

(assert (= (and b!1477164 res!1003431) b!1477171))

(assert (= (and b!1477171 res!1003419) b!1477168))

(assert (= (and b!1477168 res!1003426) b!1477175))

(assert (= (and b!1477175 res!1003430) b!1477163))

(assert (= (and b!1477163 res!1003421) b!1477167))

(assert (= (and b!1477167 res!1003420) b!1477172))

(assert (= (and b!1477172 res!1003422) b!1477176))

(assert (= (and b!1477176 res!1003417) b!1477174))

(assert (= (and b!1477174 res!1003425) b!1477170))

(assert (= (and b!1477170 res!1003429) b!1477160))

(assert (= (and b!1477160 c!136394) b!1477166))

(assert (= (and b!1477160 (not c!136394)) b!1477169))

(assert (= (and b!1477160 res!1003418) b!1477177))

(assert (= (and b!1477177 res!1003416) b!1477162))

(assert (= (and b!1477162 res!1003428) b!1477173))

(assert (= (and b!1477173 (not res!1003423)) b!1477161))

(assert (= (and b!1477161 res!1003424) b!1477165))

(declare-fun m!1363175 () Bool)

(assert (=> b!1477176 m!1363175))

(assert (=> b!1477176 m!1363175))

(declare-fun m!1363177 () Bool)

(assert (=> b!1477176 m!1363177))

(assert (=> b!1477176 m!1363177))

(assert (=> b!1477176 m!1363175))

(declare-fun m!1363179 () Bool)

(assert (=> b!1477176 m!1363179))

(declare-fun m!1363181 () Bool)

(assert (=> start!126200 m!1363181))

(declare-fun m!1363183 () Bool)

(assert (=> start!126200 m!1363183))

(declare-fun m!1363185 () Bool)

(assert (=> b!1477171 m!1363185))

(assert (=> b!1477171 m!1363185))

(declare-fun m!1363187 () Bool)

(assert (=> b!1477171 m!1363187))

(declare-fun m!1363189 () Bool)

(assert (=> b!1477170 m!1363189))

(assert (=> b!1477170 m!1363189))

(declare-fun m!1363191 () Bool)

(assert (=> b!1477170 m!1363191))

(declare-fun m!1363193 () Bool)

(assert (=> b!1477170 m!1363193))

(declare-fun m!1363195 () Bool)

(assert (=> b!1477170 m!1363195))

(declare-fun m!1363197 () Bool)

(assert (=> b!1477173 m!1363197))

(assert (=> b!1477173 m!1363193))

(declare-fun m!1363199 () Bool)

(assert (=> b!1477173 m!1363199))

(assert (=> b!1477173 m!1363175))

(assert (=> b!1477161 m!1363175))

(assert (=> b!1477161 m!1363175))

(declare-fun m!1363201 () Bool)

(assert (=> b!1477161 m!1363201))

(assert (=> b!1477172 m!1363193))

(declare-fun m!1363203 () Bool)

(assert (=> b!1477172 m!1363203))

(declare-fun m!1363205 () Bool)

(assert (=> b!1477162 m!1363205))

(declare-fun m!1363207 () Bool)

(assert (=> b!1477162 m!1363207))

(assert (=> b!1477162 m!1363175))

(declare-fun m!1363209 () Bool)

(assert (=> b!1477162 m!1363209))

(declare-fun m!1363211 () Bool)

(assert (=> b!1477162 m!1363211))

(assert (=> b!1477162 m!1363175))

(assert (=> b!1477174 m!1363175))

(assert (=> b!1477174 m!1363175))

(declare-fun m!1363213 () Bool)

(assert (=> b!1477174 m!1363213))

(assert (=> b!1477168 m!1363175))

(assert (=> b!1477168 m!1363175))

(declare-fun m!1363215 () Bool)

(assert (=> b!1477168 m!1363215))

(declare-fun m!1363217 () Bool)

(assert (=> b!1477166 m!1363217))

(declare-fun m!1363219 () Bool)

(assert (=> b!1477175 m!1363219))

(declare-fun m!1363221 () Bool)

(assert (=> b!1477169 m!1363221))

(declare-fun m!1363223 () Bool)

(assert (=> b!1477169 m!1363223))

(declare-fun m!1363225 () Bool)

(assert (=> b!1477163 m!1363225))

(push 1)

