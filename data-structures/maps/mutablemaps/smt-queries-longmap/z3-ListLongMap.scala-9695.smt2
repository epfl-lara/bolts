; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114544 () Bool)

(assert start!114544)

(declare-fun e!771173 () Bool)

(declare-datatypes ((List!31890 0))(
  ( (Nil!31887) (Cons!31886 (h!33095 (_ BitVec 64)) (t!46567 List!31890)) )
))
(declare-fun acc!759 () List!31890)

(declare-fun b!1358985 () Bool)

(declare-datatypes ((array!92463 0))(
  ( (array!92464 (arr!44669 (Array (_ BitVec 32) (_ BitVec 64))) (size!45220 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92463)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92463 (_ BitVec 32) List!31890) Bool)

(assert (=> b!1358985 (= e!771173 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))))

(declare-fun res!903645 () Bool)

(declare-fun e!771175 () Bool)

(assert (=> start!114544 (=> (not res!903645) (not e!771175))))

(assert (=> start!114544 (= res!903645 (and (bvslt (size!45220 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45220 a!3742))))))

(assert (=> start!114544 e!771175))

(assert (=> start!114544 true))

(declare-fun array_inv!33614 (array!92463) Bool)

(assert (=> start!114544 (array_inv!33614 a!3742)))

(declare-fun b!1358986 () Bool)

(assert (=> b!1358986 (= e!771175 e!771173)))

(declare-fun res!903649 () Bool)

(assert (=> b!1358986 (=> (not res!903649) (not e!771173))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358986 (= res!903649 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44690 0))(
  ( (Unit!44691) )
))
(declare-fun lt!599447 () Unit!44690)

(declare-fun e!771172 () Unit!44690)

(assert (=> b!1358986 (= lt!599447 e!771172)))

(declare-fun c!127114 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358986 (= c!127114 (validKeyInArray!0 (select (arr!44669 a!3742) from!3120)))))

(declare-fun b!1358987 () Bool)

(declare-fun res!903648 () Bool)

(assert (=> b!1358987 (=> (not res!903648) (not e!771175))))

(declare-fun contains!9455 (List!31890 (_ BitVec 64)) Bool)

