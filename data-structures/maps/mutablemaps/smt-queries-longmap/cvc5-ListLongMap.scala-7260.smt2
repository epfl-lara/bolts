; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92718 () Bool)

(assert start!92718)

(declare-fun b!1053241 () Bool)

(declare-fun res!702407 () Bool)

(declare-fun e!598189 () Bool)

(assert (=> b!1053241 (=> (not res!702407) (not e!598189))))

(declare-datatypes ((array!66413 0))(
  ( (array!66414 (arr!31939 (Array (_ BitVec 32) (_ BitVec 64))) (size!32476 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66413)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1053241 (= res!702407 (= (select (arr!31939 a!3488) i!1381) k!2747))))

(declare-fun b!1053242 () Bool)

(declare-fun res!702405 () Bool)

(assert (=> b!1053242 (=> (not res!702405) (not e!598189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053242 (= res!702405 (validKeyInArray!0 k!2747))))

(declare-fun res!702408 () Bool)

(assert (=> start!92718 (=> (not res!702408) (not e!598189))))

(assert (=> start!92718 (= res!702408 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32476 a!3488)) (bvslt (size!32476 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92718 e!598189))

(assert (=> start!92718 true))

(declare-fun array_inv!24561 (array!66413) Bool)

(assert (=> start!92718 (array_inv!24561 a!3488)))

(declare-fun b!1053243 () Bool)

(declare-fun e!598188 () Bool)

(assert (=> b!1053243 (= e!598189 e!598188)))

(declare-fun res!702406 () Bool)

(assert (=> b!1053243 (=> (not res!702406) (not e!598188))))

(declare-fun lt!465091 () array!66413)

(declare-fun arrayContainsKey!0 (array!66413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053243 (= res!702406 (arrayContainsKey!0 lt!465091 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053243 (= lt!465091 (array!66414 (store (arr!31939 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32476 a!3488)))))

(declare-fun b!1053244 () Bool)

(declare-fun lt!465090 () (_ BitVec 32))

(assert (=> b!1053244 (= e!598188 (and (not (= lt!465090 i!1381)) (not (= (select (store (arr!31939 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465090) k!2747))))))

(declare-fun arrayScanForKey!0 (array!66413 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053244 (= lt!465090 (arrayScanForKey!0 lt!465091 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053245 () Bool)

(declare-fun res!702404 () Bool)

(assert (=> b!1053245 (=> (not res!702404) (not e!598189))))

(declare-datatypes ((List!22382 0))(
  ( (Nil!22379) (Cons!22378 (h!23587 (_ BitVec 64)) (t!31696 List!22382)) )
))
(declare-fun arrayNoDuplicates!0 (array!66413 (_ BitVec 32) List!22382) Bool)

(assert (=> b!1053245 (= res!702404 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22379))))

(assert (= (and start!92718 res!702408) b!1053245))

(assert (= (and b!1053245 res!702404) b!1053242))

(assert (= (and b!1053242 res!702405) b!1053241))

(assert (= (and b!1053241 res!702407) b!1053243))

(assert (= (and b!1053243 res!702406) b!1053244))

(declare-fun m!973707 () Bool)

(assert (=> b!1053245 m!973707))

(declare-fun m!973709 () Bool)

(assert (=> b!1053241 m!973709))

(declare-fun m!973711 () Bool)

(assert (=> start!92718 m!973711))

(declare-fun m!973713 () Bool)

(assert (=> b!1053244 m!973713))

(declare-fun m!973715 () Bool)

(assert (=> b!1053244 m!973715))

(declare-fun m!973717 () Bool)

(assert (=> b!1053244 m!973717))

(declare-fun m!973719 () Bool)

(assert (=> b!1053242 m!973719))

(declare-fun m!973721 () Bool)

(assert (=> b!1053243 m!973721))

(assert (=> b!1053243 m!973713))

(push 1)

(assert (not b!1053244))

(assert (not b!1053243))

(assert (not start!92718))

(assert (not b!1053242))

(assert (not b!1053245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127833 () Bool)

(assert (=> d!127833 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053242 d!127833))

(declare-fun d!127835 () Bool)

(declare-fun res!702455 () Bool)

(declare-fun e!598227 () Bool)

(assert (=> d!127835 (=> res!702455 e!598227)))

(assert (=> d!127835 (= res!702455 (= (select (arr!31939 lt!465091) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127835 (= (arrayContainsKey!0 lt!465091 k!2747 #b00000000000000000000000000000000) e!598227)))

(declare-fun b!1053296 () Bool)

(declare-fun e!598228 () Bool)

(assert (=> b!1053296 (= e!598227 e!598228)))

(declare-fun res!702456 () Bool)

(assert (=> b!1053296 (=> (not res!702456) (not e!598228))))

(assert (=> b!1053296 (= res!702456 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32476 lt!465091)))))

(declare-fun b!1053297 () Bool)

(assert (=> b!1053297 (= e!598228 (arrayContainsKey!0 lt!465091 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127835 (not res!702455)) b!1053296))

(assert (= (and b!1053296 res!702456) b!1053297))

(declare-fun m!973759 () Bool)

(assert (=> d!127835 m!973759))

(declare-fun m!973761 () Bool)

(assert (=> b!1053297 m!973761))

(assert (=> b!1053243 d!127835))

(declare-fun d!127839 () Bool)

(assert (=> d!127839 (= (array_inv!24561 a!3488) (bvsge (size!32476 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92718 d!127839))

(declare-fun bm!44747 () Bool)

(declare-fun call!44750 () Bool)

(declare-fun c!106889 () Bool)

(assert (=> bm!44747 (= call!44750 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106889 (Cons!22378 (select (arr!31939 a!3488) #b00000000000000000000000000000000) Nil!22379) Nil!22379)))))

(declare-fun d!127841 () Bool)

(declare-fun res!702476 () Bool)

(declare-fun e!598255 () Bool)

(assert (=> d!127841 (=> res!702476 e!598255)))

(assert (=> d!127841 (= res!702476 (bvsge #b00000000000000000000000000000000 (size!32476 a!3488)))))

(assert (=> d!127841 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22379) e!598255)))

(declare-fun b!1053328 () Bool)

(declare-fun e!598253 () Bool)

(assert (=> b!1053328 (= e!598253 call!44750)))

(declare-fun b!1053329 () Bool)

(declare-fun e!598254 () Bool)

(assert (=> b!1053329 (= e!598255 e!598254)))

(declare-fun res!702475 () Bool)

(assert (=> b!1053329 (=> (not res!702475) (not e!598254))))

(declare-fun e!598256 () Bool)

(assert (=> b!1053329 (= res!702475 (not e!598256))))

(declare-fun res!702477 () Bool)

(assert (=> b!1053329 (=> (not res!702477) (not e!598256))))

(assert (=> b!1053329 (= res!702477 (validKeyInArray!0 (select (arr!31939 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053330 () Bool)

(assert (=> b!1053330 (= e!598254 e!598253)))

(assert (=> b!1053330 (= c!106889 (validKeyInArray!0 (select (arr!31939 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053331 () Bool)

(declare-fun contains!6185 (List!22382 (_ BitVec 64)) Bool)

(assert (=> b!1053331 (= e!598256 (contains!6185 Nil!22379 (select (arr!31939 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053332 () Bool)

(assert (=> b!1053332 (= e!598253 call!44750)))

(assert (= (and d!127841 (not res!702476)) b!1053329))

(assert (= (and b!1053329 res!702477) b!1053331))

(assert (= (and b!1053329 res!702475) b!1053330))

(assert (= (and b!1053330 c!106889) b!1053332))

(assert (= (and b!1053330 (not c!106889)) b!1053328))

(assert (= (or b!1053332 b!1053328) bm!44747))

(declare-fun m!973779 () Bool)

(assert (=> bm!44747 m!973779))

(declare-fun m!973781 () Bool)

(assert (=> bm!44747 m!973781))

(assert (=> b!1053329 m!973779))

(assert (=> b!1053329 m!973779))

(declare-fun m!973783 () Bool)

(assert (=> b!1053329 m!973783))

(assert (=> b!1053330 m!973779))

(assert (=> b!1053330 m!973779))

(assert (=> b!1053330 m!973783))

(assert (=> b!1053331 m!973779))

(assert (=> b!1053331 m!973779))

(declare-fun m!973785 () Bool)

(assert (=> b!1053331 m!973785))

(assert (=> b!1053245 d!127841))

(declare-fun d!127847 () Bool)

(declare-fun lt!465111 () (_ BitVec 32))

(assert (=> d!127847 (and (or (bvslt lt!465111 #b00000000000000000000000000000000) (bvsge lt!465111 (size!32476 lt!465091)) (and (bvsge lt!465111 #b00000000000000000000000000000000) (bvslt lt!465111 (size!32476 lt!465091)))) (bvsge lt!465111 #b00000000000000000000000000000000) (bvslt lt!465111 (size!32476 lt!465091)) (= (select (arr!31939 lt!465091) lt!465111) k!2747))))

(declare-fun e!598270 () (_ BitVec 32))

