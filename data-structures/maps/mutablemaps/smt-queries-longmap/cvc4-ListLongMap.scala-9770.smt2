; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115782 () Bool)

(assert start!115782)

(declare-fun b!1368765 () Bool)

(declare-fun res!912403 () Bool)

(declare-fun e!775417 () Bool)

(assert (=> b!1368765 (=> (not res!912403) (not e!775417))))

(declare-datatypes ((List!32116 0))(
  ( (Nil!32113) (Cons!32112 (h!33321 (_ BitVec 64)) (t!46817 List!32116)) )
))
(declare-fun newAcc!98 () List!32116)

(declare-fun contains!9654 (List!32116 (_ BitVec 64)) Bool)

(assert (=> b!1368765 (= res!912403 (not (contains!9654 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368766 () Bool)

(declare-fun res!912396 () Bool)

(assert (=> b!1368766 (=> (not res!912396) (not e!775417))))

(assert (=> b!1368766 (= res!912396 (not (contains!9654 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368767 () Bool)

(declare-fun res!912400 () Bool)

(declare-fun e!775416 () Bool)

(assert (=> b!1368767 (=> (not res!912400) (not e!775416))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368767 (= res!912400 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368769 () Bool)

(assert (=> b!1368769 (= e!775417 e!775416)))

(declare-fun res!912399 () Bool)

(assert (=> b!1368769 (=> (not res!912399) (not e!775416))))

(declare-datatypes ((array!92897 0))(
  ( (array!92898 (arr!44868 (Array (_ BitVec 32) (_ BitVec 64))) (size!45419 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92897)

(declare-fun acc!866 () List!32116)

(declare-fun arrayNoDuplicates!0 (array!92897 (_ BitVec 32) List!32116) Bool)

(assert (=> b!1368769 (= res!912399 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45171 0))(
  ( (Unit!45172) )
))
(declare-fun lt!602072 () Unit!45171)

(declare-fun noDuplicateSubseq!232 (List!32116 List!32116) Unit!45171)

(assert (=> b!1368769 (= lt!602072 (noDuplicateSubseq!232 newAcc!98 acc!866))))

(declare-fun b!1368770 () Bool)

(declare-fun res!912401 () Bool)

(assert (=> b!1368770 (=> (not res!912401) (not e!775417))))

(declare-fun subseq!1045 (List!32116 List!32116) Bool)

(assert (=> b!1368770 (= res!912401 (subseq!1045 newAcc!98 acc!866))))

(declare-fun b!1368771 () Bool)

(declare-fun res!912402 () Bool)

(assert (=> b!1368771 (=> (not res!912402) (not e!775417))))

(declare-fun noDuplicate!2533 (List!32116) Bool)

(assert (=> b!1368771 (= res!912402 (noDuplicate!2533 acc!866))))

(declare-fun b!1368772 () Bool)

(declare-fun res!912404 () Bool)

(assert (=> b!1368772 (=> (not res!912404) (not e!775416))))

(assert (=> b!1368772 (= res!912404 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368773 () Bool)

(declare-fun res!912394 () Bool)

(assert (=> b!1368773 (=> (not res!912394) (not e!775417))))

(assert (=> b!1368773 (= res!912394 (not (contains!9654 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368774 () Bool)

(assert (=> b!1368774 (= e!775416 (not (noDuplicate!2533 newAcc!98)))))

(assert (=> b!1368774 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602071 () Unit!45171)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92897 List!32116 List!32116 (_ BitVec 32)) Unit!45171)

(assert (=> b!1368774 (= lt!602071 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368768 () Bool)

(declare-fun res!912395 () Bool)

(assert (=> b!1368768 (=> (not res!912395) (not e!775416))))

(assert (=> b!1368768 (= res!912395 (bvslt from!3239 (size!45419 a!3861)))))

(declare-fun res!912398 () Bool)

(assert (=> start!115782 (=> (not res!912398) (not e!775417))))

(assert (=> start!115782 (= res!912398 (and (bvslt (size!45419 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45419 a!3861))))))

(assert (=> start!115782 e!775417))

(declare-fun array_inv!33813 (array!92897) Bool)

(assert (=> start!115782 (array_inv!33813 a!3861)))

(assert (=> start!115782 true))

(declare-fun b!1368775 () Bool)

(declare-fun res!912405 () Bool)

(assert (=> b!1368775 (=> (not res!912405) (not e!775417))))

(assert (=> b!1368775 (= res!912405 (not (contains!9654 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368776 () Bool)

(declare-fun res!912397 () Bool)

(assert (=> b!1368776 (=> (not res!912397) (not e!775416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368776 (= res!912397 (not (validKeyInArray!0 (select (arr!44868 a!3861) from!3239))))))

(assert (= (and start!115782 res!912398) b!1368771))

(assert (= (and b!1368771 res!912402) b!1368775))

(assert (= (and b!1368775 res!912405) b!1368773))

(assert (= (and b!1368773 res!912394) b!1368766))

(assert (= (and b!1368766 res!912396) b!1368765))

(assert (= (and b!1368765 res!912403) b!1368770))

(assert (= (and b!1368770 res!912401) b!1368769))

(assert (= (and b!1368769 res!912399) b!1368768))

(assert (= (and b!1368768 res!912395) b!1368776))

(assert (= (and b!1368776 res!912397) b!1368767))

(assert (= (and b!1368767 res!912400) b!1368772))

(assert (= (and b!1368772 res!912404) b!1368774))

(declare-fun m!1252675 () Bool)

(assert (=> b!1368775 m!1252675))

(declare-fun m!1252677 () Bool)

(assert (=> b!1368765 m!1252677))

(declare-fun m!1252679 () Bool)

(assert (=> b!1368769 m!1252679))

(declare-fun m!1252681 () Bool)

(assert (=> b!1368769 m!1252681))

(declare-fun m!1252683 () Bool)

(assert (=> start!115782 m!1252683))

(declare-fun m!1252685 () Bool)

(assert (=> b!1368772 m!1252685))

(declare-fun m!1252687 () Bool)

(assert (=> b!1368766 m!1252687))

(declare-fun m!1252689 () Bool)

(assert (=> b!1368774 m!1252689))

(declare-fun m!1252691 () Bool)

(assert (=> b!1368774 m!1252691))

(declare-fun m!1252693 () Bool)

(assert (=> b!1368774 m!1252693))

(declare-fun m!1252695 () Bool)

(assert (=> b!1368773 m!1252695))

(declare-fun m!1252697 () Bool)

(assert (=> b!1368770 m!1252697))

(declare-fun m!1252699 () Bool)

(assert (=> b!1368776 m!1252699))

(assert (=> b!1368776 m!1252699))

(declare-fun m!1252701 () Bool)

(assert (=> b!1368776 m!1252701))

(declare-fun m!1252703 () Bool)

(assert (=> b!1368771 m!1252703))

(push 1)

(assert (not b!1368776))

(assert (not b!1368769))

(assert (not b!1368765))

(assert (not b!1368772))

(assert (not b!1368770))

(assert (not b!1368775))

(assert (not start!115782))

(assert (not b!1368773))

(assert (not b!1368766))

(assert (not b!1368771))

(assert (not b!1368774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1368829 () Bool)

(declare-fun e!775467 () Bool)

(declare-fun e!775464 () Bool)

(assert (=> b!1368829 (= e!775467 e!775464)))

(declare-fun res!912448 () Bool)

(assert (=> b!1368829 (=> (not res!912448) (not e!775464))))

(declare-fun e!775465 () Bool)

(assert (=> b!1368829 (= res!912448 (not e!775465))))

(declare-fun res!912446 () Bool)

(assert (=> b!1368829 (=> (not res!912446) (not e!775465))))

(assert (=> b!1368829 (= res!912446 (validKeyInArray!0 (select (arr!44868 a!3861) from!3239)))))

(declare-fun bm!65492 () Bool)

(declare-fun call!65495 () Bool)

(declare-fun c!127634 () Bool)

(assert (=> bm!65492 (= call!65495 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127634 (Cons!32112 (select (arr!44868 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1368830 () Bool)

(declare-fun e!775466 () Bool)

(assert (=> b!1368830 (= e!775466 call!65495)))

(declare-fun b!1368832 () Bool)

(assert (=> b!1368832 (= e!775464 e!775466)))

(assert (=> b!1368832 (= c!127634 (validKeyInArray!0 (select (arr!44868 a!3861) from!3239)))))

(declare-fun b!1368833 () Bool)

(assert (=> b!1368833 (= e!775466 call!65495)))

(declare-fun b!1368831 () Bool)

(assert (=> b!1368831 (= e!775465 (contains!9654 acc!866 (select (arr!44868 a!3861) from!3239)))))

(declare-fun d!146839 () Bool)

(declare-fun res!912447 () Bool)

(assert (=> d!146839 (=> res!912447 e!775467)))

(assert (=> d!146839 (= res!912447 (bvsge from!3239 (size!45419 a!3861)))))

(assert (=> d!146839 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775467)))

(assert (= (and d!146839 (not res!912447)) b!1368829))

(assert (= (and b!1368829 res!912446) b!1368831))

(assert (= (and b!1368829 res!912448) b!1368832))

(assert (= (and b!1368832 c!127634) b!1368830))

(assert (= (and b!1368832 (not c!127634)) b!1368833))

(assert (= (or b!1368830 b!1368833) bm!65492))

(assert (=> b!1368829 m!1252699))

(assert (=> b!1368829 m!1252699))

(assert (=> b!1368829 m!1252701))

(assert (=> bm!65492 m!1252699))

(declare-fun m!1252731 () Bool)

(assert (=> bm!65492 m!1252731))

(assert (=> b!1368832 m!1252699))

(assert (=> b!1368832 m!1252699))

(assert (=> b!1368832 m!1252701))

(assert (=> b!1368831 m!1252699))

(assert (=> b!1368831 m!1252699))

(declare-fun m!1252733 () Bool)

(assert (=> b!1368831 m!1252733))

(assert (=> b!1368769 d!146839))

(declare-fun d!146847 () Bool)

(assert (=> d!146847 (noDuplicate!2533 newAcc!98)))

(declare-fun lt!602082 () Unit!45171)

(declare-fun choose!2007 (List!32116 List!32116) Unit!45171)

(assert (=> d!146847 (= lt!602082 (choose!2007 newAcc!98 acc!866))))

(declare-fun e!775478 () Bool)

(assert (=> d!146847 e!775478))

(declare-fun res!912457 () Bool)

(assert (=> d!146847 (=> (not res!912457) (not e!775478))))

(assert (=> d!146847 (= res!912457 (subseq!1045 newAcc!98 acc!866))))

(assert (=> d!146847 (= (noDuplicateSubseq!232 newAcc!98 acc!866) lt!602082)))

(declare-fun b!1368846 () Bool)

(assert (=> b!1368846 (= e!775478 (noDuplicate!2533 acc!866))))

(assert (= (and d!146847 res!912457) b!1368846))

(assert (=> d!146847 m!1252689))

(declare-fun m!1252747 () Bool)

(assert (=> d!146847 m!1252747))

(assert (=> d!146847 m!1252697))

(assert (=> b!1368846 m!1252703))

(assert (=> b!1368769 d!146847))

(declare-fun d!146853 () Bool)

(assert (=> d!146853 (= (validKeyInArray!0 (select (arr!44868 a!3861) from!3239)) (and (not (= (select (arr!44868 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44868 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1368776 d!146853))

(declare-fun d!146855 () Bool)

(declare-fun lt!602091 () Bool)

(declare-fun content!728 (List!32116) (Set (_ BitVec 64)))

(assert (=> d!146855 (= lt!602091 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!728 newAcc!98)))))

(declare-fun e!775486 () Bool)

(assert (=> d!146855 (= lt!602091 e!775486)))

(declare-fun res!912465 () Bool)

(assert (=> d!146855 (=> (not res!912465) (not e!775486))))

(assert (=> d!146855 (= res!912465 (is-Cons!32112 newAcc!98))))

(assert (=> d!146855 (= (contains!9654 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602091)))

(declare-fun b!1368854 () Bool)

(declare-fun e!775487 () Bool)

(assert (=> b!1368854 (= e!775486 e!775487)))

(declare-fun res!912466 () Bool)

(assert (=> b!1368854 (=> res!912466 e!775487)))

(assert (=> b!1368854 (= res!912466 (= (h!33321 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368855 () Bool)

(assert (=> b!1368855 (= e!775487 (contains!9654 (t!46817 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146855 res!912465) b!1368854))

(assert (= (and b!1368854 (not res!912466)) b!1368855))

(declare-fun m!1252753 () Bool)

(assert (=> d!146855 m!1252753))

(declare-fun m!1252755 () Bool)

(assert (=> d!146855 m!1252755))

(declare-fun m!1252757 () Bool)

(assert (=> b!1368855 m!1252757))

(assert (=> b!1368766 d!146855))

(declare-fun d!146867 () Bool)

(declare-fun lt!602092 () Bool)

(assert (=> d!146867 (= lt!602092 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!728 acc!866)))))

(declare-fun e!775492 () Bool)

(assert (=> d!146867 (= lt!602092 e!775492)))

(declare-fun res!912471 () Bool)

(assert (=> d!146867 (=> (not res!912471) (not e!775492))))

(assert (=> d!146867 (= res!912471 (is-Cons!32112 acc!866))))

(assert (=> d!146867 (= (contains!9654 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602092)))

(declare-fun b!1368860 () Bool)

(declare-fun e!775493 () Bool)

(assert (=> b!1368860 (= e!775492 e!775493)))

(declare-fun res!912472 () Bool)

(assert (=> b!1368860 (=> res!912472 e!775493)))

(assert (=> b!1368860 (= res!912472 (= (h!33321 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368861 () Bool)

(assert (=> b!1368861 (= e!775493 (contains!9654 (t!46817 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146867 res!912471) b!1368860))

(assert (= (and b!1368860 (not res!912472)) b!1368861))

(declare-fun m!1252759 () Bool)

(assert (=> d!146867 m!1252759))

(declare-fun m!1252761 () Bool)

(assert (=> d!146867 m!1252761))

(declare-fun m!1252763 () Bool)

(assert (=> b!1368861 m!1252763))

(assert (=> b!1368775 d!146867))

(declare-fun d!146869 () Bool)

(declare-fun lt!602093 () Bool)

(assert (=> d!146869 (= lt!602093 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!728 newAcc!98)))))

(declare-fun e!775494 () Bool)

(assert (=> d!146869 (= lt!602093 e!775494)))

(declare-fun res!912473 () Bool)

(assert (=> d!146869 (=> (not res!912473) (not e!775494))))

(assert (=> d!146869 (= res!912473 (is-Cons!32112 newAcc!98))))

(assert (=> d!146869 (= (contains!9654 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602093)))

(declare-fun b!1368862 () Bool)

(declare-fun e!775495 () Bool)

(assert (=> b!1368862 (= e!775494 e!775495)))

(declare-fun res!912474 () Bool)

(assert (=> b!1368862 (=> res!912474 e!775495)))

(assert (=> b!1368862 (= res!912474 (= (h!33321 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368863 () Bool)

(assert (=> b!1368863 (= e!775495 (contains!9654 (t!46817 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146869 res!912473) b!1368862))

(assert (= (and b!1368862 (not res!912474)) b!1368863))

(assert (=> d!146869 m!1252753))

(declare-fun m!1252765 () Bool)

(assert (=> d!146869 m!1252765))

(declare-fun m!1252767 () Bool)

(assert (=> b!1368863 m!1252767))

(assert (=> b!1368765 d!146869))

(declare-fun d!146871 () Bool)

(assert (=> d!146871 (= (array_inv!33813 a!3861) (bvsge (size!45419 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115782 d!146871))

(declare-fun d!146875 () Bool)

(declare-fun res!912499 () Bool)

(declare-fun e!775522 () Bool)

(assert (=> d!146875 (=> res!912499 e!775522)))

(assert (=> d!146875 (= res!912499 (is-Nil!32113 newAcc!98))))

(assert (=> d!146875 (= (noDuplicate!2533 newAcc!98) e!775522)))

(declare-fun b!1368892 () Bool)

(declare-fun e!775523 () Bool)

(assert (=> b!1368892 (= e!775522 e!775523)))

(declare-fun res!912500 () Bool)

(assert (=> b!1368892 (=> (not res!912500) (not e!775523))))

(assert (=> b!1368892 (= res!912500 (not (contains!9654 (t!46817 newAcc!98) (h!33321 newAcc!98))))))

(declare-fun b!1368893 () Bool)

(assert (=> b!1368893 (= e!775523 (noDuplicate!2533 (t!46817 newAcc!98)))))

(assert (= (and d!146875 (not res!912499)) b!1368892))

(assert (= (and b!1368892 res!912500) b!1368893))

(declare-fun m!1252785 () Bool)

(assert (=> b!1368892 m!1252785))

(declare-fun m!1252787 () Bool)

(assert (=> b!1368893 m!1252787))

(assert (=> b!1368774 d!146875))

(declare-fun b!1368894 () Bool)

(declare-fun e!775527 () Bool)

(declare-fun e!775524 () Bool)

(assert (=> b!1368894 (= e!775527 e!775524)))

(declare-fun res!912503 () Bool)

(assert (=> b!1368894 (=> (not res!912503) (not e!775524))))

(declare-fun e!775525 () Bool)

(assert (=> b!1368894 (= res!912503 (not e!775525))))

(declare-fun res!912501 () Bool)

(assert (=> b!1368894 (=> (not res!912501) (not e!775525))))

(assert (=> b!1368894 (= res!912501 (validKeyInArray!0 (select (arr!44868 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65497 () Bool)

(declare-fun c!127639 () Bool)

(declare-fun call!65500 () Bool)

(assert (=> bm!65497 (= call!65500 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127639 (Cons!32112 (select (arr!44868 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(declare-fun b!1368895 () Bool)

(declare-fun e!775526 () Bool)

(assert (=> b!1368895 (= e!775526 call!65500)))

(declare-fun b!1368897 () Bool)

(assert (=> b!1368897 (= e!775524 e!775526)))

(assert (=> b!1368897 (= c!127639 (validKeyInArray!0 (select (arr!44868 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368898 () Bool)

(assert (=> b!1368898 (= e!775526 call!65500)))

(declare-fun b!1368896 () Bool)

(assert (=> b!1368896 (= e!775525 (contains!9654 newAcc!98 (select (arr!44868 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!146881 () Bool)

(declare-fun res!912502 () Bool)

(assert (=> d!146881 (=> res!912502 e!775527)))

(assert (=> d!146881 (= res!912502 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45419 a!3861)))))

