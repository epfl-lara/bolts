; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93022 () Bool)

(assert start!93022)

(declare-fun b!1055280 () Bool)

(declare-fun e!599771 () Bool)

(declare-datatypes ((List!22441 0))(
  ( (Nil!22438) (Cons!22437 (h!23646 (_ BitVec 64)) (t!31755 List!22441)) )
))
(declare-fun contains!6199 (List!22441 (_ BitVec 64)) Bool)

(assert (=> b!1055280 (= e!599771 (not (contains!6199 Nil!22438 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1055281 () Bool)

(declare-fun e!599774 () Bool)

(assert (=> b!1055281 (= e!599774 e!599771)))

(declare-fun res!704249 () Bool)

(assert (=> b!1055281 (=> (not res!704249) (not e!599771))))

(assert (=> b!1055281 (= res!704249 (not (contains!6199 Nil!22438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1055282 () Bool)

(declare-fun e!599767 () Bool)

(declare-fun e!599773 () Bool)

(assert (=> b!1055282 (= e!599767 e!599773)))

(declare-fun res!704252 () Bool)

(assert (=> b!1055282 (=> (not res!704252) (not e!599773))))

(declare-fun lt!465712 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055282 (= res!704252 (not (= lt!465712 i!1381)))))

(declare-datatypes ((array!66546 0))(
  ( (array!66547 (arr!31998 (Array (_ BitVec 32) (_ BitVec 64))) (size!32535 (_ BitVec 32))) )
))
(declare-fun lt!465714 () array!66546)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66546 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055282 (= lt!465712 (arrayScanForKey!0 lt!465714 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055283 () Bool)

(declare-fun res!704248 () Bool)

(declare-fun e!599772 () Bool)

(assert (=> b!1055283 (=> (not res!704248) (not e!599772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055283 (= res!704248 (validKeyInArray!0 k!2747))))

(declare-fun res!704254 () Bool)

(assert (=> start!93022 (=> (not res!704254) (not e!599772))))

(declare-fun a!3488 () array!66546)

(assert (=> start!93022 (= res!704254 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32535 a!3488)) (bvslt (size!32535 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93022 e!599772))

(assert (=> start!93022 true))

(declare-fun array_inv!24620 (array!66546) Bool)

(assert (=> start!93022 (array_inv!24620 a!3488)))

(declare-fun b!1055284 () Bool)

(declare-fun e!599770 () Bool)

(declare-fun e!599768 () Bool)

(assert (=> b!1055284 (= e!599770 e!599768)))

(declare-fun res!704251 () Bool)

(assert (=> b!1055284 (=> res!704251 e!599768)))

(assert (=> b!1055284 (= res!704251 (bvsle lt!465712 i!1381))))

(declare-fun b!1055285 () Bool)

(declare-fun res!704253 () Bool)

(assert (=> b!1055285 (=> res!704253 e!599774)))

(declare-fun noDuplicate!1568 (List!22441) Bool)

(assert (=> b!1055285 (= res!704253 (not (noDuplicate!1568 Nil!22438)))))

(declare-fun b!1055286 () Bool)

(declare-fun res!704256 () Bool)

(assert (=> b!1055286 (=> (not res!704256) (not e!599772))))

(assert (=> b!1055286 (= res!704256 (= (select (arr!31998 a!3488) i!1381) k!2747))))

(declare-fun b!1055287 () Bool)

(declare-fun e!599766 () Bool)

(assert (=> b!1055287 (= e!599773 (not e!599766))))

(declare-fun res!704247 () Bool)

(assert (=> b!1055287 (=> res!704247 e!599766)))

(assert (=> b!1055287 (= res!704247 (bvsle lt!465712 i!1381))))

(assert (=> b!1055287 e!599770))

(declare-fun res!704255 () Bool)

(assert (=> b!1055287 (=> (not res!704255) (not e!599770))))

(assert (=> b!1055287 (= res!704255 (= (select (store (arr!31998 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465712) k!2747))))

(declare-fun b!1055288 () Bool)

(declare-fun arrayContainsKey!0 (array!66546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055288 (= e!599768 (arrayContainsKey!0 a!3488 k!2747 lt!465712))))

(declare-fun b!1055289 () Bool)

(assert (=> b!1055289 (= e!599772 e!599767)))

(declare-fun res!704246 () Bool)

(assert (=> b!1055289 (=> (not res!704246) (not e!599767))))

(assert (=> b!1055289 (= res!704246 (arrayContainsKey!0 lt!465714 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055289 (= lt!465714 (array!66547 (store (arr!31998 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32535 a!3488)))))

(declare-fun b!1055290 () Bool)

(declare-fun res!704250 () Bool)

(assert (=> b!1055290 (=> (not res!704250) (not e!599772))))

(declare-fun arrayNoDuplicates!0 (array!66546 (_ BitVec 32) List!22441) Bool)

(assert (=> b!1055290 (= res!704250 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22438))))

(declare-fun b!1055291 () Bool)

(assert (=> b!1055291 (= e!599766 e!599774)))

(declare-fun res!704245 () Bool)

(assert (=> b!1055291 (=> res!704245 e!599774)))

(assert (=> b!1055291 (= res!704245 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32535 a!3488)))))

(assert (=> b!1055291 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34563 0))(
  ( (Unit!34564) )
))
(declare-fun lt!465715 () Unit!34563)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66546 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34563)

(assert (=> b!1055291 (= lt!465715 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465712 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055291 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22438)))

(declare-fun lt!465713 () Unit!34563)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66546 (_ BitVec 32) (_ BitVec 32)) Unit!34563)

(assert (=> b!1055291 (= lt!465713 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!93022 res!704254) b!1055290))

(assert (= (and b!1055290 res!704250) b!1055283))

(assert (= (and b!1055283 res!704248) b!1055286))

(assert (= (and b!1055286 res!704256) b!1055289))

(assert (= (and b!1055289 res!704246) b!1055282))

(assert (= (and b!1055282 res!704252) b!1055287))

(assert (= (and b!1055287 res!704255) b!1055284))

(assert (= (and b!1055284 (not res!704251)) b!1055288))

(assert (= (and b!1055287 (not res!704247)) b!1055291))

(assert (= (and b!1055291 (not res!704245)) b!1055285))

(assert (= (and b!1055285 (not res!704253)) b!1055281))

(assert (= (and b!1055281 res!704249) b!1055280))

(declare-fun m!975421 () Bool)

(assert (=> b!1055290 m!975421))

(declare-fun m!975423 () Bool)

(assert (=> b!1055285 m!975423))

(declare-fun m!975425 () Bool)

(assert (=> b!1055286 m!975425))

(declare-fun m!975427 () Bool)

(assert (=> b!1055283 m!975427))

(declare-fun m!975429 () Bool)

(assert (=> b!1055288 m!975429))

(declare-fun m!975431 () Bool)

(assert (=> b!1055281 m!975431))

(declare-fun m!975433 () Bool)

(assert (=> start!93022 m!975433))

(declare-fun m!975435 () Bool)

(assert (=> b!1055280 m!975435))

(declare-fun m!975437 () Bool)

(assert (=> b!1055287 m!975437))

(declare-fun m!975439 () Bool)

(assert (=> b!1055287 m!975439))

(declare-fun m!975441 () Bool)

(assert (=> b!1055282 m!975441))

(declare-fun m!975443 () Bool)

(assert (=> b!1055289 m!975443))

(assert (=> b!1055289 m!975437))

(declare-fun m!975445 () Bool)

(assert (=> b!1055291 m!975445))

(declare-fun m!975447 () Bool)

(assert (=> b!1055291 m!975447))

(declare-fun m!975449 () Bool)

(assert (=> b!1055291 m!975449))

(declare-fun m!975451 () Bool)

(assert (=> b!1055291 m!975451))

(push 1)

(assert (not b!1055283))

(assert (not b!1055280))

(assert (not b!1055291))

(assert (not start!93022))

(assert (not b!1055281))

(assert (not b!1055288))

(assert (not b!1055290))

(assert (not b!1055289))

(assert (not b!1055282))

(assert (not b!1055285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128109 () Bool)

(declare-fun lt!465721 () Bool)

(declare-fun content!533 (List!22441) (Set (_ BitVec 64)))

(assert (=> d!128109 (= lt!465721 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!533 Nil!22438)))))

(declare-fun e!599802 () Bool)

(assert (=> d!128109 (= lt!465721 e!599802)))

(declare-fun res!704282 () Bool)

(assert (=> d!128109 (=> (not res!704282) (not e!599802))))

(assert (=> d!128109 (= res!704282 (is-Cons!22437 Nil!22438))))

(assert (=> d!128109 (= (contains!6199 Nil!22438 #b0000000000000000000000000000000000000000000000000000000000000000) lt!465721)))

(declare-fun b!1055320 () Bool)

(declare-fun e!599801 () Bool)

(assert (=> b!1055320 (= e!599802 e!599801)))

(declare-fun res!704281 () Bool)

(assert (=> b!1055320 (=> res!704281 e!599801)))

(assert (=> b!1055320 (= res!704281 (= (h!23646 Nil!22438) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055321 () Bool)

(assert (=> b!1055321 (= e!599801 (contains!6199 (t!31755 Nil!22438) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128109 res!704282) b!1055320))

(assert (= (and b!1055320 (not res!704281)) b!1055321))

(declare-fun m!975467 () Bool)

(assert (=> d!128109 m!975467))

(declare-fun m!975469 () Bool)

(assert (=> d!128109 m!975469))

(declare-fun m!975471 () Bool)

(assert (=> b!1055321 m!975471))

(assert (=> b!1055281 d!128109))

(declare-fun d!128117 () Bool)

(assert (=> d!128117 (= (array_inv!24620 a!3488) (bvsge (size!32535 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93022 d!128117))

(declare-fun d!128119 () Bool)

(declare-fun lt!465726 () (_ BitVec 32))

(assert (=> d!128119 (and (or (bvslt lt!465726 #b00000000000000000000000000000000) (bvsge lt!465726 (size!32535 lt!465714)) (and (bvsge lt!465726 #b00000000000000000000000000000000) (bvslt lt!465726 (size!32535 lt!465714)))) (bvsge lt!465726 #b00000000000000000000000000000000) (bvslt lt!465726 (size!32535 lt!465714)) (= (select (arr!31998 lt!465714) lt!465726) k!2747))))

(declare-fun e!599823 () (_ BitVec 32))

(assert (=> d!128119 (= lt!465726 e!599823)))

(declare-fun c!106990 () Bool)

(assert (=> d!128119 (= c!106990 (= (select (arr!31998 lt!465714) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32535 lt!465714)) (bvslt (size!32535 lt!465714) #b01111111111111111111111111111111))))

(assert (=> d!128119 (= (arrayScanForKey!0 lt!465714 k!2747 #b00000000000000000000000000000000) lt!465726)))

(declare-fun b!1055350 () Bool)

(assert (=> b!1055350 (= e!599823 #b00000000000000000000000000000000)))

(declare-fun b!1055351 () Bool)

(assert (=> b!1055351 (= e!599823 (arrayScanForKey!0 lt!465714 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128119 c!106990) b!1055350))

(assert (= (and d!128119 (not c!106990)) b!1055351))

(declare-fun m!975487 () Bool)

(assert (=> d!128119 m!975487))

(declare-fun m!975489 () Bool)

(assert (=> d!128119 m!975489))

(declare-fun m!975491 () Bool)

(assert (=> b!1055351 m!975491))

(assert (=> b!1055282 d!128119))

(declare-fun d!128125 () Bool)

(declare-fun res!704303 () Bool)

(declare-fun e!599833 () Bool)

(assert (=> d!128125 (=> res!704303 e!599833)))

(assert (=> d!128125 (= res!704303 (= (select (arr!31998 a!3488) lt!465712) k!2747))))

(assert (=> d!128125 (= (arrayContainsKey!0 a!3488 k!2747 lt!465712) e!599833)))

(declare-fun b!1055362 () Bool)

(declare-fun e!599834 () Bool)

(assert (=> b!1055362 (= e!599833 e!599834)))

(declare-fun res!704304 () Bool)

(assert (=> b!1055362 (=> (not res!704304) (not e!599834))))

(assert (=> b!1055362 (= res!704304 (bvslt (bvadd lt!465712 #b00000000000000000000000000000001) (size!32535 a!3488)))))

(declare-fun b!1055363 () Bool)

(assert (=> b!1055363 (= e!599834 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465712 #b00000000000000000000000000000001)))))

(assert (= (and d!128125 (not res!704303)) b!1055362))

(assert (= (and b!1055362 res!704304) b!1055363))

(declare-fun m!975501 () Bool)

(assert (=> d!128125 m!975501))

(declare-fun m!975503 () Bool)

(assert (=> b!1055363 m!975503))

(assert (=> b!1055288 d!128125))

(declare-fun d!128131 () Bool)

(assert (=> d!128131 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055283 d!128131))

(declare-fun d!128137 () Bool)

(declare-fun res!704309 () Bool)

(declare-fun e!599839 () Bool)

(assert (=> d!128137 (=> res!704309 e!599839)))

(assert (=> d!128137 (= res!704309 (= (select (arr!31998 lt!465714) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128137 (= (arrayContainsKey!0 lt!465714 k!2747 #b00000000000000000000000000000000) e!599839)))

(declare-fun b!1055368 () Bool)

(declare-fun e!599840 () Bool)

(assert (=> b!1055368 (= e!599839 e!599840)))

(declare-fun res!704310 () Bool)

(assert (=> b!1055368 (=> (not res!704310) (not e!599840))))

(assert (=> b!1055368 (= res!704310 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32535 lt!465714)))))

(declare-fun b!1055369 () Bool)

(assert (=> b!1055369 (= e!599840 (arrayContainsKey!0 lt!465714 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128137 (not res!704309)) b!1055368))

(assert (= (and b!1055368 res!704310) b!1055369))

(assert (=> d!128137 m!975489))

(declare-fun m!975513 () Bool)

(assert (=> b!1055369 m!975513))

(assert (=> b!1055289 d!128137))

(declare-fun b!1055395 () Bool)

(declare-fun e!599860 () Bool)

(assert (=> b!1055395 (= e!599860 (contains!6199 Nil!22438 (select (arr!31998 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055396 () Bool)

(declare-fun e!599862 () Bool)

(declare-fun call!44805 () Bool)

(assert (=> b!1055396 (= e!599862 call!44805)))

(declare-fun d!128139 () Bool)

(declare-fun res!704324 () Bool)

(declare-fun e!599863 () Bool)

(assert (=> d!128139 (=> res!704324 e!599863)))

(assert (=> d!128139 (= res!704324 (bvsge #b00000000000000000000000000000000 (size!32535 a!3488)))))

(assert (=> d!128139 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22438) e!599863)))

(declare-fun b!1055397 () Bool)

(declare-fun e!599861 () Bool)

(assert (=> b!1055397 (= e!599863 e!599861)))

(declare-fun res!704325 () Bool)

(assert (=> b!1055397 (=> (not res!704325) (not e!599861))))

(assert (=> b!1055397 (= res!704325 (not e!599860))))

(declare-fun res!704326 () Bool)

(assert (=> b!1055397 (=> (not res!704326) (not e!599860))))

(assert (=> b!1055397 (= res!704326 (validKeyInArray!0 (select (arr!31998 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44802 () Bool)

(declare-fun c!106998 () Bool)

(assert (=> bm!44802 (= call!44805 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106998 (Cons!22437 (select (arr!31998 a!3488) #b00000000000000000000000000000000) Nil!22438) Nil!22438)))))

(declare-fun b!1055398 () Bool)

(assert (=> b!1055398 (= e!599862 call!44805)))

(declare-fun b!1055399 () Bool)

(assert (=> b!1055399 (= e!599861 e!599862)))

(assert (=> b!1055399 (= c!106998 (validKeyInArray!0 (select (arr!31998 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128139 (not res!704324)) b!1055397))

(assert (= (and b!1055397 res!704326) b!1055395))

(assert (= (and b!1055397 res!704325) b!1055399))

(assert (= (and b!1055399 c!106998) b!1055396))

(assert (= (and b!1055399 (not c!106998)) b!1055398))

(assert (= (or b!1055396 b!1055398) bm!44802))

(declare-fun m!975533 () Bool)

(assert (=> b!1055395 m!975533))

(assert (=> b!1055395 m!975533))

(declare-fun m!975535 () Bool)

(assert (=> b!1055395 m!975535))

(assert (=> b!1055397 m!975533))

(assert (=> b!1055397 m!975533))

(declare-fun m!975537 () Bool)

(assert (=> b!1055397 m!975537))

(assert (=> bm!44802 m!975533))

(declare-fun m!975539 () Bool)

(assert (=> bm!44802 m!975539))

(assert (=> b!1055399 m!975533))

(assert (=> b!1055399 m!975533))

(assert (=> b!1055399 m!975537))

(assert (=> b!1055290 d!128139))

(declare-fun d!128155 () Bool)

(declare-fun res!704339 () Bool)

(declare-fun e!599876 () Bool)

(assert (=> d!128155 (=> res!704339 e!599876)))

(assert (=> d!128155 (= res!704339 (is-Nil!22438 Nil!22438))))

(assert (=> d!128155 (= (noDuplicate!1568 Nil!22438) e!599876)))

(declare-fun b!1055412 () Bool)

(declare-fun e!599877 () Bool)

(assert (=> b!1055412 (= e!599876 e!599877)))

(declare-fun res!704340 () Bool)

(assert (=> b!1055412 (=> (not res!704340) (not e!599877))))

(assert (=> b!1055412 (= res!704340 (not (contains!6199 (t!31755 Nil!22438) (h!23646 Nil!22438))))))

(declare-fun b!1055413 () Bool)

(assert (=> b!1055413 (= e!599877 (noDuplicate!1568 (t!31755 Nil!22438)))))

(assert (= (and d!128155 (not res!704339)) b!1055412))

(assert (= (and b!1055412 res!704340) b!1055413))

(declare-fun m!975543 () Bool)

(assert (=> b!1055412 m!975543))

(declare-fun m!975545 () Bool)

(assert (=> b!1055413 m!975545))

(assert (=> b!1055285 d!128155))

(declare-fun d!128159 () Bool)

(declare-fun lt!465745 () Bool)

(assert (=> d!128159 (= lt!465745 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!533 Nil!22438)))))

(declare-fun e!599883 () Bool)

(assert (=> d!128159 (= lt!465745 e!599883)))

(declare-fun res!704346 () Bool)

(assert (=> d!128159 (=> (not res!704346) (not e!599883))))

(assert (=> d!128159 (= res!704346 (is-Cons!22437 Nil!22438))))

(assert (=> d!128159 (= (contains!6199 Nil!22438 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465745)))

(declare-fun b!1055418 () Bool)

(declare-fun e!599882 () Bool)

(assert (=> b!1055418 (= e!599883 e!599882)))

(declare-fun res!704345 () Bool)

(assert (=> b!1055418 (=> res!704345 e!599882)))

(assert (=> b!1055418 (= res!704345 (= (h!23646 Nil!22438) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055419 () Bool)

(assert (=> b!1055419 (= e!599882 (contains!6199 (t!31755 Nil!22438) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128159 res!704346) b!1055418))

(assert (= (and b!1055418 (not res!704345)) b!1055419))

(assert (=> d!128159 m!975467))

(declare-fun m!975553 () Bool)

(assert (=> d!128159 m!975553))

(declare-fun m!975555 () Bool)

(assert (=> b!1055419 m!975555))

(assert (=> b!1055280 d!128159))

(declare-fun d!128163 () Bool)

(declare-fun res!704351 () Bool)

(declare-fun e!599888 () Bool)

(assert (=> d!128163 (=> res!704351 e!599888)))

(assert (=> d!128163 (= res!704351 (= (select (arr!31998 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k!2747))))

(assert (=> d!128163 (= (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599888)))

(declare-fun b!1055424 () Bool)

(declare-fun e!599889 () Bool)

(assert (=> b!1055424 (= e!599888 e!599889)))

(declare-fun res!704352 () Bool)

(assert (=> b!1055424 (=> (not res!704352) (not e!599889))))

(assert (=> b!1055424 (= res!704352 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32535 a!3488)))))

(declare-fun b!1055425 () Bool)

(assert (=> b!1055425 (= e!599889 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128163 (not res!704351)) b!1055424))

(assert (= (and b!1055424 res!704352) b!1055425))

