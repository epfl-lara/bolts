; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121060 () Bool)

(assert start!121060)

(declare-fun b!1407332 () Bool)

(declare-fun e!796566 () Bool)

(declare-fun e!796568 () Bool)

(assert (=> b!1407332 (= e!796566 (not e!796568))))

(declare-fun res!945332 () Bool)

(assert (=> b!1407332 (=> res!945332 e!796568)))

(declare-datatypes ((SeekEntryResult!10765 0))(
  ( (MissingZero!10765 (index!45436 (_ BitVec 32))) (Found!10765 (index!45437 (_ BitVec 32))) (Intermediate!10765 (undefined!11577 Bool) (index!45438 (_ BitVec 32)) (x!127051 (_ BitVec 32))) (Undefined!10765) (MissingVacant!10765 (index!45439 (_ BitVec 32))) )
))
(declare-fun lt!619721 () SeekEntryResult!10765)

(assert (=> b!1407332 (= res!945332 (or (not (is-Intermediate!10765 lt!619721)) (undefined!11577 lt!619721)))))

(declare-fun e!796567 () Bool)

(assert (=> b!1407332 e!796567))

(declare-fun res!945333 () Bool)

(assert (=> b!1407332 (=> (not res!945333) (not e!796567))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96183 0))(
  ( (array!96184 (arr!46432 (Array (_ BitVec 32) (_ BitVec 64))) (size!46983 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96183)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96183 (_ BitVec 32)) Bool)

(assert (=> b!1407332 (= res!945333 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47454 0))(
  ( (Unit!47455) )
))
(declare-fun lt!619722 () Unit!47454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47454)

(assert (=> b!1407332 (= lt!619722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619723 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96183 (_ BitVec 32)) SeekEntryResult!10765)

(assert (=> b!1407332 (= lt!619721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619723 (select (arr!46432 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407332 (= lt!619723 (toIndex!0 (select (arr!46432 a!2901) j!112) mask!2840))))

(declare-fun b!1407333 () Bool)

(declare-fun res!945329 () Bool)

(assert (=> b!1407333 (=> (not res!945329) (not e!796566))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407333 (= res!945329 (validKeyInArray!0 (select (arr!46432 a!2901) i!1037)))))

(declare-fun b!1407334 () Bool)

(declare-fun res!945330 () Bool)

(assert (=> b!1407334 (=> (not res!945330) (not e!796566))))

(assert (=> b!1407334 (= res!945330 (and (= (size!46983 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46983 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46983 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407335 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96183 (_ BitVec 32)) SeekEntryResult!10765)

(assert (=> b!1407335 (= e!796567 (= (seekEntryOrOpen!0 (select (arr!46432 a!2901) j!112) a!2901 mask!2840) (Found!10765 j!112)))))

(declare-fun b!1407336 () Bool)

(assert (=> b!1407336 (= e!796568 (or (bvslt (x!127051 lt!619721) #b00000000000000000000000000000000) (bvsgt (x!127051 lt!619721) #b01111111111111111111111111111110) (bvslt lt!619723 #b00000000000000000000000000000000) (bvsge lt!619723 (size!46983 a!2901)) (and (bvsge (index!45438 lt!619721) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619721) (size!46983 a!2901)))))))

(declare-fun res!945328 () Bool)

(assert (=> start!121060 (=> (not res!945328) (not e!796566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121060 (= res!945328 (validMask!0 mask!2840))))

(assert (=> start!121060 e!796566))

(assert (=> start!121060 true))

(declare-fun array_inv!35377 (array!96183) Bool)

(assert (=> start!121060 (array_inv!35377 a!2901)))

(declare-fun b!1407337 () Bool)

(declare-fun res!945335 () Bool)

(assert (=> b!1407337 (=> (not res!945335) (not e!796566))))

(declare-datatypes ((List!33131 0))(
  ( (Nil!33128) (Cons!33127 (h!34387 (_ BitVec 64)) (t!47832 List!33131)) )
))
(declare-fun arrayNoDuplicates!0 (array!96183 (_ BitVec 32) List!33131) Bool)

(assert (=> b!1407337 (= res!945335 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33128))))

(declare-fun b!1407338 () Bool)

(declare-fun res!945336 () Bool)

(assert (=> b!1407338 (=> (not res!945336) (not e!796566))))

(assert (=> b!1407338 (= res!945336 (validKeyInArray!0 (select (arr!46432 a!2901) j!112)))))

(declare-fun b!1407339 () Bool)

(declare-fun res!945334 () Bool)

(assert (=> b!1407339 (=> res!945334 e!796568)))

(assert (=> b!1407339 (= res!945334 (not (= lt!619721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)) mask!2840))))))

(declare-fun b!1407340 () Bool)

(declare-fun res!945331 () Bool)

(assert (=> b!1407340 (=> (not res!945331) (not e!796566))))

(assert (=> b!1407340 (= res!945331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121060 res!945328) b!1407334))

(assert (= (and b!1407334 res!945330) b!1407333))

(assert (= (and b!1407333 res!945329) b!1407338))

(assert (= (and b!1407338 res!945336) b!1407340))

(assert (= (and b!1407340 res!945331) b!1407337))

(assert (= (and b!1407337 res!945335) b!1407332))

(assert (= (and b!1407332 res!945333) b!1407335))

(assert (= (and b!1407332 (not res!945332)) b!1407339))

(assert (= (and b!1407339 (not res!945334)) b!1407336))

(declare-fun m!1296497 () Bool)

(assert (=> b!1407337 m!1296497))

(declare-fun m!1296499 () Bool)

(assert (=> b!1407339 m!1296499))

(declare-fun m!1296501 () Bool)

(assert (=> b!1407339 m!1296501))

(assert (=> b!1407339 m!1296501))

(declare-fun m!1296503 () Bool)

(assert (=> b!1407339 m!1296503))

(assert (=> b!1407339 m!1296503))

(assert (=> b!1407339 m!1296501))

(declare-fun m!1296505 () Bool)

(assert (=> b!1407339 m!1296505))

(declare-fun m!1296507 () Bool)

(assert (=> start!121060 m!1296507))

(declare-fun m!1296509 () Bool)

(assert (=> start!121060 m!1296509))

(declare-fun m!1296511 () Bool)

(assert (=> b!1407333 m!1296511))

(assert (=> b!1407333 m!1296511))

(declare-fun m!1296513 () Bool)

(assert (=> b!1407333 m!1296513))

(declare-fun m!1296515 () Bool)

(assert (=> b!1407340 m!1296515))

(declare-fun m!1296517 () Bool)

(assert (=> b!1407332 m!1296517))

(declare-fun m!1296519 () Bool)

(assert (=> b!1407332 m!1296519))

(assert (=> b!1407332 m!1296517))

(declare-fun m!1296521 () Bool)

(assert (=> b!1407332 m!1296521))

(assert (=> b!1407332 m!1296517))

(declare-fun m!1296523 () Bool)

(assert (=> b!1407332 m!1296523))

(declare-fun m!1296525 () Bool)

(assert (=> b!1407332 m!1296525))

(assert (=> b!1407335 m!1296517))

(assert (=> b!1407335 m!1296517))

(declare-fun m!1296527 () Bool)

(assert (=> b!1407335 m!1296527))

(assert (=> b!1407338 m!1296517))

(assert (=> b!1407338 m!1296517))

(declare-fun m!1296529 () Bool)

(assert (=> b!1407338 m!1296529))

(push 1)

(assert (not b!1407339))

(assert (not b!1407333))

(assert (not b!1407332))

(assert (not b!1407337))

(assert (not b!1407335))

(assert (not start!121060))

(assert (not b!1407338))

(assert (not b!1407340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151527 () Bool)

(assert (=> d!151527 (= (validKeyInArray!0 (select (arr!46432 a!2901) i!1037)) (and (not (= (select (arr!46432 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46432 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407333 d!151527))

(declare-fun b!1407452 () Bool)

(declare-fun lt!619768 () SeekEntryResult!10765)

(assert (=> b!1407452 (and (bvsge (index!45438 lt!619768) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619768) (size!46983 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)))))))

(declare-fun res!945415 () Bool)

(assert (=> b!1407452 (= res!945415 (= (select (arr!46432 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901))) (index!45438 lt!619768)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796630 () Bool)

(assert (=> b!1407452 (=> res!945415 e!796630)))

(declare-fun d!151529 () Bool)

(declare-fun e!796627 () Bool)

(assert (=> d!151529 e!796627))

(declare-fun c!130490 () Bool)

(assert (=> d!151529 (= c!130490 (and (is-Intermediate!10765 lt!619768) (undefined!11577 lt!619768)))))

(declare-fun e!796629 () SeekEntryResult!10765)

(assert (=> d!151529 (= lt!619768 e!796629)))

(declare-fun c!130489 () Bool)

(assert (=> d!151529 (= c!130489 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619767 () (_ BitVec 64))

(assert (=> d!151529 (= lt!619767 (select (arr!46432 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901))) (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151529 (validMask!0 mask!2840)))

(assert (=> d!151529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)) mask!2840) lt!619768)))

(declare-fun b!1407453 () Bool)

(declare-fun e!796628 () SeekEntryResult!10765)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407453 (= e!796628 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)) mask!2840))))

(declare-fun b!1407454 () Bool)

(assert (=> b!1407454 (= e!796629 (Intermediate!10765 true (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407455 () Bool)

(assert (=> b!1407455 (and (bvsge (index!45438 lt!619768) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619768) (size!46983 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)))))))

(declare-fun res!945413 () Bool)

(assert (=> b!1407455 (= res!945413 (= (select (arr!46432 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901))) (index!45438 lt!619768)) (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1407455 (=> res!945413 e!796630)))

(declare-fun e!796631 () Bool)

(assert (=> b!1407455 (= e!796631 e!796630)))

(declare-fun b!1407456 () Bool)

(assert (=> b!1407456 (and (bvsge (index!45438 lt!619768) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619768) (size!46983 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901)))))))

(assert (=> b!1407456 (= e!796630 (= (select (arr!46432 (array!96184 (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46983 a!2901))) (index!45438 lt!619768)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407457 () Bool)

(assert (=> b!1407457 (= e!796628 (Intermediate!10765 false (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407458 () Bool)

(assert (=> b!1407458 (= e!796629 e!796628)))

(declare-fun c!130488 () Bool)

(assert (=> b!1407458 (= c!130488 (or (= lt!619767 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619767 lt!619767) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407459 () Bool)

(assert (=> b!1407459 (= e!796627 (bvsge (x!127051 lt!619768) #b01111111111111111111111111111110))))

(declare-fun b!1407460 () Bool)

(assert (=> b!1407460 (= e!796627 e!796631)))

(declare-fun res!945414 () Bool)

(assert (=> b!1407460 (= res!945414 (and (is-Intermediate!10765 lt!619768) (not (undefined!11577 lt!619768)) (bvslt (x!127051 lt!619768) #b01111111111111111111111111111110) (bvsge (x!127051 lt!619768) #b00000000000000000000000000000000) (bvsge (x!127051 lt!619768) #b00000000000000000000000000000000)))))

(assert (=> b!1407460 (=> (not res!945414) (not e!796631))))

(assert (= (and d!151529 c!130489) b!1407454))

(assert (= (and d!151529 (not c!130489)) b!1407458))

(assert (= (and b!1407458 c!130488) b!1407457))

(assert (= (and b!1407458 (not c!130488)) b!1407453))

(assert (= (and d!151529 c!130490) b!1407459))

(assert (= (and d!151529 (not c!130490)) b!1407460))

(assert (= (and b!1407460 res!945414) b!1407455))

(assert (= (and b!1407455 (not res!945413)) b!1407452))

(assert (= (and b!1407452 (not res!945415)) b!1407456))

(declare-fun m!1296619 () Bool)

(assert (=> b!1407456 m!1296619))

(assert (=> b!1407453 m!1296503))

(declare-fun m!1296621 () Bool)

(assert (=> b!1407453 m!1296621))

(assert (=> b!1407453 m!1296621))

(assert (=> b!1407453 m!1296501))

(declare-fun m!1296623 () Bool)

(assert (=> b!1407453 m!1296623))

(assert (=> b!1407452 m!1296619))

(assert (=> b!1407455 m!1296619))

(assert (=> d!151529 m!1296503))

(declare-fun m!1296625 () Bool)

(assert (=> d!151529 m!1296625))

(assert (=> d!151529 m!1296507))

(assert (=> b!1407339 d!151529))

(declare-fun d!151541 () Bool)

(declare-fun lt!619783 () (_ BitVec 32))

(declare-fun lt!619782 () (_ BitVec 32))

(assert (=> d!151541 (= lt!619783 (bvmul (bvxor lt!619782 (bvlshr lt!619782 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151541 (= lt!619782 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151541 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945420 (let ((h!34391 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127057 (bvmul (bvxor h!34391 (bvlshr h!34391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127057 (bvlshr x!127057 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945420 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945420 #b00000000000000000000000000000000))))))

(assert (=> d!151541 (= (toIndex!0 (select (store (arr!46432 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619783 (bvlshr lt!619783 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407339 d!151541))

(declare-fun bm!66996 () Bool)

(declare-fun call!66999 () Bool)

(assert (=> bm!66996 (= call!66999 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407502 () Bool)

(declare-fun e!796659 () Bool)

(assert (=> b!1407502 (= e!796659 call!66999)))

(declare-fun d!151545 () Bool)

(declare-fun res!945430 () Bool)

(declare-fun e!796658 () Bool)

(assert (=> d!151545 (=> res!945430 e!796658)))

(assert (=> d!151545 (= res!945430 (bvsge #b00000000000000000000000000000000 (size!46983 a!2901)))))

(assert (=> d!151545 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796658)))

(declare-fun b!1407503 () Bool)

(declare-fun e!796660 () Bool)

(assert (=> b!1407503 (= e!796660 call!66999)))

(declare-fun b!1407504 () Bool)

(assert (=> b!1407504 (= e!796660 e!796659)))

(declare-fun lt!619804 () (_ BitVec 64))

(assert (=> b!1407504 (= lt!619804 (select (arr!46432 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619803 () Unit!47454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96183 (_ BitVec 64) (_ BitVec 32)) Unit!47454)

(assert (=> b!1407504 (= lt!619803 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619804 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407504 (arrayContainsKey!0 a!2901 lt!619804 #b00000000000000000000000000000000)))

(declare-fun lt!619805 () Unit!47454)

(assert (=> b!1407504 (= lt!619805 lt!619803)))

(declare-fun res!945431 () Bool)

(assert (=> b!1407504 (= res!945431 (= (seekEntryOrOpen!0 (select (arr!46432 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10765 #b00000000000000000000000000000000)))))

(assert (=> b!1407504 (=> (not res!945431) (not e!796659))))

(declare-fun b!1407505 () Bool)

(assert (=> b!1407505 (= e!796658 e!796660)))

(declare-fun c!130505 () Bool)

(assert (=> b!1407505 (= c!130505 (validKeyInArray!0 (select (arr!46432 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151545 (not res!945430)) b!1407505))

(assert (= (and b!1407505 c!130505) b!1407504))

(assert (= (and b!1407505 (not c!130505)) b!1407503))

(assert (= (and b!1407504 res!945431) b!1407502))

(assert (= (or b!1407502 b!1407503) bm!66996))

(declare-fun m!1296643 () Bool)

(assert (=> bm!66996 m!1296643))

(declare-fun m!1296645 () Bool)

(assert (=> b!1407504 m!1296645))

(declare-fun m!1296647 () Bool)

(assert (=> b!1407504 m!1296647))

(declare-fun m!1296649 () Bool)

(assert (=> b!1407504 m!1296649))

(assert (=> b!1407504 m!1296645))

(declare-fun m!1296651 () Bool)

(assert (=> b!1407504 m!1296651))

(assert (=> b!1407505 m!1296645))

(assert (=> b!1407505 m!1296645))

(declare-fun m!1296653 () Bool)

(assert (=> b!1407505 m!1296653))

(assert (=> b!1407340 d!151545))

(declare-fun d!151553 () Bool)

(assert (=> d!151553 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121060 d!151553))

(declare-fun d!151563 () Bool)

(assert (=> d!151563 (= (array_inv!35377 a!2901) (bvsge (size!46983 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121060 d!151563))

(declare-fun b!1407582 () Bool)

(declare-fun c!130534 () Bool)

(declare-fun lt!619836 () (_ BitVec 64))

(assert (=> b!1407582 (= c!130534 (= lt!619836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796707 () SeekEntryResult!10765)

(declare-fun e!796708 () SeekEntryResult!10765)

(assert (=> b!1407582 (= e!796707 e!796708)))

(declare-fun b!1407583 () Bool)

(declare-fun lt!619837 () SeekEntryResult!10765)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96183 (_ BitVec 32)) SeekEntryResult!10765)

(assert (=> b!1407583 (= e!796708 (seekKeyOrZeroReturnVacant!0 (x!127051 lt!619837) (index!45438 lt!619837) (index!45438 lt!619837) (select (arr!46432 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407584 () Bool)

(declare-fun e!796706 () SeekEntryResult!10765)

(assert (=> b!1407584 (= e!796706 Undefined!10765)))

(declare-fun d!151565 () Bool)

(declare-fun lt!619838 () SeekEntryResult!10765)

(assert (=> d!151565 (and (or (is-Undefined!10765 lt!619838) (not (is-Found!10765 lt!619838)) (and (bvsge (index!45437 lt!619838) #b00000000000000000000000000000000) (bvslt (index!45437 lt!619838) (size!46983 a!2901)))) (or (is-Undefined!10765 lt!619838) (is-Found!10765 lt!619838) (not (is-MissingZero!10765 lt!619838)) (and (bvsge (index!45436 lt!619838) #b00000000000000000000000000000000) (bvslt (index!45436 lt!619838) (size!46983 a!2901)))) (or (is-Undefined!10765 lt!619838) (is-Found!10765 lt!619838) (is-MissingZero!10765 lt!619838) (not (is-MissingVacant!10765 lt!619838)) (and (bvsge (index!45439 lt!619838) #b00000000000000000000000000000000) (bvslt (index!45439 lt!619838) (size!46983 a!2901)))) (or (is-Undefined!10765 lt!619838) (ite (is-Found!10765 lt!619838) (= (select (arr!46432 a!2901) (index!45437 lt!619838)) (select (arr!46432 a!2901) j!112)) (ite (is-MissingZero!10765 lt!619838) (= (select (arr!46432 a!2901) (index!45436 lt!619838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10765 lt!619838) (= (select (arr!46432 a!2901) (index!45439 lt!619838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151565 (= lt!619838 e!796706)))

(declare-fun c!130535 () Bool)

(assert (=> d!151565 (= c!130535 (and (is-Intermediate!10765 lt!619837) (undefined!11577 lt!619837)))))

(assert (=> d!151565 (= lt!619837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46432 a!2901) j!112) mask!2840) (select (arr!46432 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151565 (validMask!0 mask!2840)))

(assert (=> d!151565 (= (seekEntryOrOpen!0 (select (arr!46432 a!2901) j!112) a!2901 mask!2840) lt!619838)))

(declare-fun b!1407585 () Bool)

(assert (=> b!1407585 (= e!796706 e!796707)))

(assert (=> b!1407585 (= lt!619836 (select (arr!46432 a!2901) (index!45438 lt!619837)))))

(declare-fun c!130536 () Bool)

(assert (=> b!1407585 (= c!130536 (= lt!619836 (select (arr!46432 a!2901) j!112)))))

(declare-fun b!1407586 () Bool)

(assert (=> b!1407586 (= e!796708 (MissingZero!10765 (index!45438 lt!619837)))))

(declare-fun b!1407587 () Bool)

(assert (=> b!1407587 (= e!796707 (Found!10765 (index!45438 lt!619837)))))

(assert (= (and d!151565 c!130535) b!1407584))

(assert (= (and d!151565 (not c!130535)) b!1407585))

(assert (= (and b!1407585 c!130536) b!1407587))

(assert (= (and b!1407585 (not c!130536)) b!1407582))

(assert (= (and b!1407582 c!130534) b!1407586))

(assert (= (and b!1407582 (not c!130534)) b!1407583))

(assert (=> b!1407583 m!1296517))

(declare-fun m!1296691 () Bool)

(assert (=> b!1407583 m!1296691))

(declare-fun m!1296693 () Bool)

(assert (=> d!151565 m!1296693))

(declare-fun m!1296695 () Bool)

(assert (=> d!151565 m!1296695))

(assert (=> d!151565 m!1296521))

(assert (=> d!151565 m!1296517))

(declare-fun m!1296697 () Bool)

(assert (=> d!151565 m!1296697))

(assert (=> d!151565 m!1296517))

(assert (=> d!151565 m!1296521))

(declare-fun m!1296699 () Bool)

(assert (=> d!151565 m!1296699))

(assert (=> d!151565 m!1296507))

(declare-fun m!1296701 () Bool)

(assert (=> b!1407585 m!1296701))

(assert (=> b!1407335 d!151565))

(declare-fun call!67004 () Bool)

(declare-fun bm!67001 () Bool)

(assert (=> bm!67001 (= call!67004 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407588 () Bool)

(declare-fun e!796710 () Bool)

(assert (=> b!1407588 (= e!796710 call!67004)))

(declare-fun d!151575 () Bool)

(declare-fun res!945453 () Bool)

(declare-fun e!796709 () Bool)

(assert (=> d!151575 (=> res!945453 e!796709)))

(assert (=> d!151575 (= res!945453 (bvsge j!112 (size!46983 a!2901)))))

(assert (=> d!151575 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796709)))

(declare-fun b!1407589 () Bool)

(declare-fun e!796711 () Bool)

(assert (=> b!1407589 (= e!796711 call!67004)))

(declare-fun b!1407590 () Bool)

(assert (=> b!1407590 (= e!796711 e!796710)))

(declare-fun lt!619840 () (_ BitVec 64))

(assert (=> b!1407590 (= lt!619840 (select (arr!46432 a!2901) j!112))))

(declare-fun lt!619839 () Unit!47454)

(assert (=> b!1407590 (= lt!619839 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619840 j!112))))

(assert (=> b!1407590 (arrayContainsKey!0 a!2901 lt!619840 #b00000000000000000000000000000000)))

(declare-fun lt!619841 () Unit!47454)

(assert (=> b!1407590 (= lt!619841 lt!619839)))

(declare-fun res!945454 () Bool)

(assert (=> b!1407590 (= res!945454 (= (seekEntryOrOpen!0 (select (arr!46432 a!2901) j!112) a!2901 mask!2840) (Found!10765 j!112)))))

(assert (=> b!1407590 (=> (not res!945454) (not e!796710))))

(declare-fun b!1407591 () Bool)

(assert (=> b!1407591 (= e!796709 e!796711)))

(declare-fun c!130537 () Bool)

(assert (=> b!1407591 (= c!130537 (validKeyInArray!0 (select (arr!46432 a!2901) j!112)))))

(assert (= (and d!151575 (not res!945453)) b!1407591))

(assert (= (and b!1407591 c!130537) b!1407590))

(assert (= (and b!1407591 (not c!130537)) b!1407589))

(assert (= (and b!1407590 res!945454) b!1407588))

(assert (= (or b!1407588 b!1407589) bm!67001))

(declare-fun m!1296703 () Bool)

(assert (=> bm!67001 m!1296703))

(assert (=> b!1407590 m!1296517))

(declare-fun m!1296705 () Bool)

(assert (=> b!1407590 m!1296705))

(declare-fun m!1296707 () Bool)

(assert (=> b!1407590 m!1296707))

(assert (=> b!1407590 m!1296517))

(assert (=> b!1407590 m!1296527))

(assert (=> b!1407591 m!1296517))

(assert (=> b!1407591 m!1296517))

(assert (=> b!1407591 m!1296529))

(assert (=> b!1407332 d!151575))

(declare-fun d!151577 () Bool)

(assert (=> d!151577 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619847 () Unit!47454)

(declare-fun choose!38 (array!96183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47454)

(assert (=> d!151577 (= lt!619847 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151577 (validMask!0 mask!2840)))

(assert (=> d!151577 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619847)))

(declare-fun bs!41016 () Bool)

(assert (= bs!41016 d!151577))

(assert (=> bs!41016 m!1296525))

(declare-fun m!1296721 () Bool)

(assert (=> bs!41016 m!1296721))

(assert (=> bs!41016 m!1296507))

(assert (=> b!1407332 d!151577))

(declare-fun b!1407608 () Bool)

(declare-fun lt!619849 () SeekEntryResult!10765)

(assert (=> b!1407608 (and (bvsge (index!45438 lt!619849) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619849) (size!46983 a!2901)))))

(declare-fun res!945463 () Bool)

(assert (=> b!1407608 (= res!945463 (= (select (arr!46432 a!2901) (index!45438 lt!619849)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796726 () Bool)

(assert (=> b!1407608 (=> res!945463 e!796726)))

(declare-fun d!151579 () Bool)

(declare-fun e!796723 () Bool)

(assert (=> d!151579 e!796723))

(declare-fun c!130545 () Bool)

(assert (=> d!151579 (= c!130545 (and (is-Intermediate!10765 lt!619849) (undefined!11577 lt!619849)))))

(declare-fun e!796725 () SeekEntryResult!10765)

(assert (=> d!151579 (= lt!619849 e!796725)))

(declare-fun c!130544 () Bool)

(assert (=> d!151579 (= c!130544 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619848 () (_ BitVec 64))

(assert (=> d!151579 (= lt!619848 (select (arr!46432 a!2901) lt!619723))))

(assert (=> d!151579 (validMask!0 mask!2840)))

(assert (=> d!151579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619723 (select (arr!46432 a!2901) j!112) a!2901 mask!2840) lt!619849)))

(declare-fun e!796724 () SeekEntryResult!10765)

(declare-fun b!1407609 () Bool)

(assert (=> b!1407609 (= e!796724 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!619723 #b00000000000000000000000000000000 mask!2840) (select (arr!46432 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407610 () Bool)

(assert (=> b!1407610 (= e!796725 (Intermediate!10765 true lt!619723 #b00000000000000000000000000000000))))

(declare-fun b!1407611 () Bool)

(assert (=> b!1407611 (and (bvsge (index!45438 lt!619849) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619849) (size!46983 a!2901)))))

(declare-fun res!945461 () Bool)

(assert (=> b!1407611 (= res!945461 (= (select (arr!46432 a!2901) (index!45438 lt!619849)) (select (arr!46432 a!2901) j!112)))))

(assert (=> b!1407611 (=> res!945461 e!796726)))

(declare-fun e!796727 () Bool)

(assert (=> b!1407611 (= e!796727 e!796726)))

(declare-fun b!1407612 () Bool)

(assert (=> b!1407612 (and (bvsge (index!45438 lt!619849) #b00000000000000000000000000000000) (bvslt (index!45438 lt!619849) (size!46983 a!2901)))))

(assert (=> b!1407612 (= e!796726 (= (select (arr!46432 a!2901) (index!45438 lt!619849)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407613 () Bool)

(assert (=> b!1407613 (= e!796724 (Intermediate!10765 false lt!619723 #b00000000000000000000000000000000))))

(declare-fun b!1407614 () Bool)

(assert (=> b!1407614 (= e!796725 e!796724)))

(declare-fun c!130543 () Bool)

(assert (=> b!1407614 (= c!130543 (or (= lt!619848 (select (arr!46432 a!2901) j!112)) (= (bvadd lt!619848 lt!619848) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407615 () Bool)

(assert (=> b!1407615 (= e!796723 (bvsge (x!127051 lt!619849) #b01111111111111111111111111111110))))

(declare-fun b!1407616 () Bool)

(assert (=> b!1407616 (= e!796723 e!796727)))

(declare-fun res!945462 () Bool)

(assert (=> b!1407616 (= res!945462 (and (is-Intermediate!10765 lt!619849) (not (undefined!11577 lt!619849)) (bvslt (x!127051 lt!619849) #b01111111111111111111111111111110) (bvsge (x!127051 lt!619849) #b00000000000000000000000000000000) (bvsge (x!127051 lt!619849) #b00000000000000000000000000000000)))))

(assert (=> b!1407616 (=> (not res!945462) (not e!796727))))

(assert (= (and d!151579 c!130544) b!1407610))

(assert (= (and d!151579 (not c!130544)) b!1407614))

(assert (= (and b!1407614 c!130543) b!1407613))

(assert (= (and b!1407614 (not c!130543)) b!1407609))

(assert (= (and d!151579 c!130545) b!1407615))

(assert (= (and d!151579 (not c!130545)) b!1407616))

(assert (= (and b!1407616 res!945462) b!1407611))

(assert (= (and b!1407611 (not res!945461)) b!1407608))

(assert (= (and b!1407608 (not res!945463)) b!1407612))

(declare-fun m!1296723 () Bool)

(assert (=> b!1407612 m!1296723))

(declare-fun m!1296725 () Bool)

(assert (=> b!1407609 m!1296725))

(assert (=> b!1407609 m!1296725))

(assert (=> b!1407609 m!1296517))

(declare-fun m!1296727 () Bool)

(assert (=> b!1407609 m!1296727))

(assert (=> b!1407608 m!1296723))

(assert (=> b!1407611 m!1296723))

(declare-fun m!1296729 () Bool)

(assert (=> d!151579 m!1296729))

(assert (=> d!151579 m!1296507))

(assert (=> b!1407332 d!151579))

(declare-fun d!151581 () Bool)

(declare-fun lt!619851 () (_ BitVec 32))

(declare-fun lt!619850 () (_ BitVec 32))

(assert (=> d!151581 (= lt!619851 (bvmul (bvxor lt!619850 (bvlshr lt!619850 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151581 (= lt!619850 ((_ extract 31 0) (bvand (bvxor (select (arr!46432 a!2901) j!112) (bvlshr (select (arr!46432 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151581 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945420 (let ((h!34391 ((_ extract 31 0) (bvand (bvxor (select (arr!46432 a!2901) j!112) (bvlshr (select (arr!46432 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127057 (bvmul (bvxor h!34391 (bvlshr h!34391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127057 (bvlshr x!127057 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945420 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945420 #b00000000000000000000000000000000))))))

(assert (=> d!151581 (= (toIndex!0 (select (arr!46432 a!2901) j!112) mask!2840) (bvand (bvxor lt!619851 (bvlshr lt!619851 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407332 d!151581))

(declare-fun d!151583 () Bool)

(declare-fun res!945476 () Bool)

(declare-fun e!796745 () Bool)

(assert (=> d!151583 (=> res!945476 e!796745)))

(assert (=> d!151583 (= res!945476 (bvsge #b00000000000000000000000000000000 (size!46983 a!2901)))))

(assert (=> d!151583 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33128) e!796745)))

(declare-fun b!1407636 () Bool)

(declare-fun e!796746 () Bool)

(declare-fun call!67011 () Bool)

(assert (=> b!1407636 (= e!796746 call!67011)))

(declare-fun b!1407637 () Bool)

(declare-fun e!796743 () Bool)

(declare-fun contains!9815 (List!33131 (_ BitVec 64)) Bool)

(assert (=> b!1407637 (= e!796743 (contains!9815 Nil!33128 (select (arr!46432 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407638 () Bool)

(assert (=> b!1407638 (= e!796746 call!67011)))

(declare-fun b!1407639 () Bool)

(declare-fun e!796744 () Bool)

(assert (=> b!1407639 (= e!796745 e!796744)))

(declare-fun res!945477 () Bool)

(assert (=> b!1407639 (=> (not res!945477) (not e!796744))))

(assert (=> b!1407639 (= res!945477 (not e!796743))))

(declare-fun res!945475 () Bool)

(assert (=> b!1407639 (=> (not res!945475) (not e!796743))))

(assert (=> b!1407639 (= res!945475 (validKeyInArray!0 (select (arr!46432 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67008 () Bool)

(declare-fun c!130550 () Bool)

(assert (=> bm!67008 (= call!67011 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130550 (Cons!33127 (select (arr!46432 a!2901) #b00000000000000000000000000000000) Nil!33128) Nil!33128)))))

(declare-fun b!1407640 () Bool)

(assert (=> b!1407640 (= e!796744 e!796746)))

(assert (=> b!1407640 (= c!130550 (validKeyInArray!0 (select (arr!46432 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151583 (not res!945476)) b!1407639))

(assert (= (and b!1407639 res!945475) b!1407637))

(assert (= (and b!1407639 res!945477) b!1407640))

(assert (= (and b!1407640 c!130550) b!1407638))

(assert (= (and b!1407640 (not c!130550)) b!1407636))

(assert (= (or b!1407638 b!1407636) bm!67008))

(assert (=> b!1407637 m!1296645))

(assert (=> b!1407637 m!1296645))

(declare-fun m!1296741 () Bool)

(assert (=> b!1407637 m!1296741))

(assert (=> b!1407639 m!1296645))

(assert (=> b!1407639 m!1296645))

(assert (=> b!1407639 m!1296653))

(assert (=> bm!67008 m!1296645))

(declare-fun m!1296743 () Bool)

(assert (=> bm!67008 m!1296743))

(assert (=> b!1407640 m!1296645))

(assert (=> b!1407640 m!1296645))

(assert (=> b!1407640 m!1296653))

(assert (=> b!1407337 d!151583))

(declare-fun d!151593 () Bool)

(assert (=> d!151593 (= (validKeyInArray!0 (select (arr!46432 a!2901) j!112)) (and (not (= (select (arr!46432 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46432 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407338 d!151593))

(push 1)

(assert (not b!1407609))

(assert (not d!151579))

(assert (not bm!67001))

(assert (not b!1407591))

(assert (not b!1407504))

(assert (not b!1407505))

(assert (not bm!67008))

(assert (not b!1407453))

(assert (not b!1407639))

(assert (not b!1407590))

(assert (not d!151565))

(assert (not d!151577))

(assert (not b!1407583))

(assert (not b!1407637))

(assert (not bm!66996))

(assert (not b!1407640))

(assert (not d!151529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