(assert (=> b!1358987 (= res!903648 (not (contains!9455 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358988 () Bool)

(declare-fun res!903647 () Bool)

(assert (=> b!1358988 (=> (not res!903647) (not e!771175))))

(assert (=> b!1358988 (= res!903647 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45220 a!3742))))))

(declare-fun b!1358989 () Bool)

(declare-fun res!903644 () Bool)

(assert (=> b!1358989 (=> (not res!903644) (not e!771175))))

(assert (=> b!1358989 (= res!903644 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358990 () Bool)

(declare-fun res!903651 () Bool)

(assert (=> b!1358990 (=> (not res!903651) (not e!771175))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358990 (= res!903651 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358991 () Bool)

(declare-fun res!903643 () Bool)

(assert (=> b!1358991 (=> (not res!903643) (not e!771175))))

(assert (=> b!1358991 (= res!903643 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45220 a!3742)))))

(declare-fun b!1358992 () Bool)

(declare-fun lt!599446 () Unit!44690)

(assert (=> b!1358992 (= e!771172 lt!599446)))

(declare-fun lt!599445 () Unit!44690)

(declare-fun lemmaListSubSeqRefl!0 (List!31890) Unit!44690)

(assert (=> b!1358992 (= lt!599445 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!846 (List!31890 List!31890) Bool)

(assert (=> b!1358992 (subseq!846 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92463 List!31890 List!31890 (_ BitVec 32)) Unit!44690)

(declare-fun $colon$colon!851 (List!31890 (_ BitVec 64)) List!31890)

(assert (=> b!1358992 (= lt!599446 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!851 acc!759 (select (arr!44669 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358992 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358993 () Bool)

(declare-fun Unit!44692 () Unit!44690)

(assert (=> b!1358993 (= e!771172 Unit!44692)))

(declare-fun b!1358994 () Bool)

(declare-fun res!903642 () Bool)

(assert (=> b!1358994 (=> (not res!903642) (not e!771175))))

(assert (=> b!1358994 (= res!903642 (not (contains!9455 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358995 () Bool)

(declare-fun res!903650 () Bool)

(assert (=> b!1358995 (=> (not res!903650) (not e!771175))))

(declare-fun noDuplicate!2334 (List!31890) Bool)

(assert (=> b!1358995 (= res!903650 (noDuplicate!2334 acc!759))))

(declare-fun b!1358996 () Bool)

(declare-fun res!903646 () Bool)

(assert (=> b!1358996 (=> (not res!903646) (not e!771175))))

(assert (=> b!1358996 (= res!903646 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31887))))

(assert (= (and start!114544 res!903645) b!1358995))

(assert (= (and b!1358995 res!903650) b!1358987))

(assert (= (and b!1358987 res!903648) b!1358994))

(assert (= (and b!1358994 res!903642) b!1358996))

(assert (= (and b!1358996 res!903646) b!1358989))

(assert (= (and b!1358989 res!903644) b!1358988))

(assert (= (and b!1358988 res!903647) b!1358990))

(assert (= (and b!1358990 res!903651) b!1358991))

(assert (= (and b!1358991 res!903643) b!1358986))

(assert (= (and b!1358986 c!127114) b!1358992))

(assert (= (and b!1358986 (not c!127114)) b!1358993))

(assert (= (and b!1358986 res!903649) b!1358985))

(declare-fun m!1244507 () Bool)

(assert (=> b!1358994 m!1244507))

(declare-fun m!1244509 () Bool)

(assert (=> b!1358992 m!1244509))

(declare-fun m!1244511 () Bool)

(assert (=> b!1358992 m!1244511))

(declare-fun m!1244513 () Bool)

(assert (=> b!1358992 m!1244513))

(declare-fun m!1244515 () Bool)

(assert (=> b!1358992 m!1244515))

(declare-fun m!1244517 () Bool)

(assert (=> b!1358992 m!1244517))

(assert (=> b!1358992 m!1244511))

(assert (=> b!1358992 m!1244513))

(declare-fun m!1244519 () Bool)

(assert (=> b!1358992 m!1244519))

(declare-fun m!1244521 () Bool)

(assert (=> b!1358995 m!1244521))

(declare-fun m!1244523 () Bool)

(assert (=> b!1358987 m!1244523))

(declare-fun m!1244525 () Bool)

(assert (=> b!1358996 m!1244525))

(declare-fun m!1244527 () Bool)

(assert (=> start!114544 m!1244527))

(assert (=> b!1358986 m!1244511))

(assert (=> b!1358986 m!1244511))

(declare-fun m!1244529 () Bool)

(assert (=> b!1358986 m!1244529))

(declare-fun m!1244531 () Bool)

(assert (=> b!1358990 m!1244531))

(assert (=> b!1358985 m!1244517))

(declare-fun m!1244533 () Bool)

(assert (=> b!1358989 m!1244533))

(check-sat (not b!1358990) (not b!1358996) (not b!1358995) (not b!1358992) (not b!1358985) (not b!1358994) (not start!114544) (not b!1358987) (not b!1358989) (not b!1358986))
(check-sat)
(get-model)

(declare-fun b!1359043 () Bool)

(declare-fun e!771197 () Bool)

(declare-fun call!65290 () Bool)

(assert (=> b!1359043 (= e!771197 call!65290)))

(declare-fun c!127120 () Bool)

(declare-fun bm!65287 () Bool)

(assert (=> bm!65287 (= call!65290 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127120 (Cons!31886 (select (arr!44669 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!145373 () Bool)

(declare-fun res!903688 () Bool)

(declare-fun e!771198 () Bool)

(assert (=> d!145373 (=> res!903688 e!771198)))

(assert (=> d!145373 (= res!903688 (bvsge from!3120 (size!45220 a!3742)))))

(assert (=> d!145373 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771198)))

(declare-fun b!1359044 () Bool)

(declare-fun e!771196 () Bool)

(assert (=> b!1359044 (= e!771196 (contains!9455 acc!759 (select (arr!44669 a!3742) from!3120)))))

(declare-fun b!1359045 () Bool)

(declare-fun e!771199 () Bool)

(assert (=> b!1359045 (= e!771198 e!771199)))

(declare-fun res!903689 () Bool)

(assert (=> b!1359045 (=> (not res!903689) (not e!771199))))

(assert (=> b!1359045 (= res!903689 (not e!771196))))

(declare-fun res!903690 () Bool)

(assert (=> b!1359045 (=> (not res!903690) (not e!771196))))

(assert (=> b!1359045 (= res!903690 (validKeyInArray!0 (select (arr!44669 a!3742) from!3120)))))

(declare-fun b!1359046 () Bool)

(assert (=> b!1359046 (= e!771199 e!771197)))

(assert (=> b!1359046 (= c!127120 (validKeyInArray!0 (select (arr!44669 a!3742) from!3120)))))

(declare-fun b!1359047 () Bool)

(assert (=> b!1359047 (= e!771197 call!65290)))

(assert (= (and d!145373 (not res!903688)) b!1359045))

(assert (= (and b!1359045 res!903690) b!1359044))

(assert (= (and b!1359045 res!903689) b!1359046))

(assert (= (and b!1359046 c!127120) b!1359047))

(assert (= (and b!1359046 (not c!127120)) b!1359043))

(assert (= (or b!1359047 b!1359043) bm!65287))

(assert (=> bm!65287 m!1244511))

(declare-fun m!1244563 () Bool)

(assert (=> bm!65287 m!1244563))

(assert (=> b!1359044 m!1244511))

(assert (=> b!1359044 m!1244511))

(declare-fun m!1244565 () Bool)

(assert (=> b!1359044 m!1244565))

(assert (=> b!1359045 m!1244511))

(assert (=> b!1359045 m!1244511))

(assert (=> b!1359045 m!1244529))

(assert (=> b!1359046 m!1244511))

(assert (=> b!1359046 m!1244511))

(assert (=> b!1359046 m!1244529))

(assert (=> b!1358989 d!145373))

(declare-fun d!145379 () Bool)

(declare-fun lt!599459 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!693 (List!31890) (InoxSet (_ BitVec 64)))

(assert (=> d!145379 (= lt!599459 (select (content!693 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771213 () Bool)

(assert (=> d!145379 (= lt!599459 e!771213)))

(declare-fun res!903702 () Bool)

(assert (=> d!145379 (=> (not res!903702) (not e!771213))))

(get-info :version)

(assert (=> d!145379 (= res!903702 ((_ is Cons!31886) acc!759))))

(assert (=> d!145379 (= (contains!9455 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599459)))

(declare-fun b!1359062 () Bool)

(declare-fun e!771212 () Bool)

(assert (=> b!1359062 (= e!771213 e!771212)))

(declare-fun res!903701 () Bool)

(assert (=> b!1359062 (=> res!903701 e!771212)))

(assert (=> b!1359062 (= res!903701 (= (h!33095 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359063 () Bool)

(assert (=> b!1359063 (= e!771212 (contains!9455 (t!46567 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145379 res!903702) b!1359062))

(assert (= (and b!1359062 (not res!903701)) b!1359063))

(declare-fun m!1244567 () Bool)

(assert (=> d!145379 m!1244567))

(declare-fun m!1244569 () Bool)

(assert (=> d!145379 m!1244569))

(declare-fun m!1244571 () Bool)

(assert (=> b!1359063 m!1244571))

(assert (=> b!1358994 d!145379))

(declare-fun d!145383 () Bool)

(declare-fun res!903707 () Bool)

(declare-fun e!771218 () Bool)

(assert (=> d!145383 (=> res!903707 e!771218)))

(assert (=> d!145383 (= res!903707 ((_ is Nil!31887) acc!759))))

(assert (=> d!145383 (= (noDuplicate!2334 acc!759) e!771218)))

(declare-fun b!1359068 () Bool)

(declare-fun e!771219 () Bool)

(assert (=> b!1359068 (= e!771218 e!771219)))

(declare-fun res!903708 () Bool)

(assert (=> b!1359068 (=> (not res!903708) (not e!771219))))

(assert (=> b!1359068 (= res!903708 (not (contains!9455 (t!46567 acc!759) (h!33095 acc!759))))))

(declare-fun b!1359069 () Bool)

(assert (=> b!1359069 (= e!771219 (noDuplicate!2334 (t!46567 acc!759)))))

(assert (= (and d!145383 (not res!903707)) b!1359068))

(assert (= (and b!1359068 res!903708) b!1359069))

(declare-fun m!1244573 () Bool)

(assert (=> b!1359068 m!1244573))

(declare-fun m!1244575 () Bool)

(assert (=> b!1359069 m!1244575))

(assert (=> b!1358995 d!145383))

(declare-fun d!145387 () Bool)

(assert (=> d!145387 (= (array_inv!33614 a!3742) (bvsge (size!45220 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114544 d!145387))

(declare-fun d!145389 () Bool)

(assert (=> d!145389 (= (validKeyInArray!0 (select (arr!44669 a!3742) from!3120)) (and (not (= (select (arr!44669 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44669 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358986 d!145389))

(declare-fun d!145391 () Bool)

(declare-fun lt!599460 () Bool)

(assert (=> d!145391 (= lt!599460 (select (content!693 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771225 () Bool)

(assert (=> d!145391 (= lt!599460 e!771225)))

(declare-fun res!903713 () Bool)

(assert (=> d!145391 (=> (not res!903713) (not e!771225))))

(assert (=> d!145391 (= res!903713 ((_ is Cons!31886) acc!759))))

(assert (=> d!145391 (= (contains!9455 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599460)))

(declare-fun b!1359075 () Bool)

(declare-fun e!771224 () Bool)

(assert (=> b!1359075 (= e!771225 e!771224)))

(declare-fun res!903712 () Bool)

(assert (=> b!1359075 (=> res!903712 e!771224)))

(assert (=> b!1359075 (= res!903712 (= (h!33095 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359076 () Bool)

(assert (=> b!1359076 (= e!771224 (contains!9455 (t!46567 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145391 res!903713) b!1359075))

(assert (= (and b!1359075 (not res!903712)) b!1359076))

(assert (=> d!145391 m!1244567))

(declare-fun m!1244577 () Bool)

(assert (=> d!145391 m!1244577))

(declare-fun m!1244579 () Bool)

(assert (=> b!1359076 m!1244579))

(assert (=> b!1358987 d!145391))

(declare-fun d!145393 () Bool)

(assert (=> d!145393 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599463 () Unit!44690)

(declare-fun choose!80 (array!92463 List!31890 List!31890 (_ BitVec 32)) Unit!44690)

(assert (=> d!145393 (= lt!599463 (choose!80 a!3742 ($colon$colon!851 acc!759 (select (arr!44669 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145393 (bvslt (size!45220 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145393 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!851 acc!759 (select (arr!44669 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599463)))

(declare-fun bs!38966 () Bool)

(assert (= bs!38966 d!145393))

(assert (=> bs!38966 m!1244517))

(assert (=> bs!38966 m!1244513))

(declare-fun m!1244589 () Bool)

(assert (=> bs!38966 m!1244589))

(assert (=> b!1358992 d!145393))

(declare-fun b!1359101 () Bool)

(declare-fun e!771247 () Bool)

(declare-fun e!771246 () Bool)

(assert (=> b!1359101 (= e!771247 e!771246)))

(declare-fun res!903732 () Bool)

(assert (=> b!1359101 (=> res!903732 e!771246)))

(declare-fun e!771248 () Bool)

(assert (=> b!1359101 (= res!903732 e!771248)))

(declare-fun res!903733 () Bool)

(assert (=> b!1359101 (=> (not res!903733) (not e!771248))))

(assert (=> b!1359101 (= res!903733 (= (h!33095 acc!759) (h!33095 acc!759)))))

(declare-fun d!145397 () Bool)

(declare-fun res!903734 () Bool)

(declare-fun e!771249 () Bool)

(assert (=> d!145397 (=> res!903734 e!771249)))

(assert (=> d!145397 (= res!903734 ((_ is Nil!31887) acc!759))))

(assert (=> d!145397 (= (subseq!846 acc!759 acc!759) e!771249)))

(declare-fun b!1359100 () Bool)

(assert (=> b!1359100 (= e!771249 e!771247)))

(declare-fun res!903731 () Bool)

(assert (=> b!1359100 (=> (not res!903731) (not e!771247))))

(assert (=> b!1359100 (= res!903731 ((_ is Cons!31886) acc!759))))

(declare-fun b!1359102 () Bool)

(assert (=> b!1359102 (= e!771248 (subseq!846 (t!46567 acc!759) (t!46567 acc!759)))))

(declare-fun b!1359103 () Bool)

(assert (=> b!1359103 (= e!771246 (subseq!846 acc!759 (t!46567 acc!759)))))

(assert (= (and d!145397 (not res!903734)) b!1359100))

(assert (= (and b!1359100 res!903731) b!1359101))

(assert (= (and b!1359101 res!903733) b!1359102))

(assert (= (and b!1359101 (not res!903732)) b!1359103))

(declare-fun m!1244599 () Bool)

(assert (=> b!1359102 m!1244599))

(declare-fun m!1244601 () Bool)

(assert (=> b!1359103 m!1244601))

(assert (=> b!1358992 d!145397))

(declare-fun b!1359104 () Bool)

(declare-fun e!771251 () Bool)

(declare-fun call!65297 () Bool)

(assert (=> b!1359104 (= e!771251 call!65297)))

(declare-fun bm!65294 () Bool)

(declare-fun c!127127 () Bool)

(assert (=> bm!65294 (= call!65297 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127127 (Cons!31886 (select (arr!44669 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun d!145401 () Bool)

(declare-fun res!903735 () Bool)

(declare-fun e!771252 () Bool)

(assert (=> d!145401 (=> res!903735 e!771252)))

(assert (=> d!145401 (= res!903735 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45220 a!3742)))))

(assert (=> d!145401 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771252)))

(declare-fun e!771250 () Bool)

(declare-fun b!1359105 () Bool)

(assert (=> b!1359105 (= e!771250 (contains!9455 acc!759 (select (arr!44669 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359106 () Bool)

(declare-fun e!771253 () Bool)

(assert (=> b!1359106 (= e!771252 e!771253)))

(declare-fun res!903736 () Bool)

(assert (=> b!1359106 (=> (not res!903736) (not e!771253))))

(assert (=> b!1359106 (= res!903736 (not e!771250))))

(declare-fun res!903737 () Bool)

(assert (=> b!1359106 (=> (not res!903737) (not e!771250))))

(assert (=> b!1359106 (= res!903737 (validKeyInArray!0 (select (arr!44669 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359107 () Bool)

(assert (=> b!1359107 (= e!771253 e!771251)))

(assert (=> b!1359107 (= c!127127 (validKeyInArray!0 (select (arr!44669 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359108 () Bool)

(assert (=> b!1359108 (= e!771251 call!65297)))

(assert (= (and d!145401 (not res!903735)) b!1359106))

(assert (= (and b!1359106 res!903737) b!1359105))

(assert (= (and b!1359106 res!903736) b!1359107))

(assert (= (and b!1359107 c!127127) b!1359108))

(assert (= (and b!1359107 (not c!127127)) b!1359104))

(assert (= (or b!1359108 b!1359104) bm!65294))

(declare-fun m!1244605 () Bool)

(assert (=> bm!65294 m!1244605))

(declare-fun m!1244607 () Bool)

(assert (=> bm!65294 m!1244607))

(assert (=> b!1359105 m!1244605))

(assert (=> b!1359105 m!1244605))

(declare-fun m!1244609 () Bool)

(assert (=> b!1359105 m!1244609))

(assert (=> b!1359106 m!1244605))

(assert (=> b!1359106 m!1244605))

(declare-fun m!1244611 () Bool)

(assert (=> b!1359106 m!1244611))

(assert (=> b!1359107 m!1244605))

(assert (=> b!1359107 m!1244605))

(assert (=> b!1359107 m!1244611))

(assert (=> b!1358992 d!145401))

(declare-fun d!145405 () Bool)

(assert (=> d!145405 (= ($colon$colon!851 acc!759 (select (arr!44669 a!3742) from!3120)) (Cons!31886 (select (arr!44669 a!3742) from!3120) acc!759))))

(assert (=> b!1358992 d!145405))

(declare-fun d!145407 () Bool)

(assert (=> d!145407 (subseq!846 acc!759 acc!759)))

(declare-fun lt!599469 () Unit!44690)

(declare-fun choose!36 (List!31890) Unit!44690)

(assert (=> d!145407 (= lt!599469 (choose!36 acc!759))))

(assert (=> d!145407 (= (lemmaListSubSeqRefl!0 acc!759) lt!599469)))

(declare-fun bs!38968 () Bool)

(assert (= bs!38968 d!145407))

(assert (=> bs!38968 m!1244519))

(declare-fun m!1244613 () Bool)

(assert (=> bs!38968 m!1244613))

(assert (=> b!1358992 d!145407))

(assert (=> b!1358985 d!145401))

(declare-fun d!145409 () Bool)

(assert (=> d!145409 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358990 d!145409))

(declare-fun b!1359117 () Bool)

(declare-fun e!771263 () Bool)

(declare-fun call!65298 () Bool)

(assert (=> b!1359117 (= e!771263 call!65298)))

(declare-fun bm!65295 () Bool)

(declare-fun c!127128 () Bool)

(assert (=> bm!65295 (= call!65298 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127128 (Cons!31886 (select (arr!44669 a!3742) #b00000000000000000000000000000000) Nil!31887) Nil!31887)))))

(declare-fun d!145411 () Bool)

(declare-fun res!903746 () Bool)

(declare-fun e!771264 () Bool)

(assert (=> d!145411 (=> res!903746 e!771264)))

(assert (=> d!145411 (= res!903746 (bvsge #b00000000000000000000000000000000 (size!45220 a!3742)))))

(assert (=> d!145411 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31887) e!771264)))

(declare-fun b!1359118 () Bool)

(declare-fun e!771262 () Bool)

(assert (=> b!1359118 (= e!771262 (contains!9455 Nil!31887 (select (arr!44669 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359119 () Bool)

(declare-fun e!771265 () Bool)

(assert (=> b!1359119 (= e!771264 e!771265)))

(declare-fun res!903747 () Bool)

(assert (=> b!1359119 (=> (not res!903747) (not e!771265))))

(assert (=> b!1359119 (= res!903747 (not e!771262))))

(declare-fun res!903748 () Bool)

(assert (=> b!1359119 (=> (not res!903748) (not e!771262))))

(assert (=> b!1359119 (= res!903748 (validKeyInArray!0 (select (arr!44669 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359120 () Bool)

(assert (=> b!1359120 (= e!771265 e!771263)))

(assert (=> b!1359120 (= c!127128 (validKeyInArray!0 (select (arr!44669 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359121 () Bool)

(assert (=> b!1359121 (= e!771263 call!65298)))

(assert (= (and d!145411 (not res!903746)) b!1359119))

(assert (= (and b!1359119 res!903748) b!1359118))

(assert (= (and b!1359119 res!903747) b!1359120))

(assert (= (and b!1359120 c!127128) b!1359121))

(assert (= (and b!1359120 (not c!127128)) b!1359117))

(assert (= (or b!1359121 b!1359117) bm!65295))

(declare-fun m!1244615 () Bool)

(assert (=> bm!65295 m!1244615))

(declare-fun m!1244617 () Bool)

(assert (=> bm!65295 m!1244617))

(assert (=> b!1359118 m!1244615))

(assert (=> b!1359118 m!1244615))

(declare-fun m!1244619 () Bool)

(assert (=> b!1359118 m!1244619))

(assert (=> b!1359119 m!1244615))

(assert (=> b!1359119 m!1244615))

(declare-fun m!1244621 () Bool)

(assert (=> b!1359119 m!1244621))

(assert (=> b!1359120 m!1244615))

(assert (=> b!1359120 m!1244615))

(assert (=> b!1359120 m!1244621))

(assert (=> b!1358996 d!145411))

(check-sat (not b!1359103) (not b!1359106) (not b!1359105) (not bm!65295) (not d!145379) (not b!1359107) (not b!1359120) (not bm!65294) (not b!1359102) (not b!1359076) (not d!145391) (not b!1359045) (not d!145407) (not b!1359063) (not b!1359118) (not b!1359068) (not d!145393) (not b!1359119) (not b!1359069) (not bm!65287) (not b!1359044) (not b!1359046))
(check-sat)
