; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93020 () Bool)

(assert start!93020)

(declare-fun b!1055244 () Bool)

(declare-fun res!704212 () Bool)

(declare-fun e!599746 () Bool)

(assert (=> b!1055244 (=> (not res!704212) (not e!599746))))

(declare-datatypes ((array!66544 0))(
  ( (array!66545 (arr!31997 (Array (_ BitVec 32) (_ BitVec 64))) (size!32534 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66544)

(declare-datatypes ((List!22440 0))(
  ( (Nil!22437) (Cons!22436 (h!23645 (_ BitVec 64)) (t!31754 List!22440)) )
))
(declare-fun arrayNoDuplicates!0 (array!66544 (_ BitVec 32) List!22440) Bool)

(assert (=> b!1055244 (= res!704212 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22437))))

(declare-fun b!1055245 () Bool)

(declare-fun e!599744 () Bool)

(declare-fun e!599747 () Bool)

(assert (=> b!1055245 (= e!599744 e!599747)))

(declare-fun res!704216 () Bool)

(assert (=> b!1055245 (=> res!704216 e!599747)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055245 (= res!704216 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32534 a!3488)))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055245 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465703 () (_ BitVec 32))

(declare-datatypes ((Unit!34561 0))(
  ( (Unit!34562) )
))
(declare-fun lt!465701 () Unit!34561)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34561)

(assert (=> b!1055245 (= lt!465701 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465703 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055245 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22437)))

(declare-fun lt!465700 () Unit!34561)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66544 (_ BitVec 32) (_ BitVec 32)) Unit!34561)

