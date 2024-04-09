; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124332 () Bool)

(assert start!124332)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1438276 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!811361 () Bool)

(assert (=> b!1438276 (= e!811361 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1438277 () Bool)

(declare-fun res!971065 () Bool)

(declare-fun e!811360 () Bool)

(assert (=> b!1438277 (=> (not res!971065) (not e!811360))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97775 0))(
  ( (array!97776 (arr!47174 (Array (_ BitVec 32) (_ BitVec 64))) (size!47725 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97775)

(assert (=> b!1438277 (= res!971065 (and (= (size!47725 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47725 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47725 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438278 () Bool)

(declare-fun res!971063 () Bool)

(assert (=> b!1438278 (=> (not res!971063) (not e!811360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438278 (= res!971063 (validKeyInArray!0 (select (arr!47174 a!2862) i!1006)))))

(declare-fun res!971058 () Bool)

(assert (=> start!124332 (=> (not res!971058) (not e!811360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124332 (= res!971058 (validMask!0 mask!2687))))

(assert (=> start!124332 e!811360))

(assert (=> start!124332 true))

(declare-fun array_inv!36119 (array!97775) Bool)

(assert (=> start!124332 (array_inv!36119 a!2862)))

(declare-fun b!1438279 () Bool)

(declare-fun res!971062 () Bool)

(assert (=> b!1438279 (=> (not res!971062) (not e!811361))))

(declare-datatypes ((SeekEntryResult!11449 0))(
  ( (MissingZero!11449 (index!48187 (_ BitVec 32))) (Found!11449 (index!48188 (_ BitVec 32))) (Intermediate!11449 (undefined!12261 Bool) (index!48189 (_ BitVec 32)) (x!129921 (_ BitVec 32))) (Undefined!11449) (MissingVacant!11449 (index!48190 (_ BitVec 32))) )
))
(declare-fun lt!632470 () SeekEntryResult!11449)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97775 (_ BitVec 32)) SeekEntryResult!11449)

(assert (=> b!1438279 (= res!971062 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47174 a!2862) j!93) a!2862 mask!2687) lt!632470))))

(declare-fun b!1438280 () Bool)

(declare-fun res!971066 () Bool)

(assert (=> b!1438280 (=> (not res!971066) (not e!811360))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438280 (= res!971066 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47725 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47725 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47725 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438281 () Bool)

(declare-fun res!971064 () Bool)

(assert (=> b!1438281 (=> (not res!971064) (not e!811361))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438281 (= res!971064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)) mask!2687) (Intermediate!11449 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438282 () Bool)

(declare-fun res!971061 () Bool)

(assert (=> b!1438282 (=> (not res!971061) (not e!811360))))

(assert (=> b!1438282 (= res!971061 (validKeyInArray!0 (select (arr!47174 a!2862) j!93)))))

(declare-fun b!1438283 () Bool)

(declare-fun res!971059 () Bool)

(assert (=> b!1438283 (=> (not res!971059) (not e!811360))))

(declare-datatypes ((List!33855 0))(
  ( (Nil!33852) (Cons!33851 (h!35195 (_ BitVec 64)) (t!48556 List!33855)) )
))
(declare-fun arrayNoDuplicates!0 (array!97775 (_ BitVec 32) List!33855) Bool)

(assert (=> b!1438283 (= res!971059 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33852))))

(declare-fun b!1438284 () Bool)

(assert (=> b!1438284 (= e!811360 e!811361)))

(declare-fun res!971060 () Bool)

(assert (=> b!1438284 (=> (not res!971060) (not e!811361))))

(assert (=> b!1438284 (= res!971060 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) (select (arr!47174 a!2862) j!93) a!2862 mask!2687) lt!632470))))

(assert (=> b!1438284 (= lt!632470 (Intermediate!11449 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438285 () Bool)

(declare-fun res!971067 () Bool)

(assert (=> b!1438285 (=> (not res!971067) (not e!811360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97775 (_ BitVec 32)) Bool)

(assert (=> b!1438285 (= res!971067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124332 res!971058) b!1438277))

(assert (= (and b!1438277 res!971065) b!1438278))

(assert (= (and b!1438278 res!971063) b!1438282))

(assert (= (and b!1438282 res!971061) b!1438285))

(assert (= (and b!1438285 res!971067) b!1438283))

(assert (= (and b!1438283 res!971059) b!1438280))

(assert (= (and b!1438280 res!971066) b!1438284))

(assert (= (and b!1438284 res!971060) b!1438279))

(assert (= (and b!1438279 res!971062) b!1438281))

(assert (= (and b!1438281 res!971064) b!1438276))

(declare-fun m!1327523 () Bool)

(assert (=> b!1438279 m!1327523))

(assert (=> b!1438279 m!1327523))

(declare-fun m!1327525 () Bool)

(assert (=> b!1438279 m!1327525))

(declare-fun m!1327527 () Bool)

(assert (=> b!1438281 m!1327527))

(declare-fun m!1327529 () Bool)

(assert (=> b!1438281 m!1327529))

(assert (=> b!1438281 m!1327529))

(declare-fun m!1327531 () Bool)

(assert (=> b!1438281 m!1327531))

(assert (=> b!1438281 m!1327531))

(assert (=> b!1438281 m!1327529))

(declare-fun m!1327533 () Bool)

(assert (=> b!1438281 m!1327533))

(declare-fun m!1327535 () Bool)

(assert (=> b!1438278 m!1327535))

(assert (=> b!1438278 m!1327535))

(declare-fun m!1327537 () Bool)

(assert (=> b!1438278 m!1327537))

(assert (=> b!1438282 m!1327523))

(assert (=> b!1438282 m!1327523))

(declare-fun m!1327539 () Bool)

(assert (=> b!1438282 m!1327539))

(declare-fun m!1327541 () Bool)

(assert (=> start!124332 m!1327541))

(declare-fun m!1327543 () Bool)

(assert (=> start!124332 m!1327543))

(assert (=> b!1438284 m!1327523))

(assert (=> b!1438284 m!1327523))

(declare-fun m!1327545 () Bool)

(assert (=> b!1438284 m!1327545))

(assert (=> b!1438284 m!1327545))

(assert (=> b!1438284 m!1327523))

(declare-fun m!1327547 () Bool)

(assert (=> b!1438284 m!1327547))

(assert (=> b!1438280 m!1327527))

(declare-fun m!1327549 () Bool)

(assert (=> b!1438280 m!1327549))

(declare-fun m!1327551 () Bool)

(assert (=> b!1438283 m!1327551))

(declare-fun m!1327553 () Bool)

(assert (=> b!1438285 m!1327553))

(check-sat (not start!124332) (not b!1438283) (not b!1438285) (not b!1438282) (not b!1438284) (not b!1438279) (not b!1438278) (not b!1438281))
(check-sat)
(get-model)

(declare-fun d!154701 () Bool)

(assert (=> d!154701 (= (validKeyInArray!0 (select (arr!47174 a!2862) i!1006)) (and (not (= (select (arr!47174 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47174 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438278 d!154701))

(declare-fun b!1438326 () Bool)

(declare-fun e!811382 () Bool)

(declare-fun call!67662 () Bool)

(assert (=> b!1438326 (= e!811382 call!67662)))

(declare-fun b!1438327 () Bool)

(declare-fun e!811380 () Bool)

(declare-fun contains!9903 (List!33855 (_ BitVec 64)) Bool)

(assert (=> b!1438327 (= e!811380 (contains!9903 Nil!33852 (select (arr!47174 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1438328 () Bool)

(assert (=> b!1438328 (= e!811382 call!67662)))

(declare-fun bm!67659 () Bool)

(declare-fun c!133121 () Bool)

(assert (=> bm!67659 (= call!67662 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133121 (Cons!33851 (select (arr!47174 a!2862) #b00000000000000000000000000000000) Nil!33852) Nil!33852)))))

(declare-fun b!1438329 () Bool)

(declare-fun e!811381 () Bool)

(assert (=> b!1438329 (= e!811381 e!811382)))

(assert (=> b!1438329 (= c!133121 (validKeyInArray!0 (select (arr!47174 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154703 () Bool)

(declare-fun res!971104 () Bool)

(declare-fun e!811379 () Bool)

(assert (=> d!154703 (=> res!971104 e!811379)))

(assert (=> d!154703 (= res!971104 (bvsge #b00000000000000000000000000000000 (size!47725 a!2862)))))

(assert (=> d!154703 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33852) e!811379)))

(declare-fun b!1438330 () Bool)

(assert (=> b!1438330 (= e!811379 e!811381)))

(declare-fun res!971105 () Bool)

(assert (=> b!1438330 (=> (not res!971105) (not e!811381))))

(assert (=> b!1438330 (= res!971105 (not e!811380))))

(declare-fun res!971106 () Bool)

(assert (=> b!1438330 (=> (not res!971106) (not e!811380))))

(assert (=> b!1438330 (= res!971106 (validKeyInArray!0 (select (arr!47174 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154703 (not res!971104)) b!1438330))

(assert (= (and b!1438330 res!971106) b!1438327))

(assert (= (and b!1438330 res!971105) b!1438329))

(assert (= (and b!1438329 c!133121) b!1438326))

(assert (= (and b!1438329 (not c!133121)) b!1438328))

(assert (= (or b!1438326 b!1438328) bm!67659))

(declare-fun m!1327587 () Bool)

(assert (=> b!1438327 m!1327587))

(assert (=> b!1438327 m!1327587))

(declare-fun m!1327589 () Bool)

(assert (=> b!1438327 m!1327589))

(assert (=> bm!67659 m!1327587))

(declare-fun m!1327591 () Bool)

(assert (=> bm!67659 m!1327591))

(assert (=> b!1438329 m!1327587))

(assert (=> b!1438329 m!1327587))

(declare-fun m!1327593 () Bool)

(assert (=> b!1438329 m!1327593))

(assert (=> b!1438330 m!1327587))

(assert (=> b!1438330 m!1327587))

(assert (=> b!1438330 m!1327593))

(assert (=> b!1438283 d!154703))

(declare-fun bm!67662 () Bool)

(declare-fun call!67665 () Bool)

(assert (=> bm!67662 (= call!67665 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1438339 () Bool)

(declare-fun e!811389 () Bool)

(declare-fun e!811390 () Bool)

(assert (=> b!1438339 (= e!811389 e!811390)))

(declare-fun lt!632481 () (_ BitVec 64))

(assert (=> b!1438339 (= lt!632481 (select (arr!47174 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48512 0))(
  ( (Unit!48513) )
))
(declare-fun lt!632480 () Unit!48512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97775 (_ BitVec 64) (_ BitVec 32)) Unit!48512)

(assert (=> b!1438339 (= lt!632480 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632481 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1438339 (arrayContainsKey!0 a!2862 lt!632481 #b00000000000000000000000000000000)))

(declare-fun lt!632482 () Unit!48512)

(assert (=> b!1438339 (= lt!632482 lt!632480)))

(declare-fun res!971112 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97775 (_ BitVec 32)) SeekEntryResult!11449)

(assert (=> b!1438339 (= res!971112 (= (seekEntryOrOpen!0 (select (arr!47174 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11449 #b00000000000000000000000000000000)))))

(assert (=> b!1438339 (=> (not res!971112) (not e!811390))))

(declare-fun b!1438340 () Bool)

(declare-fun e!811391 () Bool)

(assert (=> b!1438340 (= e!811391 e!811389)))

(declare-fun c!133124 () Bool)

(assert (=> b!1438340 (= c!133124 (validKeyInArray!0 (select (arr!47174 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1438341 () Bool)

(assert (=> b!1438341 (= e!811389 call!67665)))

(declare-fun d!154705 () Bool)

(declare-fun res!971111 () Bool)

(assert (=> d!154705 (=> res!971111 e!811391)))

(assert (=> d!154705 (= res!971111 (bvsge #b00000000000000000000000000000000 (size!47725 a!2862)))))

(assert (=> d!154705 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811391)))

(declare-fun b!1438342 () Bool)

(assert (=> b!1438342 (= e!811390 call!67665)))

(assert (= (and d!154705 (not res!971111)) b!1438340))

(assert (= (and b!1438340 c!133124) b!1438339))

(assert (= (and b!1438340 (not c!133124)) b!1438341))

(assert (= (and b!1438339 res!971112) b!1438342))

(assert (= (or b!1438342 b!1438341) bm!67662))

(declare-fun m!1327595 () Bool)

(assert (=> bm!67662 m!1327595))

(assert (=> b!1438339 m!1327587))

(declare-fun m!1327597 () Bool)

(assert (=> b!1438339 m!1327597))

(declare-fun m!1327599 () Bool)

(assert (=> b!1438339 m!1327599))

(assert (=> b!1438339 m!1327587))

(declare-fun m!1327601 () Bool)

(assert (=> b!1438339 m!1327601))

(assert (=> b!1438340 m!1327587))

(assert (=> b!1438340 m!1327587))

(assert (=> b!1438340 m!1327593))

(assert (=> b!1438285 d!154705))

(declare-fun b!1438361 () Bool)

(declare-fun lt!632488 () SeekEntryResult!11449)

(assert (=> b!1438361 (and (bvsge (index!48189 lt!632488) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632488) (size!47725 a!2862)))))

(declare-fun e!811405 () Bool)

(assert (=> b!1438361 (= e!811405 (= (select (arr!47174 a!2862) (index!48189 lt!632488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1438362 () Bool)

(declare-fun e!811402 () Bool)

(assert (=> b!1438362 (= e!811402 (bvsge (x!129921 lt!632488) #b01111111111111111111111111111110))))

(declare-fun b!1438363 () Bool)

(assert (=> b!1438363 (and (bvsge (index!48189 lt!632488) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632488) (size!47725 a!2862)))))

(declare-fun res!971121 () Bool)

(assert (=> b!1438363 (= res!971121 (= (select (arr!47174 a!2862) (index!48189 lt!632488)) (select (arr!47174 a!2862) j!93)))))

(assert (=> b!1438363 (=> res!971121 e!811405)))

(declare-fun e!811404 () Bool)

(assert (=> b!1438363 (= e!811404 e!811405)))

(declare-fun d!154707 () Bool)

(assert (=> d!154707 e!811402))

(declare-fun c!133131 () Bool)

(get-info :version)

(assert (=> d!154707 (= c!133131 (and ((_ is Intermediate!11449) lt!632488) (undefined!12261 lt!632488)))))

(declare-fun e!811406 () SeekEntryResult!11449)

(assert (=> d!154707 (= lt!632488 e!811406)))

(declare-fun c!133133 () Bool)

(assert (=> d!154707 (= c!133133 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632487 () (_ BitVec 64))

(assert (=> d!154707 (= lt!632487 (select (arr!47174 a!2862) (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687)))))

(assert (=> d!154707 (validMask!0 mask!2687)))

(assert (=> d!154707 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) (select (arr!47174 a!2862) j!93) a!2862 mask!2687) lt!632488)))

(declare-fun e!811403 () SeekEntryResult!11449)

(declare-fun b!1438364 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438364 (= e!811403 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47174 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1438365 () Bool)

(assert (=> b!1438365 (= e!811406 e!811403)))

(declare-fun c!133132 () Bool)

(assert (=> b!1438365 (= c!133132 (or (= lt!632487 (select (arr!47174 a!2862) j!93)) (= (bvadd lt!632487 lt!632487) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438366 () Bool)

(assert (=> b!1438366 (= e!811406 (Intermediate!11449 true (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438367 () Bool)

(assert (=> b!1438367 (and (bvsge (index!48189 lt!632488) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632488) (size!47725 a!2862)))))

(declare-fun res!971119 () Bool)

(assert (=> b!1438367 (= res!971119 (= (select (arr!47174 a!2862) (index!48189 lt!632488)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1438367 (=> res!971119 e!811405)))

(declare-fun b!1438368 () Bool)

(assert (=> b!1438368 (= e!811403 (Intermediate!11449 false (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438369 () Bool)

(assert (=> b!1438369 (= e!811402 e!811404)))

(declare-fun res!971120 () Bool)

(assert (=> b!1438369 (= res!971120 (and ((_ is Intermediate!11449) lt!632488) (not (undefined!12261 lt!632488)) (bvslt (x!129921 lt!632488) #b01111111111111111111111111111110) (bvsge (x!129921 lt!632488) #b00000000000000000000000000000000) (bvsge (x!129921 lt!632488) #b00000000000000000000000000000000)))))

(assert (=> b!1438369 (=> (not res!971120) (not e!811404))))

(assert (= (and d!154707 c!133133) b!1438366))

(assert (= (and d!154707 (not c!133133)) b!1438365))

(assert (= (and b!1438365 c!133132) b!1438368))

(assert (= (and b!1438365 (not c!133132)) b!1438364))

(assert (= (and d!154707 c!133131) b!1438362))

(assert (= (and d!154707 (not c!133131)) b!1438369))

(assert (= (and b!1438369 res!971120) b!1438363))

(assert (= (and b!1438363 (not res!971121)) b!1438367))

(assert (= (and b!1438367 (not res!971119)) b!1438361))

(declare-fun m!1327603 () Bool)

(assert (=> b!1438363 m!1327603))

(assert (=> d!154707 m!1327545))

(declare-fun m!1327605 () Bool)

(assert (=> d!154707 m!1327605))

(assert (=> d!154707 m!1327541))

(assert (=> b!1438367 m!1327603))

(assert (=> b!1438361 m!1327603))

(assert (=> b!1438364 m!1327545))

(declare-fun m!1327607 () Bool)

(assert (=> b!1438364 m!1327607))

(assert (=> b!1438364 m!1327607))

(assert (=> b!1438364 m!1327523))

(declare-fun m!1327609 () Bool)

(assert (=> b!1438364 m!1327609))

(assert (=> b!1438284 d!154707))

(declare-fun d!154711 () Bool)

(declare-fun lt!632494 () (_ BitVec 32))

(declare-fun lt!632493 () (_ BitVec 32))

(assert (=> d!154711 (= lt!632494 (bvmul (bvxor lt!632493 (bvlshr lt!632493 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154711 (= lt!632493 ((_ extract 31 0) (bvand (bvxor (select (arr!47174 a!2862) j!93) (bvlshr (select (arr!47174 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154711 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971122 (let ((h!35197 ((_ extract 31 0) (bvand (bvxor (select (arr!47174 a!2862) j!93) (bvlshr (select (arr!47174 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129924 (bvmul (bvxor h!35197 (bvlshr h!35197 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129924 (bvlshr x!129924 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971122 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971122 #b00000000000000000000000000000000))))))

(assert (=> d!154711 (= (toIndex!0 (select (arr!47174 a!2862) j!93) mask!2687) (bvand (bvxor lt!632494 (bvlshr lt!632494 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438284 d!154711))

(declare-fun b!1438370 () Bool)

(declare-fun lt!632496 () SeekEntryResult!11449)

(assert (=> b!1438370 (and (bvsge (index!48189 lt!632496) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632496) (size!47725 a!2862)))))

(declare-fun e!811410 () Bool)

(assert (=> b!1438370 (= e!811410 (= (select (arr!47174 a!2862) (index!48189 lt!632496)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1438371 () Bool)

(declare-fun e!811407 () Bool)

(assert (=> b!1438371 (= e!811407 (bvsge (x!129921 lt!632496) #b01111111111111111111111111111110))))

(declare-fun b!1438372 () Bool)

(assert (=> b!1438372 (and (bvsge (index!48189 lt!632496) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632496) (size!47725 a!2862)))))

(declare-fun res!971125 () Bool)

(assert (=> b!1438372 (= res!971125 (= (select (arr!47174 a!2862) (index!48189 lt!632496)) (select (arr!47174 a!2862) j!93)))))

(assert (=> b!1438372 (=> res!971125 e!811410)))

(declare-fun e!811409 () Bool)

(assert (=> b!1438372 (= e!811409 e!811410)))

(declare-fun d!154715 () Bool)

(assert (=> d!154715 e!811407))

(declare-fun c!133134 () Bool)

(assert (=> d!154715 (= c!133134 (and ((_ is Intermediate!11449) lt!632496) (undefined!12261 lt!632496)))))

(declare-fun e!811411 () SeekEntryResult!11449)

(assert (=> d!154715 (= lt!632496 e!811411)))

(declare-fun c!133136 () Bool)

(assert (=> d!154715 (= c!133136 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632495 () (_ BitVec 64))

(assert (=> d!154715 (= lt!632495 (select (arr!47174 a!2862) index!646))))

(assert (=> d!154715 (validMask!0 mask!2687)))

(assert (=> d!154715 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47174 a!2862) j!93) a!2862 mask!2687) lt!632496)))

(declare-fun e!811408 () SeekEntryResult!11449)

(declare-fun b!1438373 () Bool)

(assert (=> b!1438373 (= e!811408 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47174 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1438374 () Bool)

(assert (=> b!1438374 (= e!811411 e!811408)))

(declare-fun c!133135 () Bool)

(assert (=> b!1438374 (= c!133135 (or (= lt!632495 (select (arr!47174 a!2862) j!93)) (= (bvadd lt!632495 lt!632495) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438375 () Bool)

(assert (=> b!1438375 (= e!811411 (Intermediate!11449 true index!646 x!665))))

(declare-fun b!1438376 () Bool)

(assert (=> b!1438376 (and (bvsge (index!48189 lt!632496) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632496) (size!47725 a!2862)))))

(declare-fun res!971123 () Bool)

(assert (=> b!1438376 (= res!971123 (= (select (arr!47174 a!2862) (index!48189 lt!632496)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1438376 (=> res!971123 e!811410)))

(declare-fun b!1438377 () Bool)

(assert (=> b!1438377 (= e!811408 (Intermediate!11449 false index!646 x!665))))

(declare-fun b!1438378 () Bool)

(assert (=> b!1438378 (= e!811407 e!811409)))

(declare-fun res!971124 () Bool)

(assert (=> b!1438378 (= res!971124 (and ((_ is Intermediate!11449) lt!632496) (not (undefined!12261 lt!632496)) (bvslt (x!129921 lt!632496) #b01111111111111111111111111111110) (bvsge (x!129921 lt!632496) #b00000000000000000000000000000000) (bvsge (x!129921 lt!632496) x!665)))))

(assert (=> b!1438378 (=> (not res!971124) (not e!811409))))

(assert (= (and d!154715 c!133136) b!1438375))

(assert (= (and d!154715 (not c!133136)) b!1438374))

(assert (= (and b!1438374 c!133135) b!1438377))

(assert (= (and b!1438374 (not c!133135)) b!1438373))

(assert (= (and d!154715 c!133134) b!1438371))

(assert (= (and d!154715 (not c!133134)) b!1438378))

(assert (= (and b!1438378 res!971124) b!1438372))

(assert (= (and b!1438372 (not res!971125)) b!1438376))

(assert (= (and b!1438376 (not res!971123)) b!1438370))

(declare-fun m!1327611 () Bool)

(assert (=> b!1438372 m!1327611))

(declare-fun m!1327613 () Bool)

(assert (=> d!154715 m!1327613))

(assert (=> d!154715 m!1327541))

(assert (=> b!1438376 m!1327611))

(assert (=> b!1438370 m!1327611))

(declare-fun m!1327615 () Bool)

(assert (=> b!1438373 m!1327615))

(assert (=> b!1438373 m!1327615))

(assert (=> b!1438373 m!1327523))

(declare-fun m!1327617 () Bool)

(assert (=> b!1438373 m!1327617))

(assert (=> b!1438279 d!154715))

(declare-fun b!1438379 () Bool)

(declare-fun lt!632498 () SeekEntryResult!11449)

(assert (=> b!1438379 (and (bvsge (index!48189 lt!632498) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632498) (size!47725 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)))))))

(declare-fun e!811415 () Bool)

(assert (=> b!1438379 (= e!811415 (= (select (arr!47174 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862))) (index!48189 lt!632498)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1438380 () Bool)

(declare-fun e!811412 () Bool)

(assert (=> b!1438380 (= e!811412 (bvsge (x!129921 lt!632498) #b01111111111111111111111111111110))))

(declare-fun b!1438381 () Bool)

(assert (=> b!1438381 (and (bvsge (index!48189 lt!632498) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632498) (size!47725 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)))))))

(declare-fun res!971128 () Bool)

(assert (=> b!1438381 (= res!971128 (= (select (arr!47174 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862))) (index!48189 lt!632498)) (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)))))

(assert (=> b!1438381 (=> res!971128 e!811415)))

(declare-fun e!811414 () Bool)

(assert (=> b!1438381 (= e!811414 e!811415)))

(declare-fun d!154717 () Bool)

(assert (=> d!154717 e!811412))

(declare-fun c!133137 () Bool)

(assert (=> d!154717 (= c!133137 (and ((_ is Intermediate!11449) lt!632498) (undefined!12261 lt!632498)))))

(declare-fun e!811416 () SeekEntryResult!11449)

(assert (=> d!154717 (= lt!632498 e!811416)))

(declare-fun c!133139 () Bool)

(assert (=> d!154717 (= c!133139 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632497 () (_ BitVec 64))

(assert (=> d!154717 (= lt!632497 (select (arr!47174 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862))) (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687)))))

(assert (=> d!154717 (validMask!0 mask!2687)))

(assert (=> d!154717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)) mask!2687) lt!632498)))

(declare-fun e!811413 () SeekEntryResult!11449)

(declare-fun b!1438382 () Bool)

(assert (=> b!1438382 (= e!811413 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)) mask!2687))))

(declare-fun b!1438383 () Bool)

(assert (=> b!1438383 (= e!811416 e!811413)))

(declare-fun c!133138 () Bool)

(assert (=> b!1438383 (= c!133138 (or (= lt!632497 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)) (= (bvadd lt!632497 lt!632497) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438384 () Bool)

(assert (=> b!1438384 (= e!811416 (Intermediate!11449 true (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438385 () Bool)

(assert (=> b!1438385 (and (bvsge (index!48189 lt!632498) #b00000000000000000000000000000000) (bvslt (index!48189 lt!632498) (size!47725 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862)))))))

(declare-fun res!971126 () Bool)

(assert (=> b!1438385 (= res!971126 (= (select (arr!47174 (array!97776 (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47725 a!2862))) (index!48189 lt!632498)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1438385 (=> res!971126 e!811415)))

(declare-fun b!1438386 () Bool)

(assert (=> b!1438386 (= e!811413 (Intermediate!11449 false (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438387 () Bool)

(assert (=> b!1438387 (= e!811412 e!811414)))

(declare-fun res!971127 () Bool)

(assert (=> b!1438387 (= res!971127 (and ((_ is Intermediate!11449) lt!632498) (not (undefined!12261 lt!632498)) (bvslt (x!129921 lt!632498) #b01111111111111111111111111111110) (bvsge (x!129921 lt!632498) #b00000000000000000000000000000000) (bvsge (x!129921 lt!632498) #b00000000000000000000000000000000)))))

(assert (=> b!1438387 (=> (not res!971127) (not e!811414))))

(assert (= (and d!154717 c!133139) b!1438384))

(assert (= (and d!154717 (not c!133139)) b!1438383))

(assert (= (and b!1438383 c!133138) b!1438386))

(assert (= (and b!1438383 (not c!133138)) b!1438382))

(assert (= (and d!154717 c!133137) b!1438380))

(assert (= (and d!154717 (not c!133137)) b!1438387))

(assert (= (and b!1438387 res!971127) b!1438381))

(assert (= (and b!1438381 (not res!971128)) b!1438385))

(assert (= (and b!1438385 (not res!971126)) b!1438379))

(declare-fun m!1327619 () Bool)

(assert (=> b!1438381 m!1327619))

(assert (=> d!154717 m!1327531))

(declare-fun m!1327621 () Bool)

(assert (=> d!154717 m!1327621))

(assert (=> d!154717 m!1327541))

(assert (=> b!1438385 m!1327619))

(assert (=> b!1438379 m!1327619))

(assert (=> b!1438382 m!1327531))

(declare-fun m!1327623 () Bool)

(assert (=> b!1438382 m!1327623))

(assert (=> b!1438382 m!1327623))

(assert (=> b!1438382 m!1327529))

(declare-fun m!1327625 () Bool)

(assert (=> b!1438382 m!1327625))

(assert (=> b!1438281 d!154717))

(declare-fun d!154719 () Bool)

(declare-fun lt!632500 () (_ BitVec 32))

(declare-fun lt!632499 () (_ BitVec 32))

(assert (=> d!154719 (= lt!632500 (bvmul (bvxor lt!632499 (bvlshr lt!632499 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154719 (= lt!632499 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154719 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971122 (let ((h!35197 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129924 (bvmul (bvxor h!35197 (bvlshr h!35197 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129924 (bvlshr x!129924 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971122 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971122 #b00000000000000000000000000000000))))))

(assert (=> d!154719 (= (toIndex!0 (select (store (arr!47174 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632500 (bvlshr lt!632500 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438281 d!154719))

(declare-fun d!154721 () Bool)

(assert (=> d!154721 (= (validKeyInArray!0 (select (arr!47174 a!2862) j!93)) (and (not (= (select (arr!47174 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47174 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438282 d!154721))

(declare-fun d!154723 () Bool)

(assert (=> d!154723 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124332 d!154723))

(declare-fun d!154725 () Bool)

(assert (=> d!154725 (= (array_inv!36119 a!2862) (bvsge (size!47725 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124332 d!154725))

(check-sat (not b!1438364) (not d!154715) (not d!154717) (not b!1438339) (not b!1438373) (not b!1438340) (not d!154707) (not bm!67659) (not b!1438329) (not bm!67662) (not b!1438330) (not b!1438327) (not b!1438382))
(check-sat)
