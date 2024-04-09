; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125118 () Bool)

(assert start!125118)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1456066 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638148 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!98483 0))(
  ( (array!98484 (arr!47525 (Array (_ BitVec 32) (_ BitVec 64))) (size!48076 (_ BitVec 32))) )
))
(declare-fun lt!638150 () array!98483)

(declare-fun e!819290 () Bool)

(declare-datatypes ((SeekEntryResult!11800 0))(
  ( (MissingZero!11800 (index!49591 (_ BitVec 32))) (Found!11800 (index!49592 (_ BitVec 32))) (Intermediate!11800 (undefined!12612 Bool) (index!49593 (_ BitVec 32)) (x!131220 (_ BitVec 32))) (Undefined!11800) (MissingVacant!11800 (index!49594 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98483 (_ BitVec 32)) SeekEntryResult!11800)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98483 (_ BitVec 32)) SeekEntryResult!11800)

(assert (=> b!1456066 (= e!819290 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638148 lt!638150 mask!2687) (seekEntryOrOpen!0 lt!638148 lt!638150 mask!2687)))))

(declare-fun b!1456067 () Bool)

(declare-fun res!986724 () Bool)

(declare-fun e!819293 () Bool)

(assert (=> b!1456067 (=> (not res!986724) (not e!819293))))

(declare-fun lt!638155 () SeekEntryResult!11800)

(declare-fun a!2862 () array!98483)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98483 (_ BitVec 32)) SeekEntryResult!11800)

(assert (=> b!1456067 (= res!986724 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47525 a!2862) j!93) a!2862 mask!2687) lt!638155))))

(declare-fun b!1456068 () Bool)

(declare-fun res!986719 () Bool)

(declare-fun e!819285 () Bool)

(assert (=> b!1456068 (=> (not res!986719) (not e!819285))))

(declare-datatypes ((List!34206 0))(
  ( (Nil!34203) (Cons!34202 (h!35552 (_ BitVec 64)) (t!48907 List!34206)) )
))
(declare-fun arrayNoDuplicates!0 (array!98483 (_ BitVec 32) List!34206) Bool)

(assert (=> b!1456068 (= res!986719 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34203))))

(declare-fun b!1456069 () Bool)

(declare-fun res!986720 () Bool)

(declare-fun e!819288 () Bool)

(assert (=> b!1456069 (=> (not res!986720) (not e!819288))))

(assert (=> b!1456069 (= res!986720 (= (seekEntryOrOpen!0 (select (arr!47525 a!2862) j!93) a!2862 mask!2687) (Found!11800 j!93)))))

(declare-fun b!1456070 () Bool)

(declare-fun e!819284 () Bool)

(assert (=> b!1456070 (= e!819284 true)))

(declare-fun lt!638149 () Bool)

(declare-fun e!819291 () Bool)

(assert (=> b!1456070 (= lt!638149 e!819291)))

(declare-fun c!134191 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456070 (= c!134191 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456071 () Bool)

(declare-fun res!986717 () Bool)

(assert (=> b!1456071 (=> (not res!986717) (not e!819285))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1456071 (= res!986717 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48076 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48076 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48076 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456072 () Bool)

(declare-fun lt!638152 () (_ BitVec 32))

(declare-fun lt!638151 () SeekEntryResult!11800)

(assert (=> b!1456072 (= e!819291 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638152 intermediateAfterIndex!19 lt!638148 lt!638150 mask!2687) lt!638151)))))

(declare-fun b!1456073 () Bool)

(declare-fun e!819286 () Bool)

(assert (=> b!1456073 (= e!819285 e!819286)))

(declare-fun res!986712 () Bool)

