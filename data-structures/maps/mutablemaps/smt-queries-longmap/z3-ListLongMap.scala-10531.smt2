; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124200 () Bool)

(assert start!124200)

(declare-fun b!1437227 () Bool)

(declare-fun res!970225 () Bool)

(declare-fun e!810888 () Bool)

(assert (=> b!1437227 (=> (not res!970225) (not e!810888))))

(declare-datatypes ((array!97721 0))(
  ( (array!97722 (arr!47150 (Array (_ BitVec 32) (_ BitVec 64))) (size!47701 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97721)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437227 (= res!970225 (validKeyInArray!0 (select (arr!47150 a!2862) i!1006)))))

(declare-fun b!1437228 () Bool)

(declare-fun e!810890 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1437228 (= e!810890 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1437229 () Bool)

(assert (=> b!1437229 (= e!810888 e!810890)))

(declare-fun res!970224 () Bool)

(assert (=> b!1437229 (=> (not res!970224) (not e!810890))))

(declare-datatypes ((SeekEntryResult!11425 0))(
  ( (MissingZero!11425 (index!48091 (_ BitVec 32))) (Found!11425 (index!48092 (_ BitVec 32))) (Intermediate!11425 (undefined!12237 Bool) (index!48093 (_ BitVec 32)) (x!129821 (_ BitVec 32))) (Undefined!11425) (MissingVacant!11425 (index!48094 (_ BitVec 32))) )
))
(declare-fun lt!632200 () SeekEntryResult!11425)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97721 (_ BitVec 32)) SeekEntryResult!11425)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437229 (= res!970224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) (select (arr!47150 a!2862) j!93) a!2862 mask!2687) lt!632200))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437229 (= lt!632200 (Intermediate!11425 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437230 () Bool)

(declare-fun res!970223 () Bool)

(assert (=> b!1437230 (=> (not res!970223) (not e!810888))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437230 (= res!970223 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47701 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47701 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47701 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47150 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437231 () Bool)

(declare-fun res!970221 () Bool)

(assert (=> b!1437231 (=> (not res!970221) (not e!810888))))

(assert (=> b!1437231 (= res!970221 (and (= (size!47701 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47701 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47701 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437232 () Bool)

(declare-fun res!970227 () Bool)

(assert (=> b!1437232 (=> (not res!970227) (not e!810888))))

(declare-datatypes ((List!33831 0))(
  ( (Nil!33828) (Cons!33827 (h!35165 (_ BitVec 64)) (t!48532 List!33831)) )
))
(declare-fun arrayNoDuplicates!0 (array!97721 (_ BitVec 32) List!33831) Bool)

(assert (=> b!1437232 (= res!970227 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33828))))

(declare-fun b!1437233 () Bool)

(declare-fun res!970222 () Bool)

(assert (=> b!1437233 (=> (not res!970222) (not e!810890))))

(assert (=> b!1437233 (= res!970222 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47150 a!2862) j!93) a!2862 mask!2687) lt!632200))))

(declare-fun b!1437234 () Bool)

(declare-fun res!970220 () Bool)

(assert (=> b!1437234 (=> (not res!970220) (not e!810888))))

(assert (=> b!1437234 (= res!970220 (validKeyInArray!0 (select (arr!47150 a!2862) j!93)))))

(declare-fun res!970226 () Bool)

(assert (=> start!124200 (=> (not res!970226) (not e!810888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124200 (= res!970226 (validMask!0 mask!2687))))

(assert (=> start!124200 e!810888))

(assert (=> start!124200 true))

(declare-fun array_inv!36095 (array!97721) Bool)

(assert (=> start!124200 (array_inv!36095 a!2862)))

(declare-fun b!1437235 () Bool)

(declare-fun res!970219 () Bool)

(assert (=> b!1437235 (=> (not res!970219) (not e!810888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97721 (_ BitVec 32)) Bool)

(assert (=> b!1437235 (= res!970219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124200 res!970226) b!1437231))

(assert (= (and b!1437231 res!970221) b!1437227))

(assert (= (and b!1437227 res!970225) b!1437234))

(assert (= (and b!1437234 res!970220) b!1437235))

(assert (= (and b!1437235 res!970219) b!1437232))

(assert (= (and b!1437232 res!970227) b!1437230))

(assert (= (and b!1437230 res!970223) b!1437229))

(assert (= (and b!1437229 res!970224) b!1437233))

(assert (= (and b!1437233 res!970222) b!1437228))

(declare-fun m!1326605 () Bool)

(assert (=> b!1437234 m!1326605))

(assert (=> b!1437234 m!1326605))

(declare-fun m!1326607 () Bool)

(assert (=> b!1437234 m!1326607))

(declare-fun m!1326609 () Bool)

(assert (=> b!1437232 m!1326609))

(assert (=> b!1437229 m!1326605))

(assert (=> b!1437229 m!1326605))

(declare-fun m!1326611 () Bool)

(assert (=> b!1437229 m!1326611))

(assert (=> b!1437229 m!1326611))

(assert (=> b!1437229 m!1326605))

(declare-fun m!1326613 () Bool)

(assert (=> b!1437229 m!1326613))

(assert (=> b!1437233 m!1326605))

(assert (=> b!1437233 m!1326605))

(declare-fun m!1326615 () Bool)

(assert (=> b!1437233 m!1326615))

(declare-fun m!1326617 () Bool)

(assert (=> start!124200 m!1326617))

(declare-fun m!1326619 () Bool)

(assert (=> start!124200 m!1326619))

(declare-fun m!1326621 () Bool)

(assert (=> b!1437230 m!1326621))

(declare-fun m!1326623 () Bool)

(assert (=> b!1437230 m!1326623))

(declare-fun m!1326625 () Bool)

(assert (=> b!1437235 m!1326625))

(declare-fun m!1326627 () Bool)

(assert (=> b!1437227 m!1326627))

(assert (=> b!1437227 m!1326627))

(declare-fun m!1326629 () Bool)

(assert (=> b!1437227 m!1326629))

(check-sat (not b!1437229) (not b!1437234) (not b!1437227) (not b!1437233) (not start!124200) (not b!1437235) (not b!1437232))
(check-sat)
(get-model)

(declare-fun b!1437281 () Bool)

(declare-fun e!810912 () SeekEntryResult!11425)

(declare-fun e!810913 () SeekEntryResult!11425)

(assert (=> b!1437281 (= e!810912 e!810913)))

(declare-fun lt!632209 () (_ BitVec 64))

(declare-fun c!133019 () Bool)

(assert (=> b!1437281 (= c!133019 (or (= lt!632209 (select (arr!47150 a!2862) j!93)) (= (bvadd lt!632209 lt!632209) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437282 () Bool)

(declare-fun lt!632208 () SeekEntryResult!11425)

(assert (=> b!1437282 (and (bvsge (index!48093 lt!632208) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632208) (size!47701 a!2862)))))

(declare-fun e!810911 () Bool)

(assert (=> b!1437282 (= e!810911 (= (select (arr!47150 a!2862) (index!48093 lt!632208)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437283 () Bool)

(assert (=> b!1437283 (= e!810912 (Intermediate!11425 true (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437284 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437284 (= e!810913 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47150 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154571 () Bool)

(declare-fun e!810914 () Bool)

(assert (=> d!154571 e!810914))

(declare-fun c!133017 () Bool)

(get-info :version)

(assert (=> d!154571 (= c!133017 (and ((_ is Intermediate!11425) lt!632208) (undefined!12237 lt!632208)))))

(assert (=> d!154571 (= lt!632208 e!810912)))

(declare-fun c!133018 () Bool)

(assert (=> d!154571 (= c!133018 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154571 (= lt!632209 (select (arr!47150 a!2862) (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687)))))

(assert (=> d!154571 (validMask!0 mask!2687)))

(assert (=> d!154571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) (select (arr!47150 a!2862) j!93) a!2862 mask!2687) lt!632208)))

(declare-fun b!1437285 () Bool)

(assert (=> b!1437285 (and (bvsge (index!48093 lt!632208) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632208) (size!47701 a!2862)))))

(declare-fun res!970263 () Bool)

(assert (=> b!1437285 (= res!970263 (= (select (arr!47150 a!2862) (index!48093 lt!632208)) (select (arr!47150 a!2862) j!93)))))

(assert (=> b!1437285 (=> res!970263 e!810911)))

(declare-fun e!810910 () Bool)

(assert (=> b!1437285 (= e!810910 e!810911)))

(declare-fun b!1437286 () Bool)

(assert (=> b!1437286 (= e!810914 (bvsge (x!129821 lt!632208) #b01111111111111111111111111111110))))

(declare-fun b!1437287 () Bool)

(assert (=> b!1437287 (and (bvsge (index!48093 lt!632208) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632208) (size!47701 a!2862)))))

(declare-fun res!970262 () Bool)

(assert (=> b!1437287 (= res!970262 (= (select (arr!47150 a!2862) (index!48093 lt!632208)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437287 (=> res!970262 e!810911)))

(declare-fun b!1437288 () Bool)

(assert (=> b!1437288 (= e!810913 (Intermediate!11425 false (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437289 () Bool)

(assert (=> b!1437289 (= e!810914 e!810910)))

(declare-fun res!970261 () Bool)

(assert (=> b!1437289 (= res!970261 (and ((_ is Intermediate!11425) lt!632208) (not (undefined!12237 lt!632208)) (bvslt (x!129821 lt!632208) #b01111111111111111111111111111110) (bvsge (x!129821 lt!632208) #b00000000000000000000000000000000) (bvsge (x!129821 lt!632208) #b00000000000000000000000000000000)))))

(assert (=> b!1437289 (=> (not res!970261) (not e!810910))))

(assert (= (and d!154571 c!133018) b!1437283))

(assert (= (and d!154571 (not c!133018)) b!1437281))

(assert (= (and b!1437281 c!133019) b!1437288))

(assert (= (and b!1437281 (not c!133019)) b!1437284))

(assert (= (and d!154571 c!133017) b!1437286))

(assert (= (and d!154571 (not c!133017)) b!1437289))

(assert (= (and b!1437289 res!970261) b!1437285))

(assert (= (and b!1437285 (not res!970263)) b!1437287))

(assert (= (and b!1437287 (not res!970262)) b!1437282))

(assert (=> b!1437284 m!1326611))

(declare-fun m!1326657 () Bool)

(assert (=> b!1437284 m!1326657))

(assert (=> b!1437284 m!1326657))

(assert (=> b!1437284 m!1326605))

(declare-fun m!1326659 () Bool)

(assert (=> b!1437284 m!1326659))

(assert (=> d!154571 m!1326611))

(declare-fun m!1326661 () Bool)

(assert (=> d!154571 m!1326661))

(assert (=> d!154571 m!1326617))

(declare-fun m!1326663 () Bool)

(assert (=> b!1437287 m!1326663))

(assert (=> b!1437285 m!1326663))

(assert (=> b!1437282 m!1326663))

(assert (=> b!1437229 d!154571))

(declare-fun d!154577 () Bool)

(declare-fun lt!632215 () (_ BitVec 32))

(declare-fun lt!632214 () (_ BitVec 32))

(assert (=> d!154577 (= lt!632215 (bvmul (bvxor lt!632214 (bvlshr lt!632214 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154577 (= lt!632214 ((_ extract 31 0) (bvand (bvxor (select (arr!47150 a!2862) j!93) (bvlshr (select (arr!47150 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154577 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970264 (let ((h!35167 ((_ extract 31 0) (bvand (bvxor (select (arr!47150 a!2862) j!93) (bvlshr (select (arr!47150 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129824 (bvmul (bvxor h!35167 (bvlshr h!35167 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129824 (bvlshr x!129824 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970264 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970264 #b00000000000000000000000000000000))))))

(assert (=> d!154577 (= (toIndex!0 (select (arr!47150 a!2862) j!93) mask!2687) (bvand (bvxor lt!632215 (bvlshr lt!632215 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437229 d!154577))

(declare-fun d!154583 () Bool)

(assert (=> d!154583 (= (validKeyInArray!0 (select (arr!47150 a!2862) j!93)) (and (not (= (select (arr!47150 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47150 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437234 d!154583))

(declare-fun d!154585 () Bool)

(assert (=> d!154585 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124200 d!154585))

(declare-fun d!154587 () Bool)

(assert (=> d!154587 (= (array_inv!36095 a!2862) (bvsge (size!47701 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124200 d!154587))

(declare-fun b!1437308 () Bool)

(declare-fun e!810927 () SeekEntryResult!11425)

(declare-fun e!810928 () SeekEntryResult!11425)

(assert (=> b!1437308 (= e!810927 e!810928)))

(declare-fun c!133028 () Bool)

(declare-fun lt!632221 () (_ BitVec 64))

(assert (=> b!1437308 (= c!133028 (or (= lt!632221 (select (arr!47150 a!2862) j!93)) (= (bvadd lt!632221 lt!632221) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437309 () Bool)

(declare-fun lt!632220 () SeekEntryResult!11425)

(assert (=> b!1437309 (and (bvsge (index!48093 lt!632220) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632220) (size!47701 a!2862)))))

(declare-fun e!810926 () Bool)

(assert (=> b!1437309 (= e!810926 (= (select (arr!47150 a!2862) (index!48093 lt!632220)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437310 () Bool)

(assert (=> b!1437310 (= e!810927 (Intermediate!11425 true index!646 x!665))))

(declare-fun b!1437311 () Bool)

(assert (=> b!1437311 (= e!810928 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47150 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154589 () Bool)

(declare-fun e!810929 () Bool)

(assert (=> d!154589 e!810929))

(declare-fun c!133026 () Bool)

(assert (=> d!154589 (= c!133026 (and ((_ is Intermediate!11425) lt!632220) (undefined!12237 lt!632220)))))

(assert (=> d!154589 (= lt!632220 e!810927)))

(declare-fun c!133027 () Bool)

(assert (=> d!154589 (= c!133027 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!154589 (= lt!632221 (select (arr!47150 a!2862) index!646))))

(assert (=> d!154589 (validMask!0 mask!2687)))

(assert (=> d!154589 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47150 a!2862) j!93) a!2862 mask!2687) lt!632220)))

(declare-fun b!1437312 () Bool)

(assert (=> b!1437312 (and (bvsge (index!48093 lt!632220) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632220) (size!47701 a!2862)))))

(declare-fun res!970273 () Bool)

(assert (=> b!1437312 (= res!970273 (= (select (arr!47150 a!2862) (index!48093 lt!632220)) (select (arr!47150 a!2862) j!93)))))

(assert (=> b!1437312 (=> res!970273 e!810926)))

(declare-fun e!810925 () Bool)

(assert (=> b!1437312 (= e!810925 e!810926)))

(declare-fun b!1437313 () Bool)

(assert (=> b!1437313 (= e!810929 (bvsge (x!129821 lt!632220) #b01111111111111111111111111111110))))

(declare-fun b!1437314 () Bool)

(assert (=> b!1437314 (and (bvsge (index!48093 lt!632220) #b00000000000000000000000000000000) (bvslt (index!48093 lt!632220) (size!47701 a!2862)))))

(declare-fun res!970272 () Bool)

(assert (=> b!1437314 (= res!970272 (= (select (arr!47150 a!2862) (index!48093 lt!632220)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437314 (=> res!970272 e!810926)))

(declare-fun b!1437315 () Bool)

(assert (=> b!1437315 (= e!810928 (Intermediate!11425 false index!646 x!665))))

(declare-fun b!1437316 () Bool)

(assert (=> b!1437316 (= e!810929 e!810925)))

(declare-fun res!970271 () Bool)

(assert (=> b!1437316 (= res!970271 (and ((_ is Intermediate!11425) lt!632220) (not (undefined!12237 lt!632220)) (bvslt (x!129821 lt!632220) #b01111111111111111111111111111110) (bvsge (x!129821 lt!632220) #b00000000000000000000000000000000) (bvsge (x!129821 lt!632220) x!665)))))

(assert (=> b!1437316 (=> (not res!970271) (not e!810925))))

(assert (= (and d!154589 c!133027) b!1437310))

(assert (= (and d!154589 (not c!133027)) b!1437308))

(assert (= (and b!1437308 c!133028) b!1437315))

(assert (= (and b!1437308 (not c!133028)) b!1437311))

(assert (= (and d!154589 c!133026) b!1437313))

(assert (= (and d!154589 (not c!133026)) b!1437316))

(assert (= (and b!1437316 res!970271) b!1437312))

(assert (= (and b!1437312 (not res!970273)) b!1437314))

(assert (= (and b!1437314 (not res!970272)) b!1437309))

(declare-fun m!1326665 () Bool)

(assert (=> b!1437311 m!1326665))

(assert (=> b!1437311 m!1326665))

(assert (=> b!1437311 m!1326605))

(declare-fun m!1326667 () Bool)

(assert (=> b!1437311 m!1326667))

(declare-fun m!1326669 () Bool)

(assert (=> d!154589 m!1326669))

(assert (=> d!154589 m!1326617))

(declare-fun m!1326671 () Bool)

(assert (=> b!1437314 m!1326671))

(assert (=> b!1437312 m!1326671))

(assert (=> b!1437309 m!1326671))

(assert (=> b!1437233 d!154589))

(declare-fun d!154591 () Bool)

(assert (=> d!154591 (= (validKeyInArray!0 (select (arr!47150 a!2862) i!1006)) (and (not (= (select (arr!47150 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47150 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437227 d!154591))

(declare-fun b!1437363 () Bool)

(declare-fun e!810958 () Bool)

(declare-fun call!67626 () Bool)

(assert (=> b!1437363 (= e!810958 call!67626)))

(declare-fun bm!67623 () Bool)

(declare-fun c!133043 () Bool)

(assert (=> bm!67623 (= call!67626 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133043 (Cons!33827 (select (arr!47150 a!2862) #b00000000000000000000000000000000) Nil!33828) Nil!33828)))))

(declare-fun b!1437364 () Bool)

(declare-fun e!810959 () Bool)

(declare-fun e!810960 () Bool)

(assert (=> b!1437364 (= e!810959 e!810960)))

(declare-fun res!970293 () Bool)

(assert (=> b!1437364 (=> (not res!970293) (not e!810960))))

(declare-fun e!810961 () Bool)

(assert (=> b!1437364 (= res!970293 (not e!810961))))

(declare-fun res!970294 () Bool)

(assert (=> b!1437364 (=> (not res!970294) (not e!810961))))

(assert (=> b!1437364 (= res!970294 (validKeyInArray!0 (select (arr!47150 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154593 () Bool)

(declare-fun res!970295 () Bool)

(assert (=> d!154593 (=> res!970295 e!810959)))

(assert (=> d!154593 (= res!970295 (bvsge #b00000000000000000000000000000000 (size!47701 a!2862)))))

(assert (=> d!154593 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33828) e!810959)))

(declare-fun b!1437365 () Bool)

(assert (=> b!1437365 (= e!810960 e!810958)))

(assert (=> b!1437365 (= c!133043 (validKeyInArray!0 (select (arr!47150 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437366 () Bool)

(assert (=> b!1437366 (= e!810958 call!67626)))

(declare-fun b!1437367 () Bool)

(declare-fun contains!9898 (List!33831 (_ BitVec 64)) Bool)

(assert (=> b!1437367 (= e!810961 (contains!9898 Nil!33828 (select (arr!47150 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154593 (not res!970295)) b!1437364))

(assert (= (and b!1437364 res!970294) b!1437367))

(assert (= (and b!1437364 res!970293) b!1437365))

(assert (= (and b!1437365 c!133043) b!1437366))

(assert (= (and b!1437365 (not c!133043)) b!1437363))

(assert (= (or b!1437366 b!1437363) bm!67623))

(declare-fun m!1326689 () Bool)

(assert (=> bm!67623 m!1326689))

(declare-fun m!1326691 () Bool)

(assert (=> bm!67623 m!1326691))

(assert (=> b!1437364 m!1326689))

(assert (=> b!1437364 m!1326689))

(declare-fun m!1326693 () Bool)

(assert (=> b!1437364 m!1326693))

(assert (=> b!1437365 m!1326689))

(assert (=> b!1437365 m!1326689))

(assert (=> b!1437365 m!1326693))

(assert (=> b!1437367 m!1326689))

(assert (=> b!1437367 m!1326689))

(declare-fun m!1326695 () Bool)

(assert (=> b!1437367 m!1326695))

(assert (=> b!1437232 d!154593))

(declare-fun b!1437397 () Bool)

(declare-fun e!810983 () Bool)

(declare-fun e!810982 () Bool)

(assert (=> b!1437397 (= e!810983 e!810982)))

(declare-fun c!133052 () Bool)

(assert (=> b!1437397 (= c!133052 (validKeyInArray!0 (select (arr!47150 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437398 () Bool)

(declare-fun e!810984 () Bool)

(assert (=> b!1437398 (= e!810982 e!810984)))

(declare-fun lt!632261 () (_ BitVec 64))

(assert (=> b!1437398 (= lt!632261 (select (arr!47150 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48500 0))(
  ( (Unit!48501) )
))
(declare-fun lt!632259 () Unit!48500)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97721 (_ BitVec 64) (_ BitVec 32)) Unit!48500)

(assert (=> b!1437398 (= lt!632259 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632261 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437398 (arrayContainsKey!0 a!2862 lt!632261 #b00000000000000000000000000000000)))

(declare-fun lt!632260 () Unit!48500)

(assert (=> b!1437398 (= lt!632260 lt!632259)))

(declare-fun res!970311 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97721 (_ BitVec 32)) SeekEntryResult!11425)

(assert (=> b!1437398 (= res!970311 (= (seekEntryOrOpen!0 (select (arr!47150 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11425 #b00000000000000000000000000000000)))))

(assert (=> b!1437398 (=> (not res!970311) (not e!810984))))

(declare-fun b!1437399 () Bool)

(declare-fun call!67632 () Bool)

(assert (=> b!1437399 (= e!810982 call!67632)))

(declare-fun d!154603 () Bool)

(declare-fun res!970310 () Bool)

(assert (=> d!154603 (=> res!970310 e!810983)))

(assert (=> d!154603 (= res!970310 (bvsge #b00000000000000000000000000000000 (size!47701 a!2862)))))

(assert (=> d!154603 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810983)))

(declare-fun bm!67629 () Bool)

(assert (=> bm!67629 (= call!67632 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1437400 () Bool)

(assert (=> b!1437400 (= e!810984 call!67632)))

(assert (= (and d!154603 (not res!970310)) b!1437397))

(assert (= (and b!1437397 c!133052) b!1437398))

(assert (= (and b!1437397 (not c!133052)) b!1437399))

(assert (= (and b!1437398 res!970311) b!1437400))

(assert (= (or b!1437400 b!1437399) bm!67629))

(assert (=> b!1437397 m!1326689))

(assert (=> b!1437397 m!1326689))

(assert (=> b!1437397 m!1326693))

(assert (=> b!1437398 m!1326689))

(declare-fun m!1326717 () Bool)

(assert (=> b!1437398 m!1326717))

(declare-fun m!1326719 () Bool)

(assert (=> b!1437398 m!1326719))

(assert (=> b!1437398 m!1326689))

(declare-fun m!1326721 () Bool)

(assert (=> b!1437398 m!1326721))

(declare-fun m!1326723 () Bool)

(assert (=> bm!67629 m!1326723))

(assert (=> b!1437235 d!154603))

(check-sat (not b!1437365) (not d!154589) (not b!1437364) (not b!1437311) (not d!154571) (not b!1437398) (not bm!67629) (not bm!67623) (not b!1437397) (not b!1437284) (not b!1437367))
(check-sat)
