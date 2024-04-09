; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124106 () Bool)

(assert start!124106)

(declare-fun res!969522 () Bool)

(declare-fun e!810637 () Bool)

(assert (=> start!124106 (=> (not res!969522) (not e!810637))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124106 (= res!969522 (validMask!0 mask!2687))))

(assert (=> start!124106 e!810637))

(assert (=> start!124106 true))

(declare-datatypes ((array!97660 0))(
  ( (array!97661 (arr!47121 (Array (_ BitVec 32) (_ BitVec 64))) (size!47672 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97660)

(declare-fun array_inv!36066 (array!97660) Bool)

(assert (=> start!124106 (array_inv!36066 a!2862)))

(declare-fun b!1436491 () Bool)

(declare-fun lt!632086 () (_ BitVec 32))

(assert (=> b!1436491 (= e!810637 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632086 #b00000000000000000000000000000000) (bvsge lt!632086 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436491 (= lt!632086 (toIndex!0 (select (arr!47121 a!2862) j!93) mask!2687))))

(declare-fun b!1436492 () Bool)

(declare-fun res!969519 () Bool)

(assert (=> b!1436492 (=> (not res!969519) (not e!810637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436492 (= res!969519 (validKeyInArray!0 (select (arr!47121 a!2862) j!93)))))

(declare-fun b!1436493 () Bool)

(declare-fun res!969518 () Bool)

(assert (=> b!1436493 (=> (not res!969518) (not e!810637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97660 (_ BitVec 32)) Bool)

(assert (=> b!1436493 (= res!969518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436494 () Bool)

(declare-fun res!969517 () Bool)

(assert (=> b!1436494 (=> (not res!969517) (not e!810637))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436494 (= res!969517 (and (= (size!47672 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47672 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47672 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436495 () Bool)

(declare-fun res!969520 () Bool)

(assert (=> b!1436495 (=> (not res!969520) (not e!810637))))

(assert (=> b!1436495 (= res!969520 (validKeyInArray!0 (select (arr!47121 a!2862) i!1006)))))

(declare-fun b!1436496 () Bool)

(declare-fun res!969516 () Bool)

(assert (=> b!1436496 (=> (not res!969516) (not e!810637))))

(declare-datatypes ((List!33802 0))(
  ( (Nil!33799) (Cons!33798 (h!35133 (_ BitVec 64)) (t!48503 List!33802)) )
))
(declare-fun arrayNoDuplicates!0 (array!97660 (_ BitVec 32) List!33802) Bool)

(assert (=> b!1436496 (= res!969516 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33799))))

(declare-fun b!1436497 () Bool)

(declare-fun res!969521 () Bool)

(assert (=> b!1436497 (=> (not res!969521) (not e!810637))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1436497 (= res!969521 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47672 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47672 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47672 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47121 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124106 res!969522) b!1436494))

(assert (= (and b!1436494 res!969517) b!1436495))

(assert (= (and b!1436495 res!969520) b!1436492))

(assert (= (and b!1436492 res!969519) b!1436493))

(assert (= (and b!1436493 res!969518) b!1436496))

(assert (= (and b!1436496 res!969516) b!1436497))

(assert (= (and b!1436497 res!969521) b!1436491))

(declare-fun m!1325867 () Bool)

(assert (=> b!1436493 m!1325867))

(declare-fun m!1325869 () Bool)

(assert (=> b!1436492 m!1325869))

(assert (=> b!1436492 m!1325869))

(declare-fun m!1325871 () Bool)

(assert (=> b!1436492 m!1325871))

(declare-fun m!1325873 () Bool)

(assert (=> b!1436495 m!1325873))

(assert (=> b!1436495 m!1325873))

(declare-fun m!1325875 () Bool)

(assert (=> b!1436495 m!1325875))

(declare-fun m!1325877 () Bool)

(assert (=> start!124106 m!1325877))

(declare-fun m!1325879 () Bool)

(assert (=> start!124106 m!1325879))

(assert (=> b!1436491 m!1325869))

(assert (=> b!1436491 m!1325869))

(declare-fun m!1325881 () Bool)

(assert (=> b!1436491 m!1325881))

(declare-fun m!1325883 () Bool)

(assert (=> b!1436497 m!1325883))

(declare-fun m!1325885 () Bool)

(assert (=> b!1436497 m!1325885))

(declare-fun m!1325887 () Bool)

(assert (=> b!1436496 m!1325887))

(push 1)

(assert (not b!1436493))

(assert (not b!1436491))

(assert (not b!1436495))

(assert (not start!124106))

(assert (not b!1436492))

(assert (not b!1436496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1436533 () Bool)

(declare-fun e!810667 () Bool)

(declare-fun call!67614 () Bool)

(assert (=> b!1436533 (= e!810667 call!67614)))

(declare-fun b!1436534 () Bool)

(declare-fun e!810666 () Bool)

(assert (=> b!1436534 (= e!810666 e!810667)))

(declare-fun lt!632102 () (_ BitVec 64))

(assert (=> b!1436534 (= lt!632102 (select (arr!47121 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48496 0))(
  ( (Unit!48497) )
))
(declare-fun lt!632104 () Unit!48496)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97660 (_ BitVec 64) (_ BitVec 32)) Unit!48496)

(assert (=> b!1436534 (= lt!632104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632102 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436534 (arrayContainsKey!0 a!2862 lt!632102 #b00000000000000000000000000000000)))

(declare-fun lt!632103 () Unit!48496)

(assert (=> b!1436534 (= lt!632103 lt!632104)))

(declare-fun res!969544 () Bool)

(declare-datatypes ((SeekEntryResult!11401 0))(
  ( (MissingZero!11401 (index!47995 (_ BitVec 32))) (Found!11401 (index!47996 (_ BitVec 32))) (Intermediate!11401 (undefined!12213 Bool) (index!47997 (_ BitVec 32)) (x!129717 (_ BitVec 32))) (Undefined!11401) (MissingVacant!11401 (index!47998 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97660 (_ BitVec 32)) SeekEntryResult!11401)

(assert (=> b!1436534 (= res!969544 (= (seekEntryOrOpen!0 (select (arr!47121 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11401 #b00000000000000000000000000000000)))))

(assert (=> b!1436534 (=> (not res!969544) (not e!810667))))

(declare-fun b!1436535 () Bool)

(assert (=> b!1436535 (= e!810666 call!67614)))

(declare-fun b!1436536 () Bool)

(declare-fun e!810668 () Bool)

(assert (=> b!1436536 (= e!810668 e!810666)))

(declare-fun c!133001 () Bool)

(assert (=> b!1436536 (= c!133001 (validKeyInArray!0 (select (arr!47121 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154521 () Bool)

(declare-fun res!969543 () Bool)

(assert (=> d!154521 (=> res!969543 e!810668)))

(assert (=> d!154521 (= res!969543 (bvsge #b00000000000000000000000000000000 (size!47672 a!2862)))))

(assert (=> d!154521 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810668)))

(declare-fun bm!67611 () Bool)

(assert (=> bm!67611 (= call!67614 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!154521 (not res!969543)) b!1436536))

(assert (= (and b!1436536 c!133001) b!1436534))

(assert (= (and b!1436536 (not c!133001)) b!1436535))

(assert (= (and b!1436534 res!969544) b!1436533))

(assert (= (or b!1436533 b!1436535) bm!67611))

(declare-fun m!1325909 () Bool)

(assert (=> b!1436534 m!1325909))

(declare-fun m!1325911 () Bool)

(assert (=> b!1436534 m!1325911))

(declare-fun m!1325913 () Bool)

(assert (=> b!1436534 m!1325913))

(assert (=> b!1436534 m!1325909))

(declare-fun m!1325915 () Bool)

(assert (=> b!1436534 m!1325915))

(assert (=> b!1436536 m!1325909))

(assert (=> b!1436536 m!1325909))

(declare-fun m!1325917 () Bool)

(assert (=> b!1436536 m!1325917))

(declare-fun m!1325919 () Bool)

(assert (=> bm!67611 m!1325919))

(assert (=> b!1436493 d!154521))

(declare-fun d!154529 () Bool)

(assert (=> d!154529 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124106 d!154529))

(declare-fun d!154539 () Bool)

(assert (=> d!154539 (= (array_inv!36066 a!2862) (bvsge (size!47672 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124106 d!154539))

(declare-fun d!154541 () Bool)

(assert (=> d!154541 (= (validKeyInArray!0 (select (arr!47121 a!2862) j!93)) (and (not (= (select (arr!47121 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47121 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436492 d!154541))

(declare-fun b!1436574 () Bool)

(declare-fun e!810699 () Bool)

(declare-fun call!67623 () Bool)

(assert (=> b!1436574 (= e!810699 call!67623)))

(declare-fun b!1436575 () Bool)

(declare-fun e!810701 () Bool)

(declare-fun e!810698 () Bool)

(assert (=> b!1436575 (= e!810701 e!810698)))

(declare-fun res!969568 () Bool)

(assert (=> b!1436575 (=> (not res!969568) (not e!810698))))

(declare-fun e!810700 () Bool)

(assert (=> b!1436575 (= res!969568 (not e!810700))))

(declare-fun res!969569 () Bool)

(assert (=> b!1436575 (=> (not res!969569) (not e!810700))))

(assert (=> b!1436575 (= res!969569 (validKeyInArray!0 (select (arr!47121 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154543 () Bool)

(declare-fun res!969567 () Bool)

(assert (=> d!154543 (=> res!969567 e!810701)))

(assert (=> d!154543 (= res!969567 (bvsge #b00000000000000000000000000000000 (size!47672 a!2862)))))

(assert (=> d!154543 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33799) e!810701)))

(declare-fun bm!67620 () Bool)

(declare-fun c!133010 () Bool)

(assert (=> bm!67620 (= call!67623 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133010 (Cons!33798 (select (arr!47121 a!2862) #b00000000000000000000000000000000) Nil!33799) Nil!33799)))))

(declare-fun b!1436576 () Bool)

(declare-fun contains!9897 (List!33802 (_ BitVec 64)) Bool)

(assert (=> b!1436576 (= e!810700 (contains!9897 Nil!33799 (select (arr!47121 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436577 () Bool)

(assert (=> b!1436577 (= e!810699 call!67623)))

(declare-fun b!1436578 () Bool)

(assert (=> b!1436578 (= e!810698 e!810699)))

(assert (=> b!1436578 (= c!133010 (validKeyInArray!0 (select (arr!47121 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154543 (not res!969567)) b!1436575))

(assert (= (and b!1436575 res!969569) b!1436576))

(assert (= (and b!1436575 res!969568) b!1436578))

(assert (= (and b!1436578 c!133010) b!1436577))

(assert (= (and b!1436578 (not c!133010)) b!1436574))

(assert (= (or b!1436577 b!1436574) bm!67620))

(assert (=> b!1436575 m!1325909))

(assert (=> b!1436575 m!1325909))

(assert (=> b!1436575 m!1325917))

(assert (=> bm!67620 m!1325909))

(declare-fun m!1325933 () Bool)

(assert (=> bm!67620 m!1325933))

(assert (=> b!1436576 m!1325909))

(assert (=> b!1436576 m!1325909))

(declare-fun m!1325935 () Bool)

(assert (=> b!1436576 m!1325935))

(assert (=> b!1436578 m!1325909))

(assert (=> b!1436578 m!1325909))

(assert (=> b!1436578 m!1325917))

(assert (=> b!1436496 d!154543))

(declare-fun d!154545 () Bool)

(declare-fun lt!632131 () (_ BitVec 32))

(declare-fun lt!632130 () (_ BitVec 32))

(assert (=> d!154545 (= lt!632131 (bvmul (bvxor lt!632130 (bvlshr lt!632130 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154545 (= lt!632130 ((_ extract 31 0) (bvand (bvxor (select (arr!47121 a!2862) j!93) (bvlshr (select (arr!47121 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154545 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!969570 (let ((h!35136 ((_ extract 31 0) (bvand (bvxor (select (arr!47121 a!2862) j!93) (bvlshr (select (arr!47121 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129715 (bvmul (bvxor h!35136 (bvlshr h!35136 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129715 (bvlshr x!129715 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!969570 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!969570 #b00000000000000000000000000000000))))))

(assert (=> d!154545 (= (toIndex!0 (select (arr!47121 a!2862) j!93) mask!2687) (bvand (bvxor lt!632131 (bvlshr lt!632131 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1436491 d!154545))

(declare-fun d!154549 () Bool)

(assert (=> d!154549 (= (validKeyInArray!0 (select (arr!47121 a!2862) i!1006)) (and (not (= (select (arr!47121 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47121 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436495 d!154549))

(push 1)

(assert (not b!1436578))

(assert (not bm!67620))

(assert (not bm!67611))

(assert (not b!1436576))

(assert (not b!1436536))

(assert (not b!1436534))

(assert (not b!1436575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

