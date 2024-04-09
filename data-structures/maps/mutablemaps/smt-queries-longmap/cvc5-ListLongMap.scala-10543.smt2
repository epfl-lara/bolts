; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124396 () Bool)

(assert start!124396)

(declare-fun b!1438805 () Bool)

(declare-fun res!971463 () Bool)

(declare-fun e!811599 () Bool)

(assert (=> b!1438805 (=> (not res!971463) (not e!811599))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97800 0))(
  ( (array!97801 (arr!47185 (Array (_ BitVec 32) (_ BitVec 64))) (size!47736 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97800)

(assert (=> b!1438805 (= res!971463 (and (= (size!47736 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47736 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47736 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438806 () Bool)

(declare-fun res!971472 () Bool)

(assert (=> b!1438806 (=> (not res!971472) (not e!811599))))

(declare-datatypes ((List!33866 0))(
  ( (Nil!33863) (Cons!33862 (h!35209 (_ BitVec 64)) (t!48567 List!33866)) )
))
(declare-fun arrayNoDuplicates!0 (array!97800 (_ BitVec 32) List!33866) Bool)

(assert (=> b!1438806 (= res!971472 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33863))))

(declare-fun b!1438807 () Bool)

(declare-fun res!971464 () Bool)

(assert (=> b!1438807 (=> (not res!971464) (not e!811599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97800 (_ BitVec 32)) Bool)

(assert (=> b!1438807 (= res!971464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438808 () Bool)

(declare-fun res!971465 () Bool)

(assert (=> b!1438808 (=> (not res!971465) (not e!811599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438808 (= res!971465 (validKeyInArray!0 (select (arr!47185 a!2862) j!93)))))

(declare-fun b!1438809 () Bool)

(declare-fun res!971471 () Bool)

(declare-fun e!811600 () Bool)

(assert (=> b!1438809 (=> (not res!971471) (not e!811600))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11460 0))(
  ( (MissingZero!11460 (index!48231 (_ BitVec 32))) (Found!11460 (index!48232 (_ BitVec 32))) (Intermediate!11460 (undefined!12272 Bool) (index!48233 (_ BitVec 32)) (x!129970 (_ BitVec 32))) (Undefined!11460) (MissingVacant!11460 (index!48234 (_ BitVec 32))) )
))
(declare-fun lt!632604 () SeekEntryResult!11460)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97800 (_ BitVec 32)) SeekEntryResult!11460)

(assert (=> b!1438809 (= res!971471 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47185 a!2862) j!93) a!2862 mask!2687) lt!632604))))

(declare-fun b!1438810 () Bool)

(assert (=> b!1438810 (= e!811599 e!811600)))

(declare-fun res!971468 () Bool)

(assert (=> b!1438810 (=> (not res!971468) (not e!811600))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438810 (= res!971468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) (select (arr!47185 a!2862) j!93) a!2862 mask!2687) lt!632604))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438810 (= lt!632604 (Intermediate!11460 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438811 () Bool)

(declare-fun res!971469 () Bool)

(assert (=> b!1438811 (=> (not res!971469) (not e!811599))))

(assert (=> b!1438811 (= res!971469 (validKeyInArray!0 (select (arr!47185 a!2862) i!1006)))))

(declare-fun res!971466 () Bool)

(assert (=> start!124396 (=> (not res!971466) (not e!811599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124396 (= res!971466 (validMask!0 mask!2687))))

(assert (=> start!124396 e!811599))

(assert (=> start!124396 true))

(declare-fun array_inv!36130 (array!97800) Bool)

(assert (=> start!124396 (array_inv!36130 a!2862)))

(declare-fun b!1438804 () Bool)

(declare-fun res!971470 () Bool)

(assert (=> b!1438804 (=> (not res!971470) (not e!811599))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438804 (= res!971470 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47736 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47736 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47736 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438812 () Bool)

(declare-fun e!811598 () Bool)

(assert (=> b!1438812 (= e!811600 e!811598)))

(declare-fun res!971467 () Bool)

(assert (=> b!1438812 (=> (not res!971467) (not e!811598))))

(declare-fun lt!632605 () (_ BitVec 32))

(assert (=> b!1438812 (= res!971467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632605 (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)) mask!2687) (Intermediate!11460 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1438812 (= lt!632605 (toIndex!0 (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438813 () Bool)

(assert (=> b!1438813 (= e!811598 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632605 #b00000000000000000000000000000000) (bvsge lt!632605 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (= (and start!124396 res!971466) b!1438805))

(assert (= (and b!1438805 res!971463) b!1438811))

(assert (= (and b!1438811 res!971469) b!1438808))

(assert (= (and b!1438808 res!971465) b!1438807))

(assert (= (and b!1438807 res!971464) b!1438806))

(assert (= (and b!1438806 res!971472) b!1438804))

(assert (= (and b!1438804 res!971470) b!1438810))

(assert (= (and b!1438810 res!971468) b!1438809))

(assert (= (and b!1438809 res!971471) b!1438812))

(assert (= (and b!1438812 res!971467) b!1438813))

(declare-fun m!1327995 () Bool)

(assert (=> b!1438809 m!1327995))

(assert (=> b!1438809 m!1327995))

(declare-fun m!1327997 () Bool)

(assert (=> b!1438809 m!1327997))

(declare-fun m!1327999 () Bool)

(assert (=> b!1438804 m!1327999))

(declare-fun m!1328001 () Bool)

(assert (=> b!1438804 m!1328001))

(assert (=> b!1438808 m!1327995))

(assert (=> b!1438808 m!1327995))

(declare-fun m!1328003 () Bool)

(assert (=> b!1438808 m!1328003))

(declare-fun m!1328005 () Bool)

(assert (=> b!1438806 m!1328005))

(declare-fun m!1328007 () Bool)

(assert (=> start!124396 m!1328007))

(declare-fun m!1328009 () Bool)

(assert (=> start!124396 m!1328009))

(assert (=> b!1438810 m!1327995))

(assert (=> b!1438810 m!1327995))

(declare-fun m!1328011 () Bool)

(assert (=> b!1438810 m!1328011))

(assert (=> b!1438810 m!1328011))

(assert (=> b!1438810 m!1327995))

(declare-fun m!1328013 () Bool)

(assert (=> b!1438810 m!1328013))

(declare-fun m!1328015 () Bool)

(assert (=> b!1438811 m!1328015))

(assert (=> b!1438811 m!1328015))

(declare-fun m!1328017 () Bool)

(assert (=> b!1438811 m!1328017))

(assert (=> b!1438812 m!1327999))

(declare-fun m!1328019 () Bool)

(assert (=> b!1438812 m!1328019))

(assert (=> b!1438812 m!1328019))

(declare-fun m!1328021 () Bool)

(assert (=> b!1438812 m!1328021))

(assert (=> b!1438812 m!1328019))

(declare-fun m!1328023 () Bool)

(assert (=> b!1438812 m!1328023))

(declare-fun m!1328025 () Bool)

(assert (=> b!1438807 m!1328025))

(push 1)

(assert (not b!1438811))

(assert (not start!124396))

(assert (not b!1438807))

(assert (not b!1438809))

(assert (not b!1438808))

(assert (not b!1438806))

(assert (not b!1438812))

(assert (not b!1438810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!67683 () Bool)

(declare-fun call!67686 () Bool)

(assert (=> bm!67683 (= call!67686 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1438936 () Bool)

(declare-fun e!811668 () Bool)

(assert (=> b!1438936 (= e!811668 call!67686)))

(declare-fun b!1438937 () Bool)

(declare-fun e!811670 () Bool)

(assert (=> b!1438937 (= e!811670 call!67686)))

(declare-fun b!1438938 () Bool)

(assert (=> b!1438938 (= e!811670 e!811668)))

(declare-fun lt!632647 () (_ BitVec 64))

(assert (=> b!1438938 (= lt!632647 (select (arr!47185 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48516 0))(
  ( (Unit!48517) )
))
(declare-fun lt!632645 () Unit!48516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97800 (_ BitVec 64) (_ BitVec 32)) Unit!48516)

(assert (=> b!1438938 (= lt!632645 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632647 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1438938 (arrayContainsKey!0 a!2862 lt!632647 #b00000000000000000000000000000000)))

(declare-fun lt!632646 () Unit!48516)

(assert (=> b!1438938 (= lt!632646 lt!632645)))

(declare-fun res!971562 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97800 (_ BitVec 32)) SeekEntryResult!11460)

(assert (=> b!1438938 (= res!971562 (= (seekEntryOrOpen!0 (select (arr!47185 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11460 #b00000000000000000000000000000000)))))

(assert (=> b!1438938 (=> (not res!971562) (not e!811668))))

(declare-fun b!1438939 () Bool)

(declare-fun e!811669 () Bool)

(assert (=> b!1438939 (= e!811669 e!811670)))

(declare-fun c!133199 () Bool)

(assert (=> b!1438939 (= c!133199 (validKeyInArray!0 (select (arr!47185 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154783 () Bool)

(declare-fun res!971563 () Bool)

(assert (=> d!154783 (=> res!971563 e!811669)))

(assert (=> d!154783 (= res!971563 (bvsge #b00000000000000000000000000000000 (size!47736 a!2862)))))

(assert (=> d!154783 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811669)))

(assert (= (and d!154783 (not res!971563)) b!1438939))

(assert (= (and b!1438939 c!133199) b!1438938))

(assert (= (and b!1438939 (not c!133199)) b!1438937))

(assert (= (and b!1438938 res!971562) b!1438936))

(assert (= (or b!1438936 b!1438937) bm!67683))

(declare-fun m!1328115 () Bool)

(assert (=> bm!67683 m!1328115))

(declare-fun m!1328117 () Bool)

(assert (=> b!1438938 m!1328117))

(declare-fun m!1328119 () Bool)

(assert (=> b!1438938 m!1328119))

(declare-fun m!1328121 () Bool)

(assert (=> b!1438938 m!1328121))

(assert (=> b!1438938 m!1328117))

(declare-fun m!1328123 () Bool)

(assert (=> b!1438938 m!1328123))

(assert (=> b!1438939 m!1328117))

(assert (=> b!1438939 m!1328117))

(declare-fun m!1328125 () Bool)

(assert (=> b!1438939 m!1328125))

(assert (=> b!1438807 d!154783))

(declare-fun b!1439003 () Bool)

(declare-fun e!811706 () SeekEntryResult!11460)

(assert (=> b!1439003 (= e!811706 (Intermediate!11460 false lt!632605 #b00000000000000000000000000000000))))

(declare-fun b!1439004 () Bool)

(declare-fun e!811709 () SeekEntryResult!11460)

(assert (=> b!1439004 (= e!811709 (Intermediate!11460 true lt!632605 #b00000000000000000000000000000000))))

(declare-fun b!1439005 () Bool)

(declare-fun lt!632665 () SeekEntryResult!11460)

(assert (=> b!1439005 (and (bvsge (index!48233 lt!632665) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632665) (size!47736 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)))))))

(declare-fun e!811710 () Bool)

(assert (=> b!1439005 (= e!811710 (= (select (arr!47185 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862))) (index!48233 lt!632665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1439006 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439006 (= e!811706 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!632605 #b00000000000000000000000000000000 mask!2687) (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)) mask!2687))))

(declare-fun b!1439007 () Bool)

(declare-fun e!811707 () Bool)

(assert (=> b!1439007 (= e!811707 (bvsge (x!129970 lt!632665) #b01111111111111111111111111111110))))

(declare-fun b!1439008 () Bool)

(assert (=> b!1439008 (and (bvsge (index!48233 lt!632665) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632665) (size!47736 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)))))))

(declare-fun res!971586 () Bool)

(assert (=> b!1439008 (= res!971586 (= (select (arr!47185 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862))) (index!48233 lt!632665)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1439008 (=> res!971586 e!811710)))

(declare-fun b!1439009 () Bool)

(assert (=> b!1439009 (= e!811709 e!811706)))

(declare-fun lt!632664 () (_ BitVec 64))

(declare-fun c!133223 () Bool)

(assert (=> b!1439009 (= c!133223 (or (= lt!632664 (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)) (= (bvadd lt!632664 lt!632664) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439010 () Bool)

(assert (=> b!1439010 (and (bvsge (index!48233 lt!632665) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632665) (size!47736 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)))))))

(declare-fun res!971588 () Bool)

(assert (=> b!1439010 (= res!971588 (= (select (arr!47185 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862))) (index!48233 lt!632665)) (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)))))

(assert (=> b!1439010 (=> res!971588 e!811710)))

(declare-fun e!811708 () Bool)

(assert (=> b!1439010 (= e!811708 e!811710)))

(declare-fun d!154795 () Bool)

(assert (=> d!154795 e!811707))

(declare-fun c!133221 () Bool)

(assert (=> d!154795 (= c!133221 (and (is-Intermediate!11460 lt!632665) (undefined!12272 lt!632665)))))

(assert (=> d!154795 (= lt!632665 e!811709)))

(declare-fun c!133222 () Bool)

(assert (=> d!154795 (= c!133222 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154795 (= lt!632664 (select (arr!47185 (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862))) lt!632605))))

(assert (=> d!154795 (validMask!0 mask!2687)))

(assert (=> d!154795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632605 (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97801 (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47736 a!2862)) mask!2687) lt!632665)))

(declare-fun b!1439011 () Bool)

(assert (=> b!1439011 (= e!811707 e!811708)))

(declare-fun res!971587 () Bool)

(assert (=> b!1439011 (= res!971587 (and (is-Intermediate!11460 lt!632665) (not (undefined!12272 lt!632665)) (bvslt (x!129970 lt!632665) #b01111111111111111111111111111110) (bvsge (x!129970 lt!632665) #b00000000000000000000000000000000) (bvsge (x!129970 lt!632665) #b00000000000000000000000000000000)))))

(assert (=> b!1439011 (=> (not res!971587) (not e!811708))))

(assert (= (and d!154795 c!133222) b!1439004))

(assert (= (and d!154795 (not c!133222)) b!1439009))

(assert (= (and b!1439009 c!133223) b!1439003))

(assert (= (and b!1439009 (not c!133223)) b!1439006))

(assert (= (and d!154795 c!133221) b!1439007))

(assert (= (and d!154795 (not c!133221)) b!1439011))

(assert (= (and b!1439011 res!971587) b!1439010))

(assert (= (and b!1439010 (not res!971588)) b!1439008))

(assert (= (and b!1439008 (not res!971586)) b!1439005))

(declare-fun m!1328151 () Bool)

(assert (=> b!1439010 m!1328151))

(declare-fun m!1328153 () Bool)

(assert (=> d!154795 m!1328153))

(assert (=> d!154795 m!1328007))

(declare-fun m!1328155 () Bool)

(assert (=> b!1439006 m!1328155))

(assert (=> b!1439006 m!1328155))

(assert (=> b!1439006 m!1328019))

(declare-fun m!1328157 () Bool)

(assert (=> b!1439006 m!1328157))

(assert (=> b!1439008 m!1328151))

(assert (=> b!1439005 m!1328151))

(assert (=> b!1438812 d!154795))

(declare-fun d!154807 () Bool)

(declare-fun lt!632677 () (_ BitVec 32))

(declare-fun lt!632676 () (_ BitVec 32))

(assert (=> d!154807 (= lt!632677 (bvmul (bvxor lt!632676 (bvlshr lt!632676 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154807 (= lt!632676 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154807 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971589 (let ((h!35214 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129978 (bvmul (bvxor h!35214 (bvlshr h!35214 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129978 (bvlshr x!129978 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971589 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971589 #b00000000000000000000000000000000))))))

(assert (=> d!154807 (= (toIndex!0 (select (store (arr!47185 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632677 (bvlshr lt!632677 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438812 d!154807))

(declare-fun b!1439022 () Bool)

(declare-fun e!811720 () Bool)

(declare-fun e!811721 () Bool)

(assert (=> b!1439022 (= e!811720 e!811721)))

(declare-fun c!133226 () Bool)

(assert (=> b!1439022 (= c!133226 (validKeyInArray!0 (select (arr!47185 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154813 () Bool)

(declare-fun res!971598 () Bool)

(declare-fun e!811722 () Bool)

(assert (=> d!154813 (=> res!971598 e!811722)))

(assert (=> d!154813 (= res!971598 (bvsge #b00000000000000000000000000000000 (size!47736 a!2862)))))

(assert (=> d!154813 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33863) e!811722)))

(declare-fun b!1439023 () Bool)

(declare-fun call!67689 () Bool)

(assert (=> b!1439023 (= e!811721 call!67689)))

(declare-fun bm!67686 () Bool)

(assert (=> bm!67686 (= call!67689 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133226 (Cons!33862 (select (arr!47185 a!2862) #b00000000000000000000000000000000) Nil!33863) Nil!33863)))))

(declare-fun b!1439024 () Bool)

(assert (=> b!1439024 (= e!811722 e!811720)))

(declare-fun res!971596 () Bool)

(assert (=> b!1439024 (=> (not res!971596) (not e!811720))))

(declare-fun e!811719 () Bool)

(assert (=> b!1439024 (= res!971596 (not e!811719))))

(declare-fun res!971597 () Bool)

(assert (=> b!1439024 (=> (not res!971597) (not e!811719))))

(assert (=> b!1439024 (= res!971597 (validKeyInArray!0 (select (arr!47185 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1439025 () Bool)

(declare-fun contains!9906 (List!33866 (_ BitVec 64)) Bool)

(assert (=> b!1439025 (= e!811719 (contains!9906 Nil!33863 (select (arr!47185 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1439026 () Bool)

(assert (=> b!1439026 (= e!811721 call!67689)))

(assert (= (and d!154813 (not res!971598)) b!1439024))

(assert (= (and b!1439024 res!971597) b!1439025))

(assert (= (and b!1439024 res!971596) b!1439022))

(assert (= (and b!1439022 c!133226) b!1439023))

(assert (= (and b!1439022 (not c!133226)) b!1439026))

(assert (= (or b!1439023 b!1439026) bm!67686))

(assert (=> b!1439022 m!1328117))

(assert (=> b!1439022 m!1328117))

(assert (=> b!1439022 m!1328125))

(assert (=> bm!67686 m!1328117))

(declare-fun m!1328159 () Bool)

(assert (=> bm!67686 m!1328159))

(assert (=> b!1439024 m!1328117))

(assert (=> b!1439024 m!1328117))

(assert (=> b!1439024 m!1328125))

(assert (=> b!1439025 m!1328117))

(assert (=> b!1439025 m!1328117))

(declare-fun m!1328161 () Bool)

(assert (=> b!1439025 m!1328161))

(assert (=> b!1438806 d!154813))

(declare-fun d!154819 () Bool)

(assert (=> d!154819 (= (validKeyInArray!0 (select (arr!47185 a!2862) i!1006)) (and (not (= (select (arr!47185 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47185 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438811 d!154819))

(declare-fun b!1439027 () Bool)

(declare-fun e!811723 () SeekEntryResult!11460)

(assert (=> b!1439027 (= e!811723 (Intermediate!11460 false (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun e!811726 () SeekEntryResult!11460)

(declare-fun b!1439028 () Bool)

(assert (=> b!1439028 (= e!811726 (Intermediate!11460 true (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1439029 () Bool)

(declare-fun lt!632679 () SeekEntryResult!11460)

(assert (=> b!1439029 (and (bvsge (index!48233 lt!632679) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632679) (size!47736 a!2862)))))

(declare-fun e!811727 () Bool)

(assert (=> b!1439029 (= e!811727 (= (select (arr!47185 a!2862) (index!48233 lt!632679)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1439030 () Bool)

(assert (=> b!1439030 (= e!811723 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47185 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1439031 () Bool)

(declare-fun e!811724 () Bool)

(assert (=> b!1439031 (= e!811724 (bvsge (x!129970 lt!632679) #b01111111111111111111111111111110))))

(declare-fun b!1439032 () Bool)

(assert (=> b!1439032 (and (bvsge (index!48233 lt!632679) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632679) (size!47736 a!2862)))))

(declare-fun res!971599 () Bool)

(assert (=> b!1439032 (= res!971599 (= (select (arr!47185 a!2862) (index!48233 lt!632679)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1439032 (=> res!971599 e!811727)))

(declare-fun b!1439033 () Bool)

(assert (=> b!1439033 (= e!811726 e!811723)))

(declare-fun c!133229 () Bool)

(declare-fun lt!632678 () (_ BitVec 64))

(assert (=> b!1439033 (= c!133229 (or (= lt!632678 (select (arr!47185 a!2862) j!93)) (= (bvadd lt!632678 lt!632678) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439034 () Bool)

(assert (=> b!1439034 (and (bvsge (index!48233 lt!632679) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632679) (size!47736 a!2862)))))

(declare-fun res!971601 () Bool)

(assert (=> b!1439034 (= res!971601 (= (select (arr!47185 a!2862) (index!48233 lt!632679)) (select (arr!47185 a!2862) j!93)))))

(assert (=> b!1439034 (=> res!971601 e!811727)))

(declare-fun e!811725 () Bool)

(assert (=> b!1439034 (= e!811725 e!811727)))

(declare-fun d!154821 () Bool)

(assert (=> d!154821 e!811724))

(declare-fun c!133227 () Bool)

(assert (=> d!154821 (= c!133227 (and (is-Intermediate!11460 lt!632679) (undefined!12272 lt!632679)))))

(assert (=> d!154821 (= lt!632679 e!811726)))

(declare-fun c!133228 () Bool)

(assert (=> d!154821 (= c!133228 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154821 (= lt!632678 (select (arr!47185 a!2862) (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687)))))

(assert (=> d!154821 (validMask!0 mask!2687)))

(assert (=> d!154821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) (select (arr!47185 a!2862) j!93) a!2862 mask!2687) lt!632679)))

(declare-fun b!1439035 () Bool)

(assert (=> b!1439035 (= e!811724 e!811725)))

(declare-fun res!971600 () Bool)

(assert (=> b!1439035 (= res!971600 (and (is-Intermediate!11460 lt!632679) (not (undefined!12272 lt!632679)) (bvslt (x!129970 lt!632679) #b01111111111111111111111111111110) (bvsge (x!129970 lt!632679) #b00000000000000000000000000000000) (bvsge (x!129970 lt!632679) #b00000000000000000000000000000000)))))

(assert (=> b!1439035 (=> (not res!971600) (not e!811725))))

(assert (= (and d!154821 c!133228) b!1439028))

(assert (= (and d!154821 (not c!133228)) b!1439033))

(assert (= (and b!1439033 c!133229) b!1439027))

(assert (= (and b!1439033 (not c!133229)) b!1439030))

(assert (= (and d!154821 c!133227) b!1439031))

(assert (= (and d!154821 (not c!133227)) b!1439035))

(assert (= (and b!1439035 res!971600) b!1439034))

(assert (= (and b!1439034 (not res!971601)) b!1439032))

(assert (= (and b!1439032 (not res!971599)) b!1439029))

(declare-fun m!1328163 () Bool)

(assert (=> b!1439034 m!1328163))

(assert (=> d!154821 m!1328011))

(declare-fun m!1328165 () Bool)

(assert (=> d!154821 m!1328165))

(assert (=> d!154821 m!1328007))

(assert (=> b!1439030 m!1328011))

(declare-fun m!1328167 () Bool)

(assert (=> b!1439030 m!1328167))

(assert (=> b!1439030 m!1328167))

(assert (=> b!1439030 m!1327995))

(declare-fun m!1328169 () Bool)

(assert (=> b!1439030 m!1328169))

(assert (=> b!1439032 m!1328163))

(assert (=> b!1439029 m!1328163))

(assert (=> b!1438810 d!154821))

(declare-fun d!154823 () Bool)

(declare-fun lt!632681 () (_ BitVec 32))

(declare-fun lt!632680 () (_ BitVec 32))

(assert (=> d!154823 (= lt!632681 (bvmul (bvxor lt!632680 (bvlshr lt!632680 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154823 (= lt!632680 ((_ extract 31 0) (bvand (bvxor (select (arr!47185 a!2862) j!93) (bvlshr (select (arr!47185 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154823 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971589 (let ((h!35214 ((_ extract 31 0) (bvand (bvxor (select (arr!47185 a!2862) j!93) (bvlshr (select (arr!47185 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129978 (bvmul (bvxor h!35214 (bvlshr h!35214 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129978 (bvlshr x!129978 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971589 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971589 #b00000000000000000000000000000000))))))

(assert (=> d!154823 (= (toIndex!0 (select (arr!47185 a!2862) j!93) mask!2687) (bvand (bvxor lt!632681 (bvlshr lt!632681 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438810 d!154823))

(declare-fun d!154825 () Bool)

(assert (=> d!154825 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124396 d!154825))

(declare-fun d!154835 () Bool)

(assert (=> d!154835 (= (array_inv!36130 a!2862) (bvsge (size!47736 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124396 d!154835))

(declare-fun b!1439066 () Bool)

(declare-fun e!811747 () SeekEntryResult!11460)

(assert (=> b!1439066 (= e!811747 (Intermediate!11460 false index!646 x!665))))

(declare-fun b!1439067 () Bool)

(declare-fun e!811750 () SeekEntryResult!11460)

(assert (=> b!1439067 (= e!811750 (Intermediate!11460 true index!646 x!665))))

(declare-fun b!1439068 () Bool)

(declare-fun lt!632698 () SeekEntryResult!11460)

(assert (=> b!1439068 (and (bvsge (index!48233 lt!632698) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632698) (size!47736 a!2862)))))

(declare-fun e!811751 () Bool)

(assert (=> b!1439068 (= e!811751 (= (select (arr!47185 a!2862) (index!48233 lt!632698)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1439069 () Bool)

(assert (=> b!1439069 (= e!811747 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47185 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1439070 () Bool)

(declare-fun e!811748 () Bool)

(assert (=> b!1439070 (= e!811748 (bvsge (x!129970 lt!632698) #b01111111111111111111111111111110))))

(declare-fun b!1439071 () Bool)

(assert (=> b!1439071 (and (bvsge (index!48233 lt!632698) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632698) (size!47736 a!2862)))))

(declare-fun res!971614 () Bool)

(assert (=> b!1439071 (= res!971614 (= (select (arr!47185 a!2862) (index!48233 lt!632698)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1439071 (=> res!971614 e!811751)))

(declare-fun b!1439072 () Bool)

(assert (=> b!1439072 (= e!811750 e!811747)))

(declare-fun lt!632697 () (_ BitVec 64))

(declare-fun c!133241 () Bool)

(assert (=> b!1439072 (= c!133241 (or (= lt!632697 (select (arr!47185 a!2862) j!93)) (= (bvadd lt!632697 lt!632697) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439073 () Bool)

(assert (=> b!1439073 (and (bvsge (index!48233 lt!632698) #b00000000000000000000000000000000) (bvslt (index!48233 lt!632698) (size!47736 a!2862)))))

(declare-fun res!971616 () Bool)

(assert (=> b!1439073 (= res!971616 (= (select (arr!47185 a!2862) (index!48233 lt!632698)) (select (arr!47185 a!2862) j!93)))))

(assert (=> b!1439073 (=> res!971616 e!811751)))

(declare-fun e!811749 () Bool)

(assert (=> b!1439073 (= e!811749 e!811751)))

(declare-fun d!154837 () Bool)

(assert (=> d!154837 e!811748))

(declare-fun c!133239 () Bool)

(assert (=> d!154837 (= c!133239 (and (is-Intermediate!11460 lt!632698) (undefined!12272 lt!632698)))))

(assert (=> d!154837 (= lt!632698 e!811750)))

(declare-fun c!133240 () Bool)

(assert (=> d!154837 (= c!133240 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!154837 (= lt!632697 (select (arr!47185 a!2862) index!646))))

(assert (=> d!154837 (validMask!0 mask!2687)))

(assert (=> d!154837 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47185 a!2862) j!93) a!2862 mask!2687) lt!632698)))

(declare-fun b!1439074 () Bool)

(assert (=> b!1439074 (= e!811748 e!811749)))

(declare-fun res!971615 () Bool)

(assert (=> b!1439074 (= res!971615 (and (is-Intermediate!11460 lt!632698) (not (undefined!12272 lt!632698)) (bvslt (x!129970 lt!632698) #b01111111111111111111111111111110) (bvsge (x!129970 lt!632698) #b00000000000000000000000000000000) (bvsge (x!129970 lt!632698) x!665)))))

(assert (=> b!1439074 (=> (not res!971615) (not e!811749))))

(assert (= (and d!154837 c!133240) b!1439067))

(assert (= (and d!154837 (not c!133240)) b!1439072))

(assert (= (and b!1439072 c!133241) b!1439066))

(assert (= (and b!1439072 (not c!133241)) b!1439069))

(assert (= (and d!154837 c!133239) b!1439070))

(assert (= (and d!154837 (not c!133239)) b!1439074))

(assert (= (and b!1439074 res!971615) b!1439073))

(assert (= (and b!1439073 (not res!971616)) b!1439071))

(assert (= (and b!1439071 (not res!971614)) b!1439068))

(declare-fun m!1328199 () Bool)

(assert (=> b!1439073 m!1328199))

(declare-fun m!1328201 () Bool)

(assert (=> d!154837 m!1328201))

(assert (=> d!154837 m!1328007))

(declare-fun m!1328203 () Bool)

(assert (=> b!1439069 m!1328203))

(assert (=> b!1439069 m!1328203))

(assert (=> b!1439069 m!1327995))

(declare-fun m!1328205 () Bool)

(assert (=> b!1439069 m!1328205))

(assert (=> b!1439071 m!1328199))

(assert (=> b!1439068 m!1328199))

(assert (=> b!1438809 d!154837))

(declare-fun d!154839 () Bool)

(assert (=> d!154839 (= (validKeyInArray!0 (select (arr!47185 a!2862) j!93)) (and (not (= (select (arr!47185 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47185 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438808 d!154839))

(push 1)

(assert (not bm!67683))

(assert (not d!154821))

(assert (not b!1439030))

(assert (not bm!67686))

(assert (not b!1439024))

(assert (not d!154837))

(assert (not b!1438938))

(assert (not b!1438939))

(assert (not b!1439069))

(assert (not b!1439006))

(assert (not b!1439025))

(assert (not d!154795))

(assert (not b!1439022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