(assert (=> b!1456073 (=> (not res!986712) (not e!819286))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456073 (= res!986712 (= (select (store (arr!47525 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456073 (= lt!638150 (array!98484 (store (arr!47525 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48076 a!2862)))))

(declare-fun b!1456074 () Bool)

(declare-fun res!986715 () Bool)

(assert (=> b!1456074 (=> (not res!986715) (not e!819285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456074 (= res!986715 (validKeyInArray!0 (select (arr!47525 a!2862) j!93)))))

(declare-fun b!1456075 () Bool)

(declare-fun res!986727 () Bool)

(assert (=> b!1456075 (=> (not res!986727) (not e!819285))))

(assert (=> b!1456075 (= res!986727 (validKeyInArray!0 (select (arr!47525 a!2862) i!1006)))))

(declare-fun b!1456076 () Bool)

(declare-fun e!819289 () Bool)

(assert (=> b!1456076 (= e!819293 e!819289)))

(declare-fun res!986722 () Bool)

(assert (=> b!1456076 (=> (not res!986722) (not e!819289))))

(declare-fun lt!638154 () SeekEntryResult!11800)

(assert (=> b!1456076 (= res!986722 (= lt!638154 (Intermediate!11800 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456076 (= lt!638154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638148 mask!2687) lt!638148 lt!638150 mask!2687))))

(assert (=> b!1456076 (= lt!638148 (select (store (arr!47525 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456077 () Bool)

(declare-fun res!986726 () Bool)

(assert (=> b!1456077 (=> (not res!986726) (not e!819289))))

(assert (=> b!1456077 (= res!986726 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456078 () Bool)

(assert (=> b!1456078 (= e!819290 (= lt!638154 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638148 lt!638150 mask!2687)))))

(declare-fun b!1456079 () Bool)

(assert (=> b!1456079 (= e!819288 (and (or (= (select (arr!47525 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47525 a!2862) intermediateBeforeIndex!19) (select (arr!47525 a!2862) j!93))) (let ((bdg!53218 (select (store (arr!47525 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47525 a!2862) index!646) bdg!53218) (= (select (arr!47525 a!2862) index!646) (select (arr!47525 a!2862) j!93))) (= (select (arr!47525 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53218 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456080 () Bool)

(declare-fun e!819287 () Bool)

(assert (=> b!1456080 (= e!819287 e!819284)))

(declare-fun res!986714 () Bool)

(assert (=> b!1456080 (=> res!986714 e!819284)))

(assert (=> b!1456080 (= res!986714 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638152 #b00000000000000000000000000000000) (bvsge lt!638152 (size!48076 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456080 (= lt!638152 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456080 (= lt!638151 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638148 lt!638150 mask!2687))))

(assert (=> b!1456080 (= lt!638151 (seekEntryOrOpen!0 lt!638148 lt!638150 mask!2687))))

(declare-fun b!1456081 () Bool)

(declare-fun res!986710 () Bool)

(assert (=> b!1456081 (=> (not res!986710) (not e!819285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98483 (_ BitVec 32)) Bool)

(assert (=> b!1456081 (= res!986710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456082 () Bool)

(assert (=> b!1456082 (= e!819286 e!819293)))

(declare-fun res!986721 () Bool)

(assert (=> b!1456082 (=> (not res!986721) (not e!819293))))

(assert (=> b!1456082 (= res!986721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47525 a!2862) j!93) mask!2687) (select (arr!47525 a!2862) j!93) a!2862 mask!2687) lt!638155))))

(assert (=> b!1456082 (= lt!638155 (Intermediate!11800 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456083 () Bool)

(declare-fun res!986711 () Bool)

(assert (=> b!1456083 (=> res!986711 e!819284)))

(assert (=> b!1456083 (= res!986711 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638152 (select (arr!47525 a!2862) j!93) a!2862 mask!2687) lt!638155)))))

(declare-fun res!986713 () Bool)

(assert (=> start!125118 (=> (not res!986713) (not e!819285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125118 (= res!986713 (validMask!0 mask!2687))))

(assert (=> start!125118 e!819285))

(assert (=> start!125118 true))

(declare-fun array_inv!36470 (array!98483) Bool)

(assert (=> start!125118 (array_inv!36470 a!2862)))

(declare-fun b!1456084 () Bool)

(declare-fun res!986718 () Bool)

(assert (=> b!1456084 (=> (not res!986718) (not e!819285))))

(assert (=> b!1456084 (= res!986718 (and (= (size!48076 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48076 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48076 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456085 () Bool)

(assert (=> b!1456085 (= e!819291 (not (= lt!638154 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638152 lt!638148 lt!638150 mask!2687))))))

(declare-fun b!1456086 () Bool)

(declare-fun res!986723 () Bool)

(assert (=> b!1456086 (=> (not res!986723) (not e!819289))))

(assert (=> b!1456086 (= res!986723 e!819290)))

(declare-fun c!134192 () Bool)

(assert (=> b!1456086 (= c!134192 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456087 () Bool)

(assert (=> b!1456087 (= e!819289 (not e!819287))))

(declare-fun res!986725 () Bool)

(assert (=> b!1456087 (=> res!986725 e!819287)))

(assert (=> b!1456087 (= res!986725 (or (and (= (select (arr!47525 a!2862) index!646) (select (store (arr!47525 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47525 a!2862) index!646) (select (arr!47525 a!2862) j!93))) (= (select (arr!47525 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456087 e!819288))

(declare-fun res!986716 () Bool)

(assert (=> b!1456087 (=> (not res!986716) (not e!819288))))

(assert (=> b!1456087 (= res!986716 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49044 0))(
  ( (Unit!49045) )
))
(declare-fun lt!638153 () Unit!49044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49044)

(assert (=> b!1456087 (= lt!638153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125118 res!986713) b!1456084))

(assert (= (and b!1456084 res!986718) b!1456075))

(assert (= (and b!1456075 res!986727) b!1456074))

(assert (= (and b!1456074 res!986715) b!1456081))

(assert (= (and b!1456081 res!986710) b!1456068))

(assert (= (and b!1456068 res!986719) b!1456071))

(assert (= (and b!1456071 res!986717) b!1456073))

(assert (= (and b!1456073 res!986712) b!1456082))

(assert (= (and b!1456082 res!986721) b!1456067))

(assert (= (and b!1456067 res!986724) b!1456076))

(assert (= (and b!1456076 res!986722) b!1456086))

(assert (= (and b!1456086 c!134192) b!1456078))

(assert (= (and b!1456086 (not c!134192)) b!1456066))

(assert (= (and b!1456086 res!986723) b!1456077))

(assert (= (and b!1456077 res!986726) b!1456087))

(assert (= (and b!1456087 res!986716) b!1456069))

(assert (= (and b!1456069 res!986720) b!1456079))

(assert (= (and b!1456087 (not res!986725)) b!1456080))

(assert (= (and b!1456080 (not res!986714)) b!1456083))

(assert (= (and b!1456083 (not res!986711)) b!1456070))

(assert (= (and b!1456070 c!134191) b!1456085))

(assert (= (and b!1456070 (not c!134191)) b!1456072))

(declare-fun m!1344259 () Bool)

(assert (=> b!1456082 m!1344259))

(assert (=> b!1456082 m!1344259))

(declare-fun m!1344261 () Bool)

(assert (=> b!1456082 m!1344261))

(assert (=> b!1456082 m!1344261))

(assert (=> b!1456082 m!1344259))

(declare-fun m!1344263 () Bool)

(assert (=> b!1456082 m!1344263))

(declare-fun m!1344265 () Bool)

(assert (=> b!1456072 m!1344265))

(declare-fun m!1344267 () Bool)

(assert (=> b!1456068 m!1344267))

(declare-fun m!1344269 () Bool)

(assert (=> b!1456079 m!1344269))

(declare-fun m!1344271 () Bool)

(assert (=> b!1456079 m!1344271))

(declare-fun m!1344273 () Bool)

(assert (=> b!1456079 m!1344273))

(declare-fun m!1344275 () Bool)

(assert (=> b!1456079 m!1344275))

(assert (=> b!1456079 m!1344259))

(declare-fun m!1344277 () Bool)

(assert (=> b!1456075 m!1344277))

(assert (=> b!1456075 m!1344277))

(declare-fun m!1344279 () Bool)

(assert (=> b!1456075 m!1344279))

(assert (=> b!1456083 m!1344259))

(assert (=> b!1456083 m!1344259))

(declare-fun m!1344281 () Bool)

(assert (=> b!1456083 m!1344281))

(declare-fun m!1344283 () Bool)

(assert (=> b!1456076 m!1344283))

(assert (=> b!1456076 m!1344283))

(declare-fun m!1344285 () Bool)

(assert (=> b!1456076 m!1344285))

(assert (=> b!1456076 m!1344269))

(declare-fun m!1344287 () Bool)

(assert (=> b!1456076 m!1344287))

(declare-fun m!1344289 () Bool)

(assert (=> b!1456085 m!1344289))

(declare-fun m!1344291 () Bool)

(assert (=> b!1456081 m!1344291))

(declare-fun m!1344293 () Bool)

(assert (=> b!1456080 m!1344293))

(declare-fun m!1344295 () Bool)

(assert (=> b!1456080 m!1344295))

(declare-fun m!1344297 () Bool)

(assert (=> b!1456080 m!1344297))

(assert (=> b!1456069 m!1344259))

(assert (=> b!1456069 m!1344259))

(declare-fun m!1344299 () Bool)

(assert (=> b!1456069 m!1344299))

(declare-fun m!1344301 () Bool)

(assert (=> b!1456078 m!1344301))

(assert (=> b!1456067 m!1344259))

(assert (=> b!1456067 m!1344259))

(declare-fun m!1344303 () Bool)

(assert (=> b!1456067 m!1344303))

(declare-fun m!1344305 () Bool)

(assert (=> start!125118 m!1344305))

(declare-fun m!1344307 () Bool)

(assert (=> start!125118 m!1344307))

(declare-fun m!1344309 () Bool)

(assert (=> b!1456087 m!1344309))

(assert (=> b!1456087 m!1344269))

(assert (=> b!1456087 m!1344273))

(assert (=> b!1456087 m!1344275))

(declare-fun m!1344311 () Bool)

(assert (=> b!1456087 m!1344311))

(assert (=> b!1456087 m!1344259))

(assert (=> b!1456073 m!1344269))

(declare-fun m!1344313 () Bool)

(assert (=> b!1456073 m!1344313))

(assert (=> b!1456066 m!1344295))

(assert (=> b!1456066 m!1344297))

(assert (=> b!1456074 m!1344259))

(assert (=> b!1456074 m!1344259))

(declare-fun m!1344315 () Bool)

(assert (=> b!1456074 m!1344315))

(check-sat (not b!1456072) (not b!1456068) (not b!1456078) (not b!1456074) (not b!1456067) (not b!1456076) (not b!1456087) (not b!1456085) (not b!1456081) (not b!1456066) (not b!1456080) (not b!1456082) (not b!1456075) (not start!125118) (not b!1456083) (not b!1456069))
(check-sat)
