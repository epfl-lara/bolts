; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126036 () Bool)

(assert start!126036)

(declare-fun b!1475178 () Bool)

(declare-fun e!827674 () Bool)

(declare-fun e!827675 () Bool)

(assert (=> b!1475178 (= e!827674 e!827675)))

(declare-fun res!1002155 () Bool)

(assert (=> b!1475178 (=> (not res!1002155) (not e!827675))))

(declare-datatypes ((array!99173 0))(
  ( (array!99174 (arr!47864 (Array (_ BitVec 32) (_ BitVec 64))) (size!48415 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99173)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12127 0))(
  ( (MissingZero!12127 (index!50899 (_ BitVec 32))) (Found!12127 (index!50900 (_ BitVec 32))) (Intermediate!12127 (undefined!12939 Bool) (index!50901 (_ BitVec 32)) (x!132487 (_ BitVec 32))) (Undefined!12127) (MissingVacant!12127 (index!50902 (_ BitVec 32))) )
))
(declare-fun lt!644495 () SeekEntryResult!12127)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99173 (_ BitVec 32)) SeekEntryResult!12127)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475178 (= res!1002155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644495))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1475178 (= lt!644495 (Intermediate!12127 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1475180 () Bool)

(declare-fun res!1002157 () Bool)

(declare-fun e!827671 () Bool)

(assert (=> b!1475180 (=> (not res!1002157) (not e!827671))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475180 (= res!1002157 (validKeyInArray!0 (select (arr!47864 a!2862) i!1006)))))

(declare-fun b!1475181 () Bool)

(declare-fun e!827676 () Bool)

(assert (=> b!1475181 (= e!827675 e!827676)))

(declare-fun res!1002156 () Bool)

(assert (=> b!1475181 (=> (not res!1002156) (not e!827676))))

(declare-fun lt!644496 () SeekEntryResult!12127)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1475181 (= res!1002156 (= lt!644496 (Intermediate!12127 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644497 () (_ BitVec 64))

(declare-fun lt!644498 () array!99173)

(assert (=> b!1475181 (= lt!644496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644497 mask!2687) lt!644497 lt!644498 mask!2687))))

(assert (=> b!1475181 (= lt!644497 (select (store (arr!47864 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1475182 () Bool)

(declare-fun res!1002151 () Bool)

(assert (=> b!1475182 (=> (not res!1002151) (not e!827671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99173 (_ BitVec 32)) Bool)

(assert (=> b!1475182 (= res!1002151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475183 () Bool)

(assert (=> b!1475183 (= e!827671 e!827674)))

(declare-fun res!1002150 () Bool)

(assert (=> b!1475183 (=> (not res!1002150) (not e!827674))))

(assert (=> b!1475183 (= res!1002150 (= (select (store (arr!47864 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475183 (= lt!644498 (array!99174 (store (arr!47864 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48415 a!2862)))))

(declare-fun b!1475184 () Bool)

(declare-fun res!1002153 () Bool)

(assert (=> b!1475184 (=> (not res!1002153) (not e!827671))))

(declare-datatypes ((List!34545 0))(
  ( (Nil!34542) (Cons!34541 (h!35903 (_ BitVec 64)) (t!49246 List!34545)) )
))
(declare-fun arrayNoDuplicates!0 (array!99173 (_ BitVec 32) List!34545) Bool)

(assert (=> b!1475184 (= res!1002153 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34542))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1475185 () Bool)

(declare-fun lt!644499 () SeekEntryResult!12127)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!827677 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99173 (_ BitVec 32)) SeekEntryResult!12127)

(assert (=> b!1475185 (= e!827677 (= lt!644499 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47864 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475186 () Bool)

(assert (=> b!1475186 (= e!827676 (not (or (and (= (select (arr!47864 a!2862) index!646) (select (store (arr!47864 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47864 a!2862) index!646) (select (arr!47864 a!2862) j!93))) (not (= (select (arr!47864 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!646 intermediateBeforeIndex!19))))))

(declare-fun e!827678 () Bool)

(assert (=> b!1475186 e!827678))

(declare-fun res!1002160 () Bool)

(assert (=> b!1475186 (=> (not res!1002160) (not e!827678))))

(assert (=> b!1475186 (= res!1002160 (and (= lt!644499 (Found!12127 j!93)) (or (= (select (arr!47864 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47864 a!2862) intermediateBeforeIndex!19) (select (arr!47864 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99173 (_ BitVec 32)) SeekEntryResult!12127)

(assert (=> b!1475186 (= lt!644499 (seekEntryOrOpen!0 (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1475186 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49542 0))(
  ( (Unit!49543) )
))
(declare-fun lt!644500 () Unit!49542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49542)

(assert (=> b!1475186 (= lt!644500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475187 () Bool)

(assert (=> b!1475187 (= e!827678 e!827677)))

(declare-fun res!1002159 () Bool)

(assert (=> b!1475187 (=> res!1002159 e!827677)))

(assert (=> b!1475187 (= res!1002159 (or (and (= (select (arr!47864 a!2862) index!646) (select (store (arr!47864 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47864 a!2862) index!646) (select (arr!47864 a!2862) j!93))) (not (= (select (arr!47864 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1475188 () Bool)

(declare-fun e!827673 () Bool)

(assert (=> b!1475188 (= e!827673 (= lt!644496 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644497 lt!644498 mask!2687)))))

(declare-fun res!1002152 () Bool)

(assert (=> start!126036 (=> (not res!1002152) (not e!827671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126036 (= res!1002152 (validMask!0 mask!2687))))

(assert (=> start!126036 e!827671))

(assert (=> start!126036 true))

(declare-fun array_inv!36809 (array!99173) Bool)

(assert (=> start!126036 (array_inv!36809 a!2862)))

(declare-fun b!1475179 () Bool)

(declare-fun res!1002148 () Bool)

(assert (=> b!1475179 (=> (not res!1002148) (not e!827676))))

(assert (=> b!1475179 (= res!1002148 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1475189 () Bool)

(declare-fun res!1002162 () Bool)

(assert (=> b!1475189 (=> (not res!1002162) (not e!827671))))

(assert (=> b!1475189 (= res!1002162 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48415 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48415 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48415 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1475190 () Bool)

(declare-fun res!1002158 () Bool)

(assert (=> b!1475190 (=> (not res!1002158) (not e!827671))))

(assert (=> b!1475190 (= res!1002158 (and (= (size!48415 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48415 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48415 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475191 () Bool)

(declare-fun res!1002161 () Bool)

(assert (=> b!1475191 (=> (not res!1002161) (not e!827671))))

(assert (=> b!1475191 (= res!1002161 (validKeyInArray!0 (select (arr!47864 a!2862) j!93)))))

(declare-fun b!1475192 () Bool)

(declare-fun res!1002154 () Bool)

(assert (=> b!1475192 (=> (not res!1002154) (not e!827675))))

(assert (=> b!1475192 (= res!1002154 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644495))))

(declare-fun b!1475193 () Bool)

(declare-fun res!1002149 () Bool)

(assert (=> b!1475193 (=> (not res!1002149) (not e!827676))))

(assert (=> b!1475193 (= res!1002149 e!827673)))

(declare-fun c!136034 () Bool)

(assert (=> b!1475193 (= c!136034 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1475194 () Bool)

(assert (=> b!1475194 (= e!827673 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644497 lt!644498 mask!2687) (seekEntryOrOpen!0 lt!644497 lt!644498 mask!2687)))))

(assert (= (and start!126036 res!1002152) b!1475190))

(assert (= (and b!1475190 res!1002158) b!1475180))

(assert (= (and b!1475180 res!1002157) b!1475191))

(assert (= (and b!1475191 res!1002161) b!1475182))

(assert (= (and b!1475182 res!1002151) b!1475184))

(assert (= (and b!1475184 res!1002153) b!1475189))

(assert (= (and b!1475189 res!1002162) b!1475183))

(assert (= (and b!1475183 res!1002150) b!1475178))

(assert (= (and b!1475178 res!1002155) b!1475192))

(assert (= (and b!1475192 res!1002154) b!1475181))

(assert (= (and b!1475181 res!1002156) b!1475193))

(assert (= (and b!1475193 c!136034) b!1475188))

(assert (= (and b!1475193 (not c!136034)) b!1475194))

(assert (= (and b!1475193 res!1002149) b!1475179))

(assert (= (and b!1475179 res!1002148) b!1475186))

(assert (= (and b!1475186 res!1002160) b!1475187))

(assert (= (and b!1475187 (not res!1002159)) b!1475185))

(declare-fun m!1361527 () Bool)

(assert (=> b!1475181 m!1361527))

(assert (=> b!1475181 m!1361527))

(declare-fun m!1361529 () Bool)

(assert (=> b!1475181 m!1361529))

(declare-fun m!1361531 () Bool)

(assert (=> b!1475181 m!1361531))

(declare-fun m!1361533 () Bool)

(assert (=> b!1475181 m!1361533))

(declare-fun m!1361535 () Bool)

(assert (=> b!1475187 m!1361535))

(assert (=> b!1475187 m!1361531))

(declare-fun m!1361537 () Bool)

(assert (=> b!1475187 m!1361537))

(declare-fun m!1361539 () Bool)

(assert (=> b!1475187 m!1361539))

(declare-fun m!1361541 () Bool)

(assert (=> b!1475180 m!1361541))

(assert (=> b!1475180 m!1361541))

(declare-fun m!1361543 () Bool)

(assert (=> b!1475180 m!1361543))

(assert (=> b!1475178 m!1361539))

(assert (=> b!1475178 m!1361539))

(declare-fun m!1361545 () Bool)

(assert (=> b!1475178 m!1361545))

(assert (=> b!1475178 m!1361545))

(assert (=> b!1475178 m!1361539))

(declare-fun m!1361547 () Bool)

(assert (=> b!1475178 m!1361547))

(declare-fun m!1361549 () Bool)

(assert (=> b!1475182 m!1361549))

(declare-fun m!1361551 () Bool)

(assert (=> start!126036 m!1361551))

(declare-fun m!1361553 () Bool)

(assert (=> start!126036 m!1361553))

(declare-fun m!1361555 () Bool)

(assert (=> b!1475188 m!1361555))

(declare-fun m!1361557 () Bool)

(assert (=> b!1475184 m!1361557))

(declare-fun m!1361559 () Bool)

(assert (=> b!1475194 m!1361559))

(declare-fun m!1361561 () Bool)

(assert (=> b!1475194 m!1361561))

(assert (=> b!1475192 m!1361539))

(assert (=> b!1475192 m!1361539))

(declare-fun m!1361563 () Bool)

(assert (=> b!1475192 m!1361563))

(assert (=> b!1475185 m!1361539))

(assert (=> b!1475185 m!1361539))

(declare-fun m!1361565 () Bool)

(assert (=> b!1475185 m!1361565))

(assert (=> b!1475191 m!1361539))

(assert (=> b!1475191 m!1361539))

(declare-fun m!1361567 () Bool)

(assert (=> b!1475191 m!1361567))

(assert (=> b!1475183 m!1361531))

(declare-fun m!1361569 () Bool)

(assert (=> b!1475183 m!1361569))

(declare-fun m!1361571 () Bool)

(assert (=> b!1475186 m!1361571))

(assert (=> b!1475186 m!1361531))

(declare-fun m!1361573 () Bool)

(assert (=> b!1475186 m!1361573))

(assert (=> b!1475186 m!1361537))

(assert (=> b!1475186 m!1361535))

(assert (=> b!1475186 m!1361539))

(declare-fun m!1361575 () Bool)

(assert (=> b!1475186 m!1361575))

(declare-fun m!1361577 () Bool)

(assert (=> b!1475186 m!1361577))

(assert (=> b!1475186 m!1361539))

(check-sat (not b!1475180) (not b!1475192) (not b!1475182) (not b!1475181) (not b!1475178) (not b!1475191) (not b!1475194) (not b!1475185) (not b!1475184) (not b!1475188) (not start!126036) (not b!1475186))
(check-sat)
(get-model)

(declare-fun d!155707 () Bool)

(declare-fun e!827713 () Bool)

(assert (=> d!155707 e!827713))

(declare-fun c!136046 () Bool)

(declare-fun lt!644523 () SeekEntryResult!12127)

(get-info :version)

(assert (=> d!155707 (= c!136046 (and ((_ is Intermediate!12127) lt!644523) (undefined!12939 lt!644523)))))

(declare-fun e!827715 () SeekEntryResult!12127)

(assert (=> d!155707 (= lt!644523 e!827715)))

(declare-fun c!136045 () Bool)

(assert (=> d!155707 (= c!136045 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644524 () (_ BitVec 64))

(assert (=> d!155707 (= lt!644524 (select (arr!47864 lt!644498) index!646))))

(assert (=> d!155707 (validMask!0 mask!2687)))

(assert (=> d!155707 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644497 lt!644498 mask!2687) lt!644523)))

(declare-fun b!1475264 () Bool)

(declare-fun e!827716 () SeekEntryResult!12127)

(assert (=> b!1475264 (= e!827716 (Intermediate!12127 false index!646 x!665))))

(declare-fun b!1475265 () Bool)

(assert (=> b!1475265 (and (bvsge (index!50901 lt!644523) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644523) (size!48415 lt!644498)))))

(declare-fun res!1002216 () Bool)

(assert (=> b!1475265 (= res!1002216 (= (select (arr!47864 lt!644498) (index!50901 lt!644523)) lt!644497))))

(declare-fun e!827717 () Bool)

(assert (=> b!1475265 (=> res!1002216 e!827717)))

(declare-fun e!827714 () Bool)

(assert (=> b!1475265 (= e!827714 e!827717)))

(declare-fun b!1475266 () Bool)

(assert (=> b!1475266 (= e!827715 (Intermediate!12127 true index!646 x!665))))

(declare-fun b!1475267 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475267 (= e!827716 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644497 lt!644498 mask!2687))))

(declare-fun b!1475268 () Bool)

(assert (=> b!1475268 (and (bvsge (index!50901 lt!644523) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644523) (size!48415 lt!644498)))))

(assert (=> b!1475268 (= e!827717 (= (select (arr!47864 lt!644498) (index!50901 lt!644523)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475269 () Bool)

(assert (=> b!1475269 (and (bvsge (index!50901 lt!644523) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644523) (size!48415 lt!644498)))))

(declare-fun res!1002214 () Bool)

(assert (=> b!1475269 (= res!1002214 (= (select (arr!47864 lt!644498) (index!50901 lt!644523)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475269 (=> res!1002214 e!827717)))

(declare-fun b!1475270 () Bool)

(assert (=> b!1475270 (= e!827715 e!827716)))

(declare-fun c!136044 () Bool)

(assert (=> b!1475270 (= c!136044 (or (= lt!644524 lt!644497) (= (bvadd lt!644524 lt!644524) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475271 () Bool)

(assert (=> b!1475271 (= e!827713 (bvsge (x!132487 lt!644523) #b01111111111111111111111111111110))))

(declare-fun b!1475272 () Bool)

(assert (=> b!1475272 (= e!827713 e!827714)))

(declare-fun res!1002215 () Bool)

(assert (=> b!1475272 (= res!1002215 (and ((_ is Intermediate!12127) lt!644523) (not (undefined!12939 lt!644523)) (bvslt (x!132487 lt!644523) #b01111111111111111111111111111110) (bvsge (x!132487 lt!644523) #b00000000000000000000000000000000) (bvsge (x!132487 lt!644523) x!665)))))

(assert (=> b!1475272 (=> (not res!1002215) (not e!827714))))

(assert (= (and d!155707 c!136045) b!1475266))

(assert (= (and d!155707 (not c!136045)) b!1475270))

(assert (= (and b!1475270 c!136044) b!1475264))

(assert (= (and b!1475270 (not c!136044)) b!1475267))

(assert (= (and d!155707 c!136046) b!1475271))

(assert (= (and d!155707 (not c!136046)) b!1475272))

(assert (= (and b!1475272 res!1002215) b!1475265))

(assert (= (and b!1475265 (not res!1002216)) b!1475269))

(assert (= (and b!1475269 (not res!1002214)) b!1475268))

(declare-fun m!1361631 () Bool)

(assert (=> d!155707 m!1361631))

(assert (=> d!155707 m!1361551))

(declare-fun m!1361633 () Bool)

(assert (=> b!1475267 m!1361633))

(assert (=> b!1475267 m!1361633))

(declare-fun m!1361635 () Bool)

(assert (=> b!1475267 m!1361635))

(declare-fun m!1361637 () Bool)

(assert (=> b!1475265 m!1361637))

(assert (=> b!1475268 m!1361637))

(assert (=> b!1475269 m!1361637))

(assert (=> b!1475188 d!155707))

(declare-fun d!155709 () Bool)

(declare-fun e!827718 () Bool)

(assert (=> d!155709 e!827718))

(declare-fun c!136049 () Bool)

(declare-fun lt!644525 () SeekEntryResult!12127)

(assert (=> d!155709 (= c!136049 (and ((_ is Intermediate!12127) lt!644525) (undefined!12939 lt!644525)))))

(declare-fun e!827720 () SeekEntryResult!12127)

(assert (=> d!155709 (= lt!644525 e!827720)))

(declare-fun c!136048 () Bool)

(assert (=> d!155709 (= c!136048 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644526 () (_ BitVec 64))

(assert (=> d!155709 (= lt!644526 (select (arr!47864 a!2862) (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687)))))

(assert (=> d!155709 (validMask!0 mask!2687)))

(assert (=> d!155709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644525)))

(declare-fun b!1475273 () Bool)

(declare-fun e!827721 () SeekEntryResult!12127)

(assert (=> b!1475273 (= e!827721 (Intermediate!12127 false (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475274 () Bool)

(assert (=> b!1475274 (and (bvsge (index!50901 lt!644525) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644525) (size!48415 a!2862)))))

(declare-fun res!1002219 () Bool)

(assert (=> b!1475274 (= res!1002219 (= (select (arr!47864 a!2862) (index!50901 lt!644525)) (select (arr!47864 a!2862) j!93)))))

(declare-fun e!827722 () Bool)

(assert (=> b!1475274 (=> res!1002219 e!827722)))

(declare-fun e!827719 () Bool)

(assert (=> b!1475274 (= e!827719 e!827722)))

(declare-fun b!1475275 () Bool)

(assert (=> b!1475275 (= e!827720 (Intermediate!12127 true (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475276 () Bool)

(assert (=> b!1475276 (= e!827721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475277 () Bool)

(assert (=> b!1475277 (and (bvsge (index!50901 lt!644525) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644525) (size!48415 a!2862)))))

(assert (=> b!1475277 (= e!827722 (= (select (arr!47864 a!2862) (index!50901 lt!644525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475278 () Bool)

(assert (=> b!1475278 (and (bvsge (index!50901 lt!644525) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644525) (size!48415 a!2862)))))

(declare-fun res!1002217 () Bool)

(assert (=> b!1475278 (= res!1002217 (= (select (arr!47864 a!2862) (index!50901 lt!644525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475278 (=> res!1002217 e!827722)))

(declare-fun b!1475279 () Bool)

(assert (=> b!1475279 (= e!827720 e!827721)))

(declare-fun c!136047 () Bool)

(assert (=> b!1475279 (= c!136047 (or (= lt!644526 (select (arr!47864 a!2862) j!93)) (= (bvadd lt!644526 lt!644526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475280 () Bool)

(assert (=> b!1475280 (= e!827718 (bvsge (x!132487 lt!644525) #b01111111111111111111111111111110))))

(declare-fun b!1475281 () Bool)

(assert (=> b!1475281 (= e!827718 e!827719)))

(declare-fun res!1002218 () Bool)

(assert (=> b!1475281 (= res!1002218 (and ((_ is Intermediate!12127) lt!644525) (not (undefined!12939 lt!644525)) (bvslt (x!132487 lt!644525) #b01111111111111111111111111111110) (bvsge (x!132487 lt!644525) #b00000000000000000000000000000000) (bvsge (x!132487 lt!644525) #b00000000000000000000000000000000)))))

(assert (=> b!1475281 (=> (not res!1002218) (not e!827719))))

(assert (= (and d!155709 c!136048) b!1475275))

(assert (= (and d!155709 (not c!136048)) b!1475279))

(assert (= (and b!1475279 c!136047) b!1475273))

(assert (= (and b!1475279 (not c!136047)) b!1475276))

(assert (= (and d!155709 c!136049) b!1475280))

(assert (= (and d!155709 (not c!136049)) b!1475281))

(assert (= (and b!1475281 res!1002218) b!1475274))

(assert (= (and b!1475274 (not res!1002219)) b!1475278))

(assert (= (and b!1475278 (not res!1002217)) b!1475277))

(assert (=> d!155709 m!1361545))

(declare-fun m!1361639 () Bool)

(assert (=> d!155709 m!1361639))

(assert (=> d!155709 m!1361551))

(assert (=> b!1475276 m!1361545))

(declare-fun m!1361641 () Bool)

(assert (=> b!1475276 m!1361641))

(assert (=> b!1475276 m!1361641))

(assert (=> b!1475276 m!1361539))

(declare-fun m!1361643 () Bool)

(assert (=> b!1475276 m!1361643))

(declare-fun m!1361645 () Bool)

(assert (=> b!1475274 m!1361645))

(assert (=> b!1475277 m!1361645))

(assert (=> b!1475278 m!1361645))

(assert (=> b!1475178 d!155709))

(declare-fun d!155711 () Bool)

(declare-fun lt!644532 () (_ BitVec 32))

(declare-fun lt!644531 () (_ BitVec 32))

(assert (=> d!155711 (= lt!644532 (bvmul (bvxor lt!644531 (bvlshr lt!644531 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155711 (= lt!644531 ((_ extract 31 0) (bvand (bvxor (select (arr!47864 a!2862) j!93) (bvlshr (select (arr!47864 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155711 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002220 (let ((h!35905 ((_ extract 31 0) (bvand (bvxor (select (arr!47864 a!2862) j!93) (bvlshr (select (arr!47864 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132490 (bvmul (bvxor h!35905 (bvlshr h!35905 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132490 (bvlshr x!132490 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002220 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002220 #b00000000000000000000000000000000))))))

(assert (=> d!155711 (= (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) (bvand (bvxor lt!644532 (bvlshr lt!644532 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475178 d!155711))

(declare-fun b!1475294 () Bool)

(declare-fun lt!644539 () SeekEntryResult!12127)

(declare-fun e!827730 () SeekEntryResult!12127)

(assert (=> b!1475294 (= e!827730 (seekKeyOrZeroReturnVacant!0 (x!132487 lt!644539) (index!50901 lt!644539) (index!50901 lt!644539) (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475295 () Bool)

(assert (=> b!1475295 (= e!827730 (MissingZero!12127 (index!50901 lt!644539)))))

(declare-fun b!1475296 () Bool)

(declare-fun e!827729 () SeekEntryResult!12127)

(declare-fun e!827731 () SeekEntryResult!12127)

(assert (=> b!1475296 (= e!827729 e!827731)))

(declare-fun lt!644541 () (_ BitVec 64))

(assert (=> b!1475296 (= lt!644541 (select (arr!47864 a!2862) (index!50901 lt!644539)))))

(declare-fun c!136057 () Bool)

(assert (=> b!1475296 (= c!136057 (= lt!644541 (select (arr!47864 a!2862) j!93)))))

(declare-fun b!1475298 () Bool)

(assert (=> b!1475298 (= e!827729 Undefined!12127)))

(declare-fun b!1475299 () Bool)

(declare-fun c!136056 () Bool)

(assert (=> b!1475299 (= c!136056 (= lt!644541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475299 (= e!827731 e!827730)))

(declare-fun b!1475297 () Bool)

(assert (=> b!1475297 (= e!827731 (Found!12127 (index!50901 lt!644539)))))

(declare-fun d!155713 () Bool)

(declare-fun lt!644540 () SeekEntryResult!12127)

(assert (=> d!155713 (and (or ((_ is Undefined!12127) lt!644540) (not ((_ is Found!12127) lt!644540)) (and (bvsge (index!50900 lt!644540) #b00000000000000000000000000000000) (bvslt (index!50900 lt!644540) (size!48415 a!2862)))) (or ((_ is Undefined!12127) lt!644540) ((_ is Found!12127) lt!644540) (not ((_ is MissingZero!12127) lt!644540)) (and (bvsge (index!50899 lt!644540) #b00000000000000000000000000000000) (bvslt (index!50899 lt!644540) (size!48415 a!2862)))) (or ((_ is Undefined!12127) lt!644540) ((_ is Found!12127) lt!644540) ((_ is MissingZero!12127) lt!644540) (not ((_ is MissingVacant!12127) lt!644540)) (and (bvsge (index!50902 lt!644540) #b00000000000000000000000000000000) (bvslt (index!50902 lt!644540) (size!48415 a!2862)))) (or ((_ is Undefined!12127) lt!644540) (ite ((_ is Found!12127) lt!644540) (= (select (arr!47864 a!2862) (index!50900 lt!644540)) (select (arr!47864 a!2862) j!93)) (ite ((_ is MissingZero!12127) lt!644540) (= (select (arr!47864 a!2862) (index!50899 lt!644540)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12127) lt!644540) (= (select (arr!47864 a!2862) (index!50902 lt!644540)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155713 (= lt!644540 e!827729)))

(declare-fun c!136058 () Bool)

(assert (=> d!155713 (= c!136058 (and ((_ is Intermediate!12127) lt!644539) (undefined!12939 lt!644539)))))

(assert (=> d!155713 (= lt!644539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47864 a!2862) j!93) mask!2687) (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155713 (validMask!0 mask!2687)))

(assert (=> d!155713 (= (seekEntryOrOpen!0 (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644540)))

(assert (= (and d!155713 c!136058) b!1475298))

(assert (= (and d!155713 (not c!136058)) b!1475296))

(assert (= (and b!1475296 c!136057) b!1475297))

(assert (= (and b!1475296 (not c!136057)) b!1475299))

(assert (= (and b!1475299 c!136056) b!1475295))

(assert (= (and b!1475299 (not c!136056)) b!1475294))

(assert (=> b!1475294 m!1361539))

(declare-fun m!1361647 () Bool)

(assert (=> b!1475294 m!1361647))

(declare-fun m!1361649 () Bool)

(assert (=> b!1475296 m!1361649))

(declare-fun m!1361651 () Bool)

(assert (=> d!155713 m!1361651))

(assert (=> d!155713 m!1361551))

(assert (=> d!155713 m!1361539))

(assert (=> d!155713 m!1361545))

(declare-fun m!1361653 () Bool)

(assert (=> d!155713 m!1361653))

(assert (=> d!155713 m!1361545))

(assert (=> d!155713 m!1361539))

(assert (=> d!155713 m!1361547))

(declare-fun m!1361655 () Bool)

(assert (=> d!155713 m!1361655))

(assert (=> b!1475186 d!155713))

(declare-fun b!1475326 () Bool)

(declare-fun e!827750 () Bool)

(declare-fun call!67782 () Bool)

(assert (=> b!1475326 (= e!827750 call!67782)))

(declare-fun b!1475327 () Bool)

(declare-fun e!827749 () Bool)

(assert (=> b!1475327 (= e!827749 call!67782)))

(declare-fun b!1475328 () Bool)

(declare-fun e!827748 () Bool)

(assert (=> b!1475328 (= e!827748 e!827750)))

(declare-fun c!136067 () Bool)

(assert (=> b!1475328 (= c!136067 (validKeyInArray!0 (select (arr!47864 a!2862) j!93)))))

(declare-fun d!155719 () Bool)

(declare-fun res!1002231 () Bool)

(assert (=> d!155719 (=> res!1002231 e!827748)))

(assert (=> d!155719 (= res!1002231 (bvsge j!93 (size!48415 a!2862)))))

(assert (=> d!155719 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!827748)))

(declare-fun b!1475329 () Bool)

(assert (=> b!1475329 (= e!827750 e!827749)))

(declare-fun lt!644552 () (_ BitVec 64))

(assert (=> b!1475329 (= lt!644552 (select (arr!47864 a!2862) j!93))))

(declare-fun lt!644554 () Unit!49542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99173 (_ BitVec 64) (_ BitVec 32)) Unit!49542)

(assert (=> b!1475329 (= lt!644554 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644552 j!93))))

(declare-fun arrayContainsKey!0 (array!99173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1475329 (arrayContainsKey!0 a!2862 lt!644552 #b00000000000000000000000000000000)))

(declare-fun lt!644553 () Unit!49542)

(assert (=> b!1475329 (= lt!644553 lt!644554)))

(declare-fun res!1002232 () Bool)

(assert (=> b!1475329 (= res!1002232 (= (seekEntryOrOpen!0 (select (arr!47864 a!2862) j!93) a!2862 mask!2687) (Found!12127 j!93)))))

(assert (=> b!1475329 (=> (not res!1002232) (not e!827749))))

(declare-fun bm!67779 () Bool)

(assert (=> bm!67779 (= call!67782 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155719 (not res!1002231)) b!1475328))

(assert (= (and b!1475328 c!136067) b!1475329))

(assert (= (and b!1475328 (not c!136067)) b!1475326))

(assert (= (and b!1475329 res!1002232) b!1475327))

(assert (= (or b!1475327 b!1475326) bm!67779))

(assert (=> b!1475328 m!1361539))

(assert (=> b!1475328 m!1361539))

(assert (=> b!1475328 m!1361567))

(assert (=> b!1475329 m!1361539))

(declare-fun m!1361657 () Bool)

(assert (=> b!1475329 m!1361657))

(declare-fun m!1361659 () Bool)

(assert (=> b!1475329 m!1361659))

(assert (=> b!1475329 m!1361539))

(assert (=> b!1475329 m!1361575))

(declare-fun m!1361661 () Bool)

(assert (=> bm!67779 m!1361661))

(assert (=> b!1475186 d!155719))

(declare-fun d!155723 () Bool)

(assert (=> d!155723 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644561 () Unit!49542)

(declare-fun choose!38 (array!99173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49542)

(assert (=> d!155723 (= lt!644561 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155723 (validMask!0 mask!2687)))

(assert (=> d!155723 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644561)))

(declare-fun bs!42569 () Bool)

(assert (= bs!42569 d!155723))

(assert (=> bs!42569 m!1361577))

(declare-fun m!1361677 () Bool)

(assert (=> bs!42569 m!1361677))

(assert (=> bs!42569 m!1361551))

(assert (=> b!1475186 d!155723))

(declare-fun b!1475367 () Bool)

(declare-fun e!827774 () Bool)

(declare-fun call!67785 () Bool)

(assert (=> b!1475367 (= e!827774 call!67785)))

(declare-fun b!1475368 () Bool)

(declare-fun e!827776 () Bool)

(declare-fun contains!9918 (List!34545 (_ BitVec 64)) Bool)

(assert (=> b!1475368 (= e!827776 (contains!9918 Nil!34542 (select (arr!47864 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155729 () Bool)

(declare-fun res!1002249 () Bool)

(declare-fun e!827777 () Bool)

(assert (=> d!155729 (=> res!1002249 e!827777)))

(assert (=> d!155729 (= res!1002249 (bvsge #b00000000000000000000000000000000 (size!48415 a!2862)))))

(assert (=> d!155729 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34542) e!827777)))

(declare-fun b!1475369 () Bool)

(assert (=> b!1475369 (= e!827774 call!67785)))

(declare-fun b!1475370 () Bool)

(declare-fun e!827775 () Bool)

(assert (=> b!1475370 (= e!827775 e!827774)))

(declare-fun c!136079 () Bool)

(assert (=> b!1475370 (= c!136079 (validKeyInArray!0 (select (arr!47864 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475371 () Bool)

(assert (=> b!1475371 (= e!827777 e!827775)))

(declare-fun res!1002251 () Bool)

(assert (=> b!1475371 (=> (not res!1002251) (not e!827775))))

(assert (=> b!1475371 (= res!1002251 (not e!827776))))

(declare-fun res!1002250 () Bool)

(assert (=> b!1475371 (=> (not res!1002250) (not e!827776))))

(assert (=> b!1475371 (= res!1002250 (validKeyInArray!0 (select (arr!47864 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67782 () Bool)

(assert (=> bm!67782 (= call!67785 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136079 (Cons!34541 (select (arr!47864 a!2862) #b00000000000000000000000000000000) Nil!34542) Nil!34542)))))

(assert (= (and d!155729 (not res!1002249)) b!1475371))

(assert (= (and b!1475371 res!1002250) b!1475368))

(assert (= (and b!1475371 res!1002251) b!1475370))

(assert (= (and b!1475370 c!136079) b!1475369))

(assert (= (and b!1475370 (not c!136079)) b!1475367))

(assert (= (or b!1475369 b!1475367) bm!67782))

(declare-fun m!1361687 () Bool)

(assert (=> b!1475368 m!1361687))

(assert (=> b!1475368 m!1361687))

(declare-fun m!1361689 () Bool)

(assert (=> b!1475368 m!1361689))

(assert (=> b!1475370 m!1361687))

(assert (=> b!1475370 m!1361687))

(declare-fun m!1361691 () Bool)

(assert (=> b!1475370 m!1361691))

(assert (=> b!1475371 m!1361687))

(assert (=> b!1475371 m!1361687))

(assert (=> b!1475371 m!1361691))

(assert (=> bm!67782 m!1361687))

(declare-fun m!1361693 () Bool)

(assert (=> bm!67782 m!1361693))

(assert (=> b!1475184 d!155729))

(declare-fun b!1475435 () Bool)

(declare-fun e!827818 () SeekEntryResult!12127)

(assert (=> b!1475435 (= e!827818 (Found!12127 index!646))))

(declare-fun e!827817 () SeekEntryResult!12127)

(declare-fun b!1475436 () Bool)

(assert (=> b!1475436 (= e!827817 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(declare-fun lt!644591 () SeekEntryResult!12127)

(declare-fun d!155737 () Bool)

(assert (=> d!155737 (and (or ((_ is Undefined!12127) lt!644591) (not ((_ is Found!12127) lt!644591)) (and (bvsge (index!50900 lt!644591) #b00000000000000000000000000000000) (bvslt (index!50900 lt!644591) (size!48415 a!2862)))) (or ((_ is Undefined!12127) lt!644591) ((_ is Found!12127) lt!644591) (not ((_ is MissingVacant!12127) lt!644591)) (not (= (index!50902 lt!644591) index!646)) (and (bvsge (index!50902 lt!644591) #b00000000000000000000000000000000) (bvslt (index!50902 lt!644591) (size!48415 a!2862)))) (or ((_ is Undefined!12127) lt!644591) (ite ((_ is Found!12127) lt!644591) (= (select (arr!47864 a!2862) (index!50900 lt!644591)) (select (arr!47864 a!2862) j!93)) (and ((_ is MissingVacant!12127) lt!644591) (= (index!50902 lt!644591) index!646) (= (select (arr!47864 a!2862) (index!50902 lt!644591)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827816 () SeekEntryResult!12127)

(assert (=> d!155737 (= lt!644591 e!827816)))

(declare-fun c!136101 () Bool)

(assert (=> d!155737 (= c!136101 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644590 () (_ BitVec 64))

(assert (=> d!155737 (= lt!644590 (select (arr!47864 a!2862) index!646))))

(assert (=> d!155737 (validMask!0 mask!2687)))

(assert (=> d!155737 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644591)))

(declare-fun b!1475437 () Bool)

(assert (=> b!1475437 (= e!827816 e!827818)))

(declare-fun c!136102 () Bool)

(assert (=> b!1475437 (= c!136102 (= lt!644590 (select (arr!47864 a!2862) j!93)))))

(declare-fun b!1475438 () Bool)

(assert (=> b!1475438 (= e!827816 Undefined!12127)))

(declare-fun b!1475439 () Bool)

(assert (=> b!1475439 (= e!827817 (MissingVacant!12127 index!646))))

(declare-fun b!1475440 () Bool)

(declare-fun c!136103 () Bool)

(assert (=> b!1475440 (= c!136103 (= lt!644590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475440 (= e!827818 e!827817)))

(assert (= (and d!155737 c!136101) b!1475438))

(assert (= (and d!155737 (not c!136101)) b!1475437))

(assert (= (and b!1475437 c!136102) b!1475435))

(assert (= (and b!1475437 (not c!136102)) b!1475440))

(assert (= (and b!1475440 c!136103) b!1475439))

(assert (= (and b!1475440 (not c!136103)) b!1475436))

(assert (=> b!1475436 m!1361633))

(assert (=> b!1475436 m!1361633))

(assert (=> b!1475436 m!1361539))

(declare-fun m!1361717 () Bool)

(assert (=> b!1475436 m!1361717))

(declare-fun m!1361719 () Bool)

(assert (=> d!155737 m!1361719))

(declare-fun m!1361721 () Bool)

(assert (=> d!155737 m!1361721))

(assert (=> d!155737 m!1361535))

(assert (=> d!155737 m!1361551))

(assert (=> b!1475185 d!155737))

(declare-fun b!1475441 () Bool)

(declare-fun e!827821 () SeekEntryResult!12127)

(assert (=> b!1475441 (= e!827821 (Found!12127 index!646))))

(declare-fun b!1475442 () Bool)

(declare-fun e!827820 () SeekEntryResult!12127)

(assert (=> b!1475442 (= e!827820 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644497 lt!644498 mask!2687))))

(declare-fun d!155753 () Bool)

(declare-fun lt!644593 () SeekEntryResult!12127)

(assert (=> d!155753 (and (or ((_ is Undefined!12127) lt!644593) (not ((_ is Found!12127) lt!644593)) (and (bvsge (index!50900 lt!644593) #b00000000000000000000000000000000) (bvslt (index!50900 lt!644593) (size!48415 lt!644498)))) (or ((_ is Undefined!12127) lt!644593) ((_ is Found!12127) lt!644593) (not ((_ is MissingVacant!12127) lt!644593)) (not (= (index!50902 lt!644593) intermediateAfterIndex!19)) (and (bvsge (index!50902 lt!644593) #b00000000000000000000000000000000) (bvslt (index!50902 lt!644593) (size!48415 lt!644498)))) (or ((_ is Undefined!12127) lt!644593) (ite ((_ is Found!12127) lt!644593) (= (select (arr!47864 lt!644498) (index!50900 lt!644593)) lt!644497) (and ((_ is MissingVacant!12127) lt!644593) (= (index!50902 lt!644593) intermediateAfterIndex!19) (= (select (arr!47864 lt!644498) (index!50902 lt!644593)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827819 () SeekEntryResult!12127)

(assert (=> d!155753 (= lt!644593 e!827819)))

(declare-fun c!136104 () Bool)

(assert (=> d!155753 (= c!136104 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644592 () (_ BitVec 64))

(assert (=> d!155753 (= lt!644592 (select (arr!47864 lt!644498) index!646))))

(assert (=> d!155753 (validMask!0 mask!2687)))

(assert (=> d!155753 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644497 lt!644498 mask!2687) lt!644593)))

(declare-fun b!1475443 () Bool)

(assert (=> b!1475443 (= e!827819 e!827821)))

(declare-fun c!136105 () Bool)

(assert (=> b!1475443 (= c!136105 (= lt!644592 lt!644497))))

(declare-fun b!1475444 () Bool)

(assert (=> b!1475444 (= e!827819 Undefined!12127)))

(declare-fun b!1475445 () Bool)

(assert (=> b!1475445 (= e!827820 (MissingVacant!12127 intermediateAfterIndex!19))))

(declare-fun b!1475446 () Bool)

(declare-fun c!136106 () Bool)

(assert (=> b!1475446 (= c!136106 (= lt!644592 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475446 (= e!827821 e!827820)))

(assert (= (and d!155753 c!136104) b!1475444))

(assert (= (and d!155753 (not c!136104)) b!1475443))

(assert (= (and b!1475443 c!136105) b!1475441))

(assert (= (and b!1475443 (not c!136105)) b!1475446))

(assert (= (and b!1475446 c!136106) b!1475445))

(assert (= (and b!1475446 (not c!136106)) b!1475442))

(assert (=> b!1475442 m!1361633))

(assert (=> b!1475442 m!1361633))

(declare-fun m!1361723 () Bool)

(assert (=> b!1475442 m!1361723))

(declare-fun m!1361725 () Bool)

(assert (=> d!155753 m!1361725))

(declare-fun m!1361727 () Bool)

(assert (=> d!155753 m!1361727))

(assert (=> d!155753 m!1361631))

(assert (=> d!155753 m!1361551))

(assert (=> b!1475194 d!155753))

(declare-fun lt!644594 () SeekEntryResult!12127)

(declare-fun e!827823 () SeekEntryResult!12127)

(declare-fun b!1475447 () Bool)

(assert (=> b!1475447 (= e!827823 (seekKeyOrZeroReturnVacant!0 (x!132487 lt!644594) (index!50901 lt!644594) (index!50901 lt!644594) lt!644497 lt!644498 mask!2687))))

(declare-fun b!1475448 () Bool)

(assert (=> b!1475448 (= e!827823 (MissingZero!12127 (index!50901 lt!644594)))))

(declare-fun b!1475449 () Bool)

(declare-fun e!827822 () SeekEntryResult!12127)

(declare-fun e!827824 () SeekEntryResult!12127)

(assert (=> b!1475449 (= e!827822 e!827824)))

(declare-fun lt!644596 () (_ BitVec 64))

(assert (=> b!1475449 (= lt!644596 (select (arr!47864 lt!644498) (index!50901 lt!644594)))))

(declare-fun c!136108 () Bool)

(assert (=> b!1475449 (= c!136108 (= lt!644596 lt!644497))))

(declare-fun b!1475451 () Bool)

(assert (=> b!1475451 (= e!827822 Undefined!12127)))

(declare-fun b!1475452 () Bool)

(declare-fun c!136107 () Bool)

(assert (=> b!1475452 (= c!136107 (= lt!644596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475452 (= e!827824 e!827823)))

(declare-fun b!1475450 () Bool)

(assert (=> b!1475450 (= e!827824 (Found!12127 (index!50901 lt!644594)))))

(declare-fun d!155755 () Bool)

(declare-fun lt!644595 () SeekEntryResult!12127)

(assert (=> d!155755 (and (or ((_ is Undefined!12127) lt!644595) (not ((_ is Found!12127) lt!644595)) (and (bvsge (index!50900 lt!644595) #b00000000000000000000000000000000) (bvslt (index!50900 lt!644595) (size!48415 lt!644498)))) (or ((_ is Undefined!12127) lt!644595) ((_ is Found!12127) lt!644595) (not ((_ is MissingZero!12127) lt!644595)) (and (bvsge (index!50899 lt!644595) #b00000000000000000000000000000000) (bvslt (index!50899 lt!644595) (size!48415 lt!644498)))) (or ((_ is Undefined!12127) lt!644595) ((_ is Found!12127) lt!644595) ((_ is MissingZero!12127) lt!644595) (not ((_ is MissingVacant!12127) lt!644595)) (and (bvsge (index!50902 lt!644595) #b00000000000000000000000000000000) (bvslt (index!50902 lt!644595) (size!48415 lt!644498)))) (or ((_ is Undefined!12127) lt!644595) (ite ((_ is Found!12127) lt!644595) (= (select (arr!47864 lt!644498) (index!50900 lt!644595)) lt!644497) (ite ((_ is MissingZero!12127) lt!644595) (= (select (arr!47864 lt!644498) (index!50899 lt!644595)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12127) lt!644595) (= (select (arr!47864 lt!644498) (index!50902 lt!644595)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155755 (= lt!644595 e!827822)))

(declare-fun c!136109 () Bool)

(assert (=> d!155755 (= c!136109 (and ((_ is Intermediate!12127) lt!644594) (undefined!12939 lt!644594)))))

(assert (=> d!155755 (= lt!644594 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644497 mask!2687) lt!644497 lt!644498 mask!2687))))

(assert (=> d!155755 (validMask!0 mask!2687)))

(assert (=> d!155755 (= (seekEntryOrOpen!0 lt!644497 lt!644498 mask!2687) lt!644595)))

(assert (= (and d!155755 c!136109) b!1475451))

(assert (= (and d!155755 (not c!136109)) b!1475449))

(assert (= (and b!1475449 c!136108) b!1475450))

(assert (= (and b!1475449 (not c!136108)) b!1475452))

(assert (= (and b!1475452 c!136107) b!1475448))

(assert (= (and b!1475452 (not c!136107)) b!1475447))

(declare-fun m!1361729 () Bool)

(assert (=> b!1475447 m!1361729))

(declare-fun m!1361731 () Bool)

(assert (=> b!1475449 m!1361731))

(declare-fun m!1361733 () Bool)

(assert (=> d!155755 m!1361733))

(assert (=> d!155755 m!1361551))

(assert (=> d!155755 m!1361527))

(declare-fun m!1361735 () Bool)

(assert (=> d!155755 m!1361735))

(assert (=> d!155755 m!1361527))

(assert (=> d!155755 m!1361529))

(declare-fun m!1361737 () Bool)

(assert (=> d!155755 m!1361737))

(assert (=> b!1475194 d!155755))

(declare-fun d!155757 () Bool)

(declare-fun e!827825 () Bool)

(assert (=> d!155757 e!827825))

(declare-fun c!136112 () Bool)

(declare-fun lt!644597 () SeekEntryResult!12127)

(assert (=> d!155757 (= c!136112 (and ((_ is Intermediate!12127) lt!644597) (undefined!12939 lt!644597)))))

(declare-fun e!827827 () SeekEntryResult!12127)

(assert (=> d!155757 (= lt!644597 e!827827)))

(declare-fun c!136111 () Bool)

(assert (=> d!155757 (= c!136111 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644598 () (_ BitVec 64))

(assert (=> d!155757 (= lt!644598 (select (arr!47864 a!2862) index!646))))

(assert (=> d!155757 (validMask!0 mask!2687)))

(assert (=> d!155757 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47864 a!2862) j!93) a!2862 mask!2687) lt!644597)))

(declare-fun b!1475453 () Bool)

(declare-fun e!827828 () SeekEntryResult!12127)

(assert (=> b!1475453 (= e!827828 (Intermediate!12127 false index!646 x!665))))

(declare-fun b!1475454 () Bool)

(assert (=> b!1475454 (and (bvsge (index!50901 lt!644597) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644597) (size!48415 a!2862)))))

(declare-fun res!1002276 () Bool)

(assert (=> b!1475454 (= res!1002276 (= (select (arr!47864 a!2862) (index!50901 lt!644597)) (select (arr!47864 a!2862) j!93)))))

(declare-fun e!827829 () Bool)

(assert (=> b!1475454 (=> res!1002276 e!827829)))

(declare-fun e!827826 () Bool)

(assert (=> b!1475454 (= e!827826 e!827829)))

(declare-fun b!1475455 () Bool)

(assert (=> b!1475455 (= e!827827 (Intermediate!12127 true index!646 x!665))))

(declare-fun b!1475456 () Bool)

(assert (=> b!1475456 (= e!827828 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47864 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475457 () Bool)

(assert (=> b!1475457 (and (bvsge (index!50901 lt!644597) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644597) (size!48415 a!2862)))))

(assert (=> b!1475457 (= e!827829 (= (select (arr!47864 a!2862) (index!50901 lt!644597)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475458 () Bool)

(assert (=> b!1475458 (and (bvsge (index!50901 lt!644597) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644597) (size!48415 a!2862)))))

(declare-fun res!1002274 () Bool)

(assert (=> b!1475458 (= res!1002274 (= (select (arr!47864 a!2862) (index!50901 lt!644597)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475458 (=> res!1002274 e!827829)))

(declare-fun b!1475459 () Bool)

(assert (=> b!1475459 (= e!827827 e!827828)))

(declare-fun c!136110 () Bool)

(assert (=> b!1475459 (= c!136110 (or (= lt!644598 (select (arr!47864 a!2862) j!93)) (= (bvadd lt!644598 lt!644598) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475460 () Bool)

(assert (=> b!1475460 (= e!827825 (bvsge (x!132487 lt!644597) #b01111111111111111111111111111110))))

(declare-fun b!1475461 () Bool)

(assert (=> b!1475461 (= e!827825 e!827826)))

(declare-fun res!1002275 () Bool)

(assert (=> b!1475461 (= res!1002275 (and ((_ is Intermediate!12127) lt!644597) (not (undefined!12939 lt!644597)) (bvslt (x!132487 lt!644597) #b01111111111111111111111111111110) (bvsge (x!132487 lt!644597) #b00000000000000000000000000000000) (bvsge (x!132487 lt!644597) x!665)))))

(assert (=> b!1475461 (=> (not res!1002275) (not e!827826))))

(assert (= (and d!155757 c!136111) b!1475455))

(assert (= (and d!155757 (not c!136111)) b!1475459))

(assert (= (and b!1475459 c!136110) b!1475453))

(assert (= (and b!1475459 (not c!136110)) b!1475456))

(assert (= (and d!155757 c!136112) b!1475460))

(assert (= (and d!155757 (not c!136112)) b!1475461))

(assert (= (and b!1475461 res!1002275) b!1475454))

(assert (= (and b!1475454 (not res!1002276)) b!1475458))

(assert (= (and b!1475458 (not res!1002274)) b!1475457))

(assert (=> d!155757 m!1361535))

(assert (=> d!155757 m!1361551))

(assert (=> b!1475456 m!1361633))

(assert (=> b!1475456 m!1361633))

(assert (=> b!1475456 m!1361539))

(declare-fun m!1361739 () Bool)

(assert (=> b!1475456 m!1361739))

(declare-fun m!1361741 () Bool)

(assert (=> b!1475454 m!1361741))

(assert (=> b!1475457 m!1361741))

(assert (=> b!1475458 m!1361741))

(assert (=> b!1475192 d!155757))

(declare-fun b!1475462 () Bool)

(declare-fun e!827832 () Bool)

(declare-fun call!67789 () Bool)

(assert (=> b!1475462 (= e!827832 call!67789)))

(declare-fun b!1475463 () Bool)

(declare-fun e!827831 () Bool)

(assert (=> b!1475463 (= e!827831 call!67789)))

(declare-fun b!1475464 () Bool)

(declare-fun e!827830 () Bool)

(assert (=> b!1475464 (= e!827830 e!827832)))

(declare-fun c!136113 () Bool)

(assert (=> b!1475464 (= c!136113 (validKeyInArray!0 (select (arr!47864 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155759 () Bool)

(declare-fun res!1002277 () Bool)

(assert (=> d!155759 (=> res!1002277 e!827830)))

(assert (=> d!155759 (= res!1002277 (bvsge #b00000000000000000000000000000000 (size!48415 a!2862)))))

(assert (=> d!155759 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!827830)))

(declare-fun b!1475465 () Bool)

(assert (=> b!1475465 (= e!827832 e!827831)))

(declare-fun lt!644599 () (_ BitVec 64))

(assert (=> b!1475465 (= lt!644599 (select (arr!47864 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644601 () Unit!49542)

(assert (=> b!1475465 (= lt!644601 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644599 #b00000000000000000000000000000000))))

(assert (=> b!1475465 (arrayContainsKey!0 a!2862 lt!644599 #b00000000000000000000000000000000)))

(declare-fun lt!644600 () Unit!49542)

(assert (=> b!1475465 (= lt!644600 lt!644601)))

(declare-fun res!1002278 () Bool)

(assert (=> b!1475465 (= res!1002278 (= (seekEntryOrOpen!0 (select (arr!47864 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12127 #b00000000000000000000000000000000)))))

(assert (=> b!1475465 (=> (not res!1002278) (not e!827831))))

(declare-fun bm!67786 () Bool)

(assert (=> bm!67786 (= call!67789 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155759 (not res!1002277)) b!1475464))

(assert (= (and b!1475464 c!136113) b!1475465))

(assert (= (and b!1475464 (not c!136113)) b!1475462))

(assert (= (and b!1475465 res!1002278) b!1475463))

(assert (= (or b!1475463 b!1475462) bm!67786))

(assert (=> b!1475464 m!1361687))

(assert (=> b!1475464 m!1361687))

(assert (=> b!1475464 m!1361691))

(assert (=> b!1475465 m!1361687))

(declare-fun m!1361743 () Bool)

(assert (=> b!1475465 m!1361743))

(declare-fun m!1361745 () Bool)

(assert (=> b!1475465 m!1361745))

(assert (=> b!1475465 m!1361687))

(declare-fun m!1361747 () Bool)

(assert (=> b!1475465 m!1361747))

(declare-fun m!1361749 () Bool)

(assert (=> bm!67786 m!1361749))

(assert (=> b!1475182 d!155759))

(declare-fun d!155761 () Bool)

(assert (=> d!155761 (= (validKeyInArray!0 (select (arr!47864 a!2862) j!93)) (and (not (= (select (arr!47864 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47864 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475191 d!155761))

(declare-fun d!155763 () Bool)

(assert (=> d!155763 (= (validKeyInArray!0 (select (arr!47864 a!2862) i!1006)) (and (not (= (select (arr!47864 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47864 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475180 d!155763))

(declare-fun d!155765 () Bool)

(assert (=> d!155765 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126036 d!155765))

(declare-fun d!155775 () Bool)

(assert (=> d!155775 (= (array_inv!36809 a!2862) (bvsge (size!48415 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126036 d!155775))

(declare-fun d!155777 () Bool)

(declare-fun e!827856 () Bool)

(assert (=> d!155777 e!827856))

(declare-fun c!136125 () Bool)

(declare-fun lt!644622 () SeekEntryResult!12127)

(assert (=> d!155777 (= c!136125 (and ((_ is Intermediate!12127) lt!644622) (undefined!12939 lt!644622)))))

(declare-fun e!827858 () SeekEntryResult!12127)

(assert (=> d!155777 (= lt!644622 e!827858)))

(declare-fun c!136124 () Bool)

(assert (=> d!155777 (= c!136124 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644623 () (_ BitVec 64))

(assert (=> d!155777 (= lt!644623 (select (arr!47864 lt!644498) (toIndex!0 lt!644497 mask!2687)))))

(assert (=> d!155777 (validMask!0 mask!2687)))

(assert (=> d!155777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644497 mask!2687) lt!644497 lt!644498 mask!2687) lt!644622)))

(declare-fun b!1475499 () Bool)

(declare-fun e!827859 () SeekEntryResult!12127)

(assert (=> b!1475499 (= e!827859 (Intermediate!12127 false (toIndex!0 lt!644497 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475500 () Bool)

(assert (=> b!1475500 (and (bvsge (index!50901 lt!644622) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644622) (size!48415 lt!644498)))))

(declare-fun res!1002296 () Bool)

(assert (=> b!1475500 (= res!1002296 (= (select (arr!47864 lt!644498) (index!50901 lt!644622)) lt!644497))))

(declare-fun e!827860 () Bool)

(assert (=> b!1475500 (=> res!1002296 e!827860)))

(declare-fun e!827857 () Bool)

(assert (=> b!1475500 (= e!827857 e!827860)))

(declare-fun b!1475501 () Bool)

(assert (=> b!1475501 (= e!827858 (Intermediate!12127 true (toIndex!0 lt!644497 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475502 () Bool)

(assert (=> b!1475502 (= e!827859 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644497 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644497 lt!644498 mask!2687))))

(declare-fun b!1475503 () Bool)

(assert (=> b!1475503 (and (bvsge (index!50901 lt!644622) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644622) (size!48415 lt!644498)))))

(assert (=> b!1475503 (= e!827860 (= (select (arr!47864 lt!644498) (index!50901 lt!644622)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475504 () Bool)

(assert (=> b!1475504 (and (bvsge (index!50901 lt!644622) #b00000000000000000000000000000000) (bvslt (index!50901 lt!644622) (size!48415 lt!644498)))))

(declare-fun res!1002294 () Bool)

(assert (=> b!1475504 (= res!1002294 (= (select (arr!47864 lt!644498) (index!50901 lt!644622)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475504 (=> res!1002294 e!827860)))

(declare-fun b!1475505 () Bool)

(assert (=> b!1475505 (= e!827858 e!827859)))

(declare-fun c!136123 () Bool)

(assert (=> b!1475505 (= c!136123 (or (= lt!644623 lt!644497) (= (bvadd lt!644623 lt!644623) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475506 () Bool)

(assert (=> b!1475506 (= e!827856 (bvsge (x!132487 lt!644622) #b01111111111111111111111111111110))))

(declare-fun b!1475507 () Bool)

(assert (=> b!1475507 (= e!827856 e!827857)))

(declare-fun res!1002295 () Bool)

(assert (=> b!1475507 (= res!1002295 (and ((_ is Intermediate!12127) lt!644622) (not (undefined!12939 lt!644622)) (bvslt (x!132487 lt!644622) #b01111111111111111111111111111110) (bvsge (x!132487 lt!644622) #b00000000000000000000000000000000) (bvsge (x!132487 lt!644622) #b00000000000000000000000000000000)))))

(assert (=> b!1475507 (=> (not res!1002295) (not e!827857))))

(assert (= (and d!155777 c!136124) b!1475501))

(assert (= (and d!155777 (not c!136124)) b!1475505))

(assert (= (and b!1475505 c!136123) b!1475499))

(assert (= (and b!1475505 (not c!136123)) b!1475502))

(assert (= (and d!155777 c!136125) b!1475506))

(assert (= (and d!155777 (not c!136125)) b!1475507))

(assert (= (and b!1475507 res!1002295) b!1475500))

(assert (= (and b!1475500 (not res!1002296)) b!1475504))

(assert (= (and b!1475504 (not res!1002294)) b!1475503))

(assert (=> d!155777 m!1361527))

(declare-fun m!1361777 () Bool)

(assert (=> d!155777 m!1361777))

(assert (=> d!155777 m!1361551))

(assert (=> b!1475502 m!1361527))

(declare-fun m!1361779 () Bool)

(assert (=> b!1475502 m!1361779))

(assert (=> b!1475502 m!1361779))

(declare-fun m!1361781 () Bool)

(assert (=> b!1475502 m!1361781))

(declare-fun m!1361783 () Bool)

(assert (=> b!1475500 m!1361783))

(assert (=> b!1475503 m!1361783))

(assert (=> b!1475504 m!1361783))

(assert (=> b!1475181 d!155777))

(declare-fun d!155779 () Bool)

(declare-fun lt!644625 () (_ BitVec 32))

(declare-fun lt!644624 () (_ BitVec 32))

(assert (=> d!155779 (= lt!644625 (bvmul (bvxor lt!644624 (bvlshr lt!644624 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155779 (= lt!644624 ((_ extract 31 0) (bvand (bvxor lt!644497 (bvlshr lt!644497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155779 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002220 (let ((h!35905 ((_ extract 31 0) (bvand (bvxor lt!644497 (bvlshr lt!644497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132490 (bvmul (bvxor h!35905 (bvlshr h!35905 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132490 (bvlshr x!132490 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002220 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002220 #b00000000000000000000000000000000))))))

(assert (=> d!155779 (= (toIndex!0 lt!644497 mask!2687) (bvand (bvxor lt!644625 (bvlshr lt!644625 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475181 d!155779))

(check-sat (not b!1475368) (not b!1475465) (not d!155723) (not b!1475502) (not b!1475447) (not b!1475370) (not bm!67779) (not d!155707) (not d!155753) (not b!1475436) (not d!155709) (not d!155755) (not b!1475276) (not b!1475329) (not b!1475267) (not b!1475464) (not d!155757) (not d!155737) (not b!1475456) (not bm!67782) (not b!1475294) (not d!155777) (not b!1475371) (not b!1475442) (not d!155713) (not bm!67786) (not b!1475328))
(check-sat)
