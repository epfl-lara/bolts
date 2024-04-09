; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124818 () Bool)

(assert start!124818)

(declare-fun e!815122 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1447258 () Bool)

(assert (=> b!1447258 (= e!815122 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447259 () Bool)

(declare-fun res!979037 () Bool)

(declare-fun e!815123 () Bool)

(assert (=> b!1447259 (=> (not res!979037) (not e!815123))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98183 0))(
  ( (array!98184 (arr!47375 (Array (_ BitVec 32) (_ BitVec 64))) (size!47926 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98183)

(assert (=> b!1447259 (= res!979037 (and (= (size!47926 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47926 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47926 a!2862)) (not (= i!1006 j!93))))))

(declare-datatypes ((SeekEntryResult!11650 0))(
  ( (MissingZero!11650 (index!48991 (_ BitVec 32))) (Found!11650 (index!48992 (_ BitVec 32))) (Intermediate!11650 (undefined!12462 Bool) (index!48993 (_ BitVec 32)) (x!130670 (_ BitVec 32))) (Undefined!11650) (MissingVacant!11650 (index!48994 (_ BitVec 32))) )
))
(declare-fun lt!635071 () SeekEntryResult!11650)

(declare-fun lt!635067 () array!98183)

(declare-fun b!1447260 () Bool)

(declare-fun lt!635065 () (_ BitVec 64))

(declare-fun e!815118 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98183 (_ BitVec 32)) SeekEntryResult!11650)

(assert (=> b!1447260 (= e!815118 (= lt!635071 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635065 lt!635067 mask!2687)))))

(declare-fun b!1447261 () Bool)

(declare-fun res!979030 () Bool)

(assert (=> b!1447261 (=> (not res!979030) (not e!815123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98183 (_ BitVec 32)) Bool)

(assert (=> b!1447261 (= res!979030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447262 () Bool)

(declare-fun res!979043 () Bool)

(declare-fun e!815120 () Bool)

(assert (=> b!1447262 (=> (not res!979043) (not e!815120))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447262 (= res!979043 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447263 () Bool)

(declare-fun e!815117 () Bool)

(assert (=> b!1447263 (= e!815123 e!815117)))

(declare-fun res!979029 () Bool)

(assert (=> b!1447263 (=> (not res!979029) (not e!815117))))

(assert (=> b!1447263 (= res!979029 (= (select (store (arr!47375 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447263 (= lt!635067 (array!98184 (store (arr!47375 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47926 a!2862)))))

(declare-fun b!1447264 () Bool)

(declare-fun e!815121 () Bool)

(declare-fun e!815124 () Bool)

(assert (=> b!1447264 (= e!815121 e!815124)))

(declare-fun res!979042 () Bool)

(assert (=> b!1447264 (=> res!979042 e!815124)))

(assert (=> b!1447264 (= res!979042 (or (and (= (select (arr!47375 a!2862) index!646) (select (store (arr!47375 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47375 a!2862) index!646) (select (arr!47375 a!2862) j!93))) (not (= (select (arr!47375 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447265 () Bool)

(declare-fun e!815126 () Bool)

(assert (=> b!1447265 (= e!815126 true)))

(declare-fun lt!635068 () SeekEntryResult!11650)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98183 (_ BitVec 32)) SeekEntryResult!11650)

(assert (=> b!1447265 (= lt!635068 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47375 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447266 () Bool)

(assert (=> b!1447266 (= e!815124 e!815122)))

(declare-fun res!979040 () Bool)

(assert (=> b!1447266 (=> (not res!979040) (not e!815122))))

(declare-fun lt!635069 () SeekEntryResult!11650)

(assert (=> b!1447266 (= res!979040 (= lt!635069 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47375 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447267 () Bool)

(declare-fun res!979041 () Bool)

(declare-fun e!815119 () Bool)

(assert (=> b!1447267 (=> (not res!979041) (not e!815119))))

(declare-fun lt!635066 () SeekEntryResult!11650)

(assert (=> b!1447267 (= res!979041 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47375 a!2862) j!93) a!2862 mask!2687) lt!635066))))

(declare-fun b!1447268 () Bool)

(declare-fun res!979034 () Bool)

(assert (=> b!1447268 (=> (not res!979034) (not e!815120))))

(assert (=> b!1447268 (= res!979034 e!815118)))

(declare-fun c!133628 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447268 (= c!133628 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447269 () Bool)

(declare-fun res!979033 () Bool)

(assert (=> b!1447269 (=> (not res!979033) (not e!815123))))

(assert (=> b!1447269 (= res!979033 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47926 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47926 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47926 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!979039 () Bool)

(assert (=> start!124818 (=> (not res!979039) (not e!815123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124818 (= res!979039 (validMask!0 mask!2687))))

(assert (=> start!124818 e!815123))

(assert (=> start!124818 true))

(declare-fun array_inv!36320 (array!98183) Bool)

(assert (=> start!124818 (array_inv!36320 a!2862)))

(declare-fun b!1447270 () Bool)

(assert (=> b!1447270 (= e!815120 (not e!815126))))

(declare-fun res!979028 () Bool)

(assert (=> b!1447270 (=> res!979028 e!815126)))

(assert (=> b!1447270 (= res!979028 (or (and (= (select (arr!47375 a!2862) index!646) (select (store (arr!47375 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47375 a!2862) index!646) (select (arr!47375 a!2862) j!93))) (not (= (select (arr!47375 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47375 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447270 e!815121))

(declare-fun res!979035 () Bool)

(assert (=> b!1447270 (=> (not res!979035) (not e!815121))))

(assert (=> b!1447270 (= res!979035 (and (= lt!635069 (Found!11650 j!93)) (or (= (select (arr!47375 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47375 a!2862) intermediateBeforeIndex!19) (select (arr!47375 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98183 (_ BitVec 32)) SeekEntryResult!11650)

(assert (=> b!1447270 (= lt!635069 (seekEntryOrOpen!0 (select (arr!47375 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447270 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48744 0))(
  ( (Unit!48745) )
))
(declare-fun lt!635070 () Unit!48744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48744)

(assert (=> b!1447270 (= lt!635070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447271 () Bool)

(declare-fun res!979036 () Bool)

(assert (=> b!1447271 (=> (not res!979036) (not e!815123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447271 (= res!979036 (validKeyInArray!0 (select (arr!47375 a!2862) i!1006)))))

(declare-fun b!1447272 () Bool)

(declare-fun res!979044 () Bool)

(assert (=> b!1447272 (=> (not res!979044) (not e!815123))))

(declare-datatypes ((List!34056 0))(
  ( (Nil!34053) (Cons!34052 (h!35402 (_ BitVec 64)) (t!48757 List!34056)) )
))
(declare-fun arrayNoDuplicates!0 (array!98183 (_ BitVec 32) List!34056) Bool)

(assert (=> b!1447272 (= res!979044 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34053))))

(declare-fun b!1447273 () Bool)

(assert (=> b!1447273 (= e!815119 e!815120)))

(declare-fun res!979032 () Bool)

(assert (=> b!1447273 (=> (not res!979032) (not e!815120))))

(assert (=> b!1447273 (= res!979032 (= lt!635071 (Intermediate!11650 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447273 (= lt!635071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635065 mask!2687) lt!635065 lt!635067 mask!2687))))

(assert (=> b!1447273 (= lt!635065 (select (store (arr!47375 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447274 () Bool)

(assert (=> b!1447274 (= e!815118 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635065 lt!635067 mask!2687) (seekEntryOrOpen!0 lt!635065 lt!635067 mask!2687)))))

(declare-fun b!1447275 () Bool)

(declare-fun res!979031 () Bool)

(assert (=> b!1447275 (=> (not res!979031) (not e!815123))))

(assert (=> b!1447275 (= res!979031 (validKeyInArray!0 (select (arr!47375 a!2862) j!93)))))

(declare-fun b!1447276 () Bool)

(assert (=> b!1447276 (= e!815117 e!815119)))

(declare-fun res!979038 () Bool)

(assert (=> b!1447276 (=> (not res!979038) (not e!815119))))

(assert (=> b!1447276 (= res!979038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47375 a!2862) j!93) mask!2687) (select (arr!47375 a!2862) j!93) a!2862 mask!2687) lt!635066))))

(assert (=> b!1447276 (= lt!635066 (Intermediate!11650 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124818 res!979039) b!1447259))

(assert (= (and b!1447259 res!979037) b!1447271))

(assert (= (and b!1447271 res!979036) b!1447275))

(assert (= (and b!1447275 res!979031) b!1447261))

(assert (= (and b!1447261 res!979030) b!1447272))

(assert (= (and b!1447272 res!979044) b!1447269))

(assert (= (and b!1447269 res!979033) b!1447263))

(assert (= (and b!1447263 res!979029) b!1447276))

(assert (= (and b!1447276 res!979038) b!1447267))

(assert (= (and b!1447267 res!979041) b!1447273))

(assert (= (and b!1447273 res!979032) b!1447268))

(assert (= (and b!1447268 c!133628) b!1447260))

(assert (= (and b!1447268 (not c!133628)) b!1447274))

(assert (= (and b!1447268 res!979034) b!1447262))

(assert (= (and b!1447262 res!979043) b!1447270))

(assert (= (and b!1447270 res!979035) b!1447264))

(assert (= (and b!1447264 (not res!979042)) b!1447266))

(assert (= (and b!1447266 res!979040) b!1447258))

(assert (= (and b!1447270 (not res!979028)) b!1447265))

(declare-fun m!1336137 () Bool)

(assert (=> b!1447271 m!1336137))

(assert (=> b!1447271 m!1336137))

(declare-fun m!1336139 () Bool)

(assert (=> b!1447271 m!1336139))

(declare-fun m!1336141 () Bool)

(assert (=> b!1447272 m!1336141))

(declare-fun m!1336143 () Bool)

(assert (=> start!124818 m!1336143))

(declare-fun m!1336145 () Bool)

(assert (=> start!124818 m!1336145))

(declare-fun m!1336147 () Bool)

(assert (=> b!1447275 m!1336147))

(assert (=> b!1447275 m!1336147))

(declare-fun m!1336149 () Bool)

(assert (=> b!1447275 m!1336149))

(assert (=> b!1447265 m!1336147))

(assert (=> b!1447265 m!1336147))

(declare-fun m!1336151 () Bool)

(assert (=> b!1447265 m!1336151))

(assert (=> b!1447276 m!1336147))

(assert (=> b!1447276 m!1336147))

(declare-fun m!1336153 () Bool)

(assert (=> b!1447276 m!1336153))

(assert (=> b!1447276 m!1336153))

(assert (=> b!1447276 m!1336147))

(declare-fun m!1336155 () Bool)

(assert (=> b!1447276 m!1336155))

(assert (=> b!1447266 m!1336147))

(assert (=> b!1447266 m!1336147))

(declare-fun m!1336157 () Bool)

(assert (=> b!1447266 m!1336157))

(declare-fun m!1336159 () Bool)

(assert (=> b!1447273 m!1336159))

(assert (=> b!1447273 m!1336159))

(declare-fun m!1336161 () Bool)

(assert (=> b!1447273 m!1336161))

(declare-fun m!1336163 () Bool)

(assert (=> b!1447273 m!1336163))

(declare-fun m!1336165 () Bool)

(assert (=> b!1447273 m!1336165))

(assert (=> b!1447263 m!1336163))

(declare-fun m!1336167 () Bool)

(assert (=> b!1447263 m!1336167))

(declare-fun m!1336169 () Bool)

(assert (=> b!1447270 m!1336169))

(assert (=> b!1447270 m!1336163))

(declare-fun m!1336171 () Bool)

(assert (=> b!1447270 m!1336171))

(declare-fun m!1336173 () Bool)

(assert (=> b!1447270 m!1336173))

(declare-fun m!1336175 () Bool)

(assert (=> b!1447270 m!1336175))

(assert (=> b!1447270 m!1336147))

(declare-fun m!1336177 () Bool)

(assert (=> b!1447270 m!1336177))

(declare-fun m!1336179 () Bool)

(assert (=> b!1447270 m!1336179))

(assert (=> b!1447270 m!1336147))

(declare-fun m!1336181 () Bool)

(assert (=> b!1447274 m!1336181))

(declare-fun m!1336183 () Bool)

(assert (=> b!1447274 m!1336183))

(declare-fun m!1336185 () Bool)

(assert (=> b!1447260 m!1336185))

(assert (=> b!1447267 m!1336147))

(assert (=> b!1447267 m!1336147))

(declare-fun m!1336187 () Bool)

(assert (=> b!1447267 m!1336187))

(declare-fun m!1336189 () Bool)

(assert (=> b!1447261 m!1336189))

(assert (=> b!1447264 m!1336175))

(assert (=> b!1447264 m!1336163))

(assert (=> b!1447264 m!1336173))

(assert (=> b!1447264 m!1336147))

(check-sat (not b!1447267) (not b!1447276) (not b!1447266) (not start!124818) (not b!1447272) (not b!1447270) (not b!1447271) (not b!1447261) (not b!1447260) (not b!1447273) (not b!1447275) (not b!1447274) (not b!1447265))
(check-sat)
