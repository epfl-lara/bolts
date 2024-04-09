; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115118 () Bool)

(assert start!115118)

(declare-fun b!1363781 () Bool)

(declare-fun res!907648 () Bool)

(declare-fun e!773374 () Bool)

(assert (=> b!1363781 (=> (not res!907648) (not e!773374))))

(declare-datatypes ((List!31982 0))(
  ( (Nil!31979) (Cons!31978 (h!33187 (_ BitVec 64)) (t!46680 List!31982)) )
))
(declare-fun acc!759 () List!31982)

(declare-datatypes ((array!92668 0))(
  ( (array!92669 (arr!44761 (Array (_ BitVec 32) (_ BitVec 64))) (size!45312 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92668)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92668 (_ BitVec 32) List!31982) Bool)

(assert (=> b!1363781 (= res!907648 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363782 () Bool)

(declare-fun res!907650 () Bool)

(assert (=> b!1363782 (=> (not res!907650) (not e!773374))))

(assert (=> b!1363782 (= res!907650 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31979))))

(declare-fun b!1363783 () Bool)

(declare-datatypes ((Unit!44966 0))(
  ( (Unit!44967) )
))
(declare-fun e!773377 () Unit!44966)

(declare-fun Unit!44968 () Unit!44966)

(assert (=> b!1363783 (= e!773377 Unit!44968)))

(declare-fun res!907645 () Bool)

(assert (=> start!115118 (=> (not res!907645) (not e!773374))))

(assert (=> start!115118 (= res!907645 (and (bvslt (size!45312 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45312 a!3742))))))

(assert (=> start!115118 e!773374))

(assert (=> start!115118 true))

(declare-fun array_inv!33706 (array!92668) Bool)

(assert (=> start!115118 (array_inv!33706 a!3742)))

(declare-fun b!1363784 () Bool)

(declare-fun e!773376 () Bool)

(declare-fun lt!600869 () array!92668)

(assert (=> b!1363784 (= e!773376 (not (arrayNoDuplicates!0 lt!600869 from!3120 acc!759)))))

(assert (=> b!1363784 (arrayNoDuplicates!0 lt!600869 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363784 (= lt!600869 (array!92669 (store (arr!44761 a!3742) i!1404 l!3587) (size!45312 a!3742)))))

(declare-fun lt!600872 () Unit!44966)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31982) Unit!44966)

(assert (=> b!1363784 (= lt!600872 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363785 () Bool)

(declare-fun res!907643 () Bool)

(assert (=> b!1363785 (=> (not res!907643) (not e!773374))))

(assert (=> b!1363785 (= res!907643 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45312 a!3742))))))

(declare-fun b!1363786 () Bool)

(declare-fun res!907640 () Bool)

(assert (=> b!1363786 (=> (not res!907640) (not e!773374))))

(assert (=> b!1363786 (= res!907640 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45312 a!3742)))))

(declare-fun b!1363787 () Bool)

(declare-fun res!907644 () Bool)

(assert (=> b!1363787 (=> (not res!907644) (not e!773374))))

(declare-fun contains!9547 (List!31982 (_ BitVec 64)) Bool)

