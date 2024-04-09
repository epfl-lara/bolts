; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93290 () Bool)

(assert start!93290)

(declare-fun b!1057293 () Bool)

(declare-fun e!601311 () Bool)

(declare-fun e!601313 () Bool)

(assert (=> b!1057293 (= e!601311 e!601313)))

(declare-fun res!706107 () Bool)

(assert (=> b!1057293 (=> res!706107 e!601313)))

(declare-fun lt!466404 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057293 (= res!706107 (or (bvsgt lt!466404 i!1381) (bvsle i!1381 lt!466404)))))

(declare-fun b!1057294 () Bool)

(declare-fun e!601315 () Bool)

(declare-fun e!601310 () Bool)

(assert (=> b!1057294 (= e!601315 e!601310)))

(declare-fun res!706109 () Bool)

(assert (=> b!1057294 (=> (not res!706109) (not e!601310))))

(declare-datatypes ((array!66676 0))(
  ( (array!66677 (arr!32057 (Array (_ BitVec 32) (_ BitVec 64))) (size!32594 (_ BitVec 32))) )
))
(declare-fun lt!466402 () array!66676)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057294 (= res!706109 (arrayContainsKey!0 lt!466402 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66676)

(assert (=> b!1057294 (= lt!466402 (array!66677 (store (arr!32057 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32594 a!3488)))))

(declare-fun b!1057295 () Bool)

(declare-fun res!706108 () Bool)

(assert (=> b!1057295 (=> (not res!706108) (not e!601315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057295 (= res!706108 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057296 () Bool)

(assert (=> b!1057296 (= e!601313 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057297 () Bool)

(declare-fun e!601314 () Bool)

(assert (=> b!1057297 (= e!601314 (bvsge lt!466404 #b00000000000000000000000000000000))))

(declare-fun lt!466405 () (_ BitVec 32))

(assert (=> b!1057297 (arrayContainsKey!0 a!3488 k0!2747 lt!466405)))

(declare-datatypes ((Unit!34645 0))(
  ( (Unit!34646) )
))
(declare-fun lt!466403 () Unit!34645)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34645)

(assert (=> b!1057297 (= lt!466403 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466405))))

(assert (=> b!1057297 (= lt!466405 (bvadd #b00000000000000000000000000000001 lt!466404))))

(declare-datatypes ((List!22500 0))(
  ( (Nil!22497) (Cons!22496 (h!23705 (_ BitVec 64)) (t!31814 List!22500)) )
))
(declare-fun arrayNoDuplicates!0 (array!66676 (_ BitVec 32) List!22500) Bool)

(assert (=> b!1057297 (arrayNoDuplicates!0 a!3488 lt!466404 Nil!22497)))

(declare-fun lt!466401 () Unit!34645)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66676 (_ BitVec 32) (_ BitVec 32)) Unit!34645)

(assert (=> b!1057297 (= lt!466401 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466404))))

(declare-fun b!1057298 () Bool)

(declare-fun e!601312 () Bool)

(assert (=> b!1057298 (= e!601312 (not e!601314))))

(declare-fun res!706110 () Bool)

(assert (=> b!1057298 (=> res!706110 e!601314)))

(assert (=> b!1057298 (= res!706110 (or (bvsgt lt!466404 i!1381) (bvsle i!1381 lt!466404)))))

(assert (=> b!1057298 e!601311))

(declare-fun res!706105 () Bool)

(assert (=> b!1057298 (=> (not res!706105) (not e!601311))))

(assert (=> b!1057298 (= res!706105 (= (select (store (arr!32057 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466404) k0!2747))))

(declare-fun b!1057299 () Bool)

(declare-fun res!706106 () Bool)

(assert (=> b!1057299 (=> (not res!706106) (not e!601315))))

(assert (=> b!1057299 (= res!706106 (= (select (arr!32057 a!3488) i!1381) k0!2747))))

(declare-fun b!1057300 () Bool)

(assert (=> b!1057300 (= e!601310 e!601312)))

(declare-fun res!706102 () Bool)

(assert (=> b!1057300 (=> (not res!706102) (not e!601312))))

(assert (=> b!1057300 (= res!706102 (not (= lt!466404 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66676 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057300 (= lt!466404 (arrayScanForKey!0 lt!466402 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!706104 () Bool)

(assert (=> start!93290 (=> (not res!706104) (not e!601315))))

(assert (=> start!93290 (= res!706104 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32594 a!3488)) (bvslt (size!32594 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93290 e!601315))

(assert (=> start!93290 true))

(declare-fun array_inv!24679 (array!66676) Bool)

(assert (=> start!93290 (array_inv!24679 a!3488)))

(declare-fun b!1057301 () Bool)

(declare-fun res!706103 () Bool)

(assert (=> b!1057301 (=> (not res!706103) (not e!601315))))

(assert (=> b!1057301 (= res!706103 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22497))))

(assert (= (and start!93290 res!706104) b!1057301))

(assert (= (and b!1057301 res!706103) b!1057295))

(assert (= (and b!1057295 res!706108) b!1057299))

(assert (= (and b!1057299 res!706106) b!1057294))

(assert (= (and b!1057294 res!706109) b!1057300))

(assert (= (and b!1057300 res!706102) b!1057298))

(assert (= (and b!1057298 res!706105) b!1057293))

(assert (= (and b!1057293 (not res!706107)) b!1057296))

(assert (= (and b!1057298 (not res!706110)) b!1057297))

(declare-fun m!977135 () Bool)

(assert (=> b!1057301 m!977135))

(declare-fun m!977137 () Bool)

(assert (=> b!1057295 m!977137))

(declare-fun m!977139 () Bool)

(assert (=> b!1057296 m!977139))

(declare-fun m!977141 () Bool)

(assert (=> b!1057299 m!977141))

(declare-fun m!977143 () Bool)

(assert (=> b!1057294 m!977143))

(declare-fun m!977145 () Bool)

(assert (=> b!1057294 m!977145))

(declare-fun m!977147 () Bool)

(assert (=> start!93290 m!977147))

(declare-fun m!977149 () Bool)

(assert (=> b!1057300 m!977149))

(assert (=> b!1057298 m!977145))

(declare-fun m!977151 () Bool)

(assert (=> b!1057298 m!977151))

(declare-fun m!977153 () Bool)

(assert (=> b!1057297 m!977153))

(declare-fun m!977155 () Bool)

(assert (=> b!1057297 m!977155))

(declare-fun m!977157 () Bool)

(assert (=> b!1057297 m!977157))

(declare-fun m!977159 () Bool)

(assert (=> b!1057297 m!977159))

(check-sat (not b!1057301) (not b!1057295) (not b!1057296) (not b!1057294) (not start!93290) (not b!1057297) (not b!1057300))
(check-sat)
(get-model)

(declare-fun d!128341 () Bool)

(assert (=> d!128341 (= (array_inv!24679 a!3488) (bvsge (size!32594 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93290 d!128341))

(declare-fun d!128343 () Bool)

(declare-fun res!706142 () Bool)

(declare-fun e!601342 () Bool)

(assert (=> d!128343 (=> res!706142 e!601342)))

(assert (=> d!128343 (= res!706142 (= (select (arr!32057 a!3488) i!1381) k0!2747))))

(assert (=> d!128343 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!601342)))

(declare-fun b!1057333 () Bool)

(declare-fun e!601343 () Bool)

(assert (=> b!1057333 (= e!601342 e!601343)))

(declare-fun res!706143 () Bool)

(assert (=> b!1057333 (=> (not res!706143) (not e!601343))))

(assert (=> b!1057333 (= res!706143 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32594 a!3488)))))

(declare-fun b!1057334 () Bool)

(assert (=> b!1057334 (= e!601343 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128343 (not res!706142)) b!1057333))

(assert (= (and b!1057333 res!706143) b!1057334))

(assert (=> d!128343 m!977141))

(declare-fun m!977187 () Bool)

(assert (=> b!1057334 m!977187))

(assert (=> b!1057296 d!128343))

(declare-fun d!128345 () Bool)

(declare-fun res!706144 () Bool)

(declare-fun e!601344 () Bool)

(assert (=> d!128345 (=> res!706144 e!601344)))

(assert (=> d!128345 (= res!706144 (= (select (arr!32057 a!3488) lt!466405) k0!2747))))

(assert (=> d!128345 (= (arrayContainsKey!0 a!3488 k0!2747 lt!466405) e!601344)))

(declare-fun b!1057335 () Bool)

(declare-fun e!601345 () Bool)

(assert (=> b!1057335 (= e!601344 e!601345)))

(declare-fun res!706145 () Bool)

(assert (=> b!1057335 (=> (not res!706145) (not e!601345))))

(assert (=> b!1057335 (= res!706145 (bvslt (bvadd lt!466405 #b00000000000000000000000000000001) (size!32594 a!3488)))))

(declare-fun b!1057336 () Bool)

(assert (=> b!1057336 (= e!601345 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!466405 #b00000000000000000000000000000001)))))

(assert (= (and d!128345 (not res!706144)) b!1057335))

(assert (= (and b!1057335 res!706145) b!1057336))

(declare-fun m!977189 () Bool)

(assert (=> d!128345 m!977189))

(declare-fun m!977191 () Bool)

(assert (=> b!1057336 m!977191))

(assert (=> b!1057297 d!128345))

(declare-fun d!128347 () Bool)

(assert (=> d!128347 (arrayContainsKey!0 a!3488 k0!2747 lt!466405)))

(declare-fun lt!466423 () Unit!34645)

(declare-fun choose!114 (array!66676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34645)

(assert (=> d!128347 (= lt!466423 (choose!114 a!3488 k0!2747 i!1381 lt!466405))))

(assert (=> d!128347 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128347 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466405) lt!466423)))

(declare-fun bs!30999 () Bool)

(assert (= bs!30999 d!128347))

(assert (=> bs!30999 m!977153))

(declare-fun m!977193 () Bool)

(assert (=> bs!30999 m!977193))

(assert (=> b!1057297 d!128347))

(declare-fun b!1057347 () Bool)

(declare-fun e!601354 () Bool)

(declare-fun call!44840 () Bool)

(assert (=> b!1057347 (= e!601354 call!44840)))

(declare-fun b!1057348 () Bool)

(assert (=> b!1057348 (= e!601354 call!44840)))

(declare-fun c!107060 () Bool)

(declare-fun bm!44837 () Bool)

(assert (=> bm!44837 (= call!44840 (arrayNoDuplicates!0 a!3488 (bvadd lt!466404 #b00000000000000000000000000000001) (ite c!107060 (Cons!22496 (select (arr!32057 a!3488) lt!466404) Nil!22497) Nil!22497)))))

(declare-fun d!128349 () Bool)

(declare-fun res!706152 () Bool)

(declare-fun e!601356 () Bool)

(assert (=> d!128349 (=> res!706152 e!601356)))

(assert (=> d!128349 (= res!706152 (bvsge lt!466404 (size!32594 a!3488)))))

(assert (=> d!128349 (= (arrayNoDuplicates!0 a!3488 lt!466404 Nil!22497) e!601356)))

(declare-fun b!1057349 () Bool)

(declare-fun e!601355 () Bool)

(assert (=> b!1057349 (= e!601355 e!601354)))

(assert (=> b!1057349 (= c!107060 (validKeyInArray!0 (select (arr!32057 a!3488) lt!466404)))))

(declare-fun b!1057350 () Bool)

(declare-fun e!601357 () Bool)

(declare-fun contains!6213 (List!22500 (_ BitVec 64)) Bool)

(assert (=> b!1057350 (= e!601357 (contains!6213 Nil!22497 (select (arr!32057 a!3488) lt!466404)))))

(declare-fun b!1057351 () Bool)

(assert (=> b!1057351 (= e!601356 e!601355)))

(declare-fun res!706153 () Bool)

(assert (=> b!1057351 (=> (not res!706153) (not e!601355))))

(assert (=> b!1057351 (= res!706153 (not e!601357))))

(declare-fun res!706154 () Bool)

(assert (=> b!1057351 (=> (not res!706154) (not e!601357))))

(assert (=> b!1057351 (= res!706154 (validKeyInArray!0 (select (arr!32057 a!3488) lt!466404)))))

(assert (= (and d!128349 (not res!706152)) b!1057351))

(assert (= (and b!1057351 res!706154) b!1057350))

(assert (= (and b!1057351 res!706153) b!1057349))

(assert (= (and b!1057349 c!107060) b!1057348))

(assert (= (and b!1057349 (not c!107060)) b!1057347))

(assert (= (or b!1057348 b!1057347) bm!44837))

(declare-fun m!977195 () Bool)

(assert (=> bm!44837 m!977195))

(declare-fun m!977197 () Bool)

(assert (=> bm!44837 m!977197))

(assert (=> b!1057349 m!977195))

(assert (=> b!1057349 m!977195))

(declare-fun m!977199 () Bool)

(assert (=> b!1057349 m!977199))

(assert (=> b!1057350 m!977195))

(assert (=> b!1057350 m!977195))

(declare-fun m!977201 () Bool)

(assert (=> b!1057350 m!977201))

(assert (=> b!1057351 m!977195))

(assert (=> b!1057351 m!977195))

(assert (=> b!1057351 m!977199))

(assert (=> b!1057297 d!128349))

(declare-fun d!128351 () Bool)

(assert (=> d!128351 (arrayNoDuplicates!0 a!3488 lt!466404 Nil!22497)))

(declare-fun lt!466426 () Unit!34645)

(declare-fun choose!39 (array!66676 (_ BitVec 32) (_ BitVec 32)) Unit!34645)

(assert (=> d!128351 (= lt!466426 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466404))))

(assert (=> d!128351 (bvslt (size!32594 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128351 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466404) lt!466426)))

(declare-fun bs!31000 () Bool)

(assert (= bs!31000 d!128351))

(assert (=> bs!31000 m!977157))

(declare-fun m!977203 () Bool)

(assert (=> bs!31000 m!977203))

(assert (=> b!1057297 d!128351))

(declare-fun d!128353 () Bool)

(assert (=> d!128353 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057295 d!128353))

(declare-fun d!128355 () Bool)

(declare-fun lt!466429 () (_ BitVec 32))

(assert (=> d!128355 (and (or (bvslt lt!466429 #b00000000000000000000000000000000) (bvsge lt!466429 (size!32594 lt!466402)) (and (bvsge lt!466429 #b00000000000000000000000000000000) (bvslt lt!466429 (size!32594 lt!466402)))) (bvsge lt!466429 #b00000000000000000000000000000000) (bvslt lt!466429 (size!32594 lt!466402)) (= (select (arr!32057 lt!466402) lt!466429) k0!2747))))

(declare-fun e!601360 () (_ BitVec 32))

(assert (=> d!128355 (= lt!466429 e!601360)))

(declare-fun c!107063 () Bool)

(assert (=> d!128355 (= c!107063 (= (select (arr!32057 lt!466402) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128355 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32594 lt!466402)) (bvslt (size!32594 lt!466402) #b01111111111111111111111111111111))))

(assert (=> d!128355 (= (arrayScanForKey!0 lt!466402 k0!2747 #b00000000000000000000000000000000) lt!466429)))

(declare-fun b!1057356 () Bool)

(assert (=> b!1057356 (= e!601360 #b00000000000000000000000000000000)))

(declare-fun b!1057357 () Bool)

(assert (=> b!1057357 (= e!601360 (arrayScanForKey!0 lt!466402 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128355 c!107063) b!1057356))

(assert (= (and d!128355 (not c!107063)) b!1057357))

(declare-fun m!977205 () Bool)

(assert (=> d!128355 m!977205))

(declare-fun m!977207 () Bool)

(assert (=> d!128355 m!977207))

(declare-fun m!977209 () Bool)

(assert (=> b!1057357 m!977209))

(assert (=> b!1057300 d!128355))

(declare-fun b!1057358 () Bool)

(declare-fun e!601361 () Bool)

(declare-fun call!44841 () Bool)

(assert (=> b!1057358 (= e!601361 call!44841)))

(declare-fun b!1057359 () Bool)

(assert (=> b!1057359 (= e!601361 call!44841)))

(declare-fun bm!44838 () Bool)

(declare-fun c!107064 () Bool)

(assert (=> bm!44838 (= call!44841 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107064 (Cons!22496 (select (arr!32057 a!3488) #b00000000000000000000000000000000) Nil!22497) Nil!22497)))))

(declare-fun d!128357 () Bool)

(declare-fun res!706155 () Bool)

(declare-fun e!601363 () Bool)

(assert (=> d!128357 (=> res!706155 e!601363)))

(assert (=> d!128357 (= res!706155 (bvsge #b00000000000000000000000000000000 (size!32594 a!3488)))))

(assert (=> d!128357 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22497) e!601363)))

(declare-fun b!1057360 () Bool)

(declare-fun e!601362 () Bool)

(assert (=> b!1057360 (= e!601362 e!601361)))

(assert (=> b!1057360 (= c!107064 (validKeyInArray!0 (select (arr!32057 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057361 () Bool)

(declare-fun e!601364 () Bool)

(assert (=> b!1057361 (= e!601364 (contains!6213 Nil!22497 (select (arr!32057 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057362 () Bool)

(assert (=> b!1057362 (= e!601363 e!601362)))

(declare-fun res!706156 () Bool)

(assert (=> b!1057362 (=> (not res!706156) (not e!601362))))

(assert (=> b!1057362 (= res!706156 (not e!601364))))

(declare-fun res!706157 () Bool)

(assert (=> b!1057362 (=> (not res!706157) (not e!601364))))

(assert (=> b!1057362 (= res!706157 (validKeyInArray!0 (select (arr!32057 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128357 (not res!706155)) b!1057362))

(assert (= (and b!1057362 res!706157) b!1057361))

(assert (= (and b!1057362 res!706156) b!1057360))

(assert (= (and b!1057360 c!107064) b!1057359))

(assert (= (and b!1057360 (not c!107064)) b!1057358))

(assert (= (or b!1057359 b!1057358) bm!44838))

(declare-fun m!977211 () Bool)

(assert (=> bm!44838 m!977211))

(declare-fun m!977213 () Bool)

(assert (=> bm!44838 m!977213))

(assert (=> b!1057360 m!977211))

(assert (=> b!1057360 m!977211))

(declare-fun m!977215 () Bool)

(assert (=> b!1057360 m!977215))

(assert (=> b!1057361 m!977211))

(assert (=> b!1057361 m!977211))

(declare-fun m!977217 () Bool)

(assert (=> b!1057361 m!977217))

(assert (=> b!1057362 m!977211))

(assert (=> b!1057362 m!977211))

(assert (=> b!1057362 m!977215))

(assert (=> b!1057301 d!128357))

(declare-fun d!128359 () Bool)

(declare-fun res!706158 () Bool)

(declare-fun e!601365 () Bool)

(assert (=> d!128359 (=> res!706158 e!601365)))

(assert (=> d!128359 (= res!706158 (= (select (arr!32057 lt!466402) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128359 (= (arrayContainsKey!0 lt!466402 k0!2747 #b00000000000000000000000000000000) e!601365)))

(declare-fun b!1057363 () Bool)

(declare-fun e!601366 () Bool)

(assert (=> b!1057363 (= e!601365 e!601366)))

(declare-fun res!706159 () Bool)

(assert (=> b!1057363 (=> (not res!706159) (not e!601366))))

(assert (=> b!1057363 (= res!706159 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32594 lt!466402)))))

(declare-fun b!1057364 () Bool)

(assert (=> b!1057364 (= e!601366 (arrayContainsKey!0 lt!466402 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128359 (not res!706158)) b!1057363))

(assert (= (and b!1057363 res!706159) b!1057364))

(assert (=> d!128359 m!977207))

(declare-fun m!977219 () Bool)

(assert (=> b!1057364 m!977219))

(assert (=> b!1057294 d!128359))

(check-sat (not b!1057362) (not b!1057351) (not b!1057364) (not d!128347) (not bm!44838) (not b!1057361) (not bm!44837) (not b!1057336) (not b!1057349) (not b!1057360) (not b!1057334) (not b!1057357) (not b!1057350) (not d!128351))
(check-sat)
