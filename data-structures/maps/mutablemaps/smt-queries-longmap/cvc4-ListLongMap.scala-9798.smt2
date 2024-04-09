; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116394 () Bool)

(assert start!116394)

(declare-fun b!1373331 () Bool)

(declare-fun res!916700 () Bool)

(declare-fun e!777943 () Bool)

(assert (=> b!1373331 (=> (not res!916700) (not e!777943))))

(declare-datatypes ((array!93095 0))(
  ( (array!93096 (arr!44952 (Array (_ BitVec 32) (_ BitVec 64))) (size!45503 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93095)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373331 (= res!916700 (not (validKeyInArray!0 (select (arr!44952 a!3861) from!3239))))))

(declare-fun b!1373332 () Bool)

(declare-fun res!916699 () Bool)

(declare-fun e!777941 () Bool)

(assert (=> b!1373332 (=> (not res!916699) (not e!777941))))

(declare-datatypes ((List!32200 0))(
  ( (Nil!32197) (Cons!32196 (h!33405 (_ BitVec 64)) (t!46901 List!32200)) )
))
(declare-fun newAcc!98 () List!32200)

(declare-fun acc!866 () List!32200)

(declare-fun subseq!1129 (List!32200 List!32200) Bool)

(assert (=> b!1373332 (= res!916699 (subseq!1129 newAcc!98 acc!866))))

(declare-fun b!1373333 () Bool)

(declare-fun res!916705 () Bool)

(assert (=> b!1373333 (=> (not res!916705) (not e!777941))))

(declare-fun noDuplicate!2617 (List!32200) Bool)

(assert (=> b!1373333 (= res!916705 (noDuplicate!2617 acc!866))))

(declare-fun b!1373334 () Bool)

(declare-fun res!916702 () Bool)

(assert (=> b!1373334 (=> (not res!916702) (not e!777943))))

(assert (=> b!1373334 (= res!916702 (bvslt from!3239 (size!45503 a!3861)))))

(declare-fun b!1373335 () Bool)

(declare-fun res!916698 () Bool)

(assert (=> b!1373335 (=> (not res!916698) (not e!777941))))

(declare-fun contains!9738 (List!32200 (_ BitVec 64)) Bool)

(assert (=> b!1373335 (= res!916698 (not (contains!9738 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916703 () Bool)

(assert (=> start!116394 (=> (not res!916703) (not e!777941))))

(assert (=> start!116394 (= res!916703 (and (bvslt (size!45503 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45503 a!3861))))))

(assert (=> start!116394 e!777941))

(declare-fun array_inv!33897 (array!93095) Bool)

(assert (=> start!116394 (array_inv!33897 a!3861)))

(assert (=> start!116394 true))

(declare-fun b!1373336 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93095 (_ BitVec 32) List!32200) Bool)

(assert (=> b!1373336 (= e!777943 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(assert (=> b!1373336 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45339 0))(
  ( (Unit!45340) )
))
(declare-fun lt!602984 () Unit!45339)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93095 List!32200 List!32200 (_ BitVec 32)) Unit!45339)

(assert (=> b!1373336 (= lt!602984 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1373337 () Bool)

(declare-fun res!916707 () Bool)

(assert (=> b!1373337 (=> (not res!916707) (not e!777941))))

(assert (=> b!1373337 (= res!916707 (not (contains!9738 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373338 () Bool)

(declare-fun res!916697 () Bool)

(assert (=> b!1373338 (=> (not res!916697) (not e!777943))))

(assert (=> b!1373338 (= res!916697 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1373339 () Bool)

(declare-fun res!916704 () Bool)

(assert (=> b!1373339 (=> (not res!916704) (not e!777941))))

(assert (=> b!1373339 (= res!916704 (not (contains!9738 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373340 () Bool)

(declare-fun res!916706 () Bool)

(assert (=> b!1373340 (=> (not res!916706) (not e!777941))))

(assert (=> b!1373340 (= res!916706 (not (contains!9738 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373341 () Bool)

(declare-fun res!916696 () Bool)

(assert (=> b!1373341 (=> (not res!916696) (not e!777943))))

(assert (=> b!1373341 (= res!916696 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1373342 () Bool)

(assert (=> b!1373342 (= e!777941 e!777943)))

(declare-fun res!916701 () Bool)

(assert (=> b!1373342 (=> (not res!916701) (not e!777943))))

(assert (=> b!1373342 (= res!916701 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602983 () Unit!45339)

(declare-fun noDuplicateSubseq!316 (List!32200 List!32200) Unit!45339)

(assert (=> b!1373342 (= lt!602983 (noDuplicateSubseq!316 newAcc!98 acc!866))))

(assert (= (and start!116394 res!916703) b!1373333))

(assert (= (and b!1373333 res!916705) b!1373340))

(assert (= (and b!1373340 res!916706) b!1373339))

(assert (= (and b!1373339 res!916704) b!1373337))

(assert (= (and b!1373337 res!916707) b!1373335))

(assert (= (and b!1373335 res!916698) b!1373332))

(assert (= (and b!1373332 res!916699) b!1373342))

(assert (= (and b!1373342 res!916701) b!1373334))

(assert (= (and b!1373334 res!916702) b!1373331))

(assert (= (and b!1373331 res!916700) b!1373341))

(assert (= (and b!1373341 res!916696) b!1373338))

(assert (= (and b!1373338 res!916697) b!1373336))

(declare-fun m!1256617 () Bool)

(assert (=> b!1373333 m!1256617))

(declare-fun m!1256619 () Bool)

(assert (=> b!1373335 m!1256619))

(declare-fun m!1256621 () Bool)

(assert (=> b!1373342 m!1256621))

(declare-fun m!1256623 () Bool)

(assert (=> b!1373342 m!1256623))

(declare-fun m!1256625 () Bool)

(assert (=> b!1373339 m!1256625))

(declare-fun m!1256627 () Bool)

(assert (=> b!1373331 m!1256627))

(assert (=> b!1373331 m!1256627))

(declare-fun m!1256629 () Bool)

(assert (=> b!1373331 m!1256629))

(declare-fun m!1256631 () Bool)

(assert (=> b!1373340 m!1256631))

(declare-fun m!1256633 () Bool)

(assert (=> b!1373332 m!1256633))

(declare-fun m!1256635 () Bool)

(assert (=> b!1373338 m!1256635))

(declare-fun m!1256637 () Bool)

(assert (=> start!116394 m!1256637))

(declare-fun m!1256639 () Bool)

(assert (=> b!1373337 m!1256639))

(declare-fun m!1256641 () Bool)

(assert (=> b!1373336 m!1256641))

(declare-fun m!1256643 () Bool)

(assert (=> b!1373336 m!1256643))

(declare-fun m!1256645 () Bool)

(assert (=> b!1373336 m!1256645))

(push 1)

(assert (not b!1373342))

(assert (not b!1373332))

(assert (not b!1373331))

(assert (not b!1373333))

(assert (not b!1373336))

(assert (not b!1373337))

(assert (not b!1373339))

(assert (not b!1373340))

(assert (not b!1373335))

(assert (not b!1373338))

(assert (not start!116394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147877 () Bool)

(declare-fun lt!602987 () Bool)

(declare-fun content!756 (List!32200) (Set (_ BitVec 64)))

(assert (=> d!147877 (= lt!602987 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!756 acc!866)))))

(declare-fun e!777961 () Bool)

(assert (=> d!147877 (= lt!602987 e!777961)))

(declare-fun res!916722 () Bool)

(assert (=> d!147877 (=> (not res!916722) (not e!777961))))

(assert (=> d!147877 (= res!916722 (is-Cons!32196 acc!866))))

(assert (=> d!147877 (= (contains!9738 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602987)))

(declare-fun b!1373362 () Bool)

(declare-fun e!777960 () Bool)

(assert (=> b!1373362 (= e!777961 e!777960)))

(declare-fun res!916721 () Bool)

(assert (=> b!1373362 (=> res!916721 e!777960)))

(assert (=> b!1373362 (= res!916721 (= (h!33405 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373363 () Bool)

(assert (=> b!1373363 (= e!777960 (contains!9738 (t!46901 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147877 res!916722) b!1373362))

(assert (= (and b!1373362 (not res!916721)) b!1373363))

(declare-fun m!1256655 () Bool)

(assert (=> d!147877 m!1256655))

(declare-fun m!1256657 () Bool)

(assert (=> d!147877 m!1256657))

(declare-fun m!1256659 () Bool)

(assert (=> b!1373363 m!1256659))

(assert (=> b!1373339 d!147877))

(declare-fun b!1373405 () Bool)

(declare-fun e!777997 () Bool)

(assert (=> b!1373405 (= e!777997 (contains!9738 acc!866 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373406 () Bool)

(declare-fun e!777996 () Bool)

(declare-fun call!65619 () Bool)

(assert (=> b!1373406 (= e!777996 call!65619)))

(declare-fun b!1373407 () Bool)

(declare-fun e!777999 () Bool)

(declare-fun e!777998 () Bool)

(assert (=> b!1373407 (= e!777999 e!777998)))

(declare-fun res!916752 () Bool)

(assert (=> b!1373407 (=> (not res!916752) (not e!777998))))

(assert (=> b!1373407 (= res!916752 (not e!777997))))

(declare-fun res!916750 () Bool)

(assert (=> b!1373407 (=> (not res!916750) (not e!777997))))

(assert (=> b!1373407 (= res!916750 (validKeyInArray!0 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun c!127770 () Bool)

(declare-fun bm!65616 () Bool)

(assert (=> bm!65616 (= call!65619 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127770 (Cons!32196 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(declare-fun b!1373408 () Bool)

(assert (=> b!1373408 (= e!777996 call!65619)))

(declare-fun d!147881 () Bool)

(declare-fun res!916751 () Bool)

(assert (=> d!147881 (=> res!916751 e!777999)))

(assert (=> d!147881 (= res!916751 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45503 a!3861)))))

(assert (=> d!147881 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!777999)))

(declare-fun b!1373409 () Bool)

(assert (=> b!1373409 (= e!777998 e!777996)))

(assert (=> b!1373409 (= c!127770 (validKeyInArray!0 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!147881 (not res!916751)) b!1373407))

(assert (= (and b!1373407 res!916750) b!1373405))

(assert (= (and b!1373407 res!916752) b!1373409))

(assert (= (and b!1373409 c!127770) b!1373408))

(assert (= (and b!1373409 (not c!127770)) b!1373406))

(assert (= (or b!1373408 b!1373406) bm!65616))

(declare-fun m!1256673 () Bool)

(assert (=> b!1373405 m!1256673))

(assert (=> b!1373405 m!1256673))

(declare-fun m!1256675 () Bool)

(assert (=> b!1373405 m!1256675))

(assert (=> b!1373407 m!1256673))

(assert (=> b!1373407 m!1256673))

(declare-fun m!1256677 () Bool)

(assert (=> b!1373407 m!1256677))

(assert (=> bm!65616 m!1256673))

(declare-fun m!1256683 () Bool)

(assert (=> bm!65616 m!1256683))

(assert (=> b!1373409 m!1256673))

(assert (=> b!1373409 m!1256673))

(assert (=> b!1373409 m!1256677))

(assert (=> b!1373338 d!147881))

(declare-fun d!147889 () Bool)

(declare-fun lt!602991 () Bool)

(assert (=> d!147889 (= lt!602991 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!756 newAcc!98)))))

(declare-fun e!778001 () Bool)

(assert (=> d!147889 (= lt!602991 e!778001)))

(declare-fun res!916754 () Bool)

(assert (=> d!147889 (=> (not res!916754) (not e!778001))))

(assert (=> d!147889 (= res!916754 (is-Cons!32196 newAcc!98))))

(assert (=> d!147889 (= (contains!9738 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602991)))

(declare-fun b!1373410 () Bool)

(declare-fun e!778000 () Bool)

(assert (=> b!1373410 (= e!778001 e!778000)))

(declare-fun res!916753 () Bool)

(assert (=> b!1373410 (=> res!916753 e!778000)))

(assert (=> b!1373410 (= res!916753 (= (h!33405 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373411 () Bool)

(assert (=> b!1373411 (= e!778000 (contains!9738 (t!46901 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147889 res!916754) b!1373410))

(assert (= (and b!1373410 (not res!916753)) b!1373411))

(declare-fun m!1256687 () Bool)

(assert (=> d!147889 m!1256687))

(declare-fun m!1256689 () Bool)

(assert (=> d!147889 m!1256689))

(declare-fun m!1256691 () Bool)

(assert (=> b!1373411 m!1256691))

(assert (=> b!1373337 d!147889))

(declare-fun d!147893 () Bool)

(assert (=> d!147893 (= (validKeyInArray!0 (select (arr!44952 a!3861) from!3239)) (and (not (= (select (arr!44952 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44952 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1373331 d!147893))

(declare-fun e!778007 () Bool)

(declare-fun b!1373417 () Bool)

(assert (=> b!1373417 (= e!778007 (contains!9738 acc!866 (select (arr!44952 a!3861) from!3239)))))

(declare-fun b!1373418 () Bool)

(declare-fun e!778006 () Bool)

(declare-fun call!65621 () Bool)

(assert (=> b!1373418 (= e!778006 call!65621)))

(declare-fun b!1373419 () Bool)

(declare-fun e!778009 () Bool)

(declare-fun e!778008 () Bool)

(assert (=> b!1373419 (= e!778009 e!778008)))

(declare-fun res!916760 () Bool)

(assert (=> b!1373419 (=> (not res!916760) (not e!778008))))

(assert (=> b!1373419 (= res!916760 (not e!778007))))

(declare-fun res!916758 () Bool)

(assert (=> b!1373419 (=> (not res!916758) (not e!778007))))

(assert (=> b!1373419 (= res!916758 (validKeyInArray!0 (select (arr!44952 a!3861) from!3239)))))

(declare-fun c!127772 () Bool)

(declare-fun bm!65618 () Bool)

(assert (=> bm!65618 (= call!65621 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127772 (Cons!32196 (select (arr!44952 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1373420 () Bool)

(assert (=> b!1373420 (= e!778006 call!65621)))

(declare-fun d!147895 () Bool)

(declare-fun res!916759 () Bool)

(assert (=> d!147895 (=> res!916759 e!778009)))

(assert (=> d!147895 (= res!916759 (bvsge from!3239 (size!45503 a!3861)))))

(assert (=> d!147895 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778009)))

(declare-fun b!1373421 () Bool)

(assert (=> b!1373421 (= e!778008 e!778006)))

(assert (=> b!1373421 (= c!127772 (validKeyInArray!0 (select (arr!44952 a!3861) from!3239)))))

(assert (= (and d!147895 (not res!916759)) b!1373419))

(assert (= (and b!1373419 res!916758) b!1373417))

(assert (= (and b!1373419 res!916760) b!1373421))

(assert (= (and b!1373421 c!127772) b!1373420))

(assert (= (and b!1373421 (not c!127772)) b!1373418))

(assert (= (or b!1373420 b!1373418) bm!65618))

(assert (=> b!1373417 m!1256627))

(assert (=> b!1373417 m!1256627))

(declare-fun m!1256701 () Bool)

(assert (=> b!1373417 m!1256701))

(assert (=> b!1373419 m!1256627))

(assert (=> b!1373419 m!1256627))

(assert (=> b!1373419 m!1256629))

(assert (=> bm!65618 m!1256627))

(declare-fun m!1256703 () Bool)

(assert (=> bm!65618 m!1256703))

(assert (=> b!1373421 m!1256627))

(assert (=> b!1373421 m!1256627))

(assert (=> b!1373421 m!1256629))

(assert (=> b!1373342 d!147895))

(declare-fun d!147899 () Bool)

(assert (=> d!147899 (noDuplicate!2617 newAcc!98)))

(declare-fun lt!602999 () Unit!45339)

(declare-fun choose!2032 (List!32200 List!32200) Unit!45339)

(assert (=> d!147899 (= lt!602999 (choose!2032 newAcc!98 acc!866))))

(declare-fun e!778012 () Bool)

(assert (=> d!147899 e!778012))

(declare-fun res!916763 () Bool)

(assert (=> d!147899 (=> (not res!916763) (not e!778012))))

(assert (=> d!147899 (= res!916763 (subseq!1129 newAcc!98 acc!866))))

(assert (=> d!147899 (= (noDuplicateSubseq!316 newAcc!98 acc!866) lt!602999)))

(declare-fun b!1373424 () Bool)

(assert (=> b!1373424 (= e!778012 (noDuplicate!2617 acc!866))))

(assert (= (and d!147899 res!916763) b!1373424))

(declare-fun m!1256707 () Bool)

(assert (=> d!147899 m!1256707))

(declare-fun m!1256709 () Bool)

(assert (=> d!147899 m!1256709))

(assert (=> d!147899 m!1256633))

(assert (=> b!1373424 m!1256617))

(assert (=> b!1373342 d!147899))

(declare-fun d!147903 () Bool)

(assert (=> d!147903 (= (array_inv!33897 a!3861) (bvsge (size!45503 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116394 d!147903))

(declare-fun d!147907 () Bool)

(declare-fun lt!603001 () Bool)

(assert (=> d!147907 (= lt!603001 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!756 acc!866)))))

(declare-fun e!778018 () Bool)

(assert (=> d!147907 (= lt!603001 e!778018)))

(declare-fun res!916769 () Bool)

(assert (=> d!147907 (=> (not res!916769) (not e!778018))))

(assert (=> d!147907 (= res!916769 (is-Cons!32196 acc!866))))

(assert (=> d!147907 (= (contains!9738 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603001)))

(declare-fun b!1373429 () Bool)

(declare-fun e!778017 () Bool)

(assert (=> b!1373429 (= e!778018 e!778017)))

(declare-fun res!916768 () Bool)

(assert (=> b!1373429 (=> res!916768 e!778017)))

(assert (=> b!1373429 (= res!916768 (= (h!33405 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373430 () Bool)

(assert (=> b!1373430 (= e!778017 (contains!9738 (t!46901 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147907 res!916769) b!1373429))

(assert (= (and b!1373429 (not res!916768)) b!1373430))

(assert (=> d!147907 m!1256655))

(declare-fun m!1256713 () Bool)

(assert (=> d!147907 m!1256713))

(declare-fun m!1256715 () Bool)

(assert (=> b!1373430 m!1256715))

(assert (=> b!1373340 d!147907))

(declare-fun d!147909 () Bool)

(declare-fun res!916780 () Bool)

(declare-fun e!778029 () Bool)

(assert (=> d!147909 (=> res!916780 e!778029)))

(assert (=> d!147909 (= res!916780 (is-Nil!32197 acc!866))))

(assert (=> d!147909 (= (noDuplicate!2617 acc!866) e!778029)))

(declare-fun b!1373441 () Bool)

(declare-fun e!778030 () Bool)

(assert (=> b!1373441 (= e!778029 e!778030)))

(declare-fun res!916781 () Bool)

(assert (=> b!1373441 (=> (not res!916781) (not e!778030))))

(assert (=> b!1373441 (= res!916781 (not (contains!9738 (t!46901 acc!866) (h!33405 acc!866))))))

(declare-fun b!1373442 () Bool)

(assert (=> b!1373442 (= e!778030 (noDuplicate!2617 (t!46901 acc!866)))))

(assert (= (and d!147909 (not res!916780)) b!1373441))

(assert (= (and b!1373441 res!916781) b!1373442))

(declare-fun m!1256721 () Bool)

(assert (=> b!1373441 m!1256721))

(declare-fun m!1256723 () Bool)

(assert (=> b!1373442 m!1256723))

(assert (=> b!1373333 d!147909))

(declare-fun b!1373461 () Bool)

(declare-fun e!778048 () Bool)

(declare-fun e!778050 () Bool)

(assert (=> b!1373461 (= e!778048 e!778050)))

(declare-fun res!916799 () Bool)

(assert (=> b!1373461 (=> res!916799 e!778050)))

(declare-fun e!778049 () Bool)

(assert (=> b!1373461 (= res!916799 e!778049)))

(declare-fun res!916798 () Bool)

(assert (=> b!1373461 (=> (not res!916798) (not e!778049))))

(assert (=> b!1373461 (= res!916798 (= (h!33405 newAcc!98) (h!33405 acc!866)))))

(declare-fun b!1373463 () Bool)

(assert (=> b!1373463 (= e!778050 (subseq!1129 newAcc!98 (t!46901 acc!866)))))

(declare-fun d!147915 () Bool)

(declare-fun res!916797 () Bool)

(declare-fun e!778047 () Bool)

(assert (=> d!147915 (=> res!916797 e!778047)))

(assert (=> d!147915 (= res!916797 (is-Nil!32197 newAcc!98))))

(assert (=> d!147915 (= (subseq!1129 newAcc!98 acc!866) e!778047)))

(declare-fun b!1373462 () Bool)

(assert (=> b!1373462 (= e!778049 (subseq!1129 (t!46901 newAcc!98) (t!46901 acc!866)))))

(declare-fun b!1373460 () Bool)

(assert (=> b!1373460 (= e!778047 e!778048)))

(declare-fun res!916800 () Bool)

(assert (=> b!1373460 (=> (not res!916800) (not e!778048))))

(assert (=> b!1373460 (= res!916800 (is-Cons!32196 acc!866))))

(assert (= (and d!147915 (not res!916797)) b!1373460))

(assert (= (and b!1373460 res!916800) b!1373461))

(assert (= (and b!1373461 res!916798) b!1373462))

(assert (= (and b!1373461 (not res!916799)) b!1373463))

(declare-fun m!1256739 () Bool)

(assert (=> b!1373463 m!1256739))

(declare-fun m!1256741 () Bool)

(assert (=> b!1373462 m!1256741))

(assert (=> b!1373332 d!147915))

(declare-fun b!1373468 () Bool)

(declare-fun e!778058 () Bool)

(assert (=> b!1373468 (= e!778058 (contains!9738 newAcc!98 (select (arr!44952 a!3861) from!3239)))))

(declare-fun b!1373469 () Bool)

(declare-fun e!778057 () Bool)

(declare-fun call!65623 () Bool)

(assert (=> b!1373469 (= e!778057 call!65623)))

(declare-fun b!1373470 () Bool)

(declare-fun e!778061 () Bool)

(declare-fun e!778059 () Bool)

(assert (=> b!1373470 (= e!778061 e!778059)))

(declare-fun res!916809 () Bool)

(assert (=> b!1373470 (=> (not res!916809) (not e!778059))))

(assert (=> b!1373470 (= res!916809 (not e!778058))))

(declare-fun res!916807 () Bool)

(assert (=> b!1373470 (=> (not res!916807) (not e!778058))))

(assert (=> b!1373470 (= res!916807 (validKeyInArray!0 (select (arr!44952 a!3861) from!3239)))))

(declare-fun c!127774 () Bool)

(declare-fun bm!65620 () Bool)

(assert (=> bm!65620 (= call!65623 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127774 (Cons!32196 (select (arr!44952 a!3861) from!3239) newAcc!98) newAcc!98)))))

(declare-fun b!1373471 () Bool)

(assert (=> b!1373471 (= e!778057 call!65623)))

(declare-fun d!147923 () Bool)

(declare-fun res!916808 () Bool)

(assert (=> d!147923 (=> res!916808 e!778061)))

(assert (=> d!147923 (= res!916808 (bvsge from!3239 (size!45503 a!3861)))))

(assert (=> d!147923 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!778061)))

(declare-fun b!1373472 () Bool)

(assert (=> b!1373472 (= e!778059 e!778057)))

(assert (=> b!1373472 (= c!127774 (validKeyInArray!0 (select (arr!44952 a!3861) from!3239)))))

(assert (= (and d!147923 (not res!916808)) b!1373470))

(assert (= (and b!1373470 res!916807) b!1373468))

(assert (= (and b!1373470 res!916809) b!1373472))

(assert (= (and b!1373472 c!127774) b!1373471))

(assert (= (and b!1373472 (not c!127774)) b!1373469))

(assert (= (or b!1373471 b!1373469) bm!65620))

(assert (=> b!1373468 m!1256627))

(assert (=> b!1373468 m!1256627))

(declare-fun m!1256743 () Bool)

(assert (=> b!1373468 m!1256743))

(assert (=> b!1373470 m!1256627))

(assert (=> b!1373470 m!1256627))

(assert (=> b!1373470 m!1256629))

(assert (=> bm!65620 m!1256627))

(declare-fun m!1256745 () Bool)

(assert (=> bm!65620 m!1256745))

(assert (=> b!1373472 m!1256627))

(assert (=> b!1373472 m!1256627))

(assert (=> b!1373472 m!1256629))

(assert (=> b!1373336 d!147923))

(declare-fun e!778066 () Bool)

(declare-fun b!1373479 () Bool)

(assert (=> b!1373479 (= e!778066 (contains!9738 newAcc!98 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373480 () Bool)

(declare-fun e!778065 () Bool)

(declare-fun call!65624 () Bool)

(assert (=> b!1373480 (= e!778065 call!65624)))

(declare-fun b!1373481 () Bool)

(declare-fun e!778068 () Bool)

(declare-fun e!778067 () Bool)

(assert (=> b!1373481 (= e!778068 e!778067)))

(declare-fun res!916816 () Bool)

(assert (=> b!1373481 (=> (not res!916816) (not e!778067))))

(assert (=> b!1373481 (= res!916816 (not e!778066))))

(declare-fun res!916814 () Bool)

(assert (=> b!1373481 (=> (not res!916814) (not e!778066))))

(assert (=> b!1373481 (= res!916814 (validKeyInArray!0 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65621 () Bool)

(declare-fun c!127775 () Bool)

(assert (=> bm!65621 (= call!65624 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127775 (Cons!32196 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(declare-fun b!1373482 () Bool)

(assert (=> b!1373482 (= e!778065 call!65624)))

(declare-fun d!147925 () Bool)

(declare-fun res!916815 () Bool)

(assert (=> d!147925 (=> res!916815 e!778068)))

(assert (=> d!147925 (= res!916815 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45503 a!3861)))))

(assert (=> d!147925 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98) e!778068)))

(declare-fun b!1373483 () Bool)

(assert (=> b!1373483 (= e!778067 e!778065)))

(assert (=> b!1373483 (= c!127775 (validKeyInArray!0 (select (arr!44952 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!147925 (not res!916815)) b!1373481))

(assert (= (and b!1373481 res!916814) b!1373479))

(assert (= (and b!1373481 res!916816) b!1373483))

(assert (= (and b!1373483 c!127775) b!1373482))

(assert (= (and b!1373483 (not c!127775)) b!1373480))

(assert (= (or b!1373482 b!1373480) bm!65621))

(assert (=> b!1373479 m!1256673))

(assert (=> b!1373479 m!1256673))

(declare-fun m!1256747 () Bool)

(assert (=> b!1373479 m!1256747))

(assert (=> b!1373481 m!1256673))

(assert (=> b!1373481 m!1256673))

(assert (=> b!1373481 m!1256677))

(assert (=> bm!65621 m!1256673))

(declare-fun m!1256749 () Bool)

(assert (=> bm!65621 m!1256749))

(assert (=> b!1373483 m!1256673))

(assert (=> b!1373483 m!1256673))

(assert (=> b!1373483 m!1256677))

(assert (=> b!1373336 d!147925))

(declare-fun d!147927 () Bool)

(assert (=> d!147927 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!603010 () Unit!45339)

(declare-fun choose!80 (array!93095 List!32200 List!32200 (_ BitVec 32)) Unit!45339)

(assert (=> d!147927 (= lt!603010 (choose!80 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147927 (bvslt (size!45503 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147927 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)) lt!603010)))

(declare-fun bs!39361 () Bool)

(assert (= bs!39361 d!147927))

(assert (=> bs!39361 m!1256643))

(declare-fun m!1256767 () Bool)

