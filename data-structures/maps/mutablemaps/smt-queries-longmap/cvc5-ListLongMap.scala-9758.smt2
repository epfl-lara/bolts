; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115664 () Bool)

(assert start!115664)

(declare-fun b!1367329 () Bool)

(declare-fun res!910981 () Bool)

(declare-fun e!774927 () Bool)

(assert (=> b!1367329 (=> (not res!910981) (not e!774927))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92818 0))(
  ( (array!92819 (arr!44830 (Array (_ BitVec 32) (_ BitVec 64))) (size!45381 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92818)

(assert (=> b!1367329 (= res!910981 (bvslt from!3239 (size!45381 a!3861)))))

(declare-fun b!1367330 () Bool)

(declare-fun res!910980 () Bool)

(declare-fun e!774926 () Bool)

(assert (=> b!1367330 (=> (not res!910980) (not e!774926))))

(declare-datatypes ((List!32078 0))(
  ( (Nil!32075) (Cons!32074 (h!33283 (_ BitVec 64)) (t!46779 List!32078)) )
))
(declare-fun acc!866 () List!32078)

(declare-fun contains!9616 (List!32078 (_ BitVec 64)) Bool)

(assert (=> b!1367330 (= res!910980 (not (contains!9616 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367331 () Bool)

(assert (=> b!1367331 (= e!774926 e!774927)))

(declare-fun res!910982 () Bool)

(assert (=> b!1367331 (=> (not res!910982) (not e!774927))))

(declare-fun arrayNoDuplicates!0 (array!92818 (_ BitVec 32) List!32078) Bool)

(assert (=> b!1367331 (= res!910982 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45095 0))(
  ( (Unit!45096) )
))
(declare-fun lt!601820 () Unit!45095)

(declare-fun newAcc!98 () List!32078)

(declare-fun noDuplicateSubseq!194 (List!32078 List!32078) Unit!45095)

(assert (=> b!1367331 (= lt!601820 (noDuplicateSubseq!194 newAcc!98 acc!866))))

(declare-fun b!1367332 () Bool)

(declare-fun res!910986 () Bool)

(assert (=> b!1367332 (=> (not res!910986) (not e!774926))))

(assert (=> b!1367332 (= res!910986 (not (contains!9616 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367333 () Bool)

(declare-fun res!910977 () Bool)

(assert (=> b!1367333 (=> (not res!910977) (not e!774926))))

(assert (=> b!1367333 (= res!910977 (not (contains!9616 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367334 () Bool)

(declare-fun noDuplicate!2495 (List!32078) Bool)

(assert (=> b!1367334 (= e!774927 (not (noDuplicate!2495 newAcc!98)))))

(declare-fun b!1367336 () Bool)

(declare-fun res!910979 () Bool)

(assert (=> b!1367336 (=> (not res!910979) (not e!774926))))

(assert (=> b!1367336 (= res!910979 (noDuplicate!2495 acc!866))))

(declare-fun b!1367337 () Bool)

(declare-fun res!910976 () Bool)

(assert (=> b!1367337 (=> (not res!910976) (not e!774927))))

(assert (=> b!1367337 (= res!910976 (contains!9616 acc!866 (select (arr!44830 a!3861) from!3239)))))

(declare-fun b!1367335 () Bool)

(declare-fun res!910984 () Bool)

(assert (=> b!1367335 (=> (not res!910984) (not e!774926))))

(declare-fun subseq!1007 (List!32078 List!32078) Bool)

(assert (=> b!1367335 (= res!910984 (subseq!1007 newAcc!98 acc!866))))

(declare-fun res!910983 () Bool)

(assert (=> start!115664 (=> (not res!910983) (not e!774926))))

(assert (=> start!115664 (= res!910983 (and (bvslt (size!45381 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45381 a!3861))))))

(assert (=> start!115664 e!774926))

(declare-fun array_inv!33775 (array!92818) Bool)

(assert (=> start!115664 (array_inv!33775 a!3861)))

(assert (=> start!115664 true))

(declare-fun b!1367338 () Bool)

(declare-fun res!910985 () Bool)

(assert (=> b!1367338 (=> (not res!910985) (not e!774926))))

(assert (=> b!1367338 (= res!910985 (not (contains!9616 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367339 () Bool)

(declare-fun res!910978 () Bool)

(assert (=> b!1367339 (=> (not res!910978) (not e!774927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367339 (= res!910978 (validKeyInArray!0 (select (arr!44830 a!3861) from!3239)))))

(assert (= (and start!115664 res!910983) b!1367336))

(assert (= (and b!1367336 res!910979) b!1367330))

(assert (= (and b!1367330 res!910980) b!1367338))

(assert (= (and b!1367338 res!910985) b!1367333))

(assert (= (and b!1367333 res!910977) b!1367332))

(assert (= (and b!1367332 res!910986) b!1367335))

(assert (= (and b!1367335 res!910984) b!1367331))

(assert (= (and b!1367331 res!910982) b!1367329))

(assert (= (and b!1367329 res!910981) b!1367339))

(assert (= (and b!1367339 res!910978) b!1367337))

(assert (= (and b!1367337 res!910976) b!1367334))

(declare-fun m!1251595 () Bool)

(assert (=> b!1367332 m!1251595))

(declare-fun m!1251597 () Bool)

(assert (=> b!1367330 m!1251597))

(declare-fun m!1251599 () Bool)

(assert (=> b!1367335 m!1251599))

(declare-fun m!1251601 () Bool)

(assert (=> b!1367337 m!1251601))

(assert (=> b!1367337 m!1251601))

(declare-fun m!1251603 () Bool)

(assert (=> b!1367337 m!1251603))

(declare-fun m!1251605 () Bool)

(assert (=> b!1367331 m!1251605))

(declare-fun m!1251607 () Bool)

(assert (=> b!1367331 m!1251607))

(assert (=> b!1367339 m!1251601))

(assert (=> b!1367339 m!1251601))

(declare-fun m!1251609 () Bool)

(assert (=> b!1367339 m!1251609))

(declare-fun m!1251611 () Bool)

(assert (=> b!1367334 m!1251611))

(declare-fun m!1251613 () Bool)

(assert (=> b!1367338 m!1251613))

(declare-fun m!1251615 () Bool)

(assert (=> b!1367336 m!1251615))

(declare-fun m!1251617 () Bool)

(assert (=> b!1367333 m!1251617))

(declare-fun m!1251619 () Bool)

(assert (=> start!115664 m!1251619))

(push 1)

(assert (not b!1367332))

(assert (not b!1367339))

(assert (not b!1367336))

(assert (not b!1367338))

(assert (not start!115664))

(assert (not b!1367335))

(assert (not b!1367331))

(assert (not b!1367334))

(assert (not b!1367337))

(assert (not b!1367330))

(assert (not b!1367333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1367433 () Bool)

(declare-fun e!774975 () Bool)

(declare-fun e!774973 () Bool)

(assert (=> b!1367433 (= e!774975 e!774973)))

(declare-fun res!911082 () Bool)

(assert (=> b!1367433 (=> res!911082 e!774973)))

(declare-fun e!774974 () Bool)

(assert (=> b!1367433 (= res!911082 e!774974)))

(declare-fun res!911079 () Bool)

(assert (=> b!1367433 (=> (not res!911079) (not e!774974))))

(assert (=> b!1367433 (= res!911079 (= (h!33283 newAcc!98) (h!33283 acc!866)))))

(declare-fun b!1367432 () Bool)

(declare-fun e!774976 () Bool)

(assert (=> b!1367432 (= e!774976 e!774975)))

(declare-fun res!911081 () Bool)

(assert (=> b!1367432 (=> (not res!911081) (not e!774975))))

(assert (=> b!1367432 (= res!911081 (is-Cons!32074 acc!866))))

(declare-fun d!146741 () Bool)

(declare-fun res!911080 () Bool)

(assert (=> d!146741 (=> res!911080 e!774976)))

(assert (=> d!146741 (= res!911080 (is-Nil!32075 newAcc!98))))

(assert (=> d!146741 (= (subseq!1007 newAcc!98 acc!866) e!774976)))

(declare-fun b!1367434 () Bool)

(assert (=> b!1367434 (= e!774974 (subseq!1007 (t!46779 newAcc!98) (t!46779 acc!866)))))

(declare-fun b!1367435 () Bool)

(assert (=> b!1367435 (= e!774973 (subseq!1007 newAcc!98 (t!46779 acc!866)))))

(assert (= (and d!146741 (not res!911080)) b!1367432))

(assert (= (and b!1367432 res!911081) b!1367433))

(assert (= (and b!1367433 res!911079) b!1367434))

(assert (= (and b!1367433 (not res!911082)) b!1367435))

(declare-fun m!1251693 () Bool)

(assert (=> b!1367434 m!1251693))

(declare-fun m!1251697 () Bool)

(assert (=> b!1367435 m!1251697))

(assert (=> b!1367335 d!146741))

(declare-fun d!146749 () Bool)

(declare-fun res!911099 () Bool)

(declare-fun e!774995 () Bool)

(assert (=> d!146749 (=> res!911099 e!774995)))

(assert (=> d!146749 (= res!911099 (is-Nil!32075 newAcc!98))))

(assert (=> d!146749 (= (noDuplicate!2495 newAcc!98) e!774995)))

(declare-fun b!1367456 () Bool)

(declare-fun e!774996 () Bool)

(assert (=> b!1367456 (= e!774995 e!774996)))

(declare-fun res!911100 () Bool)

(assert (=> b!1367456 (=> (not res!911100) (not e!774996))))

(assert (=> b!1367456 (= res!911100 (not (contains!9616 (t!46779 newAcc!98) (h!33283 newAcc!98))))))

(declare-fun b!1367457 () Bool)

(assert (=> b!1367457 (= e!774996 (noDuplicate!2495 (t!46779 newAcc!98)))))

(assert (= (and d!146749 (not res!911099)) b!1367456))

(assert (= (and b!1367456 res!911100) b!1367457))

(declare-fun m!1251709 () Bool)

(assert (=> b!1367456 m!1251709))

(declare-fun m!1251711 () Bool)

(assert (=> b!1367457 m!1251711))

(assert (=> b!1367334 d!146749))

(declare-fun e!775032 () Bool)

(declare-fun b!1367496 () Bool)

(assert (=> b!1367496 (= e!775032 (contains!9616 acc!866 (select (arr!44830 a!3861) from!3239)))))

(declare-fun bm!65482 () Bool)

(declare-fun call!65485 () Bool)

(declare-fun c!127624 () Bool)

(assert (=> bm!65482 (= call!65485 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127624 (Cons!32074 (select (arr!44830 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1367497 () Bool)

(declare-fun e!775033 () Bool)

(declare-fun e!775034 () Bool)

(assert (=> b!1367497 (= e!775033 e!775034)))

(assert (=> b!1367497 (= c!127624 (validKeyInArray!0 (select (arr!44830 a!3861) from!3239)))))

(declare-fun b!1367498 () Bool)

(assert (=> b!1367498 (= e!775034 call!65485)))

(declare-fun b!1367499 () Bool)

(assert (=> b!1367499 (= e!775034 call!65485)))

(declare-fun d!146759 () Bool)

(declare-fun res!911134 () Bool)

(declare-fun e!775035 () Bool)

(assert (=> d!146759 (=> res!911134 e!775035)))

(assert (=> d!146759 (= res!911134 (bvsge from!3239 (size!45381 a!3861)))))

(assert (=> d!146759 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775035)))

(declare-fun b!1367500 () Bool)

(assert (=> b!1367500 (= e!775035 e!775033)))

(declare-fun res!911135 () Bool)

(assert (=> b!1367500 (=> (not res!911135) (not e!775033))))

(assert (=> b!1367500 (= res!911135 (not e!775032))))

(declare-fun res!911133 () Bool)

(assert (=> b!1367500 (=> (not res!911133) (not e!775032))))

(assert (=> b!1367500 (= res!911133 (validKeyInArray!0 (select (arr!44830 a!3861) from!3239)))))

(assert (= (and d!146759 (not res!911134)) b!1367500))

(assert (= (and b!1367500 res!911133) b!1367496))

(assert (= (and b!1367500 res!911135) b!1367497))

(assert (= (and b!1367497 c!127624) b!1367499))

(assert (= (and b!1367497 (not c!127624)) b!1367498))

(assert (= (or b!1367499 b!1367498) bm!65482))

(assert (=> b!1367496 m!1251601))

(assert (=> b!1367496 m!1251601))

(assert (=> b!1367496 m!1251603))

(assert (=> bm!65482 m!1251601))

(declare-fun m!1251729 () Bool)

(assert (=> bm!65482 m!1251729))

(assert (=> b!1367497 m!1251601))

(assert (=> b!1367497 m!1251601))

(assert (=> b!1367497 m!1251609))

(assert (=> b!1367500 m!1251601))

(assert (=> b!1367500 m!1251601))

(assert (=> b!1367500 m!1251609))

(assert (=> b!1367331 d!146759))

(declare-fun d!146775 () Bool)

(assert (=> d!146775 (noDuplicate!2495 newAcc!98)))

(declare-fun lt!601842 () Unit!45095)

(declare-fun choose!2005 (List!32078 List!32078) Unit!45095)

(assert (=> d!146775 (= lt!601842 (choose!2005 newAcc!98 acc!866))))

(declare-fun e!775050 () Bool)

(assert (=> d!146775 e!775050))

(declare-fun res!911150 () Bool)

(assert (=> d!146775 (=> (not res!911150) (not e!775050))))

(assert (=> d!146775 (= res!911150 (subseq!1007 newAcc!98 acc!866))))

(assert (=> d!146775 (= (noDuplicateSubseq!194 newAcc!98 acc!866) lt!601842)))

(declare-fun b!1367515 () Bool)

(assert (=> b!1367515 (= e!775050 (noDuplicate!2495 acc!866))))

(assert (= (and d!146775 res!911150) b!1367515))

(assert (=> d!146775 m!1251611))

(declare-fun m!1251739 () Bool)

(assert (=> d!146775 m!1251739))

(assert (=> d!146775 m!1251599))

(assert (=> b!1367515 m!1251615))

(assert (=> b!1367331 d!146775))

(declare-fun d!146781 () Bool)

(declare-fun res!911151 () Bool)

(declare-fun e!775051 () Bool)

(assert (=> d!146781 (=> res!911151 e!775051)))

(assert (=> d!146781 (= res!911151 (is-Nil!32075 acc!866))))

(assert (=> d!146781 (= (noDuplicate!2495 acc!866) e!775051)))

(declare-fun b!1367516 () Bool)

(declare-fun e!775052 () Bool)

(assert (=> b!1367516 (= e!775051 e!775052)))

(declare-fun res!911152 () Bool)

(assert (=> b!1367516 (=> (not res!911152) (not e!775052))))

(assert (=> b!1367516 (= res!911152 (not (contains!9616 (t!46779 acc!866) (h!33283 acc!866))))))

(declare-fun b!1367517 () Bool)

(assert (=> b!1367517 (= e!775052 (noDuplicate!2495 (t!46779 acc!866)))))

(assert (= (and d!146781 (not res!911151)) b!1367516))

(assert (= (and b!1367516 res!911152) b!1367517))

(declare-fun m!1251741 () Bool)

(assert (=> b!1367516 m!1251741))

(declare-fun m!1251743 () Bool)

(assert (=> b!1367517 m!1251743))

(assert (=> b!1367336 d!146781))

(declare-fun d!146783 () Bool)

(assert (=> d!146783 (= (array_inv!33775 a!3861) (bvsge (size!45381 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115664 d!146783))

(declare-fun d!146787 () Bool)

(declare-fun lt!601848 () Bool)

(declare-fun content!725 (List!32078) (Set (_ BitVec 64)))

(assert (=> d!146787 (= lt!601848 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!725 acc!866)))))

(declare-fun e!775079 () Bool)

(assert (=> d!146787 (= lt!601848 e!775079)))

(declare-fun res!911177 () Bool)

(assert (=> d!146787 (=> (not res!911177) (not e!775079))))

(assert (=> d!146787 (= res!911177 (is-Cons!32074 acc!866))))

(assert (=> d!146787 (= (contains!9616 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601848)))

(declare-fun b!1367547 () Bool)

(declare-fun e!775080 () Bool)

(assert (=> b!1367547 (= e!775079 e!775080)))

(declare-fun res!911176 () Bool)

(assert (=> b!1367547 (=> res!911176 e!775080)))

(assert (=> b!1367547 (= res!911176 (= (h!33283 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367548 () Bool)

(assert (=> b!1367548 (= e!775080 (contains!9616 (t!46779 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146787 res!911177) b!1367547))

(assert (= (and b!1367547 (not res!911176)) b!1367548))

(declare-fun m!1251763 () Bool)

(assert (=> d!146787 m!1251763))

(declare-fun m!1251765 () Bool)

(assert (=> d!146787 m!1251765))

(declare-fun m!1251767 () Bool)

(assert (=> b!1367548 m!1251767))

(assert (=> b!1367330 d!146787))

(declare-fun d!146795 () Bool)

(declare-fun lt!601849 () Bool)

(assert (=> d!146795 (= lt!601849 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!725 newAcc!98)))))

(declare-fun e!775081 () Bool)

(assert (=> d!146795 (= lt!601849 e!775081)))

(declare-fun res!911179 () Bool)

(assert (=> d!146795 (=> (not res!911179) (not e!775081))))

(assert (=> d!146795 (= res!911179 (is-Cons!32074 newAcc!98))))

(assert (=> d!146795 (= (contains!9616 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601849)))

(declare-fun b!1367549 () Bool)

(declare-fun e!775082 () Bool)

(assert (=> b!1367549 (= e!775081 e!775082)))

(declare-fun res!911178 () Bool)

(assert (=> b!1367549 (=> res!911178 e!775082)))

(assert (=> b!1367549 (= res!911178 (= (h!33283 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367550 () Bool)

(assert (=> b!1367550 (= e!775082 (contains!9616 (t!46779 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146795 res!911179) b!1367549))

(assert (= (and b!1367549 (not res!911178)) b!1367550))

(declare-fun m!1251769 () Bool)

(assert (=> d!146795 m!1251769))

(declare-fun m!1251771 () Bool)

(assert (=> d!146795 m!1251771))

(declare-fun m!1251773 () Bool)

(assert (=> b!1367550 m!1251773))

(assert (=> b!1367332 d!146795))

(declare-fun lt!601850 () Bool)

(declare-fun d!146797 () Bool)

(assert (=> d!146797 (= lt!601850 (set.member (select (arr!44830 a!3861) from!3239) (content!725 acc!866)))))

(declare-fun e!775083 () Bool)

(assert (=> d!146797 (= lt!601850 e!775083)))

(declare-fun res!911181 () Bool)

(assert (=> d!146797 (=> (not res!911181) (not e!775083))))

(assert (=> d!146797 (= res!911181 (is-Cons!32074 acc!866))))

(assert (=> d!146797 (= (contains!9616 acc!866 (select (arr!44830 a!3861) from!3239)) lt!601850)))

(declare-fun b!1367551 () Bool)

(declare-fun e!775084 () Bool)

(assert (=> b!1367551 (= e!775083 e!775084)))

(declare-fun res!911180 () Bool)

(assert (=> b!1367551 (=> res!911180 e!775084)))

(assert (=> b!1367551 (= res!911180 (= (h!33283 acc!866) (select (arr!44830 a!3861) from!3239)))))

(declare-fun b!1367552 () Bool)

(assert (=> b!1367552 (= e!775084 (contains!9616 (t!46779 acc!866) (select (arr!44830 a!3861) from!3239)))))

(assert (= (and d!146797 res!911181) b!1367551))

(assert (= (and b!1367551 (not res!911180)) b!1367552))

(assert (=> d!146797 m!1251763))

(assert (=> d!146797 m!1251601))

(declare-fun m!1251775 () Bool)

(assert (=> d!146797 m!1251775))

(assert (=> b!1367552 m!1251601))

(declare-fun m!1251777 () Bool)

(assert (=> b!1367552 m!1251777))

(assert (=> b!1367337 d!146797))

(declare-fun d!146799 () Bool)