(assert (=> b!1363787 (= res!907644 (not (contains!9547 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363788 () Bool)

(declare-fun lt!600870 () Unit!44966)

(assert (=> b!1363788 (= e!773377 lt!600870)))

(declare-fun lt!600871 () Unit!44966)

(declare-fun lemmaListSubSeqRefl!0 (List!31982) Unit!44966)

(assert (=> b!1363788 (= lt!600871 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!938 (List!31982 List!31982) Bool)

(assert (=> b!1363788 (subseq!938 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92668 List!31982 List!31982 (_ BitVec 32)) Unit!44966)

(declare-fun $colon$colon!943 (List!31982 (_ BitVec 64)) List!31982)

(assert (=> b!1363788 (= lt!600870 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!943 acc!759 (select (arr!44761 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363788 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363789 () Bool)

(declare-fun res!907647 () Bool)

(assert (=> b!1363789 (=> (not res!907647) (not e!773374))))

(declare-fun noDuplicate!2426 (List!31982) Bool)

(assert (=> b!1363789 (= res!907647 (noDuplicate!2426 acc!759))))

(declare-fun b!1363790 () Bool)

(declare-fun res!907646 () Bool)

(assert (=> b!1363790 (=> (not res!907646) (not e!773376))))

(assert (=> b!1363790 (= res!907646 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363791 () Bool)

(assert (=> b!1363791 (= e!773374 e!773376)))

(declare-fun res!907649 () Bool)

(assert (=> b!1363791 (=> (not res!907649) (not e!773376))))

(declare-fun lt!600868 () Bool)

(assert (=> b!1363791 (= res!907649 (and (not (= from!3120 i!1404)) (not lt!600868) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600867 () Unit!44966)

(assert (=> b!1363791 (= lt!600867 e!773377)))

(declare-fun c!127513 () Bool)

(assert (=> b!1363791 (= c!127513 lt!600868)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363791 (= lt!600868 (validKeyInArray!0 (select (arr!44761 a!3742) from!3120)))))

(declare-fun b!1363792 () Bool)

(declare-fun res!907642 () Bool)

(assert (=> b!1363792 (=> (not res!907642) (not e!773374))))

(assert (=> b!1363792 (= res!907642 (not (contains!9547 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363793 () Bool)

(declare-fun res!907641 () Bool)

(assert (=> b!1363793 (=> (not res!907641) (not e!773374))))

(assert (=> b!1363793 (= res!907641 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!115118 res!907645) b!1363789))

(assert (= (and b!1363789 res!907647) b!1363787))

(assert (= (and b!1363787 res!907644) b!1363792))

(assert (= (and b!1363792 res!907642) b!1363782))

(assert (= (and b!1363782 res!907650) b!1363781))

(assert (= (and b!1363781 res!907648) b!1363785))

(assert (= (and b!1363785 res!907643) b!1363793))

(assert (= (and b!1363793 res!907641) b!1363786))

(assert (= (and b!1363786 res!907640) b!1363791))

(assert (= (and b!1363791 c!127513) b!1363788))

(assert (= (and b!1363791 (not c!127513)) b!1363783))

(assert (= (and b!1363791 res!907649) b!1363790))

(assert (= (and b!1363790 res!907646) b!1363784))

(declare-fun m!1248535 () Bool)

(assert (=> b!1363781 m!1248535))

(declare-fun m!1248537 () Bool)

(assert (=> b!1363782 m!1248537))

(declare-fun m!1248539 () Bool)

(assert (=> b!1363793 m!1248539))

(declare-fun m!1248541 () Bool)

(assert (=> b!1363789 m!1248541))

(declare-fun m!1248543 () Bool)

(assert (=> b!1363787 m!1248543))

(declare-fun m!1248545 () Bool)

(assert (=> b!1363792 m!1248545))

(declare-fun m!1248547 () Bool)

(assert (=> b!1363790 m!1248547))

(declare-fun m!1248549 () Bool)

(assert (=> b!1363791 m!1248549))

(assert (=> b!1363791 m!1248549))

(declare-fun m!1248551 () Bool)

(assert (=> b!1363791 m!1248551))

(declare-fun m!1248553 () Bool)

(assert (=> b!1363788 m!1248553))

(assert (=> b!1363788 m!1248549))

(declare-fun m!1248555 () Bool)

(assert (=> b!1363788 m!1248555))

(declare-fun m!1248557 () Bool)

(assert (=> b!1363788 m!1248557))

(assert (=> b!1363788 m!1248547))

(assert (=> b!1363788 m!1248549))

(assert (=> b!1363788 m!1248555))

(declare-fun m!1248559 () Bool)

(assert (=> b!1363788 m!1248559))

(declare-fun m!1248561 () Bool)

(assert (=> b!1363784 m!1248561))

(declare-fun m!1248563 () Bool)

(assert (=> b!1363784 m!1248563))

(declare-fun m!1248565 () Bool)

(assert (=> b!1363784 m!1248565))

(declare-fun m!1248567 () Bool)

(assert (=> b!1363784 m!1248567))

(declare-fun m!1248569 () Bool)

(assert (=> start!115118 m!1248569))

(push 1)

(assert (not b!1363781))

(assert (not b!1363782))

(assert (not b!1363792))

(assert (not b!1363788))

(assert (not b!1363791))

(assert (not b!1363787))

(assert (not start!115118))

(assert (not b!1363790))

(assert (not b!1363789))

(assert (not b!1363793))

(assert (not b!1363784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146099 () Bool)

(assert (=> d!146099 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363793 d!146099))

(declare-fun b!1363943 () Bool)

(declare-fun e!773464 () Bool)

(declare-fun call!65421 () Bool)

(assert (=> b!1363943 (= e!773464 call!65421)))

(declare-fun d!146101 () Bool)

(declare-fun res!907770 () Bool)

(declare-fun e!773465 () Bool)

(assert (=> d!146101 (=> res!907770 e!773465)))

(assert (=> d!146101 (= res!907770 (bvsge #b00000000000000000000000000000000 (size!45312 a!3742)))))

(assert (=> d!146101 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31979) e!773465)))

(declare-fun b!1363944 () Bool)

(declare-fun e!773466 () Bool)

(assert (=> b!1363944 (= e!773465 e!773466)))

(declare-fun res!907768 () Bool)

(assert (=> b!1363944 (=> (not res!907768) (not e!773466))))

(declare-fun e!773463 () Bool)

(assert (=> b!1363944 (= res!907768 (not e!773463))))

(declare-fun res!907769 () Bool)

(assert (=> b!1363944 (=> (not res!907769) (not e!773463))))

(assert (=> b!1363944 (= res!907769 (validKeyInArray!0 (select (arr!44761 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363945 () Bool)

(assert (=> b!1363945 (= e!773466 e!773464)))

(declare-fun c!127530 () Bool)

(assert (=> b!1363945 (= c!127530 (validKeyInArray!0 (select (arr!44761 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363946 () Bool)

(assert (=> b!1363946 (= e!773464 call!65421)))

(declare-fun b!1363947 () Bool)

(assert (=> b!1363947 (= e!773463 (contains!9547 Nil!31979 (select (arr!44761 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65418 () Bool)

(assert (=> bm!65418 (= call!65421 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127530 (Cons!31978 (select (arr!44761 a!3742) #b00000000000000000000000000000000) Nil!31979) Nil!31979)))))

(assert (= (and d!146101 (not res!907770)) b!1363944))

(assert (= (and b!1363944 res!907769) b!1363947))

(assert (= (and b!1363944 res!907768) b!1363945))

(assert (= (and b!1363945 c!127530) b!1363946))

(assert (= (and b!1363945 (not c!127530)) b!1363943))

(assert (= (or b!1363946 b!1363943) bm!65418))

(declare-fun m!1248687 () Bool)

(assert (=> b!1363944 m!1248687))

(assert (=> b!1363944 m!1248687))

(declare-fun m!1248689 () Bool)

(assert (=> b!1363944 m!1248689))

(assert (=> b!1363945 m!1248687))

(assert (=> b!1363945 m!1248687))

(assert (=> b!1363945 m!1248689))

(assert (=> b!1363947 m!1248687))

(assert (=> b!1363947 m!1248687))

(declare-fun m!1248691 () Bool)

(assert (=> b!1363947 m!1248691))

(assert (=> bm!65418 m!1248687))

(declare-fun m!1248693 () Bool)

(assert (=> bm!65418 m!1248693))

(assert (=> b!1363782 d!146101))

(declare-fun b!1363953 () Bool)

(declare-fun e!773472 () Bool)

(declare-fun call!65423 () Bool)

(assert (=> b!1363953 (= e!773472 call!65423)))

(declare-fun d!146121 () Bool)

(declare-fun res!907776 () Bool)

(declare-fun e!773473 () Bool)

(assert (=> d!146121 (=> res!907776 e!773473)))

(assert (=> d!146121 (= res!907776 (bvsge from!3120 (size!45312 a!3742)))))

(assert (=> d!146121 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773473)))

(declare-fun b!1363954 () Bool)

(declare-fun e!773474 () Bool)

(assert (=> b!1363954 (= e!773473 e!773474)))

(declare-fun res!907774 () Bool)

(assert (=> b!1363954 (=> (not res!907774) (not e!773474))))

(declare-fun e!773471 () Bool)

(assert (=> b!1363954 (= res!907774 (not e!773471))))

(declare-fun res!907775 () Bool)

(assert (=> b!1363954 (=> (not res!907775) (not e!773471))))

(assert (=> b!1363954 (= res!907775 (validKeyInArray!0 (select (arr!44761 a!3742) from!3120)))))

(declare-fun b!1363955 () Bool)

(assert (=> b!1363955 (= e!773474 e!773472)))

(declare-fun c!127532 () Bool)

(assert (=> b!1363955 (= c!127532 (validKeyInArray!0 (select (arr!44761 a!3742) from!3120)))))

(declare-fun b!1363956 () Bool)

(assert (=> b!1363956 (= e!773472 call!65423)))

(declare-fun b!1363957 () Bool)

(assert (=> b!1363957 (= e!773471 (contains!9547 acc!759 (select (arr!44761 a!3742) from!3120)))))

(declare-fun bm!65420 () Bool)

(assert (=> bm!65420 (= call!65423 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127532 (Cons!31978 (select (arr!44761 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!146121 (not res!907776)) b!1363954))

(assert (= (and b!1363954 res!907775) b!1363957))

(assert (= (and b!1363954 res!907774) b!1363955))

(assert (= (and b!1363955 c!127532) b!1363956))

(assert (= (and b!1363955 (not c!127532)) b!1363953))

(assert (= (or b!1363956 b!1363953) bm!65420))

(assert (=> b!1363954 m!1248549))

(assert (=> b!1363954 m!1248549))

(assert (=> b!1363954 m!1248551))

(assert (=> b!1363955 m!1248549))

(assert (=> b!1363955 m!1248549))

(assert (=> b!1363955 m!1248551))

(assert (=> b!1363957 m!1248549))

(assert (=> b!1363957 m!1248549))

(declare-fun m!1248703 () Bool)

(assert (=> b!1363957 m!1248703))

(assert (=> bm!65420 m!1248549))

(declare-fun m!1248705 () Bool)

(assert (=> bm!65420 m!1248705))

(assert (=> b!1363781 d!146121))

(declare-fun d!146125 () Bool)

(declare-fun lt!600923 () Bool)

(declare-fun content!713 (List!31982) (Set (_ BitVec 64)))

(assert (=> d!146125 (= lt!600923 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!713 acc!759)))))

(declare-fun e!773490 () Bool)

(assert (=> d!146125 (= lt!600923 e!773490)))

(declare-fun res!907791 () Bool)

(assert (=> d!146125 (=> (not res!907791) (not e!773490))))

(assert (=> d!146125 (= res!907791 (is-Cons!31978 acc!759))))

(assert (=> d!146125 (= (contains!9547 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600923)))

(declare-fun b!1363973 () Bool)

(declare-fun e!773489 () Bool)

(assert (=> b!1363973 (= e!773490 e!773489)))

(declare-fun res!907790 () Bool)

(assert (=> b!1363973 (=> res!907790 e!773489)))

(assert (=> b!1363973 (= res!907790 (= (h!33187 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1363974 () Bool)

(assert (=> b!1363974 (= e!773489 (contains!9547 (t!46680 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146125 res!907791) b!1363973))

(assert (= (and b!1363973 (not res!907790)) b!1363974))

(declare-fun m!1248721 () Bool)

(assert (=> d!146125 m!1248721))

(declare-fun m!1248723 () Bool)

(assert (=> d!146125 m!1248723))

(declare-fun m!1248725 () Bool)

(assert (=> b!1363974 m!1248725))

(assert (=> b!1363792 d!146125))

(declare-fun d!146131 () Bool)

(assert (=> d!146131 (= (validKeyInArray!0 (select (arr!44761 a!3742) from!3120)) (and (not (= (select (arr!44761 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44761 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363791 d!146131))

(declare-fun d!146133 () Bool)

(assert (=> d!146133 (= (array_inv!33706 a!3742) (bvsge (size!45312 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115118 d!146133))

(declare-fun b!1363977 () Bool)

(declare-fun e!773494 () Bool)

(declare-fun call!65425 () Bool)

(assert (=> b!1363977 (= e!773494 call!65425)))

(declare-fun d!146135 () Bool)

(declare-fun res!907796 () Bool)

(declare-fun e!773495 () Bool)

(assert (=> d!146135 (=> res!907796 e!773495)))

(assert (=> d!146135 (= res!907796 (bvsge from!3120 (size!45312 lt!600869)))))

(assert (=> d!146135 (= (arrayNoDuplicates!0 lt!600869 from!3120 acc!759) e!773495)))

(declare-fun b!1363978 () Bool)

(declare-fun e!773496 () Bool)

(assert (=> b!1363978 (= e!773495 e!773496)))

(declare-fun res!907794 () Bool)

(assert (=> b!1363978 (=> (not res!907794) (not e!773496))))

(declare-fun e!773493 () Bool)

(assert (=> b!1363978 (= res!907794 (not e!773493))))

(declare-fun res!907795 () Bool)

(assert (=> b!1363978 (=> (not res!907795) (not e!773493))))

(assert (=> b!1363978 (= res!907795 (validKeyInArray!0 (select (arr!44761 lt!600869) from!3120)))))

(declare-fun b!1363979 () Bool)

(assert (=> b!1363979 (= e!773496 e!773494)))

(declare-fun c!127534 () Bool)

(assert (=> b!1363979 (= c!127534 (validKeyInArray!0 (select (arr!44761 lt!600869) from!3120)))))

(declare-fun b!1363980 () Bool)

(assert (=> b!1363980 (= e!773494 call!65425)))

(declare-fun b!1363981 () Bool)

(assert (=> b!1363981 (= e!773493 (contains!9547 acc!759 (select (arr!44761 lt!600869) from!3120)))))

(declare-fun bm!65422 () Bool)

(assert (=> bm!65422 (= call!65425 (arrayNoDuplicates!0 lt!600869 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127534 (Cons!31978 (select (arr!44761 lt!600869) from!3120) acc!759) acc!759)))))

(assert (= (and d!146135 (not res!907796)) b!1363978))

(assert (= (and b!1363978 res!907795) b!1363981))

(assert (= (and b!1363978 res!907794) b!1363979))

(assert (= (and b!1363979 c!127534) b!1363980))

(assert (= (and b!1363979 (not c!127534)) b!1363977))

(assert (= (or b!1363980 b!1363977) bm!65422))

(declare-fun m!1248729 () Bool)

(assert (=> b!1363978 m!1248729))

(assert (=> b!1363978 m!1248729))

(declare-fun m!1248731 () Bool)

(assert (=> b!1363978 m!1248731))

(assert (=> b!1363979 m!1248729))

(assert (=> b!1363979 m!1248729))

(assert (=> b!1363979 m!1248731))

(assert (=> b!1363981 m!1248729))

(assert (=> b!1363981 m!1248729))

(declare-fun m!1248733 () Bool)

(assert (=> b!1363981 m!1248733))

(assert (=> bm!65422 m!1248729))

(declare-fun m!1248735 () Bool)

(assert (=> bm!65422 m!1248735))

(assert (=> b!1363784 d!146135))

(declare-fun b!1363983 () Bool)

(declare-fun e!773499 () Bool)

(declare-fun call!65426 () Bool)

(assert (=> b!1363983 (= e!773499 call!65426)))

(declare-fun d!146139 () Bool)

(declare-fun res!907800 () Bool)

(declare-fun e!773500 () Bool)

(assert (=> d!146139 (=> res!907800 e!773500)))

(assert (=> d!146139 (= res!907800 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45312 lt!600869)))))

(assert (=> d!146139 (= (arrayNoDuplicates!0 lt!600869 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!773500)))

(declare-fun b!1363984 () Bool)

(declare-fun e!773501 () Bool)

(assert (=> b!1363984 (= e!773500 e!773501)))

(declare-fun res!907798 () Bool)

(assert (=> b!1363984 (=> (not res!907798) (not e!773501))))

(declare-fun e!773498 () Bool)

(assert (=> b!1363984 (= res!907798 (not e!773498))))

(declare-fun res!907799 () Bool)

(assert (=> b!1363984 (=> (not res!907799) (not e!773498))))

(assert (=> b!1363984 (= res!907799 (validKeyInArray!0 (select (arr!44761 lt!600869) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363985 () Bool)

(assert (=> b!1363985 (= e!773501 e!773499)))

(declare-fun c!127535 () Bool)

(assert (=> b!1363985 (= c!127535 (validKeyInArray!0 (select (arr!44761 lt!600869) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363986 () Bool)

(assert (=> b!1363986 (= e!773499 call!65426)))

(declare-fun b!1363987 () Bool)

(assert (=> b!1363987 (= e!773498 (contains!9547 acc!759 (select (arr!44761 lt!600869) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65423 () Bool)

(assert (=> bm!65423 (= call!65426 (arrayNoDuplicates!0 lt!600869 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127535 (Cons!31978 (select (arr!44761 lt!600869) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!146139 (not res!907800)) b!1363984))

(assert (= (and b!1363984 res!907799) b!1363987))

(assert (= (and b!1363984 res!907798) b!1363985))

(assert (= (and b!1363985 c!127535) b!1363986))

(assert (= (and b!1363985 (not c!127535)) b!1363983))

(assert (= (or b!1363986 b!1363983) bm!65423))

(declare-fun m!1248741 () Bool)

(assert (=> b!1363984 m!1248741))

(assert (=> b!1363984 m!1248741))

(declare-fun m!1248743 () Bool)

