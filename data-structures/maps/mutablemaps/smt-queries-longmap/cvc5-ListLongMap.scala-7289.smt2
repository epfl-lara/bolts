; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93162 () Bool)

(assert start!93162)

(declare-fun b!1056283 () Bool)

(declare-fun e!600529 () Bool)

(declare-fun e!600526 () Bool)

(assert (=> b!1056283 (= e!600529 e!600526)))

(declare-fun res!705174 () Bool)

(assert (=> b!1056283 (=> res!705174 e!600526)))

(declare-fun lt!466065 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056283 (= res!705174 (or (bvsgt lt!466065 i!1381) (bvsle i!1381 lt!466065)))))

(declare-fun b!1056284 () Bool)

(declare-fun res!705171 () Bool)

(declare-fun e!600528 () Bool)

(assert (=> b!1056284 (=> (not res!705171) (not e!600528))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056284 (= res!705171 (validKeyInArray!0 k!2747))))

(declare-fun b!1056285 () Bool)

(declare-fun res!705172 () Bool)

(assert (=> b!1056285 (=> (not res!705172) (not e!600528))))

(declare-datatypes ((array!66608 0))(
  ( (array!66609 (arr!32026 (Array (_ BitVec 32) (_ BitVec 64))) (size!32563 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66608)

(assert (=> b!1056285 (= res!705172 (= (select (arr!32026 a!3488) i!1381) k!2747))))

(declare-fun b!1056286 () Bool)

(declare-fun e!600527 () Bool)

(assert (=> b!1056286 (= e!600528 e!600527)))

(declare-fun res!705170 () Bool)

(assert (=> b!1056286 (=> (not res!705170) (not e!600527))))

(declare-fun lt!466066 () array!66608)

(declare-fun arrayContainsKey!0 (array!66608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056286 (= res!705170 (arrayContainsKey!0 lt!466066 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056286 (= lt!466066 (array!66609 (store (arr!32026 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32563 a!3488)))))

(declare-fun b!1056287 () Bool)

(declare-fun res!705176 () Bool)

(assert (=> b!1056287 (=> (not res!705176) (not e!600528))))

(declare-datatypes ((List!22469 0))(
  ( (Nil!22466) (Cons!22465 (h!23674 (_ BitVec 64)) (t!31783 List!22469)) )
))
(declare-fun arrayNoDuplicates!0 (array!66608 (_ BitVec 32) List!22469) Bool)

(assert (=> b!1056287 (= res!705176 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22466))))

(declare-fun b!1056288 () Bool)

(declare-fun e!600530 () Bool)

(assert (=> b!1056288 (= e!600530 (not (or (bvsgt lt!466065 i!1381) (bvsle i!1381 lt!466065) (bvsgt #b00000000000000000000000000000000 (size!32563 a!3488)) (and (bvsge lt!466065 #b00000000000000000000000000000000) (bvsle lt!466065 (size!32563 a!3488))))))))

(assert (=> b!1056288 e!600529))

(declare-fun res!705175 () Bool)

(assert (=> b!1056288 (=> (not res!705175) (not e!600529))))

(assert (=> b!1056288 (= res!705175 (= (select (store (arr!32026 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466065) k!2747))))

(declare-fun res!705173 () Bool)

(assert (=> start!93162 (=> (not res!705173) (not e!600528))))

(assert (=> start!93162 (= res!705173 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32563 a!3488)) (bvslt (size!32563 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93162 e!600528))

(assert (=> start!93162 true))

(declare-fun array_inv!24648 (array!66608) Bool)

(assert (=> start!93162 (array_inv!24648 a!3488)))

(declare-fun b!1056289 () Bool)

(assert (=> b!1056289 (= e!600527 e!600530)))

(declare-fun res!705177 () Bool)

(assert (=> b!1056289 (=> (not res!705177) (not e!600530))))

(assert (=> b!1056289 (= res!705177 (not (= lt!466065 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66608 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056289 (= lt!466065 (arrayScanForKey!0 lt!466066 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056290 () Bool)

(assert (=> b!1056290 (= e!600526 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!93162 res!705173) b!1056287))

(assert (= (and b!1056287 res!705176) b!1056284))

(assert (= (and b!1056284 res!705171) b!1056285))

(assert (= (and b!1056285 res!705172) b!1056286))

(assert (= (and b!1056286 res!705170) b!1056289))

(assert (= (and b!1056289 res!705177) b!1056288))

(assert (= (and b!1056288 res!705175) b!1056283))

(assert (= (and b!1056283 (not res!705174)) b!1056290))

(declare-fun m!976311 () Bool)

(assert (=> b!1056284 m!976311))

(declare-fun m!976313 () Bool)

(assert (=> start!93162 m!976313))

(declare-fun m!976315 () Bool)

(assert (=> b!1056290 m!976315))

(declare-fun m!976317 () Bool)

(assert (=> b!1056286 m!976317))

(declare-fun m!976319 () Bool)

(assert (=> b!1056286 m!976319))

(declare-fun m!976321 () Bool)

(assert (=> b!1056285 m!976321))

(declare-fun m!976323 () Bool)

(assert (=> b!1056289 m!976323))

(assert (=> b!1056288 m!976319))

(declare-fun m!976325 () Bool)

(assert (=> b!1056288 m!976325))

(declare-fun m!976327 () Bool)

(assert (=> b!1056287 m!976327))

(push 1)

(assert (not start!93162))

(assert (not b!1056290))

(assert (not b!1056284))

(assert (not b!1056286))

(assert (not b!1056289))

(assert (not b!1056287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128243 () Bool)

(declare-fun res!705236 () Bool)

(declare-fun e!600580 () Bool)

(assert (=> d!128243 (=> res!705236 e!600580)))

(assert (=> d!128243 (= res!705236 (= (select (arr!32026 a!3488) i!1381) k!2747))))

(assert (=> d!128243 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!600580)))

(declare-fun b!1056355 () Bool)

(declare-fun e!600581 () Bool)

(assert (=> b!1056355 (= e!600580 e!600581)))

(declare-fun res!705237 () Bool)

(assert (=> b!1056355 (=> (not res!705237) (not e!600581))))

(assert (=> b!1056355 (= res!705237 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32563 a!3488)))))

(declare-fun b!1056356 () Bool)

(assert (=> b!1056356 (= e!600581 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128243 (not res!705236)) b!1056355))

(assert (= (and b!1056355 res!705237) b!1056356))

(assert (=> d!128243 m!976321))

(declare-fun m!976373 () Bool)

(assert (=> b!1056356 m!976373))

(assert (=> b!1056290 d!128243))

(declare-fun d!128247 () Bool)

(declare-fun lt!466084 () (_ BitVec 32))

(assert (=> d!128247 (and (or (bvslt lt!466084 #b00000000000000000000000000000000) (bvsge lt!466084 (size!32563 lt!466066)) (and (bvsge lt!466084 #b00000000000000000000000000000000) (bvslt lt!466084 (size!32563 lt!466066)))) (bvsge lt!466084 #b00000000000000000000000000000000) (bvslt lt!466084 (size!32563 lt!466066)) (= (select (arr!32026 lt!466066) lt!466084) k!2747))))

(declare-fun e!600596 () (_ BitVec 32))

(assert (=> d!128247 (= lt!466084 e!600596)))

(declare-fun c!107027 () Bool)

(assert (=> d!128247 (= c!107027 (= (select (arr!32026 lt!466066) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32563 lt!466066)) (bvslt (size!32563 lt!466066) #b01111111111111111111111111111111))))

(assert (=> d!128247 (= (arrayScanForKey!0 lt!466066 k!2747 #b00000000000000000000000000000000) lt!466084)))

(declare-fun b!1056376 () Bool)

(assert (=> b!1056376 (= e!600596 #b00000000000000000000000000000000)))

(declare-fun b!1056377 () Bool)

(assert (=> b!1056377 (= e!600596 (arrayScanForKey!0 lt!466066 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128247 c!107027) b!1056376))

(assert (= (and d!128247 (not c!107027)) b!1056377))

(declare-fun m!976381 () Bool)

(assert (=> d!128247 m!976381))

(declare-fun m!976385 () Bool)

(assert (=> d!128247 m!976385))

(declare-fun m!976387 () Bool)

(assert (=> b!1056377 m!976387))

(assert (=> b!1056289 d!128247))

(declare-fun d!128253 () Bool)

(assert (=> d!128253 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056284 d!128253))

(declare-fun d!128257 () Bool)

(declare-fun res!705255 () Bool)

(declare-fun e!600607 () Bool)

(assert (=> d!128257 (=> res!705255 e!600607)))

(assert (=> d!128257 (= res!705255 (= (select (arr!32026 lt!466066) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128257 (= (arrayContainsKey!0 lt!466066 k!2747 #b00000000000000000000000000000000) e!600607)))

(declare-fun b!1056390 () Bool)

(declare-fun e!600608 () Bool)

(assert (=> b!1056390 (= e!600607 e!600608)))

(declare-fun res!705256 () Bool)

(assert (=> b!1056390 (=> (not res!705256) (not e!600608))))

(assert (=> b!1056390 (= res!705256 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32563 lt!466066)))))

(declare-fun b!1056391 () Bool)

(assert (=> b!1056391 (= e!600608 (arrayContainsKey!0 lt!466066 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128257 (not res!705255)) b!1056390))

(assert (= (and b!1056390 res!705256) b!1056391))

(assert (=> d!128257 m!976385))

(declare-fun m!976391 () Bool)

(assert (=> b!1056391 m!976391))

(assert (=> b!1056286 d!128257))

(declare-fun b!1056413 () Bool)

(declare-fun e!600627 () Bool)

(declare-fun contains!6209 (List!22469 (_ BitVec 64)) Bool)

(assert (=> b!1056413 (= e!600627 (contains!6209 Nil!22466 (select (arr!32026 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056414 () Bool)

(declare-fun e!600630 () Bool)

(declare-fun e!600628 () Bool)

(assert (=> b!1056414 (= e!600630 e!600628)))

(declare-fun res!705273 () Bool)

(assert (=> b!1056414 (=> (not res!705273) (not e!600628))))

(assert (=> b!1056414 (= res!705273 (not e!600627))))

(declare-fun res!705272 () Bool)

(assert (=> b!1056414 (=> (not res!705272) (not e!600627))))

(assert (=> b!1056414 (= res!705272 (validKeyInArray!0 (select (arr!32026 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056415 () Bool)

(declare-fun e!600629 () Bool)

(assert (=> b!1056415 (= e!600628 e!600629)))

(declare-fun c!107033 () Bool)

(assert (=> b!1056415 (= c!107033 (validKeyInArray!0 (select (arr!32026 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056416 () Bool)

(declare-fun call!44825 () Bool)

(assert (=> b!1056416 (= e!600629 call!44825)))

(declare-fun b!1056417 () Bool)

(assert (=> b!1056417 (= e!600629 call!44825)))

(declare-fun bm!44822 () Bool)

(assert (=> bm!44822 (= call!44825 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107033 (Cons!22465 (select (arr!32026 a!3488) #b00000000000000000000000000000000) Nil!22466) Nil!22466)))))

(declare-fun d!128259 () Bool)

(declare-fun res!705274 () Bool)

(assert (=> d!128259 (=> res!705274 e!600630)))

(assert (=> d!128259 (= res!705274 (bvsge #b00000000000000000000000000000000 (size!32563 a!3488)))))

(assert (=> d!128259 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22466) e!600630)))

(assert (= (and d!128259 (not res!705274)) b!1056414))

(assert (= (and b!1056414 res!705272) b!1056413))

(assert (= (and b!1056414 res!705273) b!1056415))

(assert (= (and b!1056415 c!107033) b!1056416))

(assert (= (and b!1056415 (not c!107033)) b!1056417))

(assert (= (or b!1056416 b!1056417) bm!44822))

(declare-fun m!976405 () Bool)

(assert (=> b!1056413 m!976405))

(assert (=> b!1056413 m!976405))

(declare-fun m!976407 () Bool)

(assert (=> b!1056413 m!976407))

(assert (=> b!1056414 m!976405))

(assert (=> b!1056414 m!976405))

(declare-fun m!976409 () Bool)

(assert (=> b!1056414 m!976409))

(assert (=> b!1056415 m!976405))

(assert (=> b!1056415 m!976405))

(assert (=> b!1056415 m!976409))

(assert (=> bm!44822 m!976405))

(declare-fun m!976411 () Bool)

(assert (=> bm!44822 m!976411))

(assert (=> b!1056287 d!128259))

(declare-fun d!128265 () Bool)

(assert (=> d!128265 (= (array_inv!24648 a!3488) (bvsge (size!32563 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93162 d!128265))

(push 1)

(assert (not b!1056391))

(assert (not b!1056413))

(assert (not b!1056356))

(assert (not bm!44822))

(assert (not b!1056414))

(assert (not b!1056377))

(assert (not b!1056415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

