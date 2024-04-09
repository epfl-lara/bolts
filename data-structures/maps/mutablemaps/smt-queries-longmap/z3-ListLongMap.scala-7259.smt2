; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92684 () Bool)

(assert start!92684)

(declare-fun b!1053131 () Bool)

(declare-fun res!702332 () Bool)

(declare-fun e!598108 () Bool)

(assert (=> b!1053131 (=> (not res!702332) (not e!598108))))

(declare-datatypes ((array!66406 0))(
  ( (array!66407 (arr!31937 (Array (_ BitVec 32) (_ BitVec 64))) (size!32474 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66406)

(declare-datatypes ((List!22380 0))(
  ( (Nil!22377) (Cons!22376 (h!23585 (_ BitVec 64)) (t!31694 List!22380)) )
))
(declare-fun arrayNoDuplicates!0 (array!66406 (_ BitVec 32) List!22380) Bool)

(assert (=> b!1053131 (= res!702332 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22377))))

(declare-fun b!1053132 () Bool)

(declare-fun e!598109 () Bool)

(assert (=> b!1053132 (= e!598108 e!598109)))

(declare-fun res!702329 () Bool)

(assert (=> b!1053132 (=> (not res!702329) (not e!598109))))

(declare-fun lt!465069 () array!66406)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053132 (= res!702329 (arrayContainsKey!0 lt!465069 k0!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053132 (= lt!465069 (array!66407 (store (arr!31937 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32474 a!3488)))))

(declare-fun b!1053133 () Bool)

(declare-fun res!702330 () Bool)

(assert (=> b!1053133 (=> (not res!702330) (not e!598108))))

(assert (=> b!1053133 (= res!702330 (= (select (arr!31937 a!3488) i!1381) k0!2747))))

(declare-fun lt!465070 () (_ BitVec 32))

(declare-fun b!1053134 () Bool)

(assert (=> b!1053134 (= e!598109 (and (not (= lt!465070 i!1381)) (or (bvslt lt!465070 #b00000000000000000000000000000000) (bvsge lt!465070 (size!32474 a!3488)))))))

(declare-fun arrayScanForKey!0 (array!66406 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053134 (= lt!465070 (arrayScanForKey!0 lt!465069 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053130 () Bool)

(declare-fun res!702331 () Bool)

(assert (=> b!1053130 (=> (not res!702331) (not e!598108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053130 (= res!702331 (validKeyInArray!0 k0!2747))))

(declare-fun res!702333 () Bool)

(assert (=> start!92684 (=> (not res!702333) (not e!598108))))

(assert (=> start!92684 (= res!702333 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32474 a!3488)) (bvslt (size!32474 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92684 e!598108))

(assert (=> start!92684 true))

(declare-fun array_inv!24559 (array!66406) Bool)

(assert (=> start!92684 (array_inv!24559 a!3488)))

(assert (= (and start!92684 res!702333) b!1053131))

(assert (= (and b!1053131 res!702332) b!1053130))

(assert (= (and b!1053130 res!702331) b!1053133))

(assert (= (and b!1053133 res!702330) b!1053132))

(assert (= (and b!1053132 res!702329) b!1053134))

(declare-fun m!973631 () Bool)

(assert (=> b!1053130 m!973631))

(declare-fun m!973633 () Bool)

(assert (=> start!92684 m!973633))

(declare-fun m!973635 () Bool)

(assert (=> b!1053134 m!973635))

(declare-fun m!973637 () Bool)

(assert (=> b!1053132 m!973637))

(declare-fun m!973639 () Bool)

(assert (=> b!1053132 m!973639))

(declare-fun m!973641 () Bool)

(assert (=> b!1053133 m!973641))

(declare-fun m!973643 () Bool)

(assert (=> b!1053131 m!973643))

(check-sat (not start!92684) (not b!1053132) (not b!1053130) (not b!1053134) (not b!1053131))
(check-sat)
(get-model)

(declare-fun d!127793 () Bool)

(assert (=> d!127793 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053130 d!127793))

(declare-fun d!127795 () Bool)

(declare-fun lt!465079 () (_ BitVec 32))

(assert (=> d!127795 (and (or (bvslt lt!465079 #b00000000000000000000000000000000) (bvsge lt!465079 (size!32474 lt!465069)) (and (bvsge lt!465079 #b00000000000000000000000000000000) (bvslt lt!465079 (size!32474 lt!465069)))) (bvsge lt!465079 #b00000000000000000000000000000000) (bvslt lt!465079 (size!32474 lt!465069)) (= (select (arr!31937 lt!465069) lt!465079) k0!2747))))

(declare-fun e!598121 () (_ BitVec 32))

(assert (=> d!127795 (= lt!465079 e!598121)))

(declare-fun c!106865 () Bool)

(assert (=> d!127795 (= c!106865 (= (select (arr!31937 lt!465069) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127795 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32474 lt!465069)) (bvslt (size!32474 lt!465069) #b01111111111111111111111111111111))))

(assert (=> d!127795 (= (arrayScanForKey!0 lt!465069 k0!2747 #b00000000000000000000000000000000) lt!465079)))

(declare-fun b!1053154 () Bool)

(assert (=> b!1053154 (= e!598121 #b00000000000000000000000000000000)))

(declare-fun b!1053155 () Bool)

(assert (=> b!1053155 (= e!598121 (arrayScanForKey!0 lt!465069 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127795 c!106865) b!1053154))

(assert (= (and d!127795 (not c!106865)) b!1053155))

(declare-fun m!973659 () Bool)

(assert (=> d!127795 m!973659))

(declare-fun m!973661 () Bool)

(assert (=> d!127795 m!973661))

(declare-fun m!973663 () Bool)

(assert (=> b!1053155 m!973663))

(assert (=> b!1053134 d!127795))

(declare-fun d!127803 () Bool)

(assert (=> d!127803 (= (array_inv!24559 a!3488) (bvsge (size!32474 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92684 d!127803))

(declare-fun d!127805 () Bool)

(declare-fun res!702359 () Bool)

(declare-fun e!598134 () Bool)

(assert (=> d!127805 (=> res!702359 e!598134)))

(assert (=> d!127805 (= res!702359 (= (select (arr!31937 lt!465069) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127805 (= (arrayContainsKey!0 lt!465069 k0!2747 #b00000000000000000000000000000000) e!598134)))

(declare-fun b!1053170 () Bool)

(declare-fun e!598135 () Bool)

(assert (=> b!1053170 (= e!598134 e!598135)))

(declare-fun res!702360 () Bool)

(assert (=> b!1053170 (=> (not res!702360) (not e!598135))))

(assert (=> b!1053170 (= res!702360 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32474 lt!465069)))))

(declare-fun b!1053171 () Bool)

(assert (=> b!1053171 (= e!598135 (arrayContainsKey!0 lt!465069 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127805 (not res!702359)) b!1053170))

(assert (= (and b!1053170 res!702360) b!1053171))

(assert (=> d!127805 m!973661))

(declare-fun m!973665 () Bool)

(assert (=> b!1053171 m!973665))

(assert (=> b!1053132 d!127805))

(declare-fun b!1053193 () Bool)

(declare-fun e!598157 () Bool)

(declare-fun e!598155 () Bool)

(assert (=> b!1053193 (= e!598157 e!598155)))

(declare-fun res!702376 () Bool)

(assert (=> b!1053193 (=> (not res!702376) (not e!598155))))

(declare-fun e!598156 () Bool)

(assert (=> b!1053193 (= res!702376 (not e!598156))))

(declare-fun res!702377 () Bool)

(assert (=> b!1053193 (=> (not res!702377) (not e!598156))))

(assert (=> b!1053193 (= res!702377 (validKeyInArray!0 (select (arr!31937 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053194 () Bool)

(declare-fun e!598154 () Bool)

(declare-fun call!44738 () Bool)

(assert (=> b!1053194 (= e!598154 call!44738)))

(declare-fun b!1053195 () Bool)

(declare-fun contains!6181 (List!22380 (_ BitVec 64)) Bool)

(assert (=> b!1053195 (= e!598156 (contains!6181 Nil!22377 (select (arr!31937 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053196 () Bool)

(assert (=> b!1053196 (= e!598155 e!598154)))

(declare-fun c!106871 () Bool)

(assert (=> b!1053196 (= c!106871 (validKeyInArray!0 (select (arr!31937 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053197 () Bool)

(assert (=> b!1053197 (= e!598154 call!44738)))

(declare-fun d!127807 () Bool)

(declare-fun res!702378 () Bool)

(assert (=> d!127807 (=> res!702378 e!598157)))

(assert (=> d!127807 (= res!702378 (bvsge #b00000000000000000000000000000000 (size!32474 a!3488)))))

(assert (=> d!127807 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22377) e!598157)))

(declare-fun bm!44735 () Bool)

(assert (=> bm!44735 (= call!44738 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106871 (Cons!22376 (select (arr!31937 a!3488) #b00000000000000000000000000000000) Nil!22377) Nil!22377)))))

(assert (= (and d!127807 (not res!702378)) b!1053193))

(assert (= (and b!1053193 res!702377) b!1053195))

(assert (= (and b!1053193 res!702376) b!1053196))

(assert (= (and b!1053196 c!106871) b!1053197))

(assert (= (and b!1053196 (not c!106871)) b!1053194))

(assert (= (or b!1053197 b!1053194) bm!44735))

(declare-fun m!973679 () Bool)

(assert (=> b!1053193 m!973679))

(assert (=> b!1053193 m!973679))

(declare-fun m!973681 () Bool)

(assert (=> b!1053193 m!973681))

(assert (=> b!1053195 m!973679))

(assert (=> b!1053195 m!973679))

(declare-fun m!973683 () Bool)

(assert (=> b!1053195 m!973683))

(assert (=> b!1053196 m!973679))

(assert (=> b!1053196 m!973679))

(assert (=> b!1053196 m!973681))

(assert (=> bm!44735 m!973679))

(declare-fun m!973685 () Bool)

(assert (=> bm!44735 m!973685))

(assert (=> b!1053131 d!127807))

(check-sat (not b!1053155) (not bm!44735) (not b!1053196) (not b!1053171) (not b!1053195) (not b!1053193))
(check-sat)
