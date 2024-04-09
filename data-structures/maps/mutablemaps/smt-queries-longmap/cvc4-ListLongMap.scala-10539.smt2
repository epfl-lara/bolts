; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124334 () Bool)

(assert start!124334)

(declare-fun b!1438306 () Bool)

(declare-fun res!971096 () Bool)

(declare-fun e!811370 () Bool)

(assert (=> b!1438306 (=> (not res!971096) (not e!811370))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97777 0))(
  ( (array!97778 (arr!47175 (Array (_ BitVec 32) (_ BitVec 64))) (size!47726 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97777)

(assert (=> b!1438306 (= res!971096 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47726 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47726 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47726 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438307 () Bool)

(declare-fun res!971090 () Bool)

(assert (=> b!1438307 (=> (not res!971090) (not e!811370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438307 (= res!971090 (validKeyInArray!0 (select (arr!47175 a!2862) i!1006)))))

(declare-fun b!1438308 () Bool)

(declare-fun res!971092 () Bool)

(declare-fun e!811369 () Bool)

(assert (=> b!1438308 (=> (not res!971092) (not e!811369))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11450 0))(
  ( (MissingZero!11450 (index!48191 (_ BitVec 32))) (Found!11450 (index!48192 (_ BitVec 32))) (Intermediate!11450 (undefined!12262 Bool) (index!48193 (_ BitVec 32)) (x!129922 (_ BitVec 32))) (Undefined!11450) (MissingVacant!11450 (index!48194 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97777 (_ BitVec 32)) SeekEntryResult!11450)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438308 (= res!971092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)) mask!2687) (Intermediate!11450 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438309 () Bool)

(declare-fun res!971091 () Bool)

(assert (=> b!1438309 (=> (not res!971091) (not e!811370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97777 (_ BitVec 32)) Bool)

(assert (=> b!1438309 (= res!971091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438311 () Bool)

(declare-fun res!971095 () Bool)

(assert (=> b!1438311 (=> (not res!971095) (not e!811370))))

(declare-datatypes ((List!33856 0))(
  ( (Nil!33853) (Cons!33852 (h!35196 (_ BitVec 64)) (t!48557 List!33856)) )
))
(declare-fun arrayNoDuplicates!0 (array!97777 (_ BitVec 32) List!33856) Bool)

(assert (=> b!1438311 (= res!971095 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33853))))

(declare-fun b!1438312 () Bool)

(declare-fun res!971094 () Bool)

(assert (=> b!1438312 (=> (not res!971094) (not e!811370))))

(assert (=> b!1438312 (= res!971094 (and (= (size!47726 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47726 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47726 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438313 () Bool)

(declare-fun res!971093 () Bool)

(assert (=> b!1438313 (=> (not res!971093) (not e!811370))))

(assert (=> b!1438313 (= res!971093 (validKeyInArray!0 (select (arr!47175 a!2862) j!93)))))

(declare-fun b!1438314 () Bool)

(assert (=> b!1438314 (= e!811369 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1438315 () Bool)

(assert (=> b!1438315 (= e!811370 e!811369)))

(declare-fun res!971089 () Bool)

(assert (=> b!1438315 (=> (not res!971089) (not e!811369))))

(declare-fun lt!632473 () SeekEntryResult!11450)

(assert (=> b!1438315 (= res!971089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687) (select (arr!47175 a!2862) j!93) a!2862 mask!2687) lt!632473))))

(assert (=> b!1438315 (= lt!632473 (Intermediate!11450 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438310 () Bool)

(declare-fun res!971097 () Bool)

(assert (=> b!1438310 (=> (not res!971097) (not e!811369))))

(assert (=> b!1438310 (= res!971097 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47175 a!2862) j!93) a!2862 mask!2687) lt!632473))))

(declare-fun res!971088 () Bool)

(assert (=> start!124334 (=> (not res!971088) (not e!811370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124334 (= res!971088 (validMask!0 mask!2687))))

(assert (=> start!124334 e!811370))

(assert (=> start!124334 true))

(declare-fun array_inv!36120 (array!97777) Bool)

(assert (=> start!124334 (array_inv!36120 a!2862)))

(assert (= (and start!124334 res!971088) b!1438312))

(assert (= (and b!1438312 res!971094) b!1438307))

(assert (= (and b!1438307 res!971090) b!1438313))

(assert (= (and b!1438313 res!971093) b!1438309))

(assert (= (and b!1438309 res!971091) b!1438311))

(assert (= (and b!1438311 res!971095) b!1438306))

(assert (= (and b!1438306 res!971096) b!1438315))

(assert (= (and b!1438315 res!971089) b!1438310))

(assert (= (and b!1438310 res!971097) b!1438308))

(assert (= (and b!1438308 res!971092) b!1438314))

(declare-fun m!1327555 () Bool)

(assert (=> b!1438308 m!1327555))

(declare-fun m!1327557 () Bool)

(assert (=> b!1438308 m!1327557))

(assert (=> b!1438308 m!1327557))

(declare-fun m!1327559 () Bool)

(assert (=> b!1438308 m!1327559))

(assert (=> b!1438308 m!1327559))

(assert (=> b!1438308 m!1327557))

(declare-fun m!1327561 () Bool)

(assert (=> b!1438308 m!1327561))

(declare-fun m!1327563 () Bool)

(assert (=> b!1438315 m!1327563))

(assert (=> b!1438315 m!1327563))

(declare-fun m!1327565 () Bool)

(assert (=> b!1438315 m!1327565))

(assert (=> b!1438315 m!1327565))

(assert (=> b!1438315 m!1327563))

(declare-fun m!1327567 () Bool)

(assert (=> b!1438315 m!1327567))

(assert (=> b!1438310 m!1327563))

(assert (=> b!1438310 m!1327563))

(declare-fun m!1327569 () Bool)

(assert (=> b!1438310 m!1327569))

(declare-fun m!1327571 () Bool)

(assert (=> start!124334 m!1327571))

(declare-fun m!1327573 () Bool)

(assert (=> start!124334 m!1327573))

(declare-fun m!1327575 () Bool)

(assert (=> b!1438307 m!1327575))

(assert (=> b!1438307 m!1327575))

(declare-fun m!1327577 () Bool)

(assert (=> b!1438307 m!1327577))

(declare-fun m!1327579 () Bool)

(assert (=> b!1438309 m!1327579))

(assert (=> b!1438313 m!1327563))

(assert (=> b!1438313 m!1327563))

(declare-fun m!1327581 () Bool)

(assert (=> b!1438313 m!1327581))

(assert (=> b!1438306 m!1327555))

(declare-fun m!1327583 () Bool)

(assert (=> b!1438306 m!1327583))

(declare-fun m!1327585 () Bool)

(assert (=> b!1438311 m!1327585))

(push 1)

(assert (not b!1438308))

(assert (not b!1438310))

(assert (not start!124334))

(assert (not b!1438309))

(assert (not b!1438311))

(assert (not b!1438313))

(assert (not b!1438315))

(assert (not b!1438307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1438433 () Bool)

(declare-fun lt!632511 () SeekEntryResult!11450)

(assert (=> b!1438433 (and (bvsge (index!48193 lt!632511) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632511) (size!47726 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)))))))

(declare-fun res!971145 () Bool)

(assert (=> b!1438433 (= res!971145 (= (select (arr!47175 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862))) (index!48193 lt!632511)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811444 () Bool)

(assert (=> b!1438433 (=> res!971145 e!811444)))

(declare-fun b!1438434 () Bool)

(declare-fun e!811442 () SeekEntryResult!11450)

(assert (=> b!1438434 (= e!811442 (Intermediate!11450 false (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438435 () Bool)

(declare-fun e!811445 () Bool)

(declare-fun e!811446 () Bool)

(assert (=> b!1438435 (= e!811445 e!811446)))

(declare-fun res!971146 () Bool)

(assert (=> b!1438435 (= res!971146 (and (is-Intermediate!11450 lt!632511) (not (undefined!12262 lt!632511)) (bvslt (x!129922 lt!632511) #b01111111111111111111111111111110) (bvsge (x!129922 lt!632511) #b00000000000000000000000000000000) (bvsge (x!129922 lt!632511) #b00000000000000000000000000000000)))))

(assert (=> b!1438435 (=> (not res!971146) (not e!811446))))

(declare-fun b!1438436 () Bool)

(assert (=> b!1438436 (and (bvsge (index!48193 lt!632511) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632511) (size!47726 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)))))))

(assert (=> b!1438436 (= e!811444 (= (select (arr!47175 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862))) (index!48193 lt!632511)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1438437 () Bool)

(assert (=> b!1438437 (= e!811445 (bvsge (x!129922 lt!632511) #b01111111111111111111111111111110))))

(declare-fun b!1438438 () Bool)

(assert (=> b!1438438 (and (bvsge (index!48193 lt!632511) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632511) (size!47726 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)))))))

(declare-fun res!971147 () Bool)

(assert (=> b!1438438 (= res!971147 (= (select (arr!47175 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862))) (index!48193 lt!632511)) (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)))))

(assert (=> b!1438438 (=> res!971147 e!811444)))

(assert (=> b!1438438 (= e!811446 e!811444)))

(declare-fun b!1438439 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438439 (= e!811442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)) mask!2687))))

(declare-fun b!1438440 () Bool)

(declare-fun e!811443 () SeekEntryResult!11450)

(assert (=> b!1438440 (= e!811443 (Intermediate!11450 true (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438441 () Bool)

(assert (=> b!1438441 (= e!811443 e!811442)))

(declare-fun c!133157 () Bool)

(declare-fun lt!632512 () (_ BitVec 64))

(assert (=> b!1438441 (= c!133157 (or (= lt!632512 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)) (= (bvadd lt!632512 lt!632512) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154713 () Bool)

(assert (=> d!154713 e!811445))

(declare-fun c!133156 () Bool)

(assert (=> d!154713 (= c!133156 (and (is-Intermediate!11450 lt!632511) (undefined!12262 lt!632511)))))

(assert (=> d!154713 (= lt!632511 e!811443)))

(declare-fun c!133155 () Bool)

(assert (=> d!154713 (= c!133155 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154713 (= lt!632512 (select (arr!47175 (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862))) (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687)))))

(assert (=> d!154713 (validMask!0 mask!2687)))

(assert (=> d!154713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97778 (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47726 a!2862)) mask!2687) lt!632511)))

(assert (= (and d!154713 c!133155) b!1438440))

(assert (= (and d!154713 (not c!133155)) b!1438441))

(assert (= (and b!1438441 c!133157) b!1438434))

(assert (= (and b!1438441 (not c!133157)) b!1438439))

(assert (= (and d!154713 c!133156) b!1438437))

(assert (= (and d!154713 (not c!133156)) b!1438435))

(assert (= (and b!1438435 res!971146) b!1438438))

(assert (= (and b!1438438 (not res!971147)) b!1438433))

(assert (= (and b!1438433 (not res!971145)) b!1438436))

(declare-fun m!1327635 () Bool)

(assert (=> b!1438433 m!1327635))

(assert (=> b!1438436 m!1327635))

(assert (=> b!1438439 m!1327559))

(declare-fun m!1327637 () Bool)

(assert (=> b!1438439 m!1327637))

(assert (=> b!1438439 m!1327637))

(assert (=> b!1438439 m!1327557))

(declare-fun m!1327639 () Bool)

(assert (=> b!1438439 m!1327639))

(assert (=> d!154713 m!1327559))

(declare-fun m!1327641 () Bool)

(assert (=> d!154713 m!1327641))

(assert (=> d!154713 m!1327571))

(assert (=> b!1438438 m!1327635))

(assert (=> b!1438308 d!154713))

(declare-fun d!154729 () Bool)

(declare-fun lt!632524 () (_ BitVec 32))

(declare-fun lt!632523 () (_ BitVec 32))

(assert (=> d!154729 (= lt!632524 (bvmul (bvxor lt!632523 (bvlshr lt!632523 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154729 (= lt!632523 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154729 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971148 (let ((h!35199 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129928 (bvmul (bvxor h!35199 (bvlshr h!35199 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129928 (bvlshr x!129928 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971148 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971148 #b00000000000000000000000000000000))))))

(assert (=> d!154729 (= (toIndex!0 (select (store (arr!47175 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632524 (bvlshr lt!632524 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438308 d!154729))

(declare-fun d!154733 () Bool)

(assert (=> d!154733 (= (validKeyInArray!0 (select (arr!47175 a!2862) j!93)) (and (not (= (select (arr!47175 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47175 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438313 d!154733))

(declare-fun b!1438452 () Bool)

(declare-fun lt!632525 () SeekEntryResult!11450)

(assert (=> b!1438452 (and (bvsge (index!48193 lt!632525) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632525) (size!47726 a!2862)))))

(declare-fun res!971155 () Bool)

(assert (=> b!1438452 (= res!971155 (= (select (arr!47175 a!2862) (index!48193 lt!632525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811457 () Bool)

(assert (=> b!1438452 (=> res!971155 e!811457)))

(declare-fun e!811455 () SeekEntryResult!11450)

(declare-fun b!1438453 () Bool)

(assert (=> b!1438453 (= e!811455 (Intermediate!11450 false (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438454 () Bool)

(declare-fun e!811458 () Bool)

(declare-fun e!811459 () Bool)

(assert (=> b!1438454 (= e!811458 e!811459)))

(declare-fun res!971156 () Bool)

(assert (=> b!1438454 (= res!971156 (and (is-Intermediate!11450 lt!632525) (not (undefined!12262 lt!632525)) (bvslt (x!129922 lt!632525) #b01111111111111111111111111111110) (bvsge (x!129922 lt!632525) #b00000000000000000000000000000000) (bvsge (x!129922 lt!632525) #b00000000000000000000000000000000)))))

(assert (=> b!1438454 (=> (not res!971156) (not e!811459))))

(declare-fun b!1438455 () Bool)

(assert (=> b!1438455 (and (bvsge (index!48193 lt!632525) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632525) (size!47726 a!2862)))))

(assert (=> b!1438455 (= e!811457 (= (select (arr!47175 a!2862) (index!48193 lt!632525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1438456 () Bool)

(assert (=> b!1438456 (= e!811458 (bvsge (x!129922 lt!632525) #b01111111111111111111111111111110))))

(declare-fun b!1438457 () Bool)

(assert (=> b!1438457 (and (bvsge (index!48193 lt!632525) #b00000000000000000000000000000000) (bvslt (index!48193 lt!632525) (size!47726 a!2862)))))

(declare-fun res!971157 () Bool)

(assert (=> b!1438457 (= res!971157 (= (select (arr!47175 a!2862) (index!48193 lt!632525)) (select (arr!47175 a!2862) j!93)))))

(assert (=> b!1438457 (=> res!971157 e!811457)))

(assert (=> b!1438457 (= e!811459 e!811457)))

(declare-fun b!1438458 () Bool)

(assert (=> b!1438458 (= e!811455 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47175 a!2862) j!93) a!2862 mask!2687))))

(declare-fun e!811456 () SeekEntryResult!11450)

(declare-fun b!1438459 () Bool)

(assert (=> b!1438459 (= e!811456 (Intermediate!11450 true (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438460 () Bool)

(assert (=> b!1438460 (= e!811456 e!811455)))

(declare-fun c!133162 () Bool)

(declare-fun lt!632526 () (_ BitVec 64))

(assert (=> b!1438460 (= c!133162 (or (= lt!632526 (select (arr!47175 a!2862) j!93)) (= (bvadd lt!632526 lt!632526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154735 () Bool)

(assert (=> d!154735 e!811458))

(declare-fun c!133161 () Bool)

(assert (=> d!154735 (= c!133161 (and (is-Intermediate!11450 lt!632525) (undefined!12262 lt!632525)))))

(assert (=> d!154735 (= lt!632525 e!811456)))

(declare-fun c!133160 () Bool)

(assert (=> d!154735 (= c!133160 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154735 (= lt!632526 (select (arr!47175 a!2862) (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687)))))

(assert (=> d!154735 (validMask!0 mask!2687)))

(assert (=> d!154735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47175 a!2862) j!93) mask!2687) (select (arr!47175 a!2862) j!93) a!2862 mask!2687) lt!632525)))

(assert (= (and d!154735 c!133160) b!1438459))

(assert (= (and d!154735 (not c!133160)) b!1438460))

(assert (= (and b!1438460 c!133162) b!1438453))

(assert (= (and b!1438460 (not c!133162)) b!1438458))

(assert (= (and d!154735 c!133161) b!1438456))

(assert (= (and d!154735 (not c!133161)) b!1438454))

(assert (= (and b!1438454 res!971156) b!1438457))

(assert (= (and b!1438457 (not res!971157)) b!1438452))

(assert (= (and b!1438452 (not res!971155)) b!1438455))

(declare-fun m!1327643 () Bool)

(assert (=> b!1438452 m!1327643))

(assert (=> b!1438455 m!1327643))

(assert (=> b!1438458 m!1327565))

(declare-fun m!1327645 () Bool)

(assert (=> b!1438458 m!1327645))

(assert (=> b!1438458 m!1327645))

(assert (=> b!1438458 m!1327563))

(declare-fun m!1327647 () Bool)

(assert (=> b!1438458 m!1327647))

(assert (=> d!154735 m!1327565))

(declare-fun m!1327649 () Bool)

(assert (=> d!154735 m!1327649))

(assert (=> d!154735 m!1327571))

(assert (=> b!1438457 m!1327643))

(assert (=> b!1438315 d!154735))

(declare-fun d!154737 () Bool)

(declare-fun lt!632528 () (_ BitVec 32))

(declare-fun lt!632527 () (_ BitVec 32))

(assert (=> d!154737 (= lt!632528 (bvmul (bvxor lt!632527 (bvlshr lt!632527 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154737 (= lt!632527 ((_ extract 31 0) (bvand (bvxor (select (arr!47175 a!2862) j!93) (bvlshr (select (arr!47175 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

