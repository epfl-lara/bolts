; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93164 () Bool)

(assert start!93164)

(declare-fun res!705196 () Bool)

(declare-fun e!600547 () Bool)

(assert (=> start!93164 (=> (not res!705196) (not e!600547))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66610 0))(
  ( (array!66611 (arr!32027 (Array (_ BitVec 32) (_ BitVec 64))) (size!32564 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66610)

(assert (=> start!93164 (= res!705196 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32564 a!3488)) (bvslt (size!32564 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93164 e!600547))

(assert (=> start!93164 true))

(declare-fun array_inv!24649 (array!66610) Bool)

(assert (=> start!93164 (array_inv!24649 a!3488)))

(declare-fun b!1056307 () Bool)

(declare-fun res!705194 () Bool)

(assert (=> b!1056307 (=> (not res!705194) (not e!600547))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1056307 (= res!705194 (= (select (arr!32027 a!3488) i!1381) k0!2747))))

(declare-fun b!1056308 () Bool)

(declare-fun e!600546 () Bool)

(declare-fun arrayContainsKey!0 (array!66610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056308 (= e!600546 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056309 () Bool)

(declare-fun e!600545 () Bool)

(declare-fun e!600543 () Bool)

(assert (=> b!1056309 (= e!600545 e!600543)))

(declare-fun res!705200 () Bool)

(assert (=> b!1056309 (=> (not res!705200) (not e!600543))))

(declare-fun lt!466072 () (_ BitVec 32))

(assert (=> b!1056309 (= res!705200 (not (= lt!466072 i!1381)))))

(declare-fun lt!466071 () array!66610)

(declare-fun arrayScanForKey!0 (array!66610 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056309 (= lt!466072 (arrayScanForKey!0 lt!466071 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056310 () Bool)

(declare-fun e!600548 () Bool)

(assert (=> b!1056310 (= e!600548 e!600546)))

(declare-fun res!705198 () Bool)

(assert (=> b!1056310 (=> res!705198 e!600546)))

(assert (=> b!1056310 (= res!705198 (or (bvsgt lt!466072 i!1381) (bvsle i!1381 lt!466072)))))

(declare-fun b!1056311 () Bool)

(assert (=> b!1056311 (= e!600547 e!600545)))

(declare-fun res!705197 () Bool)

(assert (=> b!1056311 (=> (not res!705197) (not e!600545))))

(assert (=> b!1056311 (= res!705197 (arrayContainsKey!0 lt!466071 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056311 (= lt!466071 (array!66611 (store (arr!32027 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32564 a!3488)))))

(declare-fun b!1056312 () Bool)

(declare-fun res!705201 () Bool)

(assert (=> b!1056312 (=> (not res!705201) (not e!600547))))

(declare-datatypes ((List!22470 0))(
  ( (Nil!22467) (Cons!22466 (h!23675 (_ BitVec 64)) (t!31784 List!22470)) )
))
(declare-fun arrayNoDuplicates!0 (array!66610 (_ BitVec 32) List!22470) Bool)

(assert (=> b!1056312 (= res!705201 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22467))))

(declare-fun b!1056313 () Bool)

(declare-fun res!705195 () Bool)

(assert (=> b!1056313 (=> (not res!705195) (not e!600547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056313 (= res!705195 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056314 () Bool)

(assert (=> b!1056314 (= e!600543 (not (or (bvsgt lt!466072 i!1381) (bvsle i!1381 lt!466072) (bvsgt #b00000000000000000000000000000000 (size!32564 a!3488)) (and (bvsge lt!466072 #b00000000000000000000000000000000) (bvsle lt!466072 (size!32564 a!3488))))))))

(assert (=> b!1056314 e!600548))

(declare-fun res!705199 () Bool)

(assert (=> b!1056314 (=> (not res!705199) (not e!600548))))

(assert (=> b!1056314 (= res!705199 (= (select (store (arr!32027 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466072) k0!2747))))

(assert (= (and start!93164 res!705196) b!1056312))

(assert (= (and b!1056312 res!705201) b!1056313))

(assert (= (and b!1056313 res!705195) b!1056307))

(assert (= (and b!1056307 res!705194) b!1056311))

(assert (= (and b!1056311 res!705197) b!1056309))

(assert (= (and b!1056309 res!705200) b!1056314))

(assert (= (and b!1056314 res!705199) b!1056310))

(assert (= (and b!1056310 (not res!705198)) b!1056308))

(declare-fun m!976329 () Bool)

(assert (=> b!1056312 m!976329))

(declare-fun m!976331 () Bool)

(assert (=> b!1056314 m!976331))

(declare-fun m!976333 () Bool)

(assert (=> b!1056314 m!976333))

(declare-fun m!976335 () Bool)

(assert (=> b!1056313 m!976335))

(declare-fun m!976337 () Bool)

(assert (=> b!1056308 m!976337))

(declare-fun m!976339 () Bool)

(assert (=> start!93164 m!976339))

(declare-fun m!976341 () Bool)

(assert (=> b!1056309 m!976341))

(declare-fun m!976343 () Bool)

(assert (=> b!1056307 m!976343))

(declare-fun m!976345 () Bool)

(assert (=> b!1056311 m!976345))

(assert (=> b!1056311 m!976331))

(check-sat (not b!1056313) (not b!1056312) (not b!1056311) (not b!1056308) (not start!93164) (not b!1056309))
(check-sat)
(get-model)

(declare-fun d!128237 () Bool)

(assert (=> d!128237 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056313 d!128237))

(declare-fun d!128239 () Bool)

(declare-fun res!705230 () Bool)

(declare-fun e!600571 () Bool)

(assert (=> d!128239 (=> res!705230 e!600571)))

(assert (=> d!128239 (= res!705230 (= (select (arr!32027 a!3488) i!1381) k0!2747))))

(assert (=> d!128239 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!600571)))

(declare-fun b!1056343 () Bool)

(declare-fun e!600572 () Bool)

(assert (=> b!1056343 (= e!600571 e!600572)))

(declare-fun res!705231 () Bool)

(assert (=> b!1056343 (=> (not res!705231) (not e!600572))))

(assert (=> b!1056343 (= res!705231 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32564 a!3488)))))

(declare-fun b!1056344 () Bool)

(assert (=> b!1056344 (= e!600572 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128239 (not res!705230)) b!1056343))

(assert (= (and b!1056343 res!705231) b!1056344))

(assert (=> d!128239 m!976343))

(declare-fun m!976365 () Bool)

(assert (=> b!1056344 m!976365))

(assert (=> b!1056308 d!128239))

(declare-fun d!128241 () Bool)

(declare-fun lt!466081 () (_ BitVec 32))

(assert (=> d!128241 (and (or (bvslt lt!466081 #b00000000000000000000000000000000) (bvsge lt!466081 (size!32564 lt!466071)) (and (bvsge lt!466081 #b00000000000000000000000000000000) (bvslt lt!466081 (size!32564 lt!466071)))) (bvsge lt!466081 #b00000000000000000000000000000000) (bvslt lt!466081 (size!32564 lt!466071)) (= (select (arr!32027 lt!466071) lt!466081) k0!2747))))

(declare-fun e!600579 () (_ BitVec 32))

(assert (=> d!128241 (= lt!466081 e!600579)))

(declare-fun c!107021 () Bool)

(assert (=> d!128241 (= c!107021 (= (select (arr!32027 lt!466071) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128241 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32564 lt!466071)) (bvslt (size!32564 lt!466071) #b01111111111111111111111111111111))))

(assert (=> d!128241 (= (arrayScanForKey!0 lt!466071 k0!2747 #b00000000000000000000000000000000) lt!466081)))

(declare-fun b!1056353 () Bool)

(assert (=> b!1056353 (= e!600579 #b00000000000000000000000000000000)))

(declare-fun b!1056354 () Bool)

(assert (=> b!1056354 (= e!600579 (arrayScanForKey!0 lt!466071 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128241 c!107021) b!1056353))

(assert (= (and d!128241 (not c!107021)) b!1056354))

(declare-fun m!976367 () Bool)

(assert (=> d!128241 m!976367))

(declare-fun m!976369 () Bool)

(assert (=> d!128241 m!976369))

(declare-fun m!976371 () Bool)

(assert (=> b!1056354 m!976371))

(assert (=> b!1056309 d!128241))

(declare-fun bm!44816 () Bool)

(declare-fun call!44819 () Bool)

(declare-fun c!107026 () Bool)

(assert (=> bm!44816 (= call!44819 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107026 (Cons!22466 (select (arr!32027 a!3488) #b00000000000000000000000000000000) Nil!22467) Nil!22467)))))

(declare-fun b!1056371 () Bool)

(declare-fun e!600593 () Bool)

(declare-fun e!600594 () Bool)

(assert (=> b!1056371 (= e!600593 e!600594)))

(assert (=> b!1056371 (= c!107026 (validKeyInArray!0 (select (arr!32027 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056372 () Bool)

(declare-fun e!600592 () Bool)

(assert (=> b!1056372 (= e!600592 e!600593)))

(declare-fun res!705245 () Bool)

(assert (=> b!1056372 (=> (not res!705245) (not e!600593))))

(declare-fun e!600595 () Bool)

(assert (=> b!1056372 (= res!705245 (not e!600595))))

(declare-fun res!705244 () Bool)

(assert (=> b!1056372 (=> (not res!705244) (not e!600595))))

(assert (=> b!1056372 (= res!705244 (validKeyInArray!0 (select (arr!32027 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056373 () Bool)

(assert (=> b!1056373 (= e!600594 call!44819)))

(declare-fun b!1056374 () Bool)

(assert (=> b!1056374 (= e!600594 call!44819)))

(declare-fun d!128245 () Bool)

(declare-fun res!705246 () Bool)

(assert (=> d!128245 (=> res!705246 e!600592)))

(assert (=> d!128245 (= res!705246 (bvsge #b00000000000000000000000000000000 (size!32564 a!3488)))))

(assert (=> d!128245 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22467) e!600592)))

(declare-fun b!1056375 () Bool)

(declare-fun contains!6208 (List!22470 (_ BitVec 64)) Bool)

(assert (=> b!1056375 (= e!600595 (contains!6208 Nil!22467 (select (arr!32027 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128245 (not res!705246)) b!1056372))

(assert (= (and b!1056372 res!705244) b!1056375))

(assert (= (and b!1056372 res!705245) b!1056371))

(assert (= (and b!1056371 c!107026) b!1056374))

(assert (= (and b!1056371 (not c!107026)) b!1056373))

(assert (= (or b!1056374 b!1056373) bm!44816))

(declare-fun m!976375 () Bool)

(assert (=> bm!44816 m!976375))

(declare-fun m!976377 () Bool)

(assert (=> bm!44816 m!976377))

(assert (=> b!1056371 m!976375))

(assert (=> b!1056371 m!976375))

(declare-fun m!976379 () Bool)

(assert (=> b!1056371 m!976379))

(assert (=> b!1056372 m!976375))

(assert (=> b!1056372 m!976375))

(assert (=> b!1056372 m!976379))

(assert (=> b!1056375 m!976375))

(assert (=> b!1056375 m!976375))

(declare-fun m!976383 () Bool)

(assert (=> b!1056375 m!976383))

(assert (=> b!1056312 d!128245))

(declare-fun d!128251 () Bool)

(declare-fun res!705247 () Bool)

(declare-fun e!600597 () Bool)

(assert (=> d!128251 (=> res!705247 e!600597)))

(assert (=> d!128251 (= res!705247 (= (select (arr!32027 lt!466071) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128251 (= (arrayContainsKey!0 lt!466071 k0!2747 #b00000000000000000000000000000000) e!600597)))

(declare-fun b!1056378 () Bool)

(declare-fun e!600598 () Bool)

(assert (=> b!1056378 (= e!600597 e!600598)))

(declare-fun res!705248 () Bool)

(assert (=> b!1056378 (=> (not res!705248) (not e!600598))))

(assert (=> b!1056378 (= res!705248 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32564 lt!466071)))))

(declare-fun b!1056379 () Bool)

(assert (=> b!1056379 (= e!600598 (arrayContainsKey!0 lt!466071 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128251 (not res!705247)) b!1056378))

(assert (= (and b!1056378 res!705248) b!1056379))

(assert (=> d!128251 m!976369))

(declare-fun m!976389 () Bool)

(assert (=> b!1056379 m!976389))

(assert (=> b!1056311 d!128251))

(declare-fun d!128255 () Bool)

(assert (=> d!128255 (= (array_inv!24649 a!3488) (bvsge (size!32564 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93164 d!128255))

(check-sat (not b!1056372) (not b!1056371) (not b!1056379) (not bm!44816) (not b!1056344) (not b!1056375) (not b!1056354))
(check-sat)