(assert (=> b!1055245 (= lt!465700 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055246 () Bool)

(declare-fun res!704209 () Bool)

(assert (=> b!1055246 (=> (not res!704209) (not e!599746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055246 (= res!704209 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055247 () Bool)

(declare-fun res!704220 () Bool)

(assert (=> b!1055247 (=> (not res!704220) (not e!599746))))

(assert (=> b!1055247 (= res!704220 (= (select (arr!31997 a!3488) i!1381) k0!2747))))

(declare-fun b!1055248 () Bool)

(declare-fun e!599739 () Bool)

(assert (=> b!1055248 (= e!599747 e!599739)))

(declare-fun res!704217 () Bool)

(assert (=> b!1055248 (=> (not res!704217) (not e!599739))))

(declare-fun contains!6198 (List!22440 (_ BitVec 64)) Bool)

(assert (=> b!1055248 (= res!704217 (not (contains!6198 Nil!22437 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!599742 () Bool)

(declare-fun b!1055249 () Bool)

(assert (=> b!1055249 (= e!599742 (arrayContainsKey!0 a!3488 k0!2747 lt!465703))))

(declare-fun b!1055250 () Bool)

(declare-fun res!704213 () Bool)

(assert (=> b!1055250 (=> res!704213 e!599747)))

(declare-fun noDuplicate!1567 (List!22440) Bool)

(assert (=> b!1055250 (= res!704213 (not (noDuplicate!1567 Nil!22437)))))

(declare-fun b!1055251 () Bool)

(declare-fun e!599741 () Bool)

(assert (=> b!1055251 (= e!599741 (not e!599744))))

(declare-fun res!704214 () Bool)

(assert (=> b!1055251 (=> res!704214 e!599744)))

(assert (=> b!1055251 (= res!704214 (bvsle lt!465703 i!1381))))

(declare-fun e!599743 () Bool)

(assert (=> b!1055251 e!599743))

(declare-fun res!704215 () Bool)

(assert (=> b!1055251 (=> (not res!704215) (not e!599743))))

(assert (=> b!1055251 (= res!704215 (= (select (store (arr!31997 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465703) k0!2747))))

(declare-fun b!1055252 () Bool)

(assert (=> b!1055252 (= e!599743 e!599742)))

(declare-fun res!704218 () Bool)

(assert (=> b!1055252 (=> res!704218 e!599742)))

(assert (=> b!1055252 (= res!704218 (bvsle lt!465703 i!1381))))

(declare-fun b!1055253 () Bool)

(declare-fun e!599740 () Bool)

(assert (=> b!1055253 (= e!599746 e!599740)))

(declare-fun res!704211 () Bool)

(assert (=> b!1055253 (=> (not res!704211) (not e!599740))))

(declare-fun lt!465702 () array!66544)

(assert (=> b!1055253 (= res!704211 (arrayContainsKey!0 lt!465702 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055253 (= lt!465702 (array!66545 (store (arr!31997 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32534 a!3488)))))

(declare-fun b!1055254 () Bool)

(assert (=> b!1055254 (= e!599739 (not (contains!6198 Nil!22437 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1055255 () Bool)

(assert (=> b!1055255 (= e!599740 e!599741)))

(declare-fun res!704210 () Bool)

(assert (=> b!1055255 (=> (not res!704210) (not e!599741))))

(assert (=> b!1055255 (= res!704210 (not (= lt!465703 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66544 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055255 (= lt!465703 (arrayScanForKey!0 lt!465702 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!704219 () Bool)

(assert (=> start!93020 (=> (not res!704219) (not e!599746))))

(assert (=> start!93020 (= res!704219 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32534 a!3488)) (bvslt (size!32534 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93020 e!599746))

(assert (=> start!93020 true))

(declare-fun array_inv!24619 (array!66544) Bool)

(assert (=> start!93020 (array_inv!24619 a!3488)))

(assert (= (and start!93020 res!704219) b!1055244))

(assert (= (and b!1055244 res!704212) b!1055246))

(assert (= (and b!1055246 res!704209) b!1055247))

(assert (= (and b!1055247 res!704220) b!1055253))

(assert (= (and b!1055253 res!704211) b!1055255))

(assert (= (and b!1055255 res!704210) b!1055251))

(assert (= (and b!1055251 res!704215) b!1055252))

(assert (= (and b!1055252 (not res!704218)) b!1055249))

(assert (= (and b!1055251 (not res!704214)) b!1055245))

(assert (= (and b!1055245 (not res!704216)) b!1055250))

(assert (= (and b!1055250 (not res!704213)) b!1055248))

(assert (= (and b!1055248 res!704217) b!1055254))

(declare-fun m!975389 () Bool)

(assert (=> b!1055250 m!975389))

(declare-fun m!975391 () Bool)

(assert (=> b!1055253 m!975391))

(declare-fun m!975393 () Bool)

(assert (=> b!1055253 m!975393))

(declare-fun m!975395 () Bool)

(assert (=> b!1055249 m!975395))

(declare-fun m!975397 () Bool)

(assert (=> b!1055247 m!975397))

(declare-fun m!975399 () Bool)

(assert (=> b!1055248 m!975399))

(declare-fun m!975401 () Bool)

(assert (=> b!1055254 m!975401))

(declare-fun m!975403 () Bool)

(assert (=> b!1055244 m!975403))

(declare-fun m!975405 () Bool)

(assert (=> b!1055245 m!975405))

(declare-fun m!975407 () Bool)

(assert (=> b!1055245 m!975407))

(declare-fun m!975409 () Bool)

(assert (=> b!1055245 m!975409))

(declare-fun m!975411 () Bool)

(assert (=> b!1055245 m!975411))

(declare-fun m!975413 () Bool)

(assert (=> b!1055246 m!975413))

(declare-fun m!975415 () Bool)

(assert (=> start!93020 m!975415))

(declare-fun m!975417 () Bool)

(assert (=> b!1055255 m!975417))

(assert (=> b!1055251 m!975393))

(declare-fun m!975419 () Bool)

(assert (=> b!1055251 m!975419))

(check-sat (not b!1055250) (not b!1055245) (not b!1055246) (not start!93020) (not b!1055253) (not b!1055254) (not b!1055248) (not b!1055249) (not b!1055244) (not b!1055255))
(check-sat)
(get-model)

(declare-fun d!128103 () Bool)

(declare-fun res!704261 () Bool)

(declare-fun e!599779 () Bool)

(assert (=> d!128103 (=> res!704261 e!599779)))

(assert (=> d!128103 (= res!704261 (= (select (arr!31997 a!3488) lt!465703) k0!2747))))

(assert (=> d!128103 (= (arrayContainsKey!0 a!3488 k0!2747 lt!465703) e!599779)))

(declare-fun b!1055296 () Bool)

(declare-fun e!599780 () Bool)

(assert (=> b!1055296 (= e!599779 e!599780)))

(declare-fun res!704262 () Bool)

(assert (=> b!1055296 (=> (not res!704262) (not e!599780))))

(assert (=> b!1055296 (= res!704262 (bvslt (bvadd lt!465703 #b00000000000000000000000000000001) (size!32534 a!3488)))))

(declare-fun b!1055297 () Bool)

(assert (=> b!1055297 (= e!599780 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!465703 #b00000000000000000000000000000001)))))

(assert (= (and d!128103 (not res!704261)) b!1055296))

(assert (= (and b!1055296 res!704262) b!1055297))

(declare-fun m!975453 () Bool)

(assert (=> d!128103 m!975453))

(declare-fun m!975455 () Bool)

(assert (=> b!1055297 m!975455))

(assert (=> b!1055249 d!128103))

(declare-fun b!1055322 () Bool)

(declare-fun e!599805 () Bool)

(declare-fun e!599804 () Bool)

(assert (=> b!1055322 (= e!599805 e!599804)))

(declare-fun res!704283 () Bool)

(assert (=> b!1055322 (=> (not res!704283) (not e!599804))))

(declare-fun e!599803 () Bool)

(assert (=> b!1055322 (= res!704283 (not e!599803))))

(declare-fun res!704284 () Bool)

(assert (=> b!1055322 (=> (not res!704284) (not e!599803))))

(assert (=> b!1055322 (= res!704284 (validKeyInArray!0 (select (arr!31997 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44795 () Bool)

(declare-fun call!44798 () Bool)

(declare-fun c!106982 () Bool)

(assert (=> bm!44795 (= call!44798 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106982 (Cons!22436 (select (arr!31997 a!3488) #b00000000000000000000000000000000) Nil!22437) Nil!22437)))))

(declare-fun b!1055323 () Bool)

(assert (=> b!1055323 (= e!599803 (contains!6198 Nil!22437 (select (arr!31997 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128105 () Bool)

(declare-fun res!704285 () Bool)

(assert (=> d!128105 (=> res!704285 e!599805)))

(assert (=> d!128105 (= res!704285 (bvsge #b00000000000000000000000000000000 (size!32534 a!3488)))))

(assert (=> d!128105 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22437) e!599805)))

(declare-fun b!1055324 () Bool)

(declare-fun e!599806 () Bool)

(assert (=> b!1055324 (= e!599806 call!44798)))

(declare-fun b!1055325 () Bool)

(assert (=> b!1055325 (= e!599806 call!44798)))

(declare-fun b!1055326 () Bool)

(assert (=> b!1055326 (= e!599804 e!599806)))

(assert (=> b!1055326 (= c!106982 (validKeyInArray!0 (select (arr!31997 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128105 (not res!704285)) b!1055322))

(assert (= (and b!1055322 res!704284) b!1055323))

(assert (= (and b!1055322 res!704283) b!1055326))

(assert (= (and b!1055326 c!106982) b!1055324))

(assert (= (and b!1055326 (not c!106982)) b!1055325))

(assert (= (or b!1055324 b!1055325) bm!44795))

(declare-fun m!975473 () Bool)

(assert (=> b!1055322 m!975473))

(assert (=> b!1055322 m!975473))

(declare-fun m!975475 () Bool)

(assert (=> b!1055322 m!975475))

(assert (=> bm!44795 m!975473))

(declare-fun m!975477 () Bool)

(assert (=> bm!44795 m!975477))

(assert (=> b!1055323 m!975473))

(assert (=> b!1055323 m!975473))

(declare-fun m!975479 () Bool)

(assert (=> b!1055323 m!975479))

(assert (=> b!1055326 m!975473))

(assert (=> b!1055326 m!975473))

(assert (=> b!1055326 m!975475))

(assert (=> b!1055244 d!128105))

(declare-fun d!128121 () Bool)

(declare-fun lt!465729 () (_ BitVec 32))

(assert (=> d!128121 (and (or (bvslt lt!465729 #b00000000000000000000000000000000) (bvsge lt!465729 (size!32534 lt!465702)) (and (bvsge lt!465729 #b00000000000000000000000000000000) (bvslt lt!465729 (size!32534 lt!465702)))) (bvsge lt!465729 #b00000000000000000000000000000000) (bvslt lt!465729 (size!32534 lt!465702)) (= (select (arr!31997 lt!465702) lt!465729) k0!2747))))

(declare-fun e!599824 () (_ BitVec 32))

(assert (=> d!128121 (= lt!465729 e!599824)))

(declare-fun c!106991 () Bool)

(assert (=> d!128121 (= c!106991 (= (select (arr!31997 lt!465702) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128121 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32534 lt!465702)) (bvslt (size!32534 lt!465702) #b01111111111111111111111111111111))))

(assert (=> d!128121 (= (arrayScanForKey!0 lt!465702 k0!2747 #b00000000000000000000000000000000) lt!465729)))

(declare-fun b!1055352 () Bool)

(assert (=> b!1055352 (= e!599824 #b00000000000000000000000000000000)))

(declare-fun b!1055353 () Bool)

(assert (=> b!1055353 (= e!599824 (arrayScanForKey!0 lt!465702 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128121 c!106991) b!1055352))

(assert (= (and d!128121 (not c!106991)) b!1055353))

(declare-fun m!975493 () Bool)

(assert (=> d!128121 m!975493))

(declare-fun m!975495 () Bool)

(assert (=> d!128121 m!975495))

(declare-fun m!975497 () Bool)

(assert (=> b!1055353 m!975497))

(assert (=> b!1055255 d!128121))

(declare-fun d!128127 () Bool)

(declare-fun res!704305 () Bool)

(declare-fun e!599835 () Bool)

(assert (=> d!128127 (=> res!704305 e!599835)))

(get-info :version)

(assert (=> d!128127 (= res!704305 ((_ is Nil!22437) Nil!22437))))

(assert (=> d!128127 (= (noDuplicate!1567 Nil!22437) e!599835)))

(declare-fun b!1055364 () Bool)

(declare-fun e!599836 () Bool)

(assert (=> b!1055364 (= e!599835 e!599836)))

(declare-fun res!704306 () Bool)

(assert (=> b!1055364 (=> (not res!704306) (not e!599836))))

(assert (=> b!1055364 (= res!704306 (not (contains!6198 (t!31754 Nil!22437) (h!23645 Nil!22437))))))

(declare-fun b!1055365 () Bool)

(assert (=> b!1055365 (= e!599836 (noDuplicate!1567 (t!31754 Nil!22437)))))

(assert (= (and d!128127 (not res!704305)) b!1055364))

(assert (= (and b!1055364 res!704306) b!1055365))

(declare-fun m!975505 () Bool)

(assert (=> b!1055364 m!975505))

(declare-fun m!975507 () Bool)

(assert (=> b!1055365 m!975507))

(assert (=> b!1055250 d!128127))

(declare-fun d!128133 () Bool)

(declare-fun res!704307 () Bool)

(declare-fun e!599837 () Bool)

(assert (=> d!128133 (=> res!704307 e!599837)))

(assert (=> d!128133 (= res!704307 (= (select (arr!31997 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k0!2747))))

(assert (=> d!128133 (= (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599837)))

(declare-fun b!1055366 () Bool)

(declare-fun e!599838 () Bool)

(assert (=> b!1055366 (= e!599837 e!599838)))

(declare-fun res!704308 () Bool)

(assert (=> b!1055366 (=> (not res!704308) (not e!599838))))

(assert (=> b!1055366 (= res!704308 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32534 a!3488)))))

(declare-fun b!1055367 () Bool)

(assert (=> b!1055367 (= e!599838 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128133 (not res!704307)) b!1055366))

(assert (= (and b!1055366 res!704308) b!1055367))

(declare-fun m!975509 () Bool)

(assert (=> d!128133 m!975509))

(declare-fun m!975511 () Bool)

(assert (=> b!1055367 m!975511))

(assert (=> b!1055245 d!128133))

(declare-fun d!128135 () Bool)

(assert (=> d!128135 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465733 () Unit!34561)

(declare-fun choose!114 (array!66544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34561)

(assert (=> d!128135 (= lt!465733 (choose!114 a!3488 k0!2747 lt!465703 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!128135 (bvsge lt!465703 #b00000000000000000000000000000000)))

(assert (=> d!128135 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465703 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465733)))

(declare-fun bs!30932 () Bool)

(assert (= bs!30932 d!128135))

(assert (=> bs!30932 m!975405))

(declare-fun m!975515 () Bool)

(assert (=> bs!30932 m!975515))

(assert (=> b!1055245 d!128135))

(declare-fun b!1055370 () Bool)

(declare-fun e!599843 () Bool)

(declare-fun e!599842 () Bool)

(assert (=> b!1055370 (= e!599843 e!599842)))

(declare-fun res!704311 () Bool)

(assert (=> b!1055370 (=> (not res!704311) (not e!599842))))

(declare-fun e!599841 () Bool)

(assert (=> b!1055370 (= res!704311 (not e!599841))))

(declare-fun res!704312 () Bool)

(assert (=> b!1055370 (=> (not res!704312) (not e!599841))))

(assert (=> b!1055370 (= res!704312 (validKeyInArray!0 (select (arr!31997 a!3488) i!1381)))))

(declare-fun bm!44799 () Bool)

(declare-fun call!44802 () Bool)

(declare-fun c!106992 () Bool)

(assert (=> bm!44799 (= call!44802 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106992 (Cons!22436 (select (arr!31997 a!3488) i!1381) Nil!22437) Nil!22437)))))

(declare-fun b!1055371 () Bool)

(assert (=> b!1055371 (= e!599841 (contains!6198 Nil!22437 (select (arr!31997 a!3488) i!1381)))))

(declare-fun d!128141 () Bool)

(declare-fun res!704313 () Bool)

(assert (=> d!128141 (=> res!704313 e!599843)))

(assert (=> d!128141 (= res!704313 (bvsge i!1381 (size!32534 a!3488)))))

(assert (=> d!128141 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22437) e!599843)))

(declare-fun b!1055372 () Bool)

(declare-fun e!599844 () Bool)

(assert (=> b!1055372 (= e!599844 call!44802)))

(declare-fun b!1055373 () Bool)

(assert (=> b!1055373 (= e!599844 call!44802)))

(declare-fun b!1055374 () Bool)

(assert (=> b!1055374 (= e!599842 e!599844)))

(assert (=> b!1055374 (= c!106992 (validKeyInArray!0 (select (arr!31997 a!3488) i!1381)))))

(assert (= (and d!128141 (not res!704313)) b!1055370))

(assert (= (and b!1055370 res!704312) b!1055371))

(assert (= (and b!1055370 res!704311) b!1055374))

(assert (= (and b!1055374 c!106992) b!1055372))

(assert (= (and b!1055374 (not c!106992)) b!1055373))

(assert (= (or b!1055372 b!1055373) bm!44799))

(assert (=> b!1055370 m!975397))

(assert (=> b!1055370 m!975397))

(declare-fun m!975517 () Bool)

(assert (=> b!1055370 m!975517))

(assert (=> bm!44799 m!975397))

(declare-fun m!975519 () Bool)

(assert (=> bm!44799 m!975519))

(assert (=> b!1055371 m!975397))

(assert (=> b!1055371 m!975397))

(declare-fun m!975521 () Bool)

(assert (=> b!1055371 m!975521))

(assert (=> b!1055374 m!975397))

(assert (=> b!1055374 m!975397))

(assert (=> b!1055374 m!975517))

(assert (=> b!1055245 d!128141))

(declare-fun d!128143 () Bool)

(assert (=> d!128143 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22437)))

(declare-fun lt!465739 () Unit!34561)

(declare-fun choose!39 (array!66544 (_ BitVec 32) (_ BitVec 32)) Unit!34561)

(assert (=> d!128143 (= lt!465739 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!128143 (bvslt (size!32534 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128143 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465739)))

(declare-fun bs!30933 () Bool)

(assert (= bs!30933 d!128143))

(assert (=> bs!30933 m!975409))

(declare-fun m!975527 () Bool)

(assert (=> bs!30933 m!975527))

(assert (=> b!1055245 d!128143))

(declare-fun d!128147 () Bool)

(assert (=> d!128147 (= (array_inv!24619 a!3488) (bvsge (size!32534 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93020 d!128147))

(declare-fun d!128149 () Bool)

(assert (=> d!128149 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055246 d!128149))

(declare-fun d!128153 () Bool)

(declare-fun res!704329 () Bool)

(declare-fun e!599866 () Bool)

(assert (=> d!128153 (=> res!704329 e!599866)))

(assert (=> d!128153 (= res!704329 (= (select (arr!31997 lt!465702) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128153 (= (arrayContainsKey!0 lt!465702 k0!2747 #b00000000000000000000000000000000) e!599866)))

(declare-fun b!1055402 () Bool)

(declare-fun e!599867 () Bool)

(assert (=> b!1055402 (= e!599866 e!599867)))

(declare-fun res!704330 () Bool)

(assert (=> b!1055402 (=> (not res!704330) (not e!599867))))

(assert (=> b!1055402 (= res!704330 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32534 lt!465702)))))

(declare-fun b!1055403 () Bool)

(assert (=> b!1055403 (= e!599867 (arrayContainsKey!0 lt!465702 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128153 (not res!704329)) b!1055402))

(assert (= (and b!1055402 res!704330) b!1055403))

(assert (=> d!128153 m!975495))

(declare-fun m!975541 () Bool)

(assert (=> b!1055403 m!975541))

(assert (=> b!1055253 d!128153))

(declare-fun d!128157 () Bool)

(declare-fun lt!465746 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!535 (List!22440) (InoxSet (_ BitVec 64)))

(assert (=> d!128157 (= lt!465746 (select (content!535 Nil!22437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!599891 () Bool)

(assert (=> d!128157 (= lt!465746 e!599891)))

(declare-fun res!704353 () Bool)

(assert (=> d!128157 (=> (not res!704353) (not e!599891))))

(assert (=> d!128157 (= res!704353 ((_ is Cons!22436) Nil!22437))))

(assert (=> d!128157 (= (contains!6198 Nil!22437 #b0000000000000000000000000000000000000000000000000000000000000000) lt!465746)))

(declare-fun b!1055426 () Bool)

(declare-fun e!599890 () Bool)

(assert (=> b!1055426 (= e!599891 e!599890)))

(declare-fun res!704354 () Bool)

(assert (=> b!1055426 (=> res!704354 e!599890)))

(assert (=> b!1055426 (= res!704354 (= (h!23645 Nil!22437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055427 () Bool)

(assert (=> b!1055427 (= e!599890 (contains!6198 (t!31754 Nil!22437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128157 res!704353) b!1055426))

(assert (= (and b!1055426 (not res!704354)) b!1055427))

(declare-fun m!975565 () Bool)

(assert (=> d!128157 m!975565))

(declare-fun m!975567 () Bool)

(assert (=> d!128157 m!975567))

(declare-fun m!975569 () Bool)

(assert (=> b!1055427 m!975569))

(assert (=> b!1055248 d!128157))

(declare-fun d!128171 () Bool)

(declare-fun lt!465749 () Bool)

(assert (=> d!128171 (= lt!465749 (select (content!535 Nil!22437) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!599897 () Bool)

(assert (=> d!128171 (= lt!465749 e!599897)))

(declare-fun res!704358 () Bool)

(assert (=> d!128171 (=> (not res!704358) (not e!599897))))

(assert (=> d!128171 (= res!704358 ((_ is Cons!22436) Nil!22437))))

(assert (=> d!128171 (= (contains!6198 Nil!22437 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465749)))

(declare-fun b!1055431 () Bool)

(declare-fun e!599895 () Bool)

(assert (=> b!1055431 (= e!599897 e!599895)))

(declare-fun res!704359 () Bool)

(assert (=> b!1055431 (=> res!704359 e!599895)))

(assert (=> b!1055431 (= res!704359 (= (h!23645 Nil!22437) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055433 () Bool)

(assert (=> b!1055433 (= e!599895 (contains!6198 (t!31754 Nil!22437) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128171 res!704358) b!1055431))

(assert (= (and b!1055431 (not res!704359)) b!1055433))

(assert (=> d!128171 m!975565))

(declare-fun m!975571 () Bool)

(assert (=> d!128171 m!975571))

(declare-fun m!975573 () Bool)

(assert (=> b!1055433 m!975573))

(assert (=> b!1055254 d!128171))

(check-sat (not b!1055326) (not b!1055433) (not b!1055365) (not b!1055297) (not b!1055367) (not b!1055370) (not b!1055364) (not b!1055353) (not bm!44795) (not d!128143) (not d!128171) (not bm!44799) (not b!1055323) (not b!1055322) (not b!1055371) (not b!1055427) (not b!1055374) (not d!128135) (not b!1055403) (not d!128157))
(check-sat)
