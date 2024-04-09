; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124102 () Bool)

(assert start!124102)

(declare-fun res!969478 () Bool)

(declare-fun e!810625 () Bool)

(assert (=> start!124102 (=> (not res!969478) (not e!810625))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124102 (= res!969478 (validMask!0 mask!2687))))

(assert (=> start!124102 e!810625))

(assert (=> start!124102 true))

(declare-datatypes ((array!97656 0))(
  ( (array!97657 (arr!47119 (Array (_ BitVec 32) (_ BitVec 64))) (size!47670 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97656)

(declare-fun array_inv!36064 (array!97656) Bool)

(assert (=> start!124102 (array_inv!36064 a!2862)))

(declare-fun b!1436449 () Bool)

(declare-fun res!969476 () Bool)

(assert (=> b!1436449 (=> (not res!969476) (not e!810625))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436449 (= res!969476 (validKeyInArray!0 (select (arr!47119 a!2862) i!1006)))))

(declare-fun b!1436450 () Bool)

(declare-fun lt!632080 () (_ BitVec 32))

(assert (=> b!1436450 (= e!810625 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632080 #b00000000000000000000000000000000) (bvsge lt!632080 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436450 (= lt!632080 (toIndex!0 (select (arr!47119 a!2862) j!93) mask!2687))))

(declare-fun b!1436451 () Bool)

(declare-fun res!969479 () Bool)

(assert (=> b!1436451 (=> (not res!969479) (not e!810625))))

(assert (=> b!1436451 (= res!969479 (and (= (size!47670 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47670 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47670 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436452 () Bool)

(declare-fun res!969475 () Bool)

(assert (=> b!1436452 (=> (not res!969475) (not e!810625))))

(declare-datatypes ((List!33800 0))(
  ( (Nil!33797) (Cons!33796 (h!35131 (_ BitVec 64)) (t!48501 List!33800)) )
))
(declare-fun arrayNoDuplicates!0 (array!97656 (_ BitVec 32) List!33800) Bool)

(assert (=> b!1436452 (= res!969475 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33797))))

(declare-fun b!1436453 () Bool)

(declare-fun res!969474 () Bool)

(assert (=> b!1436453 (=> (not res!969474) (not e!810625))))

(assert (=> b!1436453 (= res!969474 (validKeyInArray!0 (select (arr!47119 a!2862) j!93)))))

(declare-fun b!1436454 () Bool)

(declare-fun res!969480 () Bool)

(assert (=> b!1436454 (=> (not res!969480) (not e!810625))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436454 (= res!969480 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47670 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47670 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47670 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47119 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436455 () Bool)

(declare-fun res!969477 () Bool)

(assert (=> b!1436455 (=> (not res!969477) (not e!810625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97656 (_ BitVec 32)) Bool)

(assert (=> b!1436455 (= res!969477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124102 res!969478) b!1436451))

(assert (= (and b!1436451 res!969479) b!1436449))

(assert (= (and b!1436449 res!969476) b!1436453))

(assert (= (and b!1436453 res!969474) b!1436455))

(assert (= (and b!1436455 res!969477) b!1436452))

(assert (= (and b!1436452 res!969475) b!1436454))

(assert (= (and b!1436454 res!969480) b!1436450))

(declare-fun m!1325823 () Bool)

(assert (=> b!1436449 m!1325823))

(assert (=> b!1436449 m!1325823))

(declare-fun m!1325825 () Bool)

(assert (=> b!1436449 m!1325825))

(declare-fun m!1325827 () Bool)

(assert (=> b!1436455 m!1325827))

(declare-fun m!1325829 () Bool)

(assert (=> b!1436450 m!1325829))

(assert (=> b!1436450 m!1325829))

(declare-fun m!1325831 () Bool)

(assert (=> b!1436450 m!1325831))

(assert (=> b!1436453 m!1325829))

(assert (=> b!1436453 m!1325829))

(declare-fun m!1325833 () Bool)

(assert (=> b!1436453 m!1325833))

(declare-fun m!1325835 () Bool)

(assert (=> b!1436454 m!1325835))

(declare-fun m!1325837 () Bool)

(assert (=> b!1436454 m!1325837))

(declare-fun m!1325839 () Bool)

(assert (=> start!124102 m!1325839))

(declare-fun m!1325841 () Bool)

(assert (=> start!124102 m!1325841))

(declare-fun m!1325843 () Bool)

(assert (=> b!1436452 m!1325843))

(push 1)

(assert (not b!1436452))

(assert (not b!1436455))

(assert (not start!124102))

(assert (not b!1436450))

(assert (not b!1436449))

(assert (not b!1436453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154517 () Bool)

(assert (=> d!154517 (= (validKeyInArray!0 (select (arr!47119 a!2862) i!1006)) (and (not (= (select (arr!47119 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47119 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436449 d!154517))

(declare-fun b!1436525 () Bool)

(declare-fun e!810661 () Bool)

(declare-fun call!67611 () Bool)

(assert (=> b!1436525 (= e!810661 call!67611)))

(declare-fun bm!67608 () Bool)

(assert (=> bm!67608 (= call!67611 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1436526 () Bool)

(declare-fun e!810660 () Bool)

(assert (=> b!1436526 (= e!810660 call!67611)))

(declare-fun b!1436528 () Bool)

(declare-fun e!810659 () Bool)

(assert (=> b!1436528 (= e!810659 e!810661)))

(declare-fun c!132998 () Bool)

(assert (=> b!1436528 (= c!132998 (validKeyInArray!0 (select (arr!47119 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154519 () Bool)

(declare-fun res!969538 () Bool)

(assert (=> d!154519 (=> res!969538 e!810659)))

(assert (=> d!154519 (= res!969538 (bvsge #b00000000000000000000000000000000 (size!47670 a!2862)))))

(assert (=> d!154519 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810659)))

(declare-fun b!1436527 () Bool)

(assert (=> b!1436527 (= e!810661 e!810660)))

(declare-fun lt!632094 () (_ BitVec 64))

(assert (=> b!1436527 (= lt!632094 (select (arr!47119 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48498 0))(
  ( (Unit!48499) )
))
(declare-fun lt!632093 () Unit!48498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97656 (_ BitVec 64) (_ BitVec 32)) Unit!48498)

(assert (=> b!1436527 (= lt!632093 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632094 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436527 (arrayContainsKey!0 a!2862 lt!632094 #b00000000000000000000000000000000)))

(declare-fun lt!632095 () Unit!48498)

(assert (=> b!1436527 (= lt!632095 lt!632093)))

(declare-fun res!969539 () Bool)

(declare-datatypes ((SeekEntryResult!11402 0))(
  ( (MissingZero!11402 (index!47999 (_ BitVec 32))) (Found!11402 (index!48000 (_ BitVec 32))) (Intermediate!11402 (undefined!12214 Bool) (index!48001 (_ BitVec 32)) (x!129718 (_ BitVec 32))) (Undefined!11402) (MissingVacant!11402 (index!48002 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97656 (_ BitVec 32)) SeekEntryResult!11402)

(assert (=> b!1436527 (= res!969539 (= (seekEntryOrOpen!0 (select (arr!47119 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11402 #b00000000000000000000000000000000)))))

(assert (=> b!1436527 (=> (not res!969539) (not e!810660))))

(assert (= (and d!154519 (not res!969538)) b!1436528))

(assert (= (and b!1436528 c!132998) b!1436527))

(assert (= (and b!1436528 (not c!132998)) b!1436525))

(assert (= (and b!1436527 res!969539) b!1436526))

(assert (= (or b!1436526 b!1436525) bm!67608))

(declare-fun m!1325897 () Bool)

(assert (=> bm!67608 m!1325897))

(declare-fun m!1325899 () Bool)

(assert (=> b!1436528 m!1325899))

(assert (=> b!1436528 m!1325899))

(declare-fun m!1325901 () Bool)

(assert (=> b!1436528 m!1325901))

(assert (=> b!1436527 m!1325899))

(declare-fun m!1325903 () Bool)

(assert (=> b!1436527 m!1325903))

(declare-fun m!1325905 () Bool)

(assert (=> b!1436527 m!1325905))

(assert (=> b!1436527 m!1325899))

(declare-fun m!1325907 () Bool)

(assert (=> b!1436527 m!1325907))

(assert (=> b!1436455 d!154519))

(declare-fun d!154527 () Bool)

(declare-fun lt!632116 () (_ BitVec 32))

(declare-fun lt!632115 () (_ BitVec 32))

(assert (=> d!154527 (= lt!632116 (bvmul (bvxor lt!632115 (bvlshr lt!632115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154527 (= lt!632115 ((_ extract 31 0) (bvand (bvxor (select (arr!47119 a!2862) j!93) (bvlshr (select (arr!47119 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154527 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!969542 (let ((h!35134 ((_ extract 31 0) (bvand (bvxor (select (arr!47119 a!2862) j!93) (bvlshr (select (arr!47119 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129713 (bvmul (bvxor h!35134 (bvlshr h!35134 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129713 (bvlshr x!129713 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!969542 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!969542 #b00000000000000000000000000000000))))))

(assert (=> d!154527 (= (toIndex!0 (select (arr!47119 a!2862) j!93) mask!2687) (bvand (bvxor lt!632116 (bvlshr lt!632116 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1436450 d!154527))

(declare-fun d!154531 () Bool)

(assert (=> d!154531 (= (validKeyInArray!0 (select (arr!47119 a!2862) j!93)) (and (not (= (select (arr!47119 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47119 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436453 d!154531))

(declare-fun b!1436559 () Bool)

(declare-fun e!810689 () Bool)

(declare-fun e!810687 () Bool)

(assert (=> b!1436559 (= e!810689 e!810687)))

(declare-fun c!133007 () Bool)

(assert (=> b!1436559 (= c!133007 (validKeyInArray!0 (select (arr!47119 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436560 () Bool)

(declare-fun e!810686 () Bool)

(assert (=> b!1436560 (= e!810686 e!810689)))

(declare-fun res!969560 () Bool)

(assert (=> b!1436560 (=> (not res!969560) (not e!810689))))

(declare-fun e!810688 () Bool)

(assert (=> b!1436560 (= res!969560 (not e!810688))))

(declare-fun res!969559 () Bool)

(assert (=> b!1436560 (=> (not res!969559) (not e!810688))))

(assert (=> b!1436560 (= res!969559 (validKeyInArray!0 (select (arr!47119 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67617 () Bool)

(declare-fun call!67620 () Bool)

(assert (=> bm!67617 (= call!67620 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133007 (Cons!33796 (select (arr!47119 a!2862) #b00000000000000000000000000000000) Nil!33797) Nil!33797)))))

(declare-fun b!1436562 () Bool)

(assert (=> b!1436562 (= e!810687 call!67620)))

(declare-fun b!1436563 () Bool)

(assert (=> b!1436563 (= e!810687 call!67620)))

(declare-fun d!154533 () Bool)

(declare-fun res!969558 () Bool)

(assert (=> d!154533 (=> res!969558 e!810686)))

(assert (=> d!154533 (= res!969558 (bvsge #b00000000000000000000000000000000 (size!47670 a!2862)))))

(assert (=> d!154533 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33797) e!810686)))

(declare-fun b!1436561 () Bool)

(declare-fun contains!9896 (List!33800 (_ BitVec 64)) Bool)

(assert (=> b!1436561 (= e!810688 (contains!9896 Nil!33797 (select (arr!47119 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154533 (not res!969558)) b!1436560))

(assert (= (and b!1436560 res!969559) b!1436561))

(assert (= (and b!1436560 res!969560) b!1436559))

(assert (= (and b!1436559 c!133007) b!1436563))

(assert (= (and b!1436559 (not c!133007)) b!1436562))

(assert (= (or b!1436563 b!1436562) bm!67617))

(assert (=> b!1436559 m!1325899))

(assert (=> b!1436559 m!1325899))

(assert (=> b!1436559 m!1325901))

(assert (=> b!1436560 m!1325899))

(assert (=> b!1436560 m!1325899))

(assert (=> b!1436560 m!1325901))

(assert (=> bm!67617 m!1325899))

(declare-fun m!1325929 () Bool)

(assert (=> bm!67617 m!1325929))

(assert (=> b!1436561 m!1325899))

(assert (=> b!1436561 m!1325899))

(declare-fun m!1325931 () Bool)

(assert (=> b!1436561 m!1325931))

(assert (=> b!1436452 d!154533))

(declare-fun d!154537 () Bool)

(assert (=> d!154537 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124102 d!154537))

(declare-fun d!154547 () Bool)

(assert (=> d!154547 (= (array_inv!36064 a!2862) (bvsge (size!47670 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124102 d!154547))

(push 1)

(assert (not b!1436527))

(assert (not b!1436561))

(assert (not b!1436560))

(assert (not b!1436528))

(assert (not bm!67608))

(assert (not b!1436559))

(assert (not bm!67617))

(check-sat)

