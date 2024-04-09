; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92720 () Bool)

(assert start!92720)

(declare-fun b!1053256 () Bool)

(declare-datatypes ((array!66415 0))(
  ( (array!66416 (arr!31940 (Array (_ BitVec 32) (_ BitVec 64))) (size!32477 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66415)

(declare-fun lt!465097 () (_ BitVec 32))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun e!598198 () Bool)

(assert (=> b!1053256 (= e!598198 (and (not (= lt!465097 i!1381)) (not (= (select (store (arr!31940 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465097) k0!2747))))))

(declare-fun lt!465096 () array!66415)

(declare-fun arrayScanForKey!0 (array!66415 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053256 (= lt!465097 (arrayScanForKey!0 lt!465096 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!702421 () Bool)

(declare-fun e!598199 () Bool)

(assert (=> start!92720 (=> (not res!702421) (not e!598199))))

(assert (=> start!92720 (= res!702421 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32477 a!3488)) (bvslt (size!32477 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92720 e!598199))

(assert (=> start!92720 true))

(declare-fun array_inv!24562 (array!66415) Bool)

(assert (=> start!92720 (array_inv!24562 a!3488)))

(declare-fun b!1053257 () Bool)

(assert (=> b!1053257 (= e!598199 e!598198)))

(declare-fun res!702422 () Bool)

(assert (=> b!1053257 (=> (not res!702422) (not e!598198))))

(declare-fun arrayContainsKey!0 (array!66415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053257 (= res!702422 (arrayContainsKey!0 lt!465096 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053257 (= lt!465096 (array!66416 (store (arr!31940 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32477 a!3488)))))

(declare-fun b!1053258 () Bool)

(declare-fun res!702420 () Bool)

(assert (=> b!1053258 (=> (not res!702420) (not e!598199))))

(assert (=> b!1053258 (= res!702420 (= (select (arr!31940 a!3488) i!1381) k0!2747))))

(declare-fun b!1053259 () Bool)

(declare-fun res!702423 () Bool)

(assert (=> b!1053259 (=> (not res!702423) (not e!598199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053259 (= res!702423 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053260 () Bool)

(declare-fun res!702419 () Bool)

(assert (=> b!1053260 (=> (not res!702419) (not e!598199))))

(declare-datatypes ((List!22383 0))(
  ( (Nil!22380) (Cons!22379 (h!23588 (_ BitVec 64)) (t!31697 List!22383)) )
))
(declare-fun arrayNoDuplicates!0 (array!66415 (_ BitVec 32) List!22383) Bool)

(assert (=> b!1053260 (= res!702419 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22380))))

(assert (= (and start!92720 res!702421) b!1053260))

(assert (= (and b!1053260 res!702419) b!1053259))

(assert (= (and b!1053259 res!702423) b!1053258))

(assert (= (and b!1053258 res!702420) b!1053257))

(assert (= (and b!1053257 res!702422) b!1053256))

(declare-fun m!973723 () Bool)

(assert (=> b!1053256 m!973723))

(declare-fun m!973725 () Bool)

(assert (=> b!1053256 m!973725))

(declare-fun m!973727 () Bool)

(assert (=> b!1053256 m!973727))

(declare-fun m!973729 () Bool)

(assert (=> b!1053260 m!973729))

(declare-fun m!973731 () Bool)

(assert (=> b!1053257 m!973731))

(assert (=> b!1053257 m!973723))

(declare-fun m!973733 () Bool)

(assert (=> b!1053258 m!973733))

(declare-fun m!973735 () Bool)

(assert (=> start!92720 m!973735))

(declare-fun m!973737 () Bool)

(assert (=> b!1053259 m!973737))

(check-sat (not b!1053256) (not b!1053259) (not start!92720) (not b!1053260) (not b!1053257))
(check-sat)
(get-model)

(declare-fun d!127825 () Bool)

(assert (=> d!127825 (= (array_inv!24562 a!3488) (bvsge (size!32477 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92720 d!127825))

(declare-fun d!127827 () Bool)

(declare-fun res!702443 () Bool)

(declare-fun e!598213 () Bool)

(assert (=> d!127827 (=> res!702443 e!598213)))

(assert (=> d!127827 (= res!702443 (= (select (arr!31940 lt!465096) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127827 (= (arrayContainsKey!0 lt!465096 k0!2747 #b00000000000000000000000000000000) e!598213)))

(declare-fun b!1053280 () Bool)

(declare-fun e!598214 () Bool)

(assert (=> b!1053280 (= e!598213 e!598214)))

(declare-fun res!702444 () Bool)

(assert (=> b!1053280 (=> (not res!702444) (not e!598214))))

(assert (=> b!1053280 (= res!702444 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32477 lt!465096)))))

(declare-fun b!1053281 () Bool)

(assert (=> b!1053281 (= e!598214 (arrayContainsKey!0 lt!465096 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127827 (not res!702443)) b!1053280))

(assert (= (and b!1053280 res!702444) b!1053281))

(declare-fun m!973755 () Bool)

(assert (=> d!127827 m!973755))

(declare-fun m!973757 () Bool)

(assert (=> b!1053281 m!973757))

(assert (=> b!1053257 d!127827))

(declare-fun d!127829 () Bool)

(assert (=> d!127829 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053259 d!127829))

(declare-fun b!1053308 () Bool)

(declare-fun e!598237 () Bool)

(declare-fun contains!6183 (List!22383 (_ BitVec 64)) Bool)

(assert (=> b!1053308 (= e!598237 (contains!6183 Nil!22380 (select (arr!31940 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053309 () Bool)

(declare-fun e!598238 () Bool)

(declare-fun e!598239 () Bool)

(assert (=> b!1053309 (= e!598238 e!598239)))

(declare-fun res!702464 () Bool)

(assert (=> b!1053309 (=> (not res!702464) (not e!598239))))

(assert (=> b!1053309 (= res!702464 (not e!598237))))

(declare-fun res!702465 () Bool)

(assert (=> b!1053309 (=> (not res!702465) (not e!598237))))

(assert (=> b!1053309 (= res!702465 (validKeyInArray!0 (select (arr!31940 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053310 () Bool)

(declare-fun e!598240 () Bool)

(declare-fun call!44744 () Bool)

(assert (=> b!1053310 (= e!598240 call!44744)))

(declare-fun d!127831 () Bool)

(declare-fun res!702463 () Bool)

(assert (=> d!127831 (=> res!702463 e!598238)))

(assert (=> d!127831 (= res!702463 (bvsge #b00000000000000000000000000000000 (size!32477 a!3488)))))

(assert (=> d!127831 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22380) e!598238)))

(declare-fun b!1053311 () Bool)

(assert (=> b!1053311 (= e!598240 call!44744)))

(declare-fun bm!44741 () Bool)

(declare-fun c!106885 () Bool)

(assert (=> bm!44741 (= call!44744 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106885 (Cons!22379 (select (arr!31940 a!3488) #b00000000000000000000000000000000) Nil!22380) Nil!22380)))))

(declare-fun b!1053312 () Bool)

(assert (=> b!1053312 (= e!598239 e!598240)))

(assert (=> b!1053312 (= c!106885 (validKeyInArray!0 (select (arr!31940 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127831 (not res!702463)) b!1053309))

(assert (= (and b!1053309 res!702465) b!1053308))

(assert (= (and b!1053309 res!702464) b!1053312))

(assert (= (and b!1053312 c!106885) b!1053310))

(assert (= (and b!1053312 (not c!106885)) b!1053311))

(assert (= (or b!1053310 b!1053311) bm!44741))

(declare-fun m!973763 () Bool)

(assert (=> b!1053308 m!973763))

(assert (=> b!1053308 m!973763))

(declare-fun m!973765 () Bool)

(assert (=> b!1053308 m!973765))

(assert (=> b!1053309 m!973763))

(assert (=> b!1053309 m!973763))

(declare-fun m!973767 () Bool)

(assert (=> b!1053309 m!973767))

(assert (=> bm!44741 m!973763))

(declare-fun m!973769 () Bool)

(assert (=> bm!44741 m!973769))

(assert (=> b!1053312 m!973763))

(assert (=> b!1053312 m!973763))

(assert (=> b!1053312 m!973767))

(assert (=> b!1053260 d!127831))

(declare-fun d!127843 () Bool)

(declare-fun lt!465106 () (_ BitVec 32))

(assert (=> d!127843 (and (or (bvslt lt!465106 #b00000000000000000000000000000000) (bvsge lt!465106 (size!32477 lt!465096)) (and (bvsge lt!465106 #b00000000000000000000000000000000) (bvslt lt!465106 (size!32477 lt!465096)))) (bvsge lt!465106 #b00000000000000000000000000000000) (bvslt lt!465106 (size!32477 lt!465096)) (= (select (arr!31940 lt!465096) lt!465106) k0!2747))))

(declare-fun e!598265 () (_ BitVec 32))

(assert (=> d!127843 (= lt!465106 e!598265)))

(declare-fun c!106892 () Bool)

(assert (=> d!127843 (= c!106892 (= (select (arr!31940 lt!465096) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127843 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32477 lt!465096)) (bvslt (size!32477 lt!465096) #b01111111111111111111111111111111))))

(assert (=> d!127843 (= (arrayScanForKey!0 lt!465096 k0!2747 #b00000000000000000000000000000000) lt!465106)))

(declare-fun b!1053343 () Bool)

(assert (=> b!1053343 (= e!598265 #b00000000000000000000000000000000)))

(declare-fun b!1053344 () Bool)

(assert (=> b!1053344 (= e!598265 (arrayScanForKey!0 lt!465096 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127843 c!106892) b!1053343))

(assert (= (and d!127843 (not c!106892)) b!1053344))

(declare-fun m!973791 () Bool)

(assert (=> d!127843 m!973791))

(assert (=> d!127843 m!973755))

(declare-fun m!973793 () Bool)

(assert (=> b!1053344 m!973793))

(assert (=> b!1053256 d!127843))

(check-sat (not b!1053309) (not b!1053312) (not b!1053344) (not bm!44741) (not b!1053281) (not b!1053308))
(check-sat)
