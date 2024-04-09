; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114628 () Bool)

(assert start!114628)

(declare-fun b!1359701 () Bool)

(declare-fun e!771493 () Bool)

(declare-fun e!771492 () Bool)

(assert (=> b!1359701 (= e!771493 e!771492)))

(declare-fun res!904247 () Bool)

(assert (=> b!1359701 (=> (not res!904247) (not e!771492))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359701 (= res!904247 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44735 0))(
  ( (Unit!44736) )
))
(declare-fun lt!599647 () Unit!44735)

(declare-fun e!771491 () Unit!44735)

(assert (=> b!1359701 (= lt!599647 e!771491)))

(declare-fun c!127174 () Bool)

(declare-datatypes ((array!92496 0))(
  ( (array!92497 (arr!44684 (Array (_ BitVec 32) (_ BitVec 64))) (size!45235 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92496)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359701 (= c!127174 (validKeyInArray!0 (select (arr!44684 a!3742) from!3120)))))

(declare-fun b!1359702 () Bool)

(declare-fun res!904244 () Bool)

(assert (=> b!1359702 (=> (not res!904244) (not e!771493))))

(assert (=> b!1359702 (= res!904244 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45235 a!3742))))))

(declare-fun b!1359703 () Bool)

(declare-fun res!904242 () Bool)

(assert (=> b!1359703 (=> (not res!904242) (not e!771493))))

(declare-datatypes ((List!31905 0))(
  ( (Nil!31902) (Cons!31901 (h!33110 (_ BitVec 64)) (t!46585 List!31905)) )
))
(declare-fun acc!759 () List!31905)

(declare-fun contains!9470 (List!31905 (_ BitVec 64)) Bool)

