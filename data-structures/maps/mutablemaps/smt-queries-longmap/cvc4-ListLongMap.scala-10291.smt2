; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121004 () Bool)

(assert start!121004)

(declare-fun b!1407050 () Bool)

(declare-fun e!796397 () Bool)

(declare-fun e!796394 () Bool)

(assert (=> b!1407050 (= e!796397 (not e!796394))))

(declare-fun res!945214 () Bool)

(assert (=> b!1407050 (=> res!945214 e!796394)))

(declare-datatypes ((SeekEntryResult!10764 0))(
  ( (MissingZero!10764 (index!45432 (_ BitVec 32))) (Found!10764 (index!45433 (_ BitVec 32))) (Intermediate!10764 (undefined!11576 Bool) (index!45434 (_ BitVec 32)) (x!127036 (_ BitVec 32))) (Undefined!10764) (MissingVacant!10764 (index!45435 (_ BitVec 32))) )
))
(declare-fun lt!619593 () SeekEntryResult!10764)

(assert (=> b!1407050 (= res!945214 (or (not (is-Intermediate!10764 lt!619593)) (undefined!11576 lt!619593)))))

(declare-fun e!796396 () Bool)

(assert (=> b!1407050 e!796396))

(declare-fun res!945212 () Bool)

(assert (=> b!1407050 (=> (not res!945212) (not e!796396))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96178 0))(
  ( (array!96179 (arr!46431 (Array (_ BitVec 32) (_ BitVec 64))) (size!46982 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96178)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96178 (_ BitVec 32)) Bool)

(assert (=> b!1407050 (= res!945212 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47452 0))(
  ( (Unit!47453) )
))
(declare-fun lt!619592 () Unit!47452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47452)

(assert (=> b!1407050 (= lt!619592 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619594 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96178 (_ BitVec 32)) SeekEntryResult!10764)

(assert (=> b!1407050 (= lt!619593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619594 (select (arr!46431 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407050 (= lt!619594 (toIndex!0 (select (arr!46431 a!2901) j!112) mask!2840))))

(declare-fun b!1407051 () Bool)

(declare-fun res!945213 () Bool)

(assert (=> b!1407051 (=> res!945213 e!796394)))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1407051 (= res!945213 (not (= lt!619593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)) mask!2840))))))

(declare-fun res!945217 () Bool)

