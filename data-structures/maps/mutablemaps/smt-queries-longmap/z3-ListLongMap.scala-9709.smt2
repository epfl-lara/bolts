; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114850 () Bool)

(assert start!114850)

(declare-fun b!1361228 () Bool)

(declare-fun res!905505 () Bool)

(declare-fun e!772275 () Bool)

(assert (=> b!1361228 (=> (not res!905505) (not e!772275))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361228 (= res!905505 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361229 () Bool)

(declare-fun res!905501 () Bool)

(assert (=> b!1361229 (=> (not res!905501) (not e!772275))))

(declare-datatypes ((List!31932 0))(
  ( (Nil!31929) (Cons!31928 (h!33137 (_ BitVec 64)) (t!46621 List!31932)) )
))
(declare-fun acc!759 () List!31932)

(declare-fun contains!9497 (List!31932 (_ BitVec 64)) Bool)

(assert (=> b!1361229 (= res!905501 (not (contains!9497 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!905513 () Bool)

(assert (=> start!114850 (=> (not res!905513) (not e!772275))))

(declare-datatypes ((array!92559 0))(
  ( (array!92560 (arr!44711 (Array (_ BitVec 32) (_ BitVec 64))) (size!45262 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92559)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114850 (= res!905513 (and (bvslt (size!45262 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45262 a!3742))))))

(assert (=> start!114850 e!772275))

(assert (=> start!114850 true))

(declare-fun array_inv!33656 (array!92559) Bool)

(assert (=> start!114850 (array_inv!33656 a!3742)))

(declare-fun b!1361230 () Bool)

(declare-fun res!905507 () Bool)

(assert (=> b!1361230 (=> (not res!905507) (not e!772275))))

(assert (=> b!1361230 (= res!905507 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45262 a!3742)))))

(declare-fun b!1361231 () Bool)

(declare-fun res!905509 () Bool)

(assert (=> b!1361231 (=> (not res!905509) (not e!772275))))

(assert (=> b!1361231 (= res!905509 (not (contains!9497 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361232 () Bool)

(declare-fun e!772274 () Bool)

(assert (=> b!1361232 (= e!772275 e!772274)))

(declare-fun res!905503 () Bool)

(assert (=> b!1361232 (=> (not res!905503) (not e!772274))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!600076 () Bool)

(assert (=> b!1361232 (= res!905503 (and (not (= from!3120 i!1404)) lt!600076))))

(declare-datatypes ((Unit!44816 0))(
  ( (Unit!44817) )
))
(declare-fun lt!600080 () Unit!44816)

(declare-fun e!772273 () Unit!44816)

(assert (=> b!1361232 (= lt!600080 e!772273)))

(declare-fun c!127306 () Bool)

(assert (=> b!1361232 (= c!127306 lt!600076)))

(assert (=> b!1361232 (= lt!600076 (validKeyInArray!0 (select (arr!44711 a!3742) from!3120)))))

(declare-fun lt!600079 () List!31932)

(declare-fun b!1361233 () Bool)

(declare-fun e!772272 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92559 (_ BitVec 32) List!31932) Bool)

(assert (=> b!1361233 (= e!772272 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600079)))))

(declare-fun b!1361234 () Bool)

(declare-fun res!905512 () Bool)

(assert (=> b!1361234 (=> (not res!905512) (not e!772275))))

(assert (=> b!1361234 (= res!905512 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31929))))

(declare-fun b!1361235 () Bool)

(declare-fun res!905508 () Bool)

(assert (=> b!1361235 (=> (not res!905508) (not e!772272))))

(assert (=> b!1361235 (= res!905508 (not (contains!9497 lt!600079 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361236 () Bool)

(declare-fun res!905504 () Bool)

(assert (=> b!1361236 (=> (not res!905504) (not e!772272))))

(assert (=> b!1361236 (= res!905504 (not (contains!9497 lt!600079 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361237 () Bool)

(declare-fun res!905502 () Bool)

(assert (=> b!1361237 (=> (not res!905502) (not e!772275))))

(assert (=> b!1361237 (= res!905502 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45262 a!3742))))))

(declare-fun b!1361238 () Bool)

(declare-fun Unit!44818 () Unit!44816)

(assert (=> b!1361238 (= e!772273 Unit!44818)))

(declare-fun b!1361239 () Bool)

(declare-fun lt!600078 () Unit!44816)

(assert (=> b!1361239 (= e!772273 lt!600078)))

(declare-fun lt!600077 () Unit!44816)

(declare-fun lemmaListSubSeqRefl!0 (List!31932) Unit!44816)

(assert (=> b!1361239 (= lt!600077 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!888 (List!31932 List!31932) Bool)

(assert (=> b!1361239 (subseq!888 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92559 List!31932 List!31932 (_ BitVec 32)) Unit!44816)

(declare-fun $colon$colon!893 (List!31932 (_ BitVec 64)) List!31932)

(assert (=> b!1361239 (= lt!600078 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!893 acc!759 (select (arr!44711 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361239 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361240 () Bool)

(declare-fun res!905506 () Bool)

(assert (=> b!1361240 (=> (not res!905506) (not e!772275))))

(assert (=> b!1361240 (= res!905506 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361241 () Bool)

(declare-fun res!905514 () Bool)

(assert (=> b!1361241 (=> (not res!905514) (not e!772272))))

(declare-fun noDuplicate!2376 (List!31932) Bool)

(assert (=> b!1361241 (= res!905514 (noDuplicate!2376 lt!600079))))

(declare-fun b!1361242 () Bool)

(declare-fun res!905511 () Bool)

(assert (=> b!1361242 (=> (not res!905511) (not e!772275))))

(assert (=> b!1361242 (= res!905511 (noDuplicate!2376 acc!759))))

(declare-fun b!1361243 () Bool)

(assert (=> b!1361243 (= e!772274 e!772272)))

(declare-fun res!905510 () Bool)

(assert (=> b!1361243 (=> (not res!905510) (not e!772272))))

(assert (=> b!1361243 (= res!905510 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361243 (= lt!600079 ($colon$colon!893 acc!759 (select (arr!44711 a!3742) from!3120)))))

(assert (= (and start!114850 res!905513) b!1361242))

(assert (= (and b!1361242 res!905511) b!1361231))

(assert (= (and b!1361231 res!905509) b!1361229))

(assert (= (and b!1361229 res!905501) b!1361234))

(assert (= (and b!1361234 res!905512) b!1361240))

(assert (= (and b!1361240 res!905506) b!1361237))

(assert (= (and b!1361237 res!905502) b!1361228))

(assert (= (and b!1361228 res!905505) b!1361230))

(assert (= (and b!1361230 res!905507) b!1361232))

(assert (= (and b!1361232 c!127306) b!1361239))

(assert (= (and b!1361232 (not c!127306)) b!1361238))

(assert (= (and b!1361232 res!905503) b!1361243))

(assert (= (and b!1361243 res!905510) b!1361241))

(assert (= (and b!1361241 res!905514) b!1361236))

(assert (= (and b!1361236 res!905504) b!1361235))

(assert (= (and b!1361235 res!905508) b!1361233))

(declare-fun m!1246393 () Bool)

(assert (=> b!1361229 m!1246393))

(declare-fun m!1246395 () Bool)

(assert (=> b!1361232 m!1246395))

(assert (=> b!1361232 m!1246395))

(declare-fun m!1246397 () Bool)

(assert (=> b!1361232 m!1246397))

(declare-fun m!1246399 () Bool)

(assert (=> b!1361242 m!1246399))

(declare-fun m!1246401 () Bool)

(assert (=> b!1361241 m!1246401))

(declare-fun m!1246403 () Bool)

(assert (=> b!1361240 m!1246403))

(declare-fun m!1246405 () Bool)

(assert (=> b!1361234 m!1246405))

(declare-fun m!1246407 () Bool)

(assert (=> b!1361236 m!1246407))

(declare-fun m!1246409 () Bool)

(assert (=> b!1361233 m!1246409))

(declare-fun m!1246411 () Bool)

(assert (=> b!1361231 m!1246411))

(declare-fun m!1246413 () Bool)

(assert (=> start!114850 m!1246413))

(assert (=> b!1361243 m!1246395))

(assert (=> b!1361243 m!1246395))

(declare-fun m!1246415 () Bool)

(assert (=> b!1361243 m!1246415))

(declare-fun m!1246417 () Bool)

(assert (=> b!1361235 m!1246417))

(declare-fun m!1246419 () Bool)

(assert (=> b!1361239 m!1246419))

(assert (=> b!1361239 m!1246395))

(assert (=> b!1361239 m!1246415))

(declare-fun m!1246421 () Bool)

(assert (=> b!1361239 m!1246421))

(declare-fun m!1246423 () Bool)

(assert (=> b!1361239 m!1246423))

(assert (=> b!1361239 m!1246395))

(assert (=> b!1361239 m!1246415))

(declare-fun m!1246425 () Bool)

(assert (=> b!1361239 m!1246425))

(declare-fun m!1246427 () Bool)

(assert (=> b!1361228 m!1246427))

(check-sat (not b!1361233) (not b!1361228) (not b!1361239) (not b!1361240) (not b!1361235) (not b!1361243) (not b!1361241) (not b!1361234) (not start!114850) (not b!1361232) (not b!1361236) (not b!1361231) (not b!1361242) (not b!1361229))
(check-sat)
(get-model)

(declare-fun d!145755 () Bool)

(assert (=> d!145755 (= (array_inv!33656 a!3742) (bvsge (size!45262 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114850 d!145755))

(declare-fun d!145757 () Bool)

(declare-fun lt!600098 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!703 (List!31932) (InoxSet (_ BitVec 64)))

(assert (=> d!145757 (= lt!600098 (select (content!703 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772296 () Bool)

(assert (=> d!145757 (= lt!600098 e!772296)))

(declare-fun res!905561 () Bool)

(assert (=> d!145757 (=> (not res!905561) (not e!772296))))

(get-info :version)

(assert (=> d!145757 (= res!905561 ((_ is Cons!31928) acc!759))))

(assert (=> d!145757 (= (contains!9497 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600098)))

(declare-fun b!1361296 () Bool)

(declare-fun e!772297 () Bool)

(assert (=> b!1361296 (= e!772296 e!772297)))

(declare-fun res!905562 () Bool)

(assert (=> b!1361296 (=> res!905562 e!772297)))

(assert (=> b!1361296 (= res!905562 (= (h!33137 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361297 () Bool)

(assert (=> b!1361297 (= e!772297 (contains!9497 (t!46621 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145757 res!905561) b!1361296))

(assert (= (and b!1361296 (not res!905562)) b!1361297))

(declare-fun m!1246465 () Bool)

(assert (=> d!145757 m!1246465))

(declare-fun m!1246467 () Bool)

(assert (=> d!145757 m!1246467))

(declare-fun m!1246469 () Bool)

(assert (=> b!1361297 m!1246469))

(assert (=> b!1361229 d!145757))

(declare-fun d!145759 () Bool)

(assert (=> d!145759 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1361228 d!145759))

(declare-fun d!145761 () Bool)

(assert (=> d!145761 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600101 () Unit!44816)

(declare-fun choose!80 (array!92559 List!31932 List!31932 (_ BitVec 32)) Unit!44816)

(assert (=> d!145761 (= lt!600101 (choose!80 a!3742 ($colon$colon!893 acc!759 (select (arr!44711 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145761 (bvslt (size!45262 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145761 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!893 acc!759 (select (arr!44711 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600101)))

(declare-fun bs!39032 () Bool)

(assert (= bs!39032 d!145761))

(assert (=> bs!39032 m!1246423))

(assert (=> bs!39032 m!1246415))

(declare-fun m!1246471 () Bool)

(assert (=> bs!39032 m!1246471))

(assert (=> b!1361239 d!145761))

(declare-fun b!1361307 () Bool)

(declare-fun e!772309 () Bool)

(declare-fun e!772306 () Bool)

(assert (=> b!1361307 (= e!772309 e!772306)))

(declare-fun res!905574 () Bool)

(assert (=> b!1361307 (=> res!905574 e!772306)))

(declare-fun e!772308 () Bool)

(assert (=> b!1361307 (= res!905574 e!772308)))

(declare-fun res!905572 () Bool)

(assert (=> b!1361307 (=> (not res!905572) (not e!772308))))

(assert (=> b!1361307 (= res!905572 (= (h!33137 acc!759) (h!33137 acc!759)))))

(declare-fun b!1361308 () Bool)

(assert (=> b!1361308 (= e!772308 (subseq!888 (t!46621 acc!759) (t!46621 acc!759)))))

(declare-fun b!1361309 () Bool)

(assert (=> b!1361309 (= e!772306 (subseq!888 acc!759 (t!46621 acc!759)))))

(declare-fun d!145763 () Bool)

(declare-fun res!905571 () Bool)

(declare-fun e!772307 () Bool)

(assert (=> d!145763 (=> res!905571 e!772307)))

(assert (=> d!145763 (= res!905571 ((_ is Nil!31929) acc!759))))

(assert (=> d!145763 (= (subseq!888 acc!759 acc!759) e!772307)))

(declare-fun b!1361306 () Bool)

(assert (=> b!1361306 (= e!772307 e!772309)))

(declare-fun res!905573 () Bool)

(assert (=> b!1361306 (=> (not res!905573) (not e!772309))))

(assert (=> b!1361306 (= res!905573 ((_ is Cons!31928) acc!759))))

(assert (= (and d!145763 (not res!905571)) b!1361306))

(assert (= (and b!1361306 res!905573) b!1361307))

(assert (= (and b!1361307 res!905572) b!1361308))

(assert (= (and b!1361307 (not res!905574)) b!1361309))

(declare-fun m!1246473 () Bool)

(assert (=> b!1361308 m!1246473))

(declare-fun m!1246475 () Bool)

(assert (=> b!1361309 m!1246475))

(assert (=> b!1361239 d!145763))

(declare-fun b!1361353 () Bool)

(declare-fun e!772350 () Bool)

(declare-fun call!65359 () Bool)

(assert (=> b!1361353 (= e!772350 call!65359)))

(declare-fun d!145767 () Bool)

(declare-fun res!905608 () Bool)

(declare-fun e!772349 () Bool)

(assert (=> d!145767 (=> res!905608 e!772349)))

(assert (=> d!145767 (= res!905608 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45262 a!3742)))))

(assert (=> d!145767 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772349)))

(declare-fun b!1361354 () Bool)

(declare-fun e!772351 () Bool)

(assert (=> b!1361354 (= e!772351 e!772350)))

(declare-fun c!127315 () Bool)

(assert (=> b!1361354 (= c!127315 (validKeyInArray!0 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361355 () Bool)

(assert (=> b!1361355 (= e!772350 call!65359)))

(declare-fun b!1361356 () Bool)

(assert (=> b!1361356 (= e!772349 e!772351)))

(declare-fun res!905609 () Bool)

(assert (=> b!1361356 (=> (not res!905609) (not e!772351))))

(declare-fun e!772348 () Bool)

(assert (=> b!1361356 (= res!905609 (not e!772348))))

(declare-fun res!905610 () Bool)

(assert (=> b!1361356 (=> (not res!905610) (not e!772348))))

(assert (=> b!1361356 (= res!905610 (validKeyInArray!0 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65356 () Bool)

(assert (=> bm!65356 (= call!65359 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127315 (Cons!31928 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1361357 () Bool)

(assert (=> b!1361357 (= e!772348 (contains!9497 acc!759 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145767 (not res!905608)) b!1361356))

(assert (= (and b!1361356 res!905610) b!1361357))

(assert (= (and b!1361356 res!905609) b!1361354))

(assert (= (and b!1361354 c!127315) b!1361353))

(assert (= (and b!1361354 (not c!127315)) b!1361355))

(assert (= (or b!1361353 b!1361355) bm!65356))

(declare-fun m!1246495 () Bool)

(assert (=> b!1361354 m!1246495))

(assert (=> b!1361354 m!1246495))

(declare-fun m!1246497 () Bool)

(assert (=> b!1361354 m!1246497))

(assert (=> b!1361356 m!1246495))

(assert (=> b!1361356 m!1246495))

(assert (=> b!1361356 m!1246497))

(assert (=> bm!65356 m!1246495))

(declare-fun m!1246499 () Bool)

(assert (=> bm!65356 m!1246499))

(assert (=> b!1361357 m!1246495))

(assert (=> b!1361357 m!1246495))

(declare-fun m!1246501 () Bool)

(assert (=> b!1361357 m!1246501))

(assert (=> b!1361239 d!145767))

(declare-fun d!145781 () Bool)

(assert (=> d!145781 (= ($colon$colon!893 acc!759 (select (arr!44711 a!3742) from!3120)) (Cons!31928 (select (arr!44711 a!3742) from!3120) acc!759))))

(assert (=> b!1361239 d!145781))

(declare-fun d!145783 () Bool)

(assert (=> d!145783 (subseq!888 acc!759 acc!759)))

(declare-fun lt!600113 () Unit!44816)

(declare-fun choose!36 (List!31932) Unit!44816)

(assert (=> d!145783 (= lt!600113 (choose!36 acc!759))))

(assert (=> d!145783 (= (lemmaListSubSeqRefl!0 acc!759) lt!600113)))

(declare-fun bs!39035 () Bool)

(assert (= bs!39035 d!145783))

(assert (=> bs!39035 m!1246425))

(declare-fun m!1246507 () Bool)

(assert (=> bs!39035 m!1246507))

(assert (=> b!1361239 d!145783))

(declare-fun d!145789 () Bool)

(declare-fun res!905638 () Bool)

(declare-fun e!772380 () Bool)

(assert (=> d!145789 (=> res!905638 e!772380)))

(assert (=> d!145789 (= res!905638 ((_ is Nil!31929) lt!600079))))

(assert (=> d!145789 (= (noDuplicate!2376 lt!600079) e!772380)))

(declare-fun b!1361385 () Bool)

(declare-fun e!772381 () Bool)

(assert (=> b!1361385 (= e!772380 e!772381)))

(declare-fun res!905639 () Bool)

(assert (=> b!1361385 (=> (not res!905639) (not e!772381))))

(assert (=> b!1361385 (= res!905639 (not (contains!9497 (t!46621 lt!600079) (h!33137 lt!600079))))))

(declare-fun b!1361386 () Bool)

(assert (=> b!1361386 (= e!772381 (noDuplicate!2376 (t!46621 lt!600079)))))

(assert (= (and d!145789 (not res!905638)) b!1361385))

(assert (= (and b!1361385 res!905639) b!1361386))

(declare-fun m!1246513 () Bool)

(assert (=> b!1361385 m!1246513))

(declare-fun m!1246515 () Bool)

(assert (=> b!1361386 m!1246515))

(assert (=> b!1361241 d!145789))

(declare-fun b!1361389 () Bool)

(declare-fun e!772384 () Bool)

(declare-fun call!65361 () Bool)

(assert (=> b!1361389 (= e!772384 call!65361)))

(declare-fun d!145793 () Bool)

(declare-fun res!905640 () Bool)

(declare-fun e!772383 () Bool)

(assert (=> d!145793 (=> res!905640 e!772383)))

(assert (=> d!145793 (= res!905640 (bvsge from!3120 (size!45262 a!3742)))))

(assert (=> d!145793 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772383)))

(declare-fun b!1361390 () Bool)

(declare-fun e!772385 () Bool)

(assert (=> b!1361390 (= e!772385 e!772384)))

(declare-fun c!127317 () Bool)

(assert (=> b!1361390 (= c!127317 (validKeyInArray!0 (select (arr!44711 a!3742) from!3120)))))

(declare-fun b!1361391 () Bool)

(assert (=> b!1361391 (= e!772384 call!65361)))

(declare-fun b!1361392 () Bool)

(assert (=> b!1361392 (= e!772383 e!772385)))

(declare-fun res!905641 () Bool)

(assert (=> b!1361392 (=> (not res!905641) (not e!772385))))

(declare-fun e!772382 () Bool)

(assert (=> b!1361392 (= res!905641 (not e!772382))))

(declare-fun res!905642 () Bool)

(assert (=> b!1361392 (=> (not res!905642) (not e!772382))))

(assert (=> b!1361392 (= res!905642 (validKeyInArray!0 (select (arr!44711 a!3742) from!3120)))))

(declare-fun bm!65358 () Bool)

(assert (=> bm!65358 (= call!65361 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127317 (Cons!31928 (select (arr!44711 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1361393 () Bool)

(assert (=> b!1361393 (= e!772382 (contains!9497 acc!759 (select (arr!44711 a!3742) from!3120)))))

(assert (= (and d!145793 (not res!905640)) b!1361392))

(assert (= (and b!1361392 res!905642) b!1361393))

(assert (= (and b!1361392 res!905641) b!1361390))

(assert (= (and b!1361390 c!127317) b!1361389))

(assert (= (and b!1361390 (not c!127317)) b!1361391))

(assert (= (or b!1361389 b!1361391) bm!65358))

(assert (=> b!1361390 m!1246395))

(assert (=> b!1361390 m!1246395))

(assert (=> b!1361390 m!1246397))

(assert (=> b!1361392 m!1246395))

(assert (=> b!1361392 m!1246395))

(assert (=> b!1361392 m!1246397))

(assert (=> bm!65358 m!1246395))

(declare-fun m!1246525 () Bool)

(assert (=> bm!65358 m!1246525))

(assert (=> b!1361393 m!1246395))

(assert (=> b!1361393 m!1246395))

(declare-fun m!1246527 () Bool)

(assert (=> b!1361393 m!1246527))

(assert (=> b!1361240 d!145793))

(declare-fun d!145799 () Bool)

(declare-fun res!905643 () Bool)

(declare-fun e!772386 () Bool)

(assert (=> d!145799 (=> res!905643 e!772386)))

(assert (=> d!145799 (= res!905643 ((_ is Nil!31929) acc!759))))

(assert (=> d!145799 (= (noDuplicate!2376 acc!759) e!772386)))

(declare-fun b!1361394 () Bool)

(declare-fun e!772387 () Bool)

(assert (=> b!1361394 (= e!772386 e!772387)))

(declare-fun res!905644 () Bool)

(assert (=> b!1361394 (=> (not res!905644) (not e!772387))))

(assert (=> b!1361394 (= res!905644 (not (contains!9497 (t!46621 acc!759) (h!33137 acc!759))))))

(declare-fun b!1361395 () Bool)

(assert (=> b!1361395 (= e!772387 (noDuplicate!2376 (t!46621 acc!759)))))

(assert (= (and d!145799 (not res!905643)) b!1361394))

(assert (= (and b!1361394 res!905644) b!1361395))

(declare-fun m!1246529 () Bool)

(assert (=> b!1361394 m!1246529))

(declare-fun m!1246531 () Bool)

(assert (=> b!1361395 m!1246531))

(assert (=> b!1361242 d!145799))

(declare-fun d!145801 () Bool)

(declare-fun lt!600117 () Bool)

(assert (=> d!145801 (= lt!600117 (select (content!703 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772392 () Bool)

(assert (=> d!145801 (= lt!600117 e!772392)))

(declare-fun res!905649 () Bool)

(assert (=> d!145801 (=> (not res!905649) (not e!772392))))

(assert (=> d!145801 (= res!905649 ((_ is Cons!31928) acc!759))))

(assert (=> d!145801 (= (contains!9497 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600117)))

(declare-fun b!1361400 () Bool)

(declare-fun e!772393 () Bool)

(assert (=> b!1361400 (= e!772392 e!772393)))

(declare-fun res!905650 () Bool)

(assert (=> b!1361400 (=> res!905650 e!772393)))

(assert (=> b!1361400 (= res!905650 (= (h!33137 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361401 () Bool)

(assert (=> b!1361401 (= e!772393 (contains!9497 (t!46621 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145801 res!905649) b!1361400))

(assert (= (and b!1361400 (not res!905650)) b!1361401))

(assert (=> d!145801 m!1246465))

(declare-fun m!1246537 () Bool)

(assert (=> d!145801 m!1246537))

(declare-fun m!1246541 () Bool)

(assert (=> b!1361401 m!1246541))

(assert (=> b!1361231 d!145801))

(declare-fun b!1361402 () Bool)

(declare-fun e!772396 () Bool)

(declare-fun call!65362 () Bool)

(assert (=> b!1361402 (= e!772396 call!65362)))

(declare-fun d!145807 () Bool)

(declare-fun res!905651 () Bool)

(declare-fun e!772395 () Bool)

(assert (=> d!145807 (=> res!905651 e!772395)))

(assert (=> d!145807 (= res!905651 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45262 a!3742)))))

(assert (=> d!145807 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600079) e!772395)))

(declare-fun b!1361403 () Bool)

(declare-fun e!772397 () Bool)

(assert (=> b!1361403 (= e!772397 e!772396)))

(declare-fun c!127318 () Bool)

(assert (=> b!1361403 (= c!127318 (validKeyInArray!0 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361404 () Bool)

(assert (=> b!1361404 (= e!772396 call!65362)))

(declare-fun b!1361405 () Bool)

(assert (=> b!1361405 (= e!772395 e!772397)))

(declare-fun res!905652 () Bool)

(assert (=> b!1361405 (=> (not res!905652) (not e!772397))))

(declare-fun e!772394 () Bool)

(assert (=> b!1361405 (= res!905652 (not e!772394))))

(declare-fun res!905653 () Bool)

(assert (=> b!1361405 (=> (not res!905653) (not e!772394))))

(assert (=> b!1361405 (= res!905653 (validKeyInArray!0 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65359 () Bool)

(assert (=> bm!65359 (= call!65362 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127318 (Cons!31928 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600079) lt!600079)))))

(declare-fun b!1361406 () Bool)

(assert (=> b!1361406 (= e!772394 (contains!9497 lt!600079 (select (arr!44711 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145807 (not res!905651)) b!1361405))

(assert (= (and b!1361405 res!905653) b!1361406))

(assert (= (and b!1361405 res!905652) b!1361403))

(assert (= (and b!1361403 c!127318) b!1361402))

(assert (= (and b!1361403 (not c!127318)) b!1361404))

(assert (= (or b!1361402 b!1361404) bm!65359))

(assert (=> b!1361403 m!1246495))

(assert (=> b!1361403 m!1246495))

(assert (=> b!1361403 m!1246497))

(assert (=> b!1361405 m!1246495))

(assert (=> b!1361405 m!1246495))

(assert (=> b!1361405 m!1246497))

(assert (=> bm!65359 m!1246495))

(declare-fun m!1246543 () Bool)

(assert (=> bm!65359 m!1246543))

(assert (=> b!1361406 m!1246495))

(assert (=> b!1361406 m!1246495))

(declare-fun m!1246545 () Bool)

(assert (=> b!1361406 m!1246545))

(assert (=> b!1361233 d!145807))

(declare-fun d!145809 () Bool)

(assert (=> d!145809 (= (validKeyInArray!0 (select (arr!44711 a!3742) from!3120)) (and (not (= (select (arr!44711 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44711 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1361232 d!145809))

(assert (=> b!1361243 d!145781))

(declare-fun b!1361411 () Bool)

(declare-fun e!772404 () Bool)

(declare-fun call!65363 () Bool)

(assert (=> b!1361411 (= e!772404 call!65363)))

(declare-fun d!145811 () Bool)

(declare-fun res!905658 () Bool)

(declare-fun e!772403 () Bool)

(assert (=> d!145811 (=> res!905658 e!772403)))

(assert (=> d!145811 (= res!905658 (bvsge #b00000000000000000000000000000000 (size!45262 a!3742)))))

(assert (=> d!145811 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31929) e!772403)))

(declare-fun b!1361412 () Bool)

(declare-fun e!772405 () Bool)

(assert (=> b!1361412 (= e!772405 e!772404)))

(declare-fun c!127319 () Bool)

(assert (=> b!1361412 (= c!127319 (validKeyInArray!0 (select (arr!44711 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1361413 () Bool)

(assert (=> b!1361413 (= e!772404 call!65363)))

(declare-fun b!1361414 () Bool)

(assert (=> b!1361414 (= e!772403 e!772405)))

(declare-fun res!905659 () Bool)

(assert (=> b!1361414 (=> (not res!905659) (not e!772405))))

(declare-fun e!772402 () Bool)

(assert (=> b!1361414 (= res!905659 (not e!772402))))

(declare-fun res!905660 () Bool)

(assert (=> b!1361414 (=> (not res!905660) (not e!772402))))

(assert (=> b!1361414 (= res!905660 (validKeyInArray!0 (select (arr!44711 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65360 () Bool)

(assert (=> bm!65360 (= call!65363 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127319 (Cons!31928 (select (arr!44711 a!3742) #b00000000000000000000000000000000) Nil!31929) Nil!31929)))))

(declare-fun b!1361415 () Bool)

(assert (=> b!1361415 (= e!772402 (contains!9497 Nil!31929 (select (arr!44711 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145811 (not res!905658)) b!1361414))

(assert (= (and b!1361414 res!905660) b!1361415))

(assert (= (and b!1361414 res!905659) b!1361412))

(assert (= (and b!1361412 c!127319) b!1361411))

(assert (= (and b!1361412 (not c!127319)) b!1361413))

(assert (= (or b!1361411 b!1361413) bm!65360))

(declare-fun m!1246547 () Bool)

(assert (=> b!1361412 m!1246547))

(assert (=> b!1361412 m!1246547))

(declare-fun m!1246549 () Bool)

(assert (=> b!1361412 m!1246549))

(assert (=> b!1361414 m!1246547))

(assert (=> b!1361414 m!1246547))

(assert (=> b!1361414 m!1246549))

(assert (=> bm!65360 m!1246547))

(declare-fun m!1246557 () Bool)

(assert (=> bm!65360 m!1246557))

(assert (=> b!1361415 m!1246547))

(assert (=> b!1361415 m!1246547))

(declare-fun m!1246559 () Bool)

(assert (=> b!1361415 m!1246559))

(assert (=> b!1361234 d!145811))

(declare-fun d!145815 () Bool)

(declare-fun lt!600121 () Bool)

(assert (=> d!145815 (= lt!600121 (select (content!703 lt!600079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772408 () Bool)

(assert (=> d!145815 (= lt!600121 e!772408)))

(declare-fun res!905663 () Bool)

(assert (=> d!145815 (=> (not res!905663) (not e!772408))))

(assert (=> d!145815 (= res!905663 ((_ is Cons!31928) lt!600079))))

(assert (=> d!145815 (= (contains!9497 lt!600079 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600121)))

(declare-fun b!1361418 () Bool)

(declare-fun e!772409 () Bool)

(assert (=> b!1361418 (= e!772408 e!772409)))

(declare-fun res!905664 () Bool)

(assert (=> b!1361418 (=> res!905664 e!772409)))

(assert (=> b!1361418 (= res!905664 (= (h!33137 lt!600079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361419 () Bool)

(assert (=> b!1361419 (= e!772409 (contains!9497 (t!46621 lt!600079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145815 res!905663) b!1361418))

(assert (= (and b!1361418 (not res!905664)) b!1361419))

(declare-fun m!1246561 () Bool)

(assert (=> d!145815 m!1246561))

(declare-fun m!1246563 () Bool)

(assert (=> d!145815 m!1246563))

(declare-fun m!1246565 () Bool)

(assert (=> b!1361419 m!1246565))

(assert (=> b!1361235 d!145815))

(declare-fun d!145819 () Bool)

(declare-fun lt!600122 () Bool)

(assert (=> d!145819 (= lt!600122 (select (content!703 lt!600079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772412 () Bool)

(assert (=> d!145819 (= lt!600122 e!772412)))

(declare-fun res!905667 () Bool)

(assert (=> d!145819 (=> (not res!905667) (not e!772412))))

(assert (=> d!145819 (= res!905667 ((_ is Cons!31928) lt!600079))))

(assert (=> d!145819 (= (contains!9497 lt!600079 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600122)))

(declare-fun b!1361422 () Bool)

(declare-fun e!772413 () Bool)

(assert (=> b!1361422 (= e!772412 e!772413)))

(declare-fun res!905668 () Bool)

(assert (=> b!1361422 (=> res!905668 e!772413)))

(assert (=> b!1361422 (= res!905668 (= (h!33137 lt!600079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361423 () Bool)

(assert (=> b!1361423 (= e!772413 (contains!9497 (t!46621 lt!600079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145819 res!905667) b!1361422))

(assert (= (and b!1361422 (not res!905668)) b!1361423))

(assert (=> d!145819 m!1246561))

(declare-fun m!1246571 () Bool)

(assert (=> d!145819 m!1246571))

(declare-fun m!1246573 () Bool)

(assert (=> b!1361423 m!1246573))

(assert (=> b!1361236 d!145819))

(check-sat (not bm!65359) (not b!1361414) (not d!145783) (not b!1361354) (not d!145761) (not b!1361392) (not d!145757) (not b!1361405) (not b!1361419) (not b!1361423) (not b!1361406) (not b!1361395) (not d!145801) (not b!1361393) (not b!1361390) (not bm!65356) (not d!145819) (not b!1361401) (not b!1361356) (not bm!65358) (not b!1361309) (not b!1361415) (not bm!65360) (not b!1361308) (not b!1361357) (not b!1361385) (not b!1361403) (not b!1361297) (not d!145815) (not b!1361412) (not b!1361394) (not b!1361386))
(check-sat)