(assert (=> b!1359703 (= res!904242 (not (contains!9470 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359704 () Bool)

(declare-fun res!904239 () Bool)

(assert (=> b!1359704 (=> (not res!904239) (not e!771492))))

(declare-fun arrayNoDuplicates!0 (array!92496 (_ BitVec 32) List!31905) Bool)

(assert (=> b!1359704 (= res!904239 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359705 () Bool)

(declare-fun Unit!44737 () Unit!44735)

(assert (=> b!1359705 (= e!771491 Unit!44737)))

(declare-fun b!1359706 () Bool)

(declare-fun res!904241 () Bool)

(assert (=> b!1359706 (=> (not res!904241) (not e!771493))))

(assert (=> b!1359706 (= res!904241 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359707 () Bool)

(declare-fun res!904243 () Bool)

(assert (=> b!1359707 (=> (not res!904243) (not e!771493))))

(assert (=> b!1359707 (= res!904243 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31902))))

(declare-fun b!1359708 () Bool)

(declare-fun lt!599651 () Unit!44735)

(assert (=> b!1359708 (= e!771491 lt!599651)))

(declare-fun lt!599650 () Unit!44735)

(declare-fun lemmaListSubSeqRefl!0 (List!31905) Unit!44735)

(assert (=> b!1359708 (= lt!599650 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!861 (List!31905 List!31905) Bool)

(assert (=> b!1359708 (subseq!861 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92496 List!31905 List!31905 (_ BitVec 32)) Unit!44735)

(declare-fun $colon$colon!866 (List!31905 (_ BitVec 64)) List!31905)

(assert (=> b!1359708 (= lt!599651 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!866 acc!759 (select (arr!44684 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359708 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359709 () Bool)

(declare-fun res!904245 () Bool)

(assert (=> b!1359709 (=> (not res!904245) (not e!771493))))

(declare-fun noDuplicate!2349 (List!31905) Bool)

(assert (=> b!1359709 (= res!904245 (noDuplicate!2349 acc!759))))

(declare-fun b!1359710 () Bool)

(declare-fun res!904240 () Bool)

(assert (=> b!1359710 (=> (not res!904240) (not e!771493))))

(assert (=> b!1359710 (= res!904240 (not (contains!9470 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359711 () Bool)

(declare-fun res!904238 () Bool)

(assert (=> b!1359711 (=> (not res!904238) (not e!771493))))

(assert (=> b!1359711 (= res!904238 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45235 a!3742)))))

(declare-fun res!904246 () Bool)

(assert (=> start!114628 (=> (not res!904246) (not e!771493))))

(assert (=> start!114628 (= res!904246 (and (bvslt (size!45235 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45235 a!3742))))))

(assert (=> start!114628 e!771493))

(assert (=> start!114628 true))

(declare-fun array_inv!33629 (array!92496) Bool)

(assert (=> start!114628 (array_inv!33629 a!3742)))

(declare-fun b!1359712 () Bool)

(declare-fun res!904248 () Bool)

(assert (=> b!1359712 (=> (not res!904248) (not e!771493))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359712 (= res!904248 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359713 () Bool)

(declare-fun lt!599648 () array!92496)

(assert (=> b!1359713 (= e!771492 (not (arrayNoDuplicates!0 lt!599648 from!3120 acc!759)))))

(assert (=> b!1359713 (arrayNoDuplicates!0 lt!599648 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (=> b!1359713 (= lt!599648 (array!92497 (store (arr!44684 a!3742) i!1404 l!3587) (size!45235 a!3742)))))

(declare-fun lt!599649 () Unit!44735)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31905) Unit!44735)

(assert (=> b!1359713 (= lt!599649 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114628 res!904246) b!1359709))

(assert (= (and b!1359709 res!904245) b!1359703))

(assert (= (and b!1359703 res!904242) b!1359710))

(assert (= (and b!1359710 res!904240) b!1359707))

(assert (= (and b!1359707 res!904243) b!1359706))

(assert (= (and b!1359706 res!904241) b!1359702))

(assert (= (and b!1359702 res!904244) b!1359712))

(assert (= (and b!1359712 res!904248) b!1359711))

(assert (= (and b!1359711 res!904238) b!1359701))

(assert (= (and b!1359701 c!127174) b!1359708))

(assert (= (and b!1359701 (not c!127174)) b!1359705))

(assert (= (and b!1359701 res!904247) b!1359704))

(assert (= (and b!1359704 res!904239) b!1359713))

(declare-fun m!1245079 () Bool)

(assert (=> b!1359707 m!1245079))

(declare-fun m!1245081 () Bool)

(assert (=> b!1359712 m!1245081))

(declare-fun m!1245083 () Bool)

(assert (=> b!1359701 m!1245083))

(assert (=> b!1359701 m!1245083))

(declare-fun m!1245085 () Bool)

(assert (=> b!1359701 m!1245085))

(declare-fun m!1245087 () Bool)

(assert (=> b!1359713 m!1245087))

(declare-fun m!1245089 () Bool)

(assert (=> b!1359713 m!1245089))

(declare-fun m!1245091 () Bool)

(assert (=> b!1359713 m!1245091))

(declare-fun m!1245093 () Bool)

(assert (=> b!1359713 m!1245093))

(declare-fun m!1245095 () Bool)

(assert (=> b!1359710 m!1245095))

(declare-fun m!1245097 () Bool)

(assert (=> b!1359704 m!1245097))

(declare-fun m!1245099 () Bool)

(assert (=> b!1359708 m!1245099))

(assert (=> b!1359708 m!1245083))

(declare-fun m!1245101 () Bool)

(assert (=> b!1359708 m!1245101))

(declare-fun m!1245103 () Bool)

(assert (=> b!1359708 m!1245103))

(assert (=> b!1359708 m!1245097))

(assert (=> b!1359708 m!1245083))

(assert (=> b!1359708 m!1245101))

(declare-fun m!1245105 () Bool)

(assert (=> b!1359708 m!1245105))

(declare-fun m!1245107 () Bool)

(assert (=> b!1359709 m!1245107))

(declare-fun m!1245109 () Bool)

(assert (=> b!1359703 m!1245109))

(declare-fun m!1245111 () Bool)

(assert (=> start!114628 m!1245111))

(declare-fun m!1245113 () Bool)

(assert (=> b!1359706 m!1245113))

(check-sat (not b!1359707) (not b!1359706) (not b!1359703) (not b!1359701) (not b!1359713) (not b!1359710) (not start!114628) (not b!1359709) (not b!1359712) (not b!1359704) (not b!1359708))
(check-sat)
(get-model)

(declare-fun d!145461 () Bool)

(assert (=> d!145461 (= (validKeyInArray!0 (select (arr!44684 a!3742) from!3120)) (and (not (= (select (arr!44684 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44684 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1359701 d!145461))

(declare-fun d!145463 () Bool)

(assert (=> d!145463 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1359712 d!145463))

(declare-fun c!127180 () Bool)

(declare-fun bm!65302 () Bool)

(declare-fun call!65305 () Bool)

(assert (=> bm!65302 (= call!65305 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127180 (Cons!31901 (select (arr!44684 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1359763 () Bool)

(declare-fun e!771517 () Bool)

(assert (=> b!1359763 (= e!771517 call!65305)))

(declare-fun d!145465 () Bool)

(declare-fun res!904288 () Bool)

(declare-fun e!771515 () Bool)

(assert (=> d!145465 (=> res!904288 e!771515)))

(assert (=> d!145465 (= res!904288 (bvsge from!3120 (size!45235 a!3742)))))

(assert (=> d!145465 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771515)))

(declare-fun b!1359764 () Bool)

(declare-fun e!771514 () Bool)

(assert (=> b!1359764 (= e!771515 e!771514)))

(declare-fun res!904290 () Bool)

(assert (=> b!1359764 (=> (not res!904290) (not e!771514))))

(declare-fun e!771516 () Bool)

(assert (=> b!1359764 (= res!904290 (not e!771516))))

(declare-fun res!904289 () Bool)

(assert (=> b!1359764 (=> (not res!904289) (not e!771516))))

(assert (=> b!1359764 (= res!904289 (validKeyInArray!0 (select (arr!44684 a!3742) from!3120)))))

(declare-fun b!1359765 () Bool)

(assert (=> b!1359765 (= e!771514 e!771517)))

(assert (=> b!1359765 (= c!127180 (validKeyInArray!0 (select (arr!44684 a!3742) from!3120)))))

(declare-fun b!1359766 () Bool)

(assert (=> b!1359766 (= e!771516 (contains!9470 acc!759 (select (arr!44684 a!3742) from!3120)))))

(declare-fun b!1359767 () Bool)

(assert (=> b!1359767 (= e!771517 call!65305)))

(assert (= (and d!145465 (not res!904288)) b!1359764))

(assert (= (and b!1359764 res!904289) b!1359766))

(assert (= (and b!1359764 res!904290) b!1359765))

(assert (= (and b!1359765 c!127180) b!1359763))

(assert (= (and b!1359765 (not c!127180)) b!1359767))

(assert (= (or b!1359763 b!1359767) bm!65302))

(assert (=> bm!65302 m!1245083))

(declare-fun m!1245151 () Bool)

(assert (=> bm!65302 m!1245151))

(assert (=> b!1359764 m!1245083))

(assert (=> b!1359764 m!1245083))

(assert (=> b!1359764 m!1245085))

(assert (=> b!1359765 m!1245083))

(assert (=> b!1359765 m!1245083))

(assert (=> b!1359765 m!1245085))

(assert (=> b!1359766 m!1245083))

(assert (=> b!1359766 m!1245083))

(declare-fun m!1245153 () Bool)

(assert (=> b!1359766 m!1245153))

(assert (=> b!1359706 d!145465))

(declare-fun bm!65303 () Bool)

(declare-fun c!127181 () Bool)

(declare-fun call!65306 () Bool)

(assert (=> bm!65303 (= call!65306 (arrayNoDuplicates!0 lt!599648 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127181 (Cons!31901 (select (arr!44684 lt!599648) from!3120) acc!759) acc!759)))))

(declare-fun b!1359768 () Bool)

(declare-fun e!771521 () Bool)

(assert (=> b!1359768 (= e!771521 call!65306)))

(declare-fun d!145467 () Bool)

(declare-fun res!904291 () Bool)

(declare-fun e!771519 () Bool)

(assert (=> d!145467 (=> res!904291 e!771519)))

(assert (=> d!145467 (= res!904291 (bvsge from!3120 (size!45235 lt!599648)))))

(assert (=> d!145467 (= (arrayNoDuplicates!0 lt!599648 from!3120 acc!759) e!771519)))

(declare-fun b!1359769 () Bool)

(declare-fun e!771518 () Bool)

(assert (=> b!1359769 (= e!771519 e!771518)))

(declare-fun res!904293 () Bool)

(assert (=> b!1359769 (=> (not res!904293) (not e!771518))))

(declare-fun e!771520 () Bool)

(assert (=> b!1359769 (= res!904293 (not e!771520))))

(declare-fun res!904292 () Bool)

(assert (=> b!1359769 (=> (not res!904292) (not e!771520))))

(assert (=> b!1359769 (= res!904292 (validKeyInArray!0 (select (arr!44684 lt!599648) from!3120)))))

(declare-fun b!1359770 () Bool)

(assert (=> b!1359770 (= e!771518 e!771521)))

(assert (=> b!1359770 (= c!127181 (validKeyInArray!0 (select (arr!44684 lt!599648) from!3120)))))

(declare-fun b!1359771 () Bool)

(assert (=> b!1359771 (= e!771520 (contains!9470 acc!759 (select (arr!44684 lt!599648) from!3120)))))

(declare-fun b!1359772 () Bool)

(assert (=> b!1359772 (= e!771521 call!65306)))

(assert (= (and d!145467 (not res!904291)) b!1359769))

(assert (= (and b!1359769 res!904292) b!1359771))

(assert (= (and b!1359769 res!904293) b!1359770))

(assert (= (and b!1359770 c!127181) b!1359768))

(assert (= (and b!1359770 (not c!127181)) b!1359772))

(assert (= (or b!1359768 b!1359772) bm!65303))

(declare-fun m!1245155 () Bool)

(assert (=> bm!65303 m!1245155))

(declare-fun m!1245157 () Bool)

(assert (=> bm!65303 m!1245157))

(assert (=> b!1359769 m!1245155))

(assert (=> b!1359769 m!1245155))

(declare-fun m!1245159 () Bool)

(assert (=> b!1359769 m!1245159))

(assert (=> b!1359770 m!1245155))

(assert (=> b!1359770 m!1245155))

(assert (=> b!1359770 m!1245159))

(assert (=> b!1359771 m!1245155))

(assert (=> b!1359771 m!1245155))

(declare-fun m!1245161 () Bool)

(assert (=> b!1359771 m!1245161))

(assert (=> b!1359713 d!145467))

(declare-fun c!127182 () Bool)

(declare-fun call!65307 () Bool)

(declare-fun bm!65304 () Bool)

(assert (=> bm!65304 (= call!65307 (arrayNoDuplicates!0 lt!599648 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127182 (Cons!31901 (select (arr!44684 lt!599648) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1359773 () Bool)

(declare-fun e!771525 () Bool)

(assert (=> b!1359773 (= e!771525 call!65307)))

(declare-fun d!145469 () Bool)

(declare-fun res!904294 () Bool)

(declare-fun e!771523 () Bool)

(assert (=> d!145469 (=> res!904294 e!771523)))

(assert (=> d!145469 (= res!904294 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45235 lt!599648)))))

(assert (=> d!145469 (= (arrayNoDuplicates!0 lt!599648 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771523)))

(declare-fun b!1359774 () Bool)

(declare-fun e!771522 () Bool)

(assert (=> b!1359774 (= e!771523 e!771522)))

(declare-fun res!904296 () Bool)

(assert (=> b!1359774 (=> (not res!904296) (not e!771522))))

(declare-fun e!771524 () Bool)

(assert (=> b!1359774 (= res!904296 (not e!771524))))

(declare-fun res!904295 () Bool)

(assert (=> b!1359774 (=> (not res!904295) (not e!771524))))

(assert (=> b!1359774 (= res!904295 (validKeyInArray!0 (select (arr!44684 lt!599648) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359775 () Bool)

(assert (=> b!1359775 (= e!771522 e!771525)))

(assert (=> b!1359775 (= c!127182 (validKeyInArray!0 (select (arr!44684 lt!599648) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359776 () Bool)

(assert (=> b!1359776 (= e!771524 (contains!9470 acc!759 (select (arr!44684 lt!599648) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359777 () Bool)

(assert (=> b!1359777 (= e!771525 call!65307)))

(assert (= (and d!145469 (not res!904294)) b!1359774))

(assert (= (and b!1359774 res!904295) b!1359776))

(assert (= (and b!1359774 res!904296) b!1359775))

(assert (= (and b!1359775 c!127182) b!1359773))

(assert (= (and b!1359775 (not c!127182)) b!1359777))

(assert (= (or b!1359773 b!1359777) bm!65304))

(declare-fun m!1245163 () Bool)

(assert (=> bm!65304 m!1245163))

(declare-fun m!1245165 () Bool)

(assert (=> bm!65304 m!1245165))

(assert (=> b!1359774 m!1245163))

(assert (=> b!1359774 m!1245163))

(declare-fun m!1245167 () Bool)

(assert (=> b!1359774 m!1245167))

(assert (=> b!1359775 m!1245163))

(assert (=> b!1359775 m!1245163))

(assert (=> b!1359775 m!1245167))

(assert (=> b!1359776 m!1245163))

(assert (=> b!1359776 m!1245163))

(declare-fun m!1245169 () Bool)

(assert (=> b!1359776 m!1245169))

(assert (=> b!1359713 d!145469))

(declare-fun d!145471 () Bool)

(declare-fun e!771528 () Bool)

(assert (=> d!145471 e!771528))

(declare-fun res!904299 () Bool)

(assert (=> d!145471 (=> (not res!904299) (not e!771528))))

(assert (=> d!145471 (= res!904299 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45235 a!3742))))))

(declare-fun lt!599669 () Unit!44735)

(declare-fun choose!53 (array!92496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31905) Unit!44735)

(assert (=> d!145471 (= lt!599669 (choose!53 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (=> d!145471 (bvslt (size!45235 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145471 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) lt!599669)))

(declare-fun b!1359780 () Bool)

(assert (=> b!1359780 (= e!771528 (arrayNoDuplicates!0 (array!92497 (store (arr!44684 a!3742) i!1404 l!3587) (size!45235 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and d!145471 res!904299) b!1359780))

(declare-fun m!1245171 () Bool)

(assert (=> d!145471 m!1245171))

(assert (=> b!1359780 m!1245091))

(declare-fun m!1245173 () Bool)

(assert (=> b!1359780 m!1245173))

(assert (=> b!1359713 d!145471))

(declare-fun d!145473 () Bool)

(assert (=> d!145473 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599672 () Unit!44735)

(declare-fun choose!80 (array!92496 List!31905 List!31905 (_ BitVec 32)) Unit!44735)

(assert (=> d!145473 (= lt!599672 (choose!80 a!3742 ($colon$colon!866 acc!759 (select (arr!44684 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145473 (bvslt (size!45235 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145473 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!866 acc!759 (select (arr!44684 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599672)))

(declare-fun bs!38987 () Bool)

(assert (= bs!38987 d!145473))

(assert (=> bs!38987 m!1245097))

(assert (=> bs!38987 m!1245101))

(declare-fun m!1245175 () Bool)

(assert (=> bs!38987 m!1245175))

(assert (=> b!1359708 d!145473))

(declare-fun b!1359790 () Bool)

(declare-fun e!771538 () Bool)

(declare-fun e!771537 () Bool)

(assert (=> b!1359790 (= e!771538 e!771537)))

(declare-fun res!904311 () Bool)

(assert (=> b!1359790 (=> res!904311 e!771537)))

(declare-fun e!771540 () Bool)

(assert (=> b!1359790 (= res!904311 e!771540)))

(declare-fun res!904309 () Bool)

(assert (=> b!1359790 (=> (not res!904309) (not e!771540))))

(assert (=> b!1359790 (= res!904309 (= (h!33110 acc!759) (h!33110 acc!759)))))

(declare-fun b!1359791 () Bool)

(assert (=> b!1359791 (= e!771540 (subseq!861 (t!46585 acc!759) (t!46585 acc!759)))))

(declare-fun b!1359792 () Bool)

(assert (=> b!1359792 (= e!771537 (subseq!861 acc!759 (t!46585 acc!759)))))

(declare-fun b!1359789 () Bool)

(declare-fun e!771539 () Bool)

(assert (=> b!1359789 (= e!771539 e!771538)))

(declare-fun res!904310 () Bool)

(assert (=> b!1359789 (=> (not res!904310) (not e!771538))))

(get-info :version)

(assert (=> b!1359789 (= res!904310 ((_ is Cons!31901) acc!759))))

(declare-fun d!145475 () Bool)

(declare-fun res!904308 () Bool)

(assert (=> d!145475 (=> res!904308 e!771539)))

(assert (=> d!145475 (= res!904308 ((_ is Nil!31902) acc!759))))

(assert (=> d!145475 (= (subseq!861 acc!759 acc!759) e!771539)))

(assert (= (and d!145475 (not res!904308)) b!1359789))

(assert (= (and b!1359789 res!904310) b!1359790))

(assert (= (and b!1359790 res!904309) b!1359791))

(assert (= (and b!1359790 (not res!904311)) b!1359792))

(declare-fun m!1245177 () Bool)

(assert (=> b!1359791 m!1245177))

(declare-fun m!1245179 () Bool)

(assert (=> b!1359792 m!1245179))

(assert (=> b!1359708 d!145475))

(declare-fun bm!65305 () Bool)

(declare-fun call!65308 () Bool)

(declare-fun c!127183 () Bool)

(assert (=> bm!65305 (= call!65308 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127183 (Cons!31901 (select (arr!44684 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1359793 () Bool)

(declare-fun e!771544 () Bool)

(assert (=> b!1359793 (= e!771544 call!65308)))

(declare-fun d!145479 () Bool)

(declare-fun res!904312 () Bool)

(declare-fun e!771542 () Bool)

(assert (=> d!145479 (=> res!904312 e!771542)))

(assert (=> d!145479 (= res!904312 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45235 a!3742)))))

(assert (=> d!145479 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771542)))

(declare-fun b!1359794 () Bool)

(declare-fun e!771541 () Bool)

(assert (=> b!1359794 (= e!771542 e!771541)))

(declare-fun res!904314 () Bool)

(assert (=> b!1359794 (=> (not res!904314) (not e!771541))))

(declare-fun e!771543 () Bool)

(assert (=> b!1359794 (= res!904314 (not e!771543))))

(declare-fun res!904313 () Bool)

(assert (=> b!1359794 (=> (not res!904313) (not e!771543))))

(assert (=> b!1359794 (= res!904313 (validKeyInArray!0 (select (arr!44684 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359795 () Bool)

(assert (=> b!1359795 (= e!771541 e!771544)))

(assert (=> b!1359795 (= c!127183 (validKeyInArray!0 (select (arr!44684 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359796 () Bool)

(assert (=> b!1359796 (= e!771543 (contains!9470 acc!759 (select (arr!44684 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359797 () Bool)

(assert (=> b!1359797 (= e!771544 call!65308)))

(assert (= (and d!145479 (not res!904312)) b!1359794))

(assert (= (and b!1359794 res!904313) b!1359796))

(assert (= (and b!1359794 res!904314) b!1359795))

(assert (= (and b!1359795 c!127183) b!1359793))

(assert (= (and b!1359795 (not c!127183)) b!1359797))

(assert (= (or b!1359793 b!1359797) bm!65305))

(declare-fun m!1245181 () Bool)

(assert (=> bm!65305 m!1245181))

(declare-fun m!1245183 () Bool)

(assert (=> bm!65305 m!1245183))

(assert (=> b!1359794 m!1245181))

(assert (=> b!1359794 m!1245181))

(declare-fun m!1245185 () Bool)

(assert (=> b!1359794 m!1245185))

(assert (=> b!1359795 m!1245181))

(assert (=> b!1359795 m!1245181))

(assert (=> b!1359795 m!1245185))

(assert (=> b!1359796 m!1245181))

(assert (=> b!1359796 m!1245181))

(declare-fun m!1245187 () Bool)

(assert (=> b!1359796 m!1245187))

(assert (=> b!1359708 d!145479))

(declare-fun d!145481 () Bool)

(assert (=> d!145481 (= ($colon$colon!866 acc!759 (select (arr!44684 a!3742) from!3120)) (Cons!31901 (select (arr!44684 a!3742) from!3120) acc!759))))

(assert (=> b!1359708 d!145481))

(declare-fun d!145483 () Bool)

(assert (=> d!145483 (subseq!861 acc!759 acc!759)))

(declare-fun lt!599675 () Unit!44735)

(declare-fun choose!36 (List!31905) Unit!44735)

(assert (=> d!145483 (= lt!599675 (choose!36 acc!759))))

(assert (=> d!145483 (= (lemmaListSubSeqRefl!0 acc!759) lt!599675)))

(declare-fun bs!38988 () Bool)

(assert (= bs!38988 d!145483))

(assert (=> bs!38988 m!1245105))

(declare-fun m!1245189 () Bool)

(assert (=> bs!38988 m!1245189))

(assert (=> b!1359708 d!145483))

(declare-fun d!145485 () Bool)

(assert (=> d!145485 (= (array_inv!33629 a!3742) (bvsge (size!45235 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114628 d!145485))

(declare-fun bm!65308 () Bool)

(declare-fun call!65311 () Bool)

(declare-fun c!127186 () Bool)

(assert (=> bm!65308 (= call!65311 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127186 (Cons!31901 (select (arr!44684 a!3742) #b00000000000000000000000000000000) Nil!31902) Nil!31902)))))

(declare-fun b!1359808 () Bool)

(declare-fun e!771556 () Bool)

(assert (=> b!1359808 (= e!771556 call!65311)))

(declare-fun d!145487 () Bool)

(declare-fun res!904321 () Bool)

(declare-fun e!771554 () Bool)

(assert (=> d!145487 (=> res!904321 e!771554)))

(assert (=> d!145487 (= res!904321 (bvsge #b00000000000000000000000000000000 (size!45235 a!3742)))))

(assert (=> d!145487 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31902) e!771554)))

(declare-fun b!1359809 () Bool)

(declare-fun e!771553 () Bool)

(assert (=> b!1359809 (= e!771554 e!771553)))

(declare-fun res!904323 () Bool)

(assert (=> b!1359809 (=> (not res!904323) (not e!771553))))

(declare-fun e!771555 () Bool)

(assert (=> b!1359809 (= res!904323 (not e!771555))))

(declare-fun res!904322 () Bool)

(assert (=> b!1359809 (=> (not res!904322) (not e!771555))))

(assert (=> b!1359809 (= res!904322 (validKeyInArray!0 (select (arr!44684 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359810 () Bool)

(assert (=> b!1359810 (= e!771553 e!771556)))

(assert (=> b!1359810 (= c!127186 (validKeyInArray!0 (select (arr!44684 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359811 () Bool)

(assert (=> b!1359811 (= e!771555 (contains!9470 Nil!31902 (select (arr!44684 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359812 () Bool)

(assert (=> b!1359812 (= e!771556 call!65311)))

(assert (= (and d!145487 (not res!904321)) b!1359809))

(assert (= (and b!1359809 res!904322) b!1359811))

(assert (= (and b!1359809 res!904323) b!1359810))

(assert (= (and b!1359810 c!127186) b!1359808))

(assert (= (and b!1359810 (not c!127186)) b!1359812))

(assert (= (or b!1359808 b!1359812) bm!65308))

(declare-fun m!1245191 () Bool)

(assert (=> bm!65308 m!1245191))

(declare-fun m!1245193 () Bool)

(assert (=> bm!65308 m!1245193))

(assert (=> b!1359809 m!1245191))

(assert (=> b!1359809 m!1245191))

(declare-fun m!1245195 () Bool)

(assert (=> b!1359809 m!1245195))

(assert (=> b!1359810 m!1245191))

(assert (=> b!1359810 m!1245191))

(assert (=> b!1359810 m!1245195))

(assert (=> b!1359811 m!1245191))

(assert (=> b!1359811 m!1245191))

(declare-fun m!1245197 () Bool)

(assert (=> b!1359811 m!1245197))

(assert (=> b!1359707 d!145487))

(declare-fun d!145489 () Bool)

(declare-fun res!904331 () Bool)

(declare-fun e!771565 () Bool)

(assert (=> d!145489 (=> res!904331 e!771565)))

(assert (=> d!145489 (= res!904331 ((_ is Nil!31902) acc!759))))

(assert (=> d!145489 (= (noDuplicate!2349 acc!759) e!771565)))

(declare-fun b!1359822 () Bool)

(declare-fun e!771566 () Bool)

(assert (=> b!1359822 (= e!771565 e!771566)))

(declare-fun res!904332 () Bool)

(assert (=> b!1359822 (=> (not res!904332) (not e!771566))))

(assert (=> b!1359822 (= res!904332 (not (contains!9470 (t!46585 acc!759) (h!33110 acc!759))))))

(declare-fun b!1359823 () Bool)

(assert (=> b!1359823 (= e!771566 (noDuplicate!2349 (t!46585 acc!759)))))

(assert (= (and d!145489 (not res!904331)) b!1359822))

(assert (= (and b!1359822 res!904332) b!1359823))

(declare-fun m!1245199 () Bool)

(assert (=> b!1359822 m!1245199))

(declare-fun m!1245201 () Bool)

(assert (=> b!1359823 m!1245201))

(assert (=> b!1359709 d!145489))

(assert (=> b!1359704 d!145479))

(declare-fun d!145491 () Bool)

(declare-fun lt!599678 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!696 (List!31905) (InoxSet (_ BitVec 64)))

(assert (=> d!145491 (= lt!599678 (select (content!696 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771580 () Bool)

(assert (=> d!145491 (= lt!599678 e!771580)))

(declare-fun res!904345 () Bool)

(assert (=> d!145491 (=> (not res!904345) (not e!771580))))

(assert (=> d!145491 (= res!904345 ((_ is Cons!31901) acc!759))))

(assert (=> d!145491 (= (contains!9470 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599678)))

(declare-fun b!1359837 () Bool)

(declare-fun e!771579 () Bool)

(assert (=> b!1359837 (= e!771580 e!771579)))

(declare-fun res!904344 () Bool)

(assert (=> b!1359837 (=> res!904344 e!771579)))

(assert (=> b!1359837 (= res!904344 (= (h!33110 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359838 () Bool)

(assert (=> b!1359838 (= e!771579 (contains!9470 (t!46585 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145491 res!904345) b!1359837))

(assert (= (and b!1359837 (not res!904344)) b!1359838))

(declare-fun m!1245215 () Bool)

(assert (=> d!145491 m!1245215))

(declare-fun m!1245217 () Bool)

(assert (=> d!145491 m!1245217))

(declare-fun m!1245219 () Bool)

(assert (=> b!1359838 m!1245219))

(assert (=> b!1359703 d!145491))

(declare-fun d!145501 () Bool)

(declare-fun lt!599681 () Bool)

(assert (=> d!145501 (= lt!599681 (select (content!696 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771586 () Bool)

(assert (=> d!145501 (= lt!599681 e!771586)))

(declare-fun res!904351 () Bool)

(assert (=> d!145501 (=> (not res!904351) (not e!771586))))

(assert (=> d!145501 (= res!904351 ((_ is Cons!31901) acc!759))))

(assert (=> d!145501 (= (contains!9470 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599681)))

(declare-fun b!1359843 () Bool)

(declare-fun e!771585 () Bool)

(assert (=> b!1359843 (= e!771586 e!771585)))

(declare-fun res!904350 () Bool)

(assert (=> b!1359843 (=> res!904350 e!771585)))

(assert (=> b!1359843 (= res!904350 (= (h!33110 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359844 () Bool)

(assert (=> b!1359844 (= e!771585 (contains!9470 (t!46585 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145501 res!904351) b!1359843))

(assert (= (and b!1359843 (not res!904350)) b!1359844))

(assert (=> d!145501 m!1245215))

(declare-fun m!1245221 () Bool)

(assert (=> d!145501 m!1245221))

(declare-fun m!1245223 () Bool)

(assert (=> b!1359844 m!1245223))

(assert (=> b!1359710 d!145501))

(check-sat (not bm!65308) (not bm!65305) (not b!1359838) (not bm!65303) (not b!1359794) (not b!1359764) (not b!1359822) (not b!1359844) (not b!1359770) (not d!145473) (not b!1359791) (not b!1359809) (not d!145471) (not b!1359771) (not b!1359810) (not b!1359792) (not b!1359796) (not b!1359765) (not b!1359823) (not b!1359811) (not bm!65302) (not b!1359766) (not b!1359780) (not b!1359795) (not d!145483) (not b!1359769) (not d!145491) (not d!145501) (not bm!65304) (not b!1359775) (not b!1359774) (not b!1359776))
(check-sat)
