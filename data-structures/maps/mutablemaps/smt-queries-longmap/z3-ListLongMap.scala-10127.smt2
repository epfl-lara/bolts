; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119406 () Bool)

(assert start!119406)

(declare-fun b!1391455 () Bool)

(declare-fun e!787967 () Bool)

(declare-datatypes ((SeekEntryResult!10277 0))(
  ( (MissingZero!10277 (index!43478 (_ BitVec 32))) (Found!10277 (index!43479 (_ BitVec 32))) (Intermediate!10277 (undefined!11089 Bool) (index!43480 (_ BitVec 32)) (x!125162 (_ BitVec 32))) (Undefined!10277) (MissingVacant!10277 (index!43481 (_ BitVec 32))) )
))
(declare-fun lt!611173 () SeekEntryResult!10277)

(declare-fun mask!2840 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1391455 (= e!787967 (not (or (not ((_ is Intermediate!10277) lt!611173)) (undefined!11089 lt!611173) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(declare-fun e!787966 () Bool)

(assert (=> b!1391455 e!787966))

(declare-fun res!931433 () Bool)

(assert (=> b!1391455 (=> (not res!931433) (not e!787966))))

(declare-datatypes ((array!95159 0))(
  ( (array!95160 (arr!45938 (Array (_ BitVec 32) (_ BitVec 64))) (size!46489 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95159)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95159 (_ BitVec 32)) Bool)

(assert (=> b!1391455 (= res!931433 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46508 0))(
  ( (Unit!46509) )
))
(declare-fun lt!611172 () Unit!46508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46508)

(assert (=> b!1391455 (= lt!611172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95159 (_ BitVec 32)) SeekEntryResult!10277)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391455 (= lt!611173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) (select (arr!45938 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391456 () Bool)

(declare-fun res!931435 () Bool)

(assert (=> b!1391456 (=> (not res!931435) (not e!787967))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391456 (= res!931435 (and (= (size!46489 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46489 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46489 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391457 () Bool)

(declare-fun res!931434 () Bool)

(assert (=> b!1391457 (=> (not res!931434) (not e!787967))))

(assert (=> b!1391457 (= res!931434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931437 () Bool)

(assert (=> start!119406 (=> (not res!931437) (not e!787967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119406 (= res!931437 (validMask!0 mask!2840))))

(assert (=> start!119406 e!787967))

(assert (=> start!119406 true))

(declare-fun array_inv!34883 (array!95159) Bool)

(assert (=> start!119406 (array_inv!34883 a!2901)))

(declare-fun b!1391458 () Bool)

(declare-fun res!931431 () Bool)

(assert (=> b!1391458 (=> (not res!931431) (not e!787967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391458 (= res!931431 (validKeyInArray!0 (select (arr!45938 a!2901) i!1037)))))

(declare-fun b!1391459 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95159 (_ BitVec 32)) SeekEntryResult!10277)

(assert (=> b!1391459 (= e!787966 (= (seekEntryOrOpen!0 (select (arr!45938 a!2901) j!112) a!2901 mask!2840) (Found!10277 j!112)))))

(declare-fun b!1391460 () Bool)

(declare-fun res!931436 () Bool)

(assert (=> b!1391460 (=> (not res!931436) (not e!787967))))

(declare-datatypes ((List!32637 0))(
  ( (Nil!32634) (Cons!32633 (h!33857 (_ BitVec 64)) (t!47338 List!32637)) )
))
(declare-fun arrayNoDuplicates!0 (array!95159 (_ BitVec 32) List!32637) Bool)

(assert (=> b!1391460 (= res!931436 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32634))))

(declare-fun b!1391461 () Bool)

(declare-fun res!931432 () Bool)

(assert (=> b!1391461 (=> (not res!931432) (not e!787967))))

(assert (=> b!1391461 (= res!931432 (validKeyInArray!0 (select (arr!45938 a!2901) j!112)))))

(assert (= (and start!119406 res!931437) b!1391456))

(assert (= (and b!1391456 res!931435) b!1391458))

(assert (= (and b!1391458 res!931431) b!1391461))

(assert (= (and b!1391461 res!931432) b!1391457))

(assert (= (and b!1391457 res!931434) b!1391460))

(assert (= (and b!1391460 res!931436) b!1391455))

(assert (= (and b!1391455 res!931433) b!1391459))

(declare-fun m!1277317 () Bool)

(assert (=> start!119406 m!1277317))

(declare-fun m!1277319 () Bool)

(assert (=> start!119406 m!1277319))

(declare-fun m!1277321 () Bool)

(assert (=> b!1391461 m!1277321))

(assert (=> b!1391461 m!1277321))

(declare-fun m!1277323 () Bool)

(assert (=> b!1391461 m!1277323))

(declare-fun m!1277325 () Bool)

(assert (=> b!1391460 m!1277325))

(declare-fun m!1277327 () Bool)

(assert (=> b!1391458 m!1277327))

(assert (=> b!1391458 m!1277327))

(declare-fun m!1277329 () Bool)

(assert (=> b!1391458 m!1277329))

(assert (=> b!1391459 m!1277321))

(assert (=> b!1391459 m!1277321))

(declare-fun m!1277331 () Bool)

(assert (=> b!1391459 m!1277331))

(assert (=> b!1391455 m!1277321))

(declare-fun m!1277333 () Bool)

(assert (=> b!1391455 m!1277333))

(assert (=> b!1391455 m!1277321))

(declare-fun m!1277335 () Bool)

(assert (=> b!1391455 m!1277335))

(assert (=> b!1391455 m!1277333))

(assert (=> b!1391455 m!1277321))

(declare-fun m!1277337 () Bool)

(assert (=> b!1391455 m!1277337))

(declare-fun m!1277339 () Bool)

(assert (=> b!1391455 m!1277339))

(declare-fun m!1277341 () Bool)

(assert (=> b!1391457 m!1277341))

(check-sat (not start!119406) (not b!1391461) (not b!1391459) (not b!1391458) (not b!1391460) (not b!1391457) (not b!1391455))
(check-sat)
(get-model)

(declare-fun b!1391491 () Bool)

(declare-fun e!787985 () Bool)

(declare-fun call!66741 () Bool)

(assert (=> b!1391491 (= e!787985 call!66741)))

(declare-fun b!1391492 () Bool)

(declare-fun e!787984 () Bool)

(declare-fun e!787983 () Bool)

(assert (=> b!1391492 (= e!787984 e!787983)))

(declare-fun c!129464 () Bool)

(assert (=> b!1391492 (= c!129464 (validKeyInArray!0 (select (arr!45938 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66738 () Bool)

(assert (=> bm!66738 (= call!66741 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391494 () Bool)

(assert (=> b!1391494 (= e!787983 call!66741)))

(declare-fun d!150277 () Bool)

(declare-fun res!931464 () Bool)

(assert (=> d!150277 (=> res!931464 e!787984)))

(assert (=> d!150277 (= res!931464 (bvsge #b00000000000000000000000000000000 (size!46489 a!2901)))))

(assert (=> d!150277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787984)))

(declare-fun b!1391493 () Bool)

(assert (=> b!1391493 (= e!787983 e!787985)))

(declare-fun lt!611186 () (_ BitVec 64))

(assert (=> b!1391493 (= lt!611186 (select (arr!45938 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611187 () Unit!46508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95159 (_ BitVec 64) (_ BitVec 32)) Unit!46508)

(assert (=> b!1391493 (= lt!611187 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611186 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391493 (arrayContainsKey!0 a!2901 lt!611186 #b00000000000000000000000000000000)))

(declare-fun lt!611188 () Unit!46508)

(assert (=> b!1391493 (= lt!611188 lt!611187)))

(declare-fun res!931463 () Bool)

(assert (=> b!1391493 (= res!931463 (= (seekEntryOrOpen!0 (select (arr!45938 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10277 #b00000000000000000000000000000000)))))

(assert (=> b!1391493 (=> (not res!931463) (not e!787985))))

(assert (= (and d!150277 (not res!931464)) b!1391492))

(assert (= (and b!1391492 c!129464) b!1391493))

(assert (= (and b!1391492 (not c!129464)) b!1391494))

(assert (= (and b!1391493 res!931463) b!1391491))

(assert (= (or b!1391491 b!1391494) bm!66738))

(declare-fun m!1277369 () Bool)

(assert (=> b!1391492 m!1277369))

(assert (=> b!1391492 m!1277369))

(declare-fun m!1277371 () Bool)

(assert (=> b!1391492 m!1277371))

(declare-fun m!1277373 () Bool)

(assert (=> bm!66738 m!1277373))

(assert (=> b!1391493 m!1277369))

(declare-fun m!1277375 () Bool)

(assert (=> b!1391493 m!1277375))

(declare-fun m!1277377 () Bool)

(assert (=> b!1391493 m!1277377))

(assert (=> b!1391493 m!1277369))

(declare-fun m!1277379 () Bool)

(assert (=> b!1391493 m!1277379))

(assert (=> b!1391457 d!150277))

(declare-fun b!1391495 () Bool)

(declare-fun e!787988 () Bool)

(declare-fun call!66742 () Bool)

(assert (=> b!1391495 (= e!787988 call!66742)))

(declare-fun b!1391496 () Bool)

(declare-fun e!787987 () Bool)

(declare-fun e!787986 () Bool)

(assert (=> b!1391496 (= e!787987 e!787986)))

(declare-fun c!129465 () Bool)

(assert (=> b!1391496 (= c!129465 (validKeyInArray!0 (select (arr!45938 a!2901) j!112)))))

(declare-fun bm!66739 () Bool)

(assert (=> bm!66739 (= call!66742 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391498 () Bool)

(assert (=> b!1391498 (= e!787986 call!66742)))

(declare-fun d!150283 () Bool)

(declare-fun res!931466 () Bool)

(assert (=> d!150283 (=> res!931466 e!787987)))

(assert (=> d!150283 (= res!931466 (bvsge j!112 (size!46489 a!2901)))))

(assert (=> d!150283 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787987)))

(declare-fun b!1391497 () Bool)

(assert (=> b!1391497 (= e!787986 e!787988)))

(declare-fun lt!611189 () (_ BitVec 64))

(assert (=> b!1391497 (= lt!611189 (select (arr!45938 a!2901) j!112))))

(declare-fun lt!611190 () Unit!46508)

(assert (=> b!1391497 (= lt!611190 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611189 j!112))))

(assert (=> b!1391497 (arrayContainsKey!0 a!2901 lt!611189 #b00000000000000000000000000000000)))

(declare-fun lt!611191 () Unit!46508)

(assert (=> b!1391497 (= lt!611191 lt!611190)))

(declare-fun res!931465 () Bool)

(assert (=> b!1391497 (= res!931465 (= (seekEntryOrOpen!0 (select (arr!45938 a!2901) j!112) a!2901 mask!2840) (Found!10277 j!112)))))

(assert (=> b!1391497 (=> (not res!931465) (not e!787988))))

(assert (= (and d!150283 (not res!931466)) b!1391496))

(assert (= (and b!1391496 c!129465) b!1391497))

(assert (= (and b!1391496 (not c!129465)) b!1391498))

(assert (= (and b!1391497 res!931465) b!1391495))

(assert (= (or b!1391495 b!1391498) bm!66739))

(assert (=> b!1391496 m!1277321))

(assert (=> b!1391496 m!1277321))

(assert (=> b!1391496 m!1277323))

(declare-fun m!1277381 () Bool)

(assert (=> bm!66739 m!1277381))

(assert (=> b!1391497 m!1277321))

(declare-fun m!1277383 () Bool)

(assert (=> b!1391497 m!1277383))

(declare-fun m!1277385 () Bool)

(assert (=> b!1391497 m!1277385))

(assert (=> b!1391497 m!1277321))

(assert (=> b!1391497 m!1277331))

(assert (=> b!1391455 d!150283))

(declare-fun d!150285 () Bool)

(assert (=> d!150285 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611200 () Unit!46508)

(declare-fun choose!38 (array!95159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46508)

(assert (=> d!150285 (= lt!611200 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150285 (validMask!0 mask!2840)))

(assert (=> d!150285 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611200)))

(declare-fun bs!40478 () Bool)

(assert (= bs!40478 d!150285))

(assert (=> bs!40478 m!1277339))

(declare-fun m!1277387 () Bool)

(assert (=> bs!40478 m!1277387))

(assert (=> bs!40478 m!1277317))

(assert (=> b!1391455 d!150285))

(declare-fun b!1391555 () Bool)

(declare-fun lt!611223 () SeekEntryResult!10277)

(assert (=> b!1391555 (and (bvsge (index!43480 lt!611223) #b00000000000000000000000000000000) (bvslt (index!43480 lt!611223) (size!46489 a!2901)))))

(declare-fun res!931485 () Bool)

(assert (=> b!1391555 (= res!931485 (= (select (arr!45938 a!2901) (index!43480 lt!611223)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788025 () Bool)

(assert (=> b!1391555 (=> res!931485 e!788025)))

(declare-fun e!788027 () SeekEntryResult!10277)

(declare-fun b!1391556 () Bool)

(assert (=> b!1391556 (= e!788027 (Intermediate!10277 true (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1391557 () Bool)

(declare-fun e!788026 () SeekEntryResult!10277)

(assert (=> b!1391557 (= e!788027 e!788026)))

(declare-fun c!129486 () Bool)

(declare-fun lt!611224 () (_ BitVec 64))

(assert (=> b!1391557 (= c!129486 (or (= lt!611224 (select (arr!45938 a!2901) j!112)) (= (bvadd lt!611224 lt!611224) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!150287 () Bool)

(declare-fun e!788024 () Bool)

(assert (=> d!150287 e!788024))

(declare-fun c!129487 () Bool)

(assert (=> d!150287 (= c!129487 (and ((_ is Intermediate!10277) lt!611223) (undefined!11089 lt!611223)))))

(assert (=> d!150287 (= lt!611223 e!788027)))

(declare-fun c!129488 () Bool)

(assert (=> d!150287 (= c!129488 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150287 (= lt!611224 (select (arr!45938 a!2901) (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840)))))

(assert (=> d!150287 (validMask!0 mask!2840)))

(assert (=> d!150287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) (select (arr!45938 a!2901) j!112) a!2901 mask!2840) lt!611223)))

(declare-fun b!1391558 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391558 (= e!788026 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45938 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391559 () Bool)

(declare-fun e!788023 () Bool)

(assert (=> b!1391559 (= e!788024 e!788023)))

(declare-fun res!931483 () Bool)

(assert (=> b!1391559 (= res!931483 (and ((_ is Intermediate!10277) lt!611223) (not (undefined!11089 lt!611223)) (bvslt (x!125162 lt!611223) #b01111111111111111111111111111110) (bvsge (x!125162 lt!611223) #b00000000000000000000000000000000) (bvsge (x!125162 lt!611223) #b00000000000000000000000000000000)))))

(assert (=> b!1391559 (=> (not res!931483) (not e!788023))))

(declare-fun b!1391560 () Bool)

(assert (=> b!1391560 (= e!788026 (Intermediate!10277 false (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1391561 () Bool)

(assert (=> b!1391561 (and (bvsge (index!43480 lt!611223) #b00000000000000000000000000000000) (bvslt (index!43480 lt!611223) (size!46489 a!2901)))))

(declare-fun res!931484 () Bool)

(assert (=> b!1391561 (= res!931484 (= (select (arr!45938 a!2901) (index!43480 lt!611223)) (select (arr!45938 a!2901) j!112)))))

(assert (=> b!1391561 (=> res!931484 e!788025)))

(assert (=> b!1391561 (= e!788023 e!788025)))

(declare-fun b!1391562 () Bool)

(assert (=> b!1391562 (= e!788024 (bvsge (x!125162 lt!611223) #b01111111111111111111111111111110))))

(declare-fun b!1391563 () Bool)

(assert (=> b!1391563 (and (bvsge (index!43480 lt!611223) #b00000000000000000000000000000000) (bvslt (index!43480 lt!611223) (size!46489 a!2901)))))

(assert (=> b!1391563 (= e!788025 (= (select (arr!45938 a!2901) (index!43480 lt!611223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!150287 c!129488) b!1391556))

(assert (= (and d!150287 (not c!129488)) b!1391557))

(assert (= (and b!1391557 c!129486) b!1391560))

(assert (= (and b!1391557 (not c!129486)) b!1391558))

(assert (= (and d!150287 c!129487) b!1391562))

(assert (= (and d!150287 (not c!129487)) b!1391559))

(assert (= (and b!1391559 res!931483) b!1391561))

(assert (= (and b!1391561 (not res!931484)) b!1391555))

(assert (= (and b!1391555 (not res!931485)) b!1391563))

(declare-fun m!1277411 () Bool)

(assert (=> b!1391555 m!1277411))

(assert (=> b!1391561 m!1277411))

(assert (=> d!150287 m!1277333))

(declare-fun m!1277413 () Bool)

(assert (=> d!150287 m!1277413))

(assert (=> d!150287 m!1277317))

(assert (=> b!1391558 m!1277333))

(declare-fun m!1277415 () Bool)

(assert (=> b!1391558 m!1277415))

(assert (=> b!1391558 m!1277415))

(assert (=> b!1391558 m!1277321))

(declare-fun m!1277417 () Bool)

(assert (=> b!1391558 m!1277417))

(assert (=> b!1391563 m!1277411))

(assert (=> b!1391455 d!150287))

(declare-fun d!150297 () Bool)

(declare-fun lt!611240 () (_ BitVec 32))

(declare-fun lt!611239 () (_ BitVec 32))

(assert (=> d!150297 (= lt!611240 (bvmul (bvxor lt!611239 (bvlshr lt!611239 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150297 (= lt!611239 ((_ extract 31 0) (bvand (bvxor (select (arr!45938 a!2901) j!112) (bvlshr (select (arr!45938 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150297 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931486 (let ((h!33859 ((_ extract 31 0) (bvand (bvxor (select (arr!45938 a!2901) j!112) (bvlshr (select (arr!45938 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125165 (bvmul (bvxor h!33859 (bvlshr h!33859 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125165 (bvlshr x!125165 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931486 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931486 #b00000000000000000000000000000000))))))

(assert (=> d!150297 (= (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) (bvand (bvxor lt!611240 (bvlshr lt!611240 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391455 d!150297))

(declare-fun b!1391600 () Bool)

(declare-fun e!788051 () Bool)

(declare-fun e!788052 () Bool)

(assert (=> b!1391600 (= e!788051 e!788052)))

(declare-fun c!129502 () Bool)

(assert (=> b!1391600 (= c!129502 (validKeyInArray!0 (select (arr!45938 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391601 () Bool)

(declare-fun e!788053 () Bool)

(declare-fun contains!9779 (List!32637 (_ BitVec 64)) Bool)

(assert (=> b!1391601 (= e!788053 (contains!9779 Nil!32634 (select (arr!45938 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66749 () Bool)

(declare-fun call!66752 () Bool)

(assert (=> bm!66749 (= call!66752 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129502 (Cons!32633 (select (arr!45938 a!2901) #b00000000000000000000000000000000) Nil!32634) Nil!32634)))))

(declare-fun b!1391602 () Bool)

(assert (=> b!1391602 (= e!788052 call!66752)))

(declare-fun b!1391603 () Bool)

(assert (=> b!1391603 (= e!788052 call!66752)))

(declare-fun d!150303 () Bool)

(declare-fun res!931498 () Bool)

(declare-fun e!788054 () Bool)

(assert (=> d!150303 (=> res!931498 e!788054)))

(assert (=> d!150303 (= res!931498 (bvsge #b00000000000000000000000000000000 (size!46489 a!2901)))))

(assert (=> d!150303 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32634) e!788054)))

(declare-fun b!1391604 () Bool)

(assert (=> b!1391604 (= e!788054 e!788051)))

(declare-fun res!931497 () Bool)

(assert (=> b!1391604 (=> (not res!931497) (not e!788051))))

(assert (=> b!1391604 (= res!931497 (not e!788053))))

(declare-fun res!931499 () Bool)

(assert (=> b!1391604 (=> (not res!931499) (not e!788053))))

(assert (=> b!1391604 (= res!931499 (validKeyInArray!0 (select (arr!45938 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150303 (not res!931498)) b!1391604))

(assert (= (and b!1391604 res!931499) b!1391601))

(assert (= (and b!1391604 res!931497) b!1391600))

(assert (= (and b!1391600 c!129502) b!1391602))

(assert (= (and b!1391600 (not c!129502)) b!1391603))

(assert (= (or b!1391602 b!1391603) bm!66749))

(assert (=> b!1391600 m!1277369))

(assert (=> b!1391600 m!1277369))

(assert (=> b!1391600 m!1277371))

(assert (=> b!1391601 m!1277369))

(assert (=> b!1391601 m!1277369))

(declare-fun m!1277449 () Bool)

(assert (=> b!1391601 m!1277449))

(assert (=> bm!66749 m!1277369))

(declare-fun m!1277451 () Bool)

(assert (=> bm!66749 m!1277451))

(assert (=> b!1391604 m!1277369))

(assert (=> b!1391604 m!1277369))

(assert (=> b!1391604 m!1277371))

(assert (=> b!1391460 d!150303))

(declare-fun d!150313 () Bool)

(assert (=> d!150313 (= (validKeyInArray!0 (select (arr!45938 a!2901) j!112)) (and (not (= (select (arr!45938 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45938 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391461 d!150313))

(declare-fun b!1391663 () Bool)

(declare-fun e!788093 () SeekEntryResult!10277)

(declare-fun lt!611274 () SeekEntryResult!10277)

(assert (=> b!1391663 (= e!788093 (Found!10277 (index!43480 lt!611274)))))

(declare-fun b!1391664 () Bool)

(declare-fun e!788092 () SeekEntryResult!10277)

(assert (=> b!1391664 (= e!788092 (MissingZero!10277 (index!43480 lt!611274)))))

(declare-fun b!1391665 () Bool)

(declare-fun e!788091 () SeekEntryResult!10277)

(assert (=> b!1391665 (= e!788091 Undefined!10277)))

(declare-fun b!1391666 () Bool)

(assert (=> b!1391666 (= e!788091 e!788093)))

(declare-fun lt!611273 () (_ BitVec 64))

(assert (=> b!1391666 (= lt!611273 (select (arr!45938 a!2901) (index!43480 lt!611274)))))

(declare-fun c!129524 () Bool)

(assert (=> b!1391666 (= c!129524 (= lt!611273 (select (arr!45938 a!2901) j!112)))))

(declare-fun d!150315 () Bool)

(declare-fun lt!611275 () SeekEntryResult!10277)

(assert (=> d!150315 (and (or ((_ is Undefined!10277) lt!611275) (not ((_ is Found!10277) lt!611275)) (and (bvsge (index!43479 lt!611275) #b00000000000000000000000000000000) (bvslt (index!43479 lt!611275) (size!46489 a!2901)))) (or ((_ is Undefined!10277) lt!611275) ((_ is Found!10277) lt!611275) (not ((_ is MissingZero!10277) lt!611275)) (and (bvsge (index!43478 lt!611275) #b00000000000000000000000000000000) (bvslt (index!43478 lt!611275) (size!46489 a!2901)))) (or ((_ is Undefined!10277) lt!611275) ((_ is Found!10277) lt!611275) ((_ is MissingZero!10277) lt!611275) (not ((_ is MissingVacant!10277) lt!611275)) (and (bvsge (index!43481 lt!611275) #b00000000000000000000000000000000) (bvslt (index!43481 lt!611275) (size!46489 a!2901)))) (or ((_ is Undefined!10277) lt!611275) (ite ((_ is Found!10277) lt!611275) (= (select (arr!45938 a!2901) (index!43479 lt!611275)) (select (arr!45938 a!2901) j!112)) (ite ((_ is MissingZero!10277) lt!611275) (= (select (arr!45938 a!2901) (index!43478 lt!611275)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10277) lt!611275) (= (select (arr!45938 a!2901) (index!43481 lt!611275)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150315 (= lt!611275 e!788091)))

(declare-fun c!129522 () Bool)

(assert (=> d!150315 (= c!129522 (and ((_ is Intermediate!10277) lt!611274) (undefined!11089 lt!611274)))))

(assert (=> d!150315 (= lt!611274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45938 a!2901) j!112) mask!2840) (select (arr!45938 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150315 (validMask!0 mask!2840)))

(assert (=> d!150315 (= (seekEntryOrOpen!0 (select (arr!45938 a!2901) j!112) a!2901 mask!2840) lt!611275)))

(declare-fun b!1391667 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95159 (_ BitVec 32)) SeekEntryResult!10277)

(assert (=> b!1391667 (= e!788092 (seekKeyOrZeroReturnVacant!0 (x!125162 lt!611274) (index!43480 lt!611274) (index!43480 lt!611274) (select (arr!45938 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391668 () Bool)

(declare-fun c!129523 () Bool)

(assert (=> b!1391668 (= c!129523 (= lt!611273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391668 (= e!788093 e!788092)))

(assert (= (and d!150315 c!129522) b!1391665))

(assert (= (and d!150315 (not c!129522)) b!1391666))

(assert (= (and b!1391666 c!129524) b!1391663))

(assert (= (and b!1391666 (not c!129524)) b!1391668))

(assert (= (and b!1391668 c!129523) b!1391664))

(assert (= (and b!1391668 (not c!129523)) b!1391667))

(declare-fun m!1277473 () Bool)

(assert (=> b!1391666 m!1277473))

(declare-fun m!1277475 () Bool)

(assert (=> d!150315 m!1277475))

(assert (=> d!150315 m!1277333))

(assert (=> d!150315 m!1277321))

(assert (=> d!150315 m!1277337))

(assert (=> d!150315 m!1277317))

(declare-fun m!1277477 () Bool)

(assert (=> d!150315 m!1277477))

(declare-fun m!1277479 () Bool)

(assert (=> d!150315 m!1277479))

(assert (=> d!150315 m!1277321))

(assert (=> d!150315 m!1277333))

(assert (=> b!1391667 m!1277321))

(declare-fun m!1277481 () Bool)

(assert (=> b!1391667 m!1277481))

(assert (=> b!1391459 d!150315))

(declare-fun d!150327 () Bool)

(assert (=> d!150327 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119406 d!150327))

(declare-fun d!150333 () Bool)

(assert (=> d!150333 (= (array_inv!34883 a!2901) (bvsge (size!46489 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119406 d!150333))

(declare-fun d!150335 () Bool)

(assert (=> d!150335 (= (validKeyInArray!0 (select (arr!45938 a!2901) i!1037)) (and (not (= (select (arr!45938 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45938 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391458 d!150335))

(check-sat (not bm!66738) (not b!1391600) (not b!1391601) (not bm!66749) (not d!150285) (not b!1391492) (not b!1391496) (not b!1391493) (not b!1391604) (not b!1391558) (not bm!66739) (not d!150315) (not b!1391667) (not d!150287) (not b!1391497))
(check-sat)
