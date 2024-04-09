; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126980 () Bool)

(assert start!126980)

(declare-fun b!1492053 () Bool)

(declare-fun res!1015262 () Bool)

(declare-fun e!835919 () Bool)

(assert (=> b!1492053 (=> (not res!1015262) (not e!835919))))

(declare-datatypes ((array!99670 0))(
  ( (array!99671 (arr!48102 (Array (_ BitVec 32) (_ BitVec 64))) (size!48653 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99670)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12365 0))(
  ( (MissingZero!12365 (index!51851 (_ BitVec 32))) (Found!12365 (index!51852 (_ BitVec 32))) (Intermediate!12365 (undefined!13177 Bool) (index!51853 (_ BitVec 32)) (x!133432 (_ BitVec 32))) (Undefined!12365) (MissingVacant!12365 (index!51854 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99670 (_ BitVec 32)) SeekEntryResult!12365)

(assert (=> b!1492053 (= res!1015262 (= (seekEntryOrOpen!0 (select (arr!48102 a!2862) j!93) a!2862 mask!2687) (Found!12365 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1492054 () Bool)

(declare-fun lt!650450 () array!99670)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!835920 () Bool)

(declare-fun lt!650448 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99670 (_ BitVec 32)) SeekEntryResult!12365)

(assert (=> b!1492054 (= e!835920 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650448 lt!650450 mask!2687) (seekEntryOrOpen!0 lt!650448 lt!650450 mask!2687)))))

(declare-fun b!1492055 () Bool)

(declare-fun lt!650451 () SeekEntryResult!12365)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99670 (_ BitVec 32)) SeekEntryResult!12365)

(assert (=> b!1492055 (= e!835920 (= lt!650451 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650448 lt!650450 mask!2687)))))

(declare-fun b!1492056 () Bool)

(declare-fun res!1015264 () Bool)

(declare-fun e!835922 () Bool)

(assert (=> b!1492056 (=> (not res!1015264) (not e!835922))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492056 (= res!1015264 (validKeyInArray!0 (select (arr!48102 a!2862) i!1006)))))

(declare-fun b!1492057 () Bool)

(declare-fun res!1015254 () Bool)

(assert (=> b!1492057 (=> (not res!1015254) (not e!835922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99670 (_ BitVec 32)) Bool)

(assert (=> b!1492057 (= res!1015254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492058 () Bool)

(declare-fun res!1015261 () Bool)

(declare-fun e!835924 () Bool)

(assert (=> b!1492058 (=> (not res!1015261) (not e!835924))))

(assert (=> b!1492058 (= res!1015261 e!835920)))

(declare-fun c!137930 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492058 (= c!137930 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492059 () Bool)

(declare-fun e!835923 () Bool)

(assert (=> b!1492059 (= e!835922 e!835923)))

(declare-fun res!1015258 () Bool)

(assert (=> b!1492059 (=> (not res!1015258) (not e!835923))))

(assert (=> b!1492059 (= res!1015258 (= (select (store (arr!48102 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492059 (= lt!650450 (array!99671 (store (arr!48102 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48653 a!2862)))))

(declare-fun res!1015251 () Bool)

(assert (=> start!126980 (=> (not res!1015251) (not e!835922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126980 (= res!1015251 (validMask!0 mask!2687))))

(assert (=> start!126980 e!835922))

(assert (=> start!126980 true))

(declare-fun array_inv!37047 (array!99670) Bool)

(assert (=> start!126980 (array_inv!37047 a!2862)))

(declare-fun b!1492052 () Bool)

(declare-fun res!1015256 () Bool)

(assert (=> b!1492052 (=> (not res!1015256) (not e!835922))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492052 (= res!1015256 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48653 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48653 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48653 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492060 () Bool)

(declare-fun res!1015265 () Bool)

(assert (=> b!1492060 (=> (not res!1015265) (not e!835922))))

(declare-datatypes ((List!34783 0))(
  ( (Nil!34780) (Cons!34779 (h!36162 (_ BitVec 64)) (t!49484 List!34783)) )
))
(declare-fun arrayNoDuplicates!0 (array!99670 (_ BitVec 32) List!34783) Bool)

(assert (=> b!1492060 (= res!1015265 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34780))))

(declare-fun b!1492061 () Bool)

(declare-fun res!1015257 () Bool)

(assert (=> b!1492061 (=> (not res!1015257) (not e!835924))))

(assert (=> b!1492061 (= res!1015257 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492062 () Bool)

(declare-fun e!835921 () Bool)

(assert (=> b!1492062 (= e!835923 e!835921)))

(declare-fun res!1015263 () Bool)

(assert (=> b!1492062 (=> (not res!1015263) (not e!835921))))

(declare-fun lt!650447 () SeekEntryResult!12365)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492062 (= res!1015263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) (select (arr!48102 a!2862) j!93) a!2862 mask!2687) lt!650447))))

(assert (=> b!1492062 (= lt!650447 (Intermediate!12365 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492063 () Bool)

(assert (=> b!1492063 (= e!835921 e!835924)))

(declare-fun res!1015255 () Bool)

(assert (=> b!1492063 (=> (not res!1015255) (not e!835924))))

(assert (=> b!1492063 (= res!1015255 (= lt!650451 (Intermediate!12365 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492063 (= lt!650451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650448 mask!2687) lt!650448 lt!650450 mask!2687))))

(assert (=> b!1492063 (= lt!650448 (select (store (arr!48102 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492064 () Bool)

(declare-fun res!1015253 () Bool)

(assert (=> b!1492064 (=> (not res!1015253) (not e!835922))))

(assert (=> b!1492064 (= res!1015253 (and (= (size!48653 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48653 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48653 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492065 () Bool)

(declare-fun e!835925 () Bool)

(assert (=> b!1492065 (= e!835924 (not e!835925))))

(declare-fun res!1015266 () Bool)

(assert (=> b!1492065 (=> res!1015266 e!835925)))

(assert (=> b!1492065 (= res!1015266 (or (and (= (select (arr!48102 a!2862) index!646) (select (store (arr!48102 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48102 a!2862) index!646) (select (arr!48102 a!2862) j!93))) (= (select (arr!48102 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492065 e!835919))

(declare-fun res!1015252 () Bool)

(assert (=> b!1492065 (=> (not res!1015252) (not e!835919))))

(assert (=> b!1492065 (= res!1015252 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50018 0))(
  ( (Unit!50019) )
))
(declare-fun lt!650452 () Unit!50018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50018)

(assert (=> b!1492065 (= lt!650452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492066 () Bool)

(assert (=> b!1492066 (= e!835925 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!650449 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492066 (= lt!650449 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492067 () Bool)

(declare-fun res!1015259 () Bool)

(assert (=> b!1492067 (=> (not res!1015259) (not e!835922))))

(assert (=> b!1492067 (= res!1015259 (validKeyInArray!0 (select (arr!48102 a!2862) j!93)))))

(declare-fun b!1492068 () Bool)

(declare-fun res!1015260 () Bool)

(assert (=> b!1492068 (=> (not res!1015260) (not e!835921))))

(assert (=> b!1492068 (= res!1015260 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48102 a!2862) j!93) a!2862 mask!2687) lt!650447))))

(declare-fun b!1492069 () Bool)

(assert (=> b!1492069 (= e!835919 (or (= (select (arr!48102 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48102 a!2862) intermediateBeforeIndex!19) (select (arr!48102 a!2862) j!93))))))

(assert (= (and start!126980 res!1015251) b!1492064))

(assert (= (and b!1492064 res!1015253) b!1492056))

(assert (= (and b!1492056 res!1015264) b!1492067))

(assert (= (and b!1492067 res!1015259) b!1492057))

(assert (= (and b!1492057 res!1015254) b!1492060))

(assert (= (and b!1492060 res!1015265) b!1492052))

(assert (= (and b!1492052 res!1015256) b!1492059))

(assert (= (and b!1492059 res!1015258) b!1492062))

(assert (= (and b!1492062 res!1015263) b!1492068))

(assert (= (and b!1492068 res!1015260) b!1492063))

(assert (= (and b!1492063 res!1015255) b!1492058))

(assert (= (and b!1492058 c!137930) b!1492055))

(assert (= (and b!1492058 (not c!137930)) b!1492054))

(assert (= (and b!1492058 res!1015261) b!1492061))

(assert (= (and b!1492061 res!1015257) b!1492065))

(assert (= (and b!1492065 res!1015252) b!1492053))

(assert (= (and b!1492053 res!1015262) b!1492069))

(assert (= (and b!1492065 (not res!1015266)) b!1492066))

(declare-fun m!1376207 () Bool)

(assert (=> start!126980 m!1376207))

(declare-fun m!1376209 () Bool)

(assert (=> start!126980 m!1376209))

(declare-fun m!1376211 () Bool)

(assert (=> b!1492069 m!1376211))

(declare-fun m!1376213 () Bool)

(assert (=> b!1492069 m!1376213))

(declare-fun m!1376215 () Bool)

(assert (=> b!1492056 m!1376215))

(assert (=> b!1492056 m!1376215))

(declare-fun m!1376217 () Bool)

(assert (=> b!1492056 m!1376217))

(assert (=> b!1492068 m!1376213))

(assert (=> b!1492068 m!1376213))

(declare-fun m!1376219 () Bool)

(assert (=> b!1492068 m!1376219))

(declare-fun m!1376221 () Bool)

(assert (=> b!1492063 m!1376221))

(assert (=> b!1492063 m!1376221))

(declare-fun m!1376223 () Bool)

(assert (=> b!1492063 m!1376223))

(declare-fun m!1376225 () Bool)

(assert (=> b!1492063 m!1376225))

(declare-fun m!1376227 () Bool)

(assert (=> b!1492063 m!1376227))

(declare-fun m!1376229 () Bool)

(assert (=> b!1492055 m!1376229))

(assert (=> b!1492059 m!1376225))

(declare-fun m!1376231 () Bool)

(assert (=> b!1492059 m!1376231))

(assert (=> b!1492067 m!1376213))

(assert (=> b!1492067 m!1376213))

(declare-fun m!1376233 () Bool)

(assert (=> b!1492067 m!1376233))

(declare-fun m!1376235 () Bool)

(assert (=> b!1492054 m!1376235))

(declare-fun m!1376237 () Bool)

(assert (=> b!1492054 m!1376237))

(declare-fun m!1376239 () Bool)

(assert (=> b!1492066 m!1376239))

(assert (=> b!1492062 m!1376213))

(assert (=> b!1492062 m!1376213))

(declare-fun m!1376241 () Bool)

(assert (=> b!1492062 m!1376241))

(assert (=> b!1492062 m!1376241))

(assert (=> b!1492062 m!1376213))

(declare-fun m!1376243 () Bool)

(assert (=> b!1492062 m!1376243))

(declare-fun m!1376245 () Bool)

(assert (=> b!1492065 m!1376245))

(assert (=> b!1492065 m!1376225))

(declare-fun m!1376247 () Bool)

(assert (=> b!1492065 m!1376247))

(declare-fun m!1376249 () Bool)

(assert (=> b!1492065 m!1376249))

(declare-fun m!1376251 () Bool)

(assert (=> b!1492065 m!1376251))

(assert (=> b!1492065 m!1376213))

(declare-fun m!1376253 () Bool)

(assert (=> b!1492060 m!1376253))

(assert (=> b!1492053 m!1376213))

(assert (=> b!1492053 m!1376213))

(declare-fun m!1376255 () Bool)

(assert (=> b!1492053 m!1376255))

(declare-fun m!1376257 () Bool)

(assert (=> b!1492057 m!1376257))

(push 1)

(assert (not b!1492055))

(assert (not b!1492068))

(assert (not b!1492056))

(assert (not b!1492054))

(assert (not b!1492066))

(assert (not b!1492060))

(assert (not b!1492067))

(assert (not b!1492057))

(assert (not start!126980))

(assert (not b!1492062))

(assert (not b!1492053))

(assert (not b!1492065))

(assert (not b!1492063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1492227 () Bool)

(declare-fun e!836023 () Bool)

(declare-fun lt!650525 () SeekEntryResult!12365)

(assert (=> b!1492227 (= e!836023 (bvsge (x!133432 lt!650525) #b01111111111111111111111111111110))))

(declare-fun b!1492228 () Bool)

(declare-fun e!836022 () SeekEntryResult!12365)

(assert (=> b!1492228 (= e!836022 (Intermediate!12365 false (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156789 () Bool)

(assert (=> d!156789 e!836023))

(declare-fun c!137986 () Bool)

(assert (=> d!156789 (= c!137986 (and (is-Intermediate!12365 lt!650525) (undefined!13177 lt!650525)))))

(declare-fun e!836021 () SeekEntryResult!12365)

(assert (=> d!156789 (= lt!650525 e!836021)))

(declare-fun c!137987 () Bool)

(assert (=> d!156789 (= c!137987 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!650526 () (_ BitVec 64))

(assert (=> d!156789 (= lt!650526 (select (arr!48102 a!2862) (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687)))))

(assert (=> d!156789 (validMask!0 mask!2687)))

(assert (=> d!156789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) (select (arr!48102 a!2862) j!93) a!2862 mask!2687) lt!650525)))

(declare-fun b!1492229 () Bool)

(assert (=> b!1492229 (and (bvsge (index!51853 lt!650525) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650525) (size!48653 a!2862)))))

(declare-fun res!1015317 () Bool)

(assert (=> b!1492229 (= res!1015317 (= (select (arr!48102 a!2862) (index!51853 lt!650525)) (select (arr!48102 a!2862) j!93)))))

(declare-fun e!836020 () Bool)

(assert (=> b!1492229 (=> res!1015317 e!836020)))

(declare-fun e!836024 () Bool)

(assert (=> b!1492229 (= e!836024 e!836020)))

(declare-fun b!1492230 () Bool)

(assert (=> b!1492230 (= e!836021 e!836022)))

(declare-fun c!137988 () Bool)

(assert (=> b!1492230 (= c!137988 (or (= lt!650526 (select (arr!48102 a!2862) j!93)) (= (bvadd lt!650526 lt!650526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492231 () Bool)

(assert (=> b!1492231 (= e!836022 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48102 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1492232 () Bool)

(assert (=> b!1492232 (= e!836023 e!836024)))

(declare-fun res!1015316 () Bool)

(assert (=> b!1492232 (= res!1015316 (and (is-Intermediate!12365 lt!650525) (not (undefined!13177 lt!650525)) (bvslt (x!133432 lt!650525) #b01111111111111111111111111111110) (bvsge (x!133432 lt!650525) #b00000000000000000000000000000000) (bvsge (x!133432 lt!650525) #b00000000000000000000000000000000)))))

(assert (=> b!1492232 (=> (not res!1015316) (not e!836024))))

(declare-fun b!1492233 () Bool)

(assert (=> b!1492233 (= e!836021 (Intermediate!12365 true (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492234 () Bool)

(assert (=> b!1492234 (and (bvsge (index!51853 lt!650525) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650525) (size!48653 a!2862)))))

(assert (=> b!1492234 (= e!836020 (= (select (arr!48102 a!2862) (index!51853 lt!650525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492235 () Bool)

(assert (=> b!1492235 (and (bvsge (index!51853 lt!650525) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650525) (size!48653 a!2862)))))

(declare-fun res!1015315 () Bool)

(assert (=> b!1492235 (= res!1015315 (= (select (arr!48102 a!2862) (index!51853 lt!650525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492235 (=> res!1015315 e!836020)))

(assert (= (and d!156789 c!137987) b!1492233))

(assert (= (and d!156789 (not c!137987)) b!1492230))

(assert (= (and b!1492230 c!137988) b!1492228))

(assert (= (and b!1492230 (not c!137988)) b!1492231))

(assert (= (and d!156789 c!137986) b!1492227))

(assert (= (and d!156789 (not c!137986)) b!1492232))

(assert (= (and b!1492232 res!1015316) b!1492229))

(assert (= (and b!1492229 (not res!1015317)) b!1492235))

(assert (= (and b!1492235 (not res!1015315)) b!1492234))

(declare-fun m!1376345 () Bool)

(assert (=> b!1492235 m!1376345))

(assert (=> b!1492229 m!1376345))

(assert (=> d!156789 m!1376241))

(declare-fun m!1376347 () Bool)

(assert (=> d!156789 m!1376347))

(assert (=> d!156789 m!1376207))

(assert (=> b!1492234 m!1376345))

(assert (=> b!1492231 m!1376241))

(declare-fun m!1376349 () Bool)

(assert (=> b!1492231 m!1376349))

(assert (=> b!1492231 m!1376349))

(assert (=> b!1492231 m!1376213))

(declare-fun m!1376351 () Bool)

(assert (=> b!1492231 m!1376351))

(assert (=> b!1492062 d!156789))

(declare-fun d!156805 () Bool)

(declare-fun lt!650532 () (_ BitVec 32))

(declare-fun lt!650531 () (_ BitVec 32))

(assert (=> d!156805 (= lt!650532 (bvmul (bvxor lt!650531 (bvlshr lt!650531 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156805 (= lt!650531 ((_ extract 31 0) (bvand (bvxor (select (arr!48102 a!2862) j!93) (bvlshr (select (arr!48102 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156805 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015318 (let ((h!36164 ((_ extract 31 0) (bvand (bvxor (select (arr!48102 a!2862) j!93) (bvlshr (select (arr!48102 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133438 (bvmul (bvxor h!36164 (bvlshr h!36164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133438 (bvlshr x!133438 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015318 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015318 #b00000000000000000000000000000000))))))

(assert (=> d!156805 (= (toIndex!0 (select (arr!48102 a!2862) j!93) mask!2687) (bvand (bvxor lt!650532 (bvlshr lt!650532 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492062 d!156805))

(declare-fun b!1492236 () Bool)

(declare-fun e!836028 () Bool)

(declare-fun lt!650533 () SeekEntryResult!12365)

(assert (=> b!1492236 (= e!836028 (bvsge (x!133432 lt!650533) #b01111111111111111111111111111110))))

(declare-fun b!1492237 () Bool)

(declare-fun e!836027 () SeekEntryResult!12365)

(assert (=> b!1492237 (= e!836027 (Intermediate!12365 false (toIndex!0 lt!650448 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156807 () Bool)

(assert (=> d!156807 e!836028))

(declare-fun c!137989 () Bool)

(assert (=> d!156807 (= c!137989 (and (is-Intermediate!12365 lt!650533) (undefined!13177 lt!650533)))))

(declare-fun e!836026 () SeekEntryResult!12365)

(assert (=> d!156807 (= lt!650533 e!836026)))

(declare-fun c!137990 () Bool)

(assert (=> d!156807 (= c!137990 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!650534 () (_ BitVec 64))

(assert (=> d!156807 (= lt!650534 (select (arr!48102 lt!650450) (toIndex!0 lt!650448 mask!2687)))))

(assert (=> d!156807 (validMask!0 mask!2687)))

(assert (=> d!156807 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650448 mask!2687) lt!650448 lt!650450 mask!2687) lt!650533)))

(declare-fun b!1492238 () Bool)

(assert (=> b!1492238 (and (bvsge (index!51853 lt!650533) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650533) (size!48653 lt!650450)))))

(declare-fun res!1015321 () Bool)

(assert (=> b!1492238 (= res!1015321 (= (select (arr!48102 lt!650450) (index!51853 lt!650533)) lt!650448))))

(declare-fun e!836025 () Bool)

(assert (=> b!1492238 (=> res!1015321 e!836025)))

(declare-fun e!836029 () Bool)

(assert (=> b!1492238 (= e!836029 e!836025)))

(declare-fun b!1492239 () Bool)

(assert (=> b!1492239 (= e!836026 e!836027)))

(declare-fun c!137991 () Bool)

(assert (=> b!1492239 (= c!137991 (or (= lt!650534 lt!650448) (= (bvadd lt!650534 lt!650534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492240 () Bool)

(assert (=> b!1492240 (= e!836027 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!650448 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!650448 lt!650450 mask!2687))))

(declare-fun b!1492241 () Bool)

(assert (=> b!1492241 (= e!836028 e!836029)))

(declare-fun res!1015320 () Bool)

(assert (=> b!1492241 (= res!1015320 (and (is-Intermediate!12365 lt!650533) (not (undefined!13177 lt!650533)) (bvslt (x!133432 lt!650533) #b01111111111111111111111111111110) (bvsge (x!133432 lt!650533) #b00000000000000000000000000000000) (bvsge (x!133432 lt!650533) #b00000000000000000000000000000000)))))

(assert (=> b!1492241 (=> (not res!1015320) (not e!836029))))

(declare-fun b!1492242 () Bool)

(assert (=> b!1492242 (= e!836026 (Intermediate!12365 true (toIndex!0 lt!650448 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492243 () Bool)

(assert (=> b!1492243 (and (bvsge (index!51853 lt!650533) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650533) (size!48653 lt!650450)))))

(assert (=> b!1492243 (= e!836025 (= (select (arr!48102 lt!650450) (index!51853 lt!650533)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492244 () Bool)

(assert (=> b!1492244 (and (bvsge (index!51853 lt!650533) #b00000000000000000000000000000000) (bvslt (index!51853 lt!650533) (size!48653 lt!650450)))))

(declare-fun res!1015319 () Bool)

(assert (=> b!1492244 (= res!1015319 (= (select (arr!48102 lt!650450) (index!51853 lt!650533)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492244 (=> res!1015319 e!836025)))

(assert (= (and d!156807 c!137990) b!1492242))

(assert (= (and d!156807 (not c!137990)) b!1492239))

(assert (= (and b!1492239 c!137991) b!1492237))

(assert (= (and b!1492239 (not c!137991)) b!1492240))

(assert (= (and d!156807 c!137989) b!1492236))

(assert (= (and d!156807 (not c!137989)) b!1492241))

(assert (= (and b!1492241 res!1015320) b!1492238))

(assert (= (and b!1492238 (not res!1015321)) b!1492244))

(assert (= (and b!1492244 (not res!1015319)) b!1492243))

(declare-fun m!1376353 () Bool)

(assert (=> b!1492244 m!1376353))

(assert (=> b!1492238 m!1376353))

(assert (=> d!156807 m!1376221))

(declare-fun m!1376355 () Bool)

(assert (=> d!156807 m!1376355))

(assert (=> d!156807 m!1376207))

(assert (=> b!1492243 m!1376353))

(assert (=> b!1492240 m!1376221))

(declare-fun m!1376357 () Bool)

(assert (=> b!1492240 m!1376357))

(assert (=> b!1492240 m!1376357))

(declare-fun m!1376359 () Bool)

(assert (=> b!1492240 m!1376359))

(assert (=> b!1492063 d!156807))

(declare-fun d!156809 () Bool)

(declare-fun lt!650536 () (_ BitVec 32))

(declare-fun lt!650535 () (_ BitVec 32))

(assert (=> d!156809 (= lt!650536 (bvmul (bvxor lt!650535 (bvlshr lt!650535 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156809 (= lt!650535 ((_ extract 31 0) (bvand (bvxor lt!650448 (bvlshr lt!650448 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156809 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015318 (let ((h!36164 ((_ extract 31 0) (bvand (bvxor lt!650448 (bvlshr lt!650448 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133438 (bvmul (bvxor h!36164 (bvlshr h!36164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133438 (bvlshr x!133438 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015318 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015318 #b00000000000000000000000000000000))))))

(assert (=> d!156809 (= (toIndex!0 lt!650448 mask!2687) (bvand (bvxor lt!650536 (bvlshr lt!650536 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492063 d!156809))

(declare-fun b!1492297 () Bool)

(declare-fun e!836061 () SeekEntryResult!12365)

(declare-fun e!836059 () SeekEntryResult!12365)

(assert (=> b!1492297 (= e!836061 e!836059)))

(declare-fun lt!650561 () (_ BitVec 64))

(declare-fun lt!650560 () SeekEntryResult!12365)

(assert (=> b!1492297 (= lt!650561 (select (arr!48102 a!2862) (index!51853 lt!650560)))))

(declare-fun c!138012 () Bool)

(assert (=> b!1492297 (= c!138012 (= lt!650561 (select (arr!48102 a!2862) j!93)))))

(declare-fun b!1492298 () Bool)

(declare-fun e!836060 () SeekEntryResult!12365)

(assert (=> b!1492298 (= e!836060 (MissingZero!12365 (index!51853 lt!650560)))))

(declare-fun b!1492299 () Bool)