(assert (=> start!121004 (=> (not res!945217) (not e!796397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121004 (= res!945217 (validMask!0 mask!2840))))

(assert (=> start!121004 e!796397))

(assert (=> start!121004 true))

(declare-fun array_inv!35376 (array!96178) Bool)

(assert (=> start!121004 (array_inv!35376 a!2901)))

(declare-fun b!1407052 () Bool)

(declare-fun res!945216 () Bool)

(assert (=> b!1407052 (=> (not res!945216) (not e!796397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407052 (= res!945216 (validKeyInArray!0 (select (arr!46431 a!2901) j!112)))))

(declare-fun b!1407053 () Bool)

(assert (=> b!1407053 (= e!796394 (or (bvslt (x!127036 lt!619593) #b00000000000000000000000000000000) (bvsgt (x!127036 lt!619593) #b01111111111111111111111111111110) (and (bvsge lt!619594 #b00000000000000000000000000000000) (bvslt lt!619594 (size!46982 a!2901)))))))

(declare-fun b!1407054 () Bool)

(declare-fun res!945211 () Bool)

(assert (=> b!1407054 (=> (not res!945211) (not e!796397))))

(assert (=> b!1407054 (= res!945211 (validKeyInArray!0 (select (arr!46431 a!2901) i!1037)))))

(declare-fun b!1407055 () Bool)

(declare-fun res!945218 () Bool)

(assert (=> b!1407055 (=> (not res!945218) (not e!796397))))

(declare-datatypes ((List!33130 0))(
  ( (Nil!33127) (Cons!33126 (h!34383 (_ BitVec 64)) (t!47831 List!33130)) )
))
(declare-fun arrayNoDuplicates!0 (array!96178 (_ BitVec 32) List!33130) Bool)

(assert (=> b!1407055 (= res!945218 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33127))))

(declare-fun b!1407056 () Bool)

(declare-fun res!945215 () Bool)

(assert (=> b!1407056 (=> (not res!945215) (not e!796397))))

(assert (=> b!1407056 (= res!945215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407057 () Bool)

(declare-fun res!945219 () Bool)

(assert (=> b!1407057 (=> (not res!945219) (not e!796397))))

(assert (=> b!1407057 (= res!945219 (and (= (size!46982 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46982 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46982 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407058 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96178 (_ BitVec 32)) SeekEntryResult!10764)

(assert (=> b!1407058 (= e!796396 (= (seekEntryOrOpen!0 (select (arr!46431 a!2901) j!112) a!2901 mask!2840) (Found!10764 j!112)))))

(assert (= (and start!121004 res!945217) b!1407057))

(assert (= (and b!1407057 res!945219) b!1407054))

(assert (= (and b!1407054 res!945211) b!1407052))

(assert (= (and b!1407052 res!945216) b!1407056))

(assert (= (and b!1407056 res!945215) b!1407055))

(assert (= (and b!1407055 res!945218) b!1407050))

(assert (= (and b!1407050 res!945212) b!1407058))

(assert (= (and b!1407050 (not res!945214)) b!1407051))

(assert (= (and b!1407051 (not res!945213)) b!1407053))

(declare-fun m!1296307 () Bool)

(assert (=> b!1407056 m!1296307))

(declare-fun m!1296309 () Bool)

(assert (=> b!1407054 m!1296309))

(assert (=> b!1407054 m!1296309))

(declare-fun m!1296311 () Bool)

(assert (=> b!1407054 m!1296311))

(declare-fun m!1296313 () Bool)

(assert (=> b!1407051 m!1296313))

(declare-fun m!1296315 () Bool)

(assert (=> b!1407051 m!1296315))

(assert (=> b!1407051 m!1296315))

(declare-fun m!1296317 () Bool)

(assert (=> b!1407051 m!1296317))

(assert (=> b!1407051 m!1296317))

(assert (=> b!1407051 m!1296315))

(declare-fun m!1296319 () Bool)

(assert (=> b!1407051 m!1296319))

(declare-fun m!1296321 () Bool)

(assert (=> start!121004 m!1296321))

(declare-fun m!1296323 () Bool)

(assert (=> start!121004 m!1296323))

(declare-fun m!1296325 () Bool)

(assert (=> b!1407052 m!1296325))

(assert (=> b!1407052 m!1296325))

(declare-fun m!1296327 () Bool)

(assert (=> b!1407052 m!1296327))

(declare-fun m!1296329 () Bool)

(assert (=> b!1407055 m!1296329))

(assert (=> b!1407058 m!1296325))

(assert (=> b!1407058 m!1296325))

(declare-fun m!1296331 () Bool)

(assert (=> b!1407058 m!1296331))

(assert (=> b!1407050 m!1296325))

(declare-fun m!1296333 () Bool)

(assert (=> b!1407050 m!1296333))

(assert (=> b!1407050 m!1296325))

(declare-fun m!1296335 () Bool)

(assert (=> b!1407050 m!1296335))

(assert (=> b!1407050 m!1296325))

(declare-fun m!1296337 () Bool)

(assert (=> b!1407050 m!1296337))

(declare-fun m!1296339 () Bool)

(assert (=> b!1407050 m!1296339))

(push 1)

(assert (not b!1407050))

(assert (not b!1407055))

(assert (not b!1407056))

(assert (not start!121004))

(assert (not b!1407054))

(assert (not b!1407052))

(assert (not b!1407058))

(assert (not b!1407051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66972 () Bool)

(declare-fun call!66975 () Bool)

(assert (=> bm!66972 (= call!66975 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407102 () Bool)

(declare-fun e!796428 () Bool)

(declare-fun e!796427 () Bool)

(assert (=> b!1407102 (= e!796428 e!796427)))

(declare-fun lt!619611 () (_ BitVec 64))

(assert (=> b!1407102 (= lt!619611 (select (arr!46431 a!2901) j!112))))

(declare-fun lt!619613 () Unit!47452)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96178 (_ BitVec 64) (_ BitVec 32)) Unit!47452)

(assert (=> b!1407102 (= lt!619613 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619611 j!112))))

(declare-fun arrayContainsKey!0 (array!96178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407102 (arrayContainsKey!0 a!2901 lt!619611 #b00000000000000000000000000000000)))

(declare-fun lt!619612 () Unit!47452)

(assert (=> b!1407102 (= lt!619612 lt!619613)))

(declare-fun res!945233 () Bool)

(assert (=> b!1407102 (= res!945233 (= (seekEntryOrOpen!0 (select (arr!46431 a!2901) j!112) a!2901 mask!2840) (Found!10764 j!112)))))

(assert (=> b!1407102 (=> (not res!945233) (not e!796427))))

(declare-fun b!1407103 () Bool)

(assert (=> b!1407103 (= e!796428 call!66975)))

(declare-fun b!1407104 () Bool)

(assert (=> b!1407104 (= e!796427 call!66975)))

(declare-fun b!1407105 () Bool)

(declare-fun e!796426 () Bool)

(assert (=> b!1407105 (= e!796426 e!796428)))

(declare-fun c!130401 () Bool)

(assert (=> b!1407105 (= c!130401 (validKeyInArray!0 (select (arr!46431 a!2901) j!112)))))

(declare-fun d!151451 () Bool)

(declare-fun res!945234 () Bool)

(assert (=> d!151451 (=> res!945234 e!796426)))

(assert (=> d!151451 (= res!945234 (bvsge j!112 (size!46982 a!2901)))))

(assert (=> d!151451 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796426)))

(assert (= (and d!151451 (not res!945234)) b!1407105))

(assert (= (and b!1407105 c!130401) b!1407102))

(assert (= (and b!1407105 (not c!130401)) b!1407103))

(assert (= (and b!1407102 res!945233) b!1407104))

(assert (= (or b!1407104 b!1407103) bm!66972))

(declare-fun m!1296349 () Bool)

(assert (=> bm!66972 m!1296349))

(assert (=> b!1407102 m!1296325))

(declare-fun m!1296351 () Bool)

(assert (=> b!1407102 m!1296351))

(declare-fun m!1296353 () Bool)

(assert (=> b!1407102 m!1296353))

(assert (=> b!1407102 m!1296325))

(assert (=> b!1407102 m!1296331))

(assert (=> b!1407105 m!1296325))

(assert (=> b!1407105 m!1296325))

(assert (=> b!1407105 m!1296327))

(assert (=> b!1407050 d!151451))

(declare-fun d!151453 () Bool)

(assert (=> d!151453 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619621 () Unit!47452)

(declare-fun choose!38 (array!96178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47452)

(assert (=> d!151453 (= lt!619621 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151453 (validMask!0 mask!2840)))

(assert (=> d!151453 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619621)))

(declare-fun bs!41009 () Bool)

(assert (= bs!41009 d!151453))

(assert (=> bs!41009 m!1296339))

(declare-fun m!1296367 () Bool)

(assert (=> bs!41009 m!1296367))

(assert (=> bs!41009 m!1296321))

(assert (=> b!1407050 d!151453))

(declare-fun d!151457 () Bool)

(declare-fun e!796469 () Bool)

(assert (=> d!151457 e!796469))

(declare-fun c!130427 () Bool)

(declare-fun lt!619638 () SeekEntryResult!10764)

(assert (=> d!151457 (= c!130427 (and (is-Intermediate!10764 lt!619638) (undefined!11576 lt!619638)))))

(declare-fun e!796472 () SeekEntryResult!10764)

(assert (=> d!151457 (= lt!619638 e!796472)))

(declare-fun c!130426 () Bool)

(assert (=> d!151457 (= c!130426 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619639 () (_ BitVec 64))

(assert (=> d!151457 (= lt!619639 (select (arr!46431 a!2901) lt!619594))))

(assert (=> d!151457 (validMask!0 mask!2840)))

(assert (=> d!151457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619594 (select (arr!46431 a!2901) j!112) a!2901 mask!2840) lt!619638)))

(declare-fun b!1407176 () Bool)

(assert (=> b!1407176 (= e!796472 (Intermediate!10764 true lt!619594 #b00000000000000000000000000000000))))

(declare-fun b!1407177 () Bool)

(assert (=> b!1407177 (and (bvsge (index!45434 lt!619638) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619638) (size!46982 a!2901)))))

(declare-fun res!945262 () Bool)

(assert (=> b!1407177 (= res!945262 (= (select (arr!46431 a!2901) (index!45434 lt!619638)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796470 () Bool)

(assert (=> b!1407177 (=> res!945262 e!796470)))

(declare-fun b!1407178 () Bool)

(declare-fun e!796468 () Bool)

(assert (=> b!1407178 (= e!796469 e!796468)))

(declare-fun res!945261 () Bool)

(assert (=> b!1407178 (= res!945261 (and (is-Intermediate!10764 lt!619638) (not (undefined!11576 lt!619638)) (bvslt (x!127036 lt!619638) #b01111111111111111111111111111110) (bvsge (x!127036 lt!619638) #b00000000000000000000000000000000) (bvsge (x!127036 lt!619638) #b00000000000000000000000000000000)))))

(assert (=> b!1407178 (=> (not res!945261) (not e!796468))))

(declare-fun b!1407179 () Bool)

(declare-fun e!796471 () SeekEntryResult!10764)

(assert (=> b!1407179 (= e!796471 (Intermediate!10764 false lt!619594 #b00000000000000000000000000000000))))

(declare-fun b!1407180 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407180 (= e!796471 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!619594 #b00000000000000000000000000000000 mask!2840) (select (arr!46431 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407181 () Bool)

(assert (=> b!1407181 (= e!796469 (bvsge (x!127036 lt!619638) #b01111111111111111111111111111110))))

(declare-fun b!1407182 () Bool)

(assert (=> b!1407182 (and (bvsge (index!45434 lt!619638) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619638) (size!46982 a!2901)))))

(declare-fun res!945263 () Bool)

(assert (=> b!1407182 (= res!945263 (= (select (arr!46431 a!2901) (index!45434 lt!619638)) (select (arr!46431 a!2901) j!112)))))

(assert (=> b!1407182 (=> res!945263 e!796470)))

(assert (=> b!1407182 (= e!796468 e!796470)))

(declare-fun b!1407183 () Bool)

(assert (=> b!1407183 (and (bvsge (index!45434 lt!619638) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619638) (size!46982 a!2901)))))

(assert (=> b!1407183 (= e!796470 (= (select (arr!46431 a!2901) (index!45434 lt!619638)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407184 () Bool)

(assert (=> b!1407184 (= e!796472 e!796471)))

(declare-fun c!130425 () Bool)

(assert (=> b!1407184 (= c!130425 (or (= lt!619639 (select (arr!46431 a!2901) j!112)) (= (bvadd lt!619639 lt!619639) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151457 c!130426) b!1407176))

(assert (= (and d!151457 (not c!130426)) b!1407184))

(assert (= (and b!1407184 c!130425) b!1407179))

(assert (= (and b!1407184 (not c!130425)) b!1407180))

(assert (= (and d!151457 c!130427) b!1407181))

(assert (= (and d!151457 (not c!130427)) b!1407178))

(assert (= (and b!1407178 res!945261) b!1407182))

(assert (= (and b!1407182 (not res!945263)) b!1407177))

(assert (= (and b!1407177 (not res!945262)) b!1407183))

(declare-fun m!1296385 () Bool)

(assert (=> b!1407183 m!1296385))

(assert (=> b!1407182 m!1296385))

(declare-fun m!1296387 () Bool)

(assert (=> b!1407180 m!1296387))

(assert (=> b!1407180 m!1296387))

(assert (=> b!1407180 m!1296325))

(declare-fun m!1296389 () Bool)

(assert (=> b!1407180 m!1296389))

(assert (=> b!1407177 m!1296385))

(declare-fun m!1296391 () Bool)

(assert (=> d!151457 m!1296391))

(assert (=> d!151457 m!1296321))

(assert (=> b!1407050 d!151457))

(declare-fun d!151471 () Bool)

(declare-fun lt!619651 () (_ BitVec 32))

(declare-fun lt!619650 () (_ BitVec 32))

(assert (=> d!151471 (= lt!619651 (bvmul (bvxor lt!619650 (bvlshr lt!619650 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151471 (= lt!619650 ((_ extract 31 0) (bvand (bvxor (select (arr!46431 a!2901) j!112) (bvlshr (select (arr!46431 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151471 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945264 (let ((h!34386 ((_ extract 31 0) (bvand (bvxor (select (arr!46431 a!2901) j!112) (bvlshr (select (arr!46431 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127042 (bvmul (bvxor h!34386 (bvlshr h!34386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127042 (bvlshr x!127042 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945264 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945264 #b00000000000000000000000000000000))))))

(assert (=> d!151471 (= (toIndex!0 (select (arr!46431 a!2901) j!112) mask!2840) (bvand (bvxor lt!619651 (bvlshr lt!619651 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407050 d!151471))

(declare-fun b!1407211 () Bool)

(declare-fun e!796495 () Bool)

(declare-fun e!796494 () Bool)

(assert (=> b!1407211 (= e!796495 e!796494)))

(declare-fun c!130435 () Bool)

(assert (=> b!1407211 (= c!130435 (validKeyInArray!0 (select (arr!46431 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151475 () Bool)

(declare-fun res!945278 () Bool)

(declare-fun e!796492 () Bool)

(assert (=> d!151475 (=> res!945278 e!796492)))

(assert (=> d!151475 (= res!945278 (bvsge #b00000000000000000000000000000000 (size!46982 a!2901)))))

(assert (=> d!151475 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33127) e!796492)))

(declare-fun b!1407212 () Bool)

(declare-fun call!66981 () Bool)

(assert (=> b!1407212 (= e!796494 call!66981)))

(declare-fun b!1407213 () Bool)

(assert (=> b!1407213 (= e!796494 call!66981)))

(declare-fun b!1407214 () Bool)

(declare-fun e!796493 () Bool)

(declare-fun contains!9812 (List!33130 (_ BitVec 64)) Bool)

(assert (=> b!1407214 (= e!796493 (contains!9812 Nil!33127 (select (arr!46431 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407215 () Bool)

(assert (=> b!1407215 (= e!796492 e!796495)))

(declare-fun res!945279 () Bool)

(assert (=> b!1407215 (=> (not res!945279) (not e!796495))))

(assert (=> b!1407215 (= res!945279 (not e!796493))))

(declare-fun res!945277 () Bool)

(assert (=> b!1407215 (=> (not res!945277) (not e!796493))))

(assert (=> b!1407215 (= res!945277 (validKeyInArray!0 (select (arr!46431 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66978 () Bool)

(assert (=> bm!66978 (= call!66981 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130435 (Cons!33126 (select (arr!46431 a!2901) #b00000000000000000000000000000000) Nil!33127) Nil!33127)))))

(assert (= (and d!151475 (not res!945278)) b!1407215))

(assert (= (and b!1407215 res!945277) b!1407214))

(assert (= (and b!1407215 res!945279) b!1407211))

(assert (= (and b!1407211 c!130435) b!1407212))

(assert (= (and b!1407211 (not c!130435)) b!1407213))

(assert (= (or b!1407212 b!1407213) bm!66978))

(declare-fun m!1296399 () Bool)

(assert (=> b!1407211 m!1296399))

(assert (=> b!1407211 m!1296399))

(declare-fun m!1296403 () Bool)

(assert (=> b!1407211 m!1296403))

(assert (=> b!1407214 m!1296399))

(assert (=> b!1407214 m!1296399))

(declare-fun m!1296405 () Bool)

(assert (=> b!1407214 m!1296405))

(assert (=> b!1407215 m!1296399))

(assert (=> b!1407215 m!1296399))

(assert (=> b!1407215 m!1296403))

(assert (=> bm!66978 m!1296399))

(declare-fun m!1296407 () Bool)

(assert (=> bm!66978 m!1296407))

(assert (=> b!1407055 d!151475))

(declare-fun d!151479 () Bool)

(declare-fun e!796501 () Bool)

(assert (=> d!151479 e!796501))

(declare-fun c!130442 () Bool)

(declare-fun lt!619667 () SeekEntryResult!10764)

(assert (=> d!151479 (= c!130442 (and (is-Intermediate!10764 lt!619667) (undefined!11576 lt!619667)))))

(declare-fun e!796504 () SeekEntryResult!10764)

(assert (=> d!151479 (= lt!619667 e!796504)))

(declare-fun c!130441 () Bool)

(assert (=> d!151479 (= c!130441 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619668 () (_ BitVec 64))

(assert (=> d!151479 (= lt!619668 (select (arr!46431 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901))) (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151479 (validMask!0 mask!2840)))

(assert (=> d!151479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)) mask!2840) lt!619667)))

(declare-fun b!1407224 () Bool)

(assert (=> b!1407224 (= e!796504 (Intermediate!10764 true (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407225 () Bool)

(assert (=> b!1407225 (and (bvsge (index!45434 lt!619667) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619667) (size!46982 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)))))))

(declare-fun res!945281 () Bool)

(assert (=> b!1407225 (= res!945281 (= (select (arr!46431 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901))) (index!45434 lt!619667)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796502 () Bool)

(assert (=> b!1407225 (=> res!945281 e!796502)))

(declare-fun b!1407226 () Bool)

(declare-fun e!796500 () Bool)

(assert (=> b!1407226 (= e!796501 e!796500)))

(declare-fun res!945280 () Bool)

(assert (=> b!1407226 (= res!945280 (and (is-Intermediate!10764 lt!619667) (not (undefined!11576 lt!619667)) (bvslt (x!127036 lt!619667) #b01111111111111111111111111111110) (bvsge (x!127036 lt!619667) #b00000000000000000000000000000000) (bvsge (x!127036 lt!619667) #b00000000000000000000000000000000)))))

(assert (=> b!1407226 (=> (not res!945280) (not e!796500))))

(declare-fun e!796503 () SeekEntryResult!10764)

(declare-fun b!1407227 () Bool)

(assert (=> b!1407227 (= e!796503 (Intermediate!10764 false (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407228 () Bool)

(assert (=> b!1407228 (= e!796503 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)) mask!2840))))

(declare-fun b!1407229 () Bool)

(assert (=> b!1407229 (= e!796501 (bvsge (x!127036 lt!619667) #b01111111111111111111111111111110))))

(declare-fun b!1407230 () Bool)

(assert (=> b!1407230 (and (bvsge (index!45434 lt!619667) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619667) (size!46982 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)))))))

(declare-fun res!945282 () Bool)

(assert (=> b!1407230 (= res!945282 (= (select (arr!46431 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901))) (index!45434 lt!619667)) (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1407230 (=> res!945282 e!796502)))

(assert (=> b!1407230 (= e!796500 e!796502)))

(declare-fun b!1407231 () Bool)

(assert (=> b!1407231 (and (bvsge (index!45434 lt!619667) #b00000000000000000000000000000000) (bvslt (index!45434 lt!619667) (size!46982 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901)))))))

(assert (=> b!1407231 (= e!796502 (= (select (arr!46431 (array!96179 (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46982 a!2901))) (index!45434 lt!619667)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407232 () Bool)

(assert (=> b!1407232 (= e!796504 e!796503)))

(declare-fun c!130440 () Bool)

(assert (=> b!1407232 (= c!130440 (or (= lt!619668 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619668 lt!619668) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151479 c!130441) b!1407224))

(assert (= (and d!151479 (not c!130441)) b!1407232))

(assert (= (and b!1407232 c!130440) b!1407227))

(assert (= (and b!1407232 (not c!130440)) b!1407228))

(assert (= (and d!151479 c!130442) b!1407229))

(assert (= (and d!151479 (not c!130442)) b!1407226))

(assert (= (and b!1407226 res!945280) b!1407230))

(assert (= (and b!1407230 (not res!945282)) b!1407225))

(assert (= (and b!1407225 (not res!945281)) b!1407231))

(declare-fun m!1296409 () Bool)

(assert (=> b!1407231 m!1296409))

(assert (=> b!1407230 m!1296409))

(assert (=> b!1407228 m!1296317))

(declare-fun m!1296411 () Bool)

(assert (=> b!1407228 m!1296411))

(assert (=> b!1407228 m!1296411))

(assert (=> b!1407228 m!1296315))

(declare-fun m!1296413 () Bool)

(assert (=> b!1407228 m!1296413))

(assert (=> b!1407225 m!1296409))

(assert (=> d!151479 m!1296317))

(declare-fun m!1296415 () Bool)

(assert (=> d!151479 m!1296415))

(assert (=> d!151479 m!1296321))

(assert (=> b!1407051 d!151479))

(declare-fun d!151483 () Bool)

(declare-fun lt!619670 () (_ BitVec 32))

(declare-fun lt!619669 () (_ BitVec 32))

(assert (=> d!151483 (= lt!619670 (bvmul (bvxor lt!619669 (bvlshr lt!619669 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151483 (= lt!619669 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151483 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945264 (let ((h!34386 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127042 (bvmul (bvxor h!34386 (bvlshr h!34386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127042 (bvlshr x!127042 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945264 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945264 #b00000000000000000000000000000000))))))

(assert (=> d!151483 (= (toIndex!0 (select (store (arr!46431 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619670 (bvlshr lt!619670 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407051 d!151483))

(declare-fun bm!66979 () Bool)

(declare-fun call!66982 () Bool)

(assert (=> bm!66979 (= call!66982 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407233 () Bool)

(declare-fun e!796507 () Bool)

(declare-fun e!796506 () Bool)

(assert (=> b!1407233 (= e!796507 e!796506)))

(declare-fun lt!619671 () (_ BitVec 64))

(assert (=> b!1407233 (= lt!619671 (select (arr!46431 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619673 () Unit!47452)

(assert (=> b!1407233 (= lt!619673 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619671 #b00000000000000000000000000000000))))

(assert (=> b!1407233 (arrayContainsKey!0 a!2901 lt!619671 #b00000000000000000000000000000000)))

(declare-fun lt!619672 () Unit!47452)

(assert (=> b!1407233 (= lt!619672 lt!619673)))

(declare-fun res!945283 () Bool)

(assert (=> b!1407233 (= res!945283 (= (seekEntryOrOpen!0 (select (arr!46431 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10764 #b00000000000000000000000000000000)))))

(assert (=> b!1407233 (=> (not res!945283) (not e!796506))))

(declare-fun b!1407234 () Bool)

(assert (=> b!1407234 (= e!796507 call!66982)))

(declare-fun b!1407235 () Bool)

(assert (=> b!1407235 (= e!796506 call!66982)))

(declare-fun b!1407236 () Bool)

(declare-fun e!796505 () Bool)

(assert (=> b!1407236 (= e!796505 e!796507)))

(declare-fun c!130443 () Bool)

(assert (=> b!1407236 (= c!130443 (validKeyInArray!0 (select (arr!46431 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151485 () Bool)

(declare-fun res!945284 () Bool)

(assert (=> d!151485 (=> res!945284 e!796505)))

(assert (=> d!151485 (= res!945284 (bvsge #b00000000000000000000000000000000 (size!46982 a!2901)))))

(assert (=> d!151485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796505)))

(assert (= (and d!151485 (not res!945284)) b!1407236))

(assert (= (and b!1407236 c!130443) b!1407233))

(assert (= (and b!1407236 (not c!130443)) b!1407234))

(assert (= (and b!1407233 res!945283) b!1407235))

(assert (= (or b!1407235 b!1407234) bm!66979))

(declare-fun m!1296417 () Bool)

(assert (=> bm!66979 m!1296417))

(assert (=> b!1407233 m!1296399))

(declare-fun m!1296419 () Bool)

(assert (=> b!1407233 m!1296419))

(declare-fun m!1296421 () Bool)

(assert (=> b!1407233 m!1296421))

(assert (=> b!1407233 m!1296399))

(declare-fun m!1296423 () Bool)

(assert (=> b!1407233 m!1296423))

(assert (=> b!1407236 m!1296399))

(assert (=> b!1407236 m!1296399))

(assert (=> b!1407236 m!1296403))

(assert (=> b!1407056 d!151485))

(declare-fun b!1407295 () Bool)

(declare-fun e!796547 () SeekEntryResult!10764)

(declare-fun lt!619702 () SeekEntryResult!10764)

(assert (=> b!1407295 (= e!796547 (MissingZero!10764 (index!45434 lt!619702)))))

(declare-fun b!1407296 () Bool)

(declare-fun e!796548 () SeekEntryResult!10764)

(assert (=> b!1407296 (= e!796548 (Found!10764 (index!45434 lt!619702)))))

(declare-fun b!1407297 () Bool)

(declare-fun c!130463 () Bool)

(declare-fun lt!619704 () (_ BitVec 64))

(assert (=> b!1407297 (= c!130463 (= lt!619704 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407297 (= e!796548 e!796547)))

(declare-fun b!1407298 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96178 (_ BitVec 32)) SeekEntryResult!10764)

(assert (=> b!1407298 (= e!796547 (seekKeyOrZeroReturnVacant!0 (x!127036 lt!619702) (index!45434 lt!619702) (index!45434 lt!619702) (select (arr!46431 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407299 () Bool)

(declare-fun e!796546 () SeekEntryResult!10764)

(assert (=> b!1407299 (= e!796546 Undefined!10764)))

(declare-fun d!151487 () Bool)

(declare-fun lt!619703 () SeekEntryResult!10764)

(assert (=> d!151487 (and (or (is-Undefined!10764 lt!619703) (not (is-Found!10764 lt!619703)) (and (bvsge (index!45433 lt!619703) #b00000000000000000000000000000000) (bvslt (index!45433 lt!619703) (size!46982 a!2901)))) (or (is-Undefined!10764 lt!619703) (is-Found!10764 lt!619703) (not (is-MissingZero!10764 lt!619703)) (and (bvsge (index!45432 lt!619703) #b00000000000000000000000000000000) (bvslt (index!45432 lt!619703) (size!46982 a!2901)))) (or (is-Undefined!10764 lt!619703) (is-Found!10764 lt!619703) (is-MissingZero!10764 lt!619703) (not (is-MissingVacant!10764 lt!619703)) (and (bvsge (index!45435 lt!619703) #b00000000000000000000000000000000) (bvslt (index!45435 lt!619703) (size!46982 a!2901)))) (or (is-Undefined!10764 lt!619703) (ite (is-Found!10764 lt!619703) (= (select (arr!46431 a!2901) (index!45433 lt!619703)) (select (arr!46431 a!2901) j!112)) (ite (is-MissingZero!10764 lt!619703) (= (select (arr!46431 a!2901) (index!45432 lt!619703)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10764 lt!619703) (= (select (arr!46431 a!2901) (index!45435 lt!619703)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151487 (= lt!619703 e!796546)))

(declare-fun c!130464 () Bool)

(assert (=> d!151487 (= c!130464 (and (is-Intermediate!10764 lt!619702) (undefined!11576 lt!619702)))))

(assert (=> d!151487 (= lt!619702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46431 a!2901) j!112) mask!2840) (select (arr!46431 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151487 (validMask!0 mask!2840)))

(assert (=> d!151487 (= (seekEntryOrOpen!0 (select (arr!46431 a!2901) j!112) a!2901 mask!2840) lt!619703)))

(declare-fun b!1407300 () Bool)

(assert (=> b!1407300 (= e!796546 e!796548)))

(assert (=> b!1407300 (= lt!619704 (select (arr!46431 a!2901) (index!45434 lt!619702)))))

(declare-fun c!130465 () Bool)

(assert (=> b!1407300 (= c!130465 (= lt!619704 (select (arr!46431 a!2901) j!112)))))

(assert (= (and d!151487 c!130464) b!1407299))

(assert (= (and d!151487 (not c!130464)) b!1407300))

(assert (= (and b!1407300 c!130465) b!1407296))

(assert (= (and b!1407300 (not c!130465)) b!1407297))

(assert (= (and b!1407297 c!130463) b!1407295))

(assert (= (and b!1407297 (not c!130463)) b!1407298))

(assert (=> b!1407298 m!1296325))

(declare-fun m!1296465 () Bool)

(assert (=> b!1407298 m!1296465))

(declare-fun m!1296469 () Bool)

(assert (=> d!151487 m!1296469))

(declare-fun m!1296471 () Bool)

(assert (=> d!151487 m!1296471))

(assert (=> d!151487 m!1296321))

(declare-fun m!1296475 () Bool)

(assert (=> d!151487 m!1296475))

(assert (=> d!151487 m!1296325))

(assert (=> d!151487 m!1296333))

(assert (=> d!151487 m!1296333))

(assert (=> d!151487 m!1296325))

(declare-fun m!1296477 () Bool)

(assert (=> d!151487 m!1296477))

(declare-fun m!1296479 () Bool)

(assert (=> b!1407300 m!1296479))

(assert (=> b!1407058 d!151487))

(declare-fun d!151509 () Bool)

(assert (=> d!151509 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121004 d!151509))

(declare-fun d!151517 () Bool)

(assert (=> d!151517 (= (array_inv!35376 a!2901) (bvsge (size!46982 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121004 d!151517))

(declare-fun d!151519 () Bool)

(assert (=> d!151519 (= (validKeyInArray!0 (select (arr!46431 a!2901) j!112)) (and (not (= (select (arr!46431 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46431 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407052 d!151519))

(declare-fun d!151521 () Bool)

(assert (=> d!151521 (= (validKeyInArray!0 (select (arr!46431 a!2901) i!1037)) (and (not (= (select (arr!46431 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46431 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407054 d!151521))

(push 1)

(assert (not b!1407102))

(assert (not d!151457))

(assert (not b!1407105))

(assert (not b!1407233))

(assert (not bm!66979))

(assert (not d!151487))

(assert (not b!1407214))

(assert (not b!1407298))

(assert (not b!1407236))

(assert (not b!1407211))

(assert (not bm!66978))

(assert (not b!1407215))

(assert (not b!1407180))

(assert (not b!1407228))

(assert (not d!151453))

(assert (not d!151479))

(assert (not bm!66972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

