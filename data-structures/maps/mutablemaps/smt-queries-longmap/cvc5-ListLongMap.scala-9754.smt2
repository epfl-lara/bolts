; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115592 () Bool)

(assert start!115592)

(declare-fun b!1366777 () Bool)

(declare-fun res!910452 () Bool)

(declare-fun e!774658 () Bool)

(assert (=> b!1366777 (=> (not res!910452) (not e!774658))))

(declare-datatypes ((List!32066 0))(
  ( (Nil!32063) (Cons!32062 (h!33271 (_ BitVec 64)) (t!46767 List!32066)) )
))
(declare-fun acc!866 () List!32066)

(declare-fun contains!9604 (List!32066 (_ BitVec 64)) Bool)

(assert (=> b!1366777 (= res!910452 (not (contains!9604 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366779 () Bool)

(declare-fun res!910453 () Bool)

(declare-fun e!774656 () Bool)

(assert (=> b!1366779 (=> (not res!910453) (not e!774656))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92791 0))(
  ( (array!92792 (arr!44818 (Array (_ BitVec 32) (_ BitVec 64))) (size!45369 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92791)

(assert (=> b!1366779 (= res!910453 (bvslt from!3239 (size!45369 a!3861)))))

(declare-fun b!1366780 () Bool)

(declare-fun res!910457 () Bool)

(assert (=> b!1366780 (=> (not res!910457) (not e!774658))))

(assert (=> b!1366780 (= res!910457 (not (contains!9604 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366781 () Bool)

(declare-fun res!910451 () Bool)

(assert (=> b!1366781 (=> (not res!910451) (not e!774658))))

(declare-fun newAcc!98 () List!32066)

(assert (=> b!1366781 (= res!910451 (not (contains!9604 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366782 () Bool)

(declare-fun res!910449 () Bool)

(assert (=> b!1366782 (=> (not res!910449) (not e!774658))))

(assert (=> b!1366782 (= res!910449 (not (contains!9604 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366783 () Bool)

(declare-fun res!910448 () Bool)

(assert (=> b!1366783 (=> (not res!910448) (not e!774656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366783 (= res!910448 (validKeyInArray!0 (select (arr!44818 a!3861) from!3239)))))

(declare-fun b!1366784 () Bool)

(declare-fun res!910454 () Bool)

(assert (=> b!1366784 (=> (not res!910454) (not e!774658))))

(declare-fun noDuplicate!2483 (List!32066) Bool)

(assert (=> b!1366784 (= res!910454 (noDuplicate!2483 acc!866))))

(declare-fun b!1366785 () Bool)

(declare-fun res!910458 () Bool)

(assert (=> b!1366785 (=> (not res!910458) (not e!774658))))

(declare-fun subseq!995 (List!32066 List!32066) Bool)

(assert (=> b!1366785 (= res!910458 (subseq!995 newAcc!98 acc!866))))

(declare-fun b!1366778 () Bool)

(declare-fun res!910450 () Bool)

(assert (=> b!1366778 (=> (not res!910450) (not e!774656))))

(assert (=> b!1366778 (= res!910450 (not (contains!9604 acc!866 (select (arr!44818 a!3861) from!3239))))))

(declare-fun res!910456 () Bool)

(assert (=> start!115592 (=> (not res!910456) (not e!774658))))

(assert (=> start!115592 (= res!910456 (and (bvslt (size!45369 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45369 a!3861))))))

(assert (=> start!115592 e!774658))

(declare-fun array_inv!33763 (array!92791) Bool)

(assert (=> start!115592 (array_inv!33763 a!3861)))

(assert (=> start!115592 true))

(declare-fun b!1366786 () Bool)

(assert (=> b!1366786 (= e!774658 e!774656)))

(declare-fun res!910455 () Bool)

(assert (=> b!1366786 (=> (not res!910455) (not e!774656))))

(declare-fun arrayNoDuplicates!0 (array!92791 (_ BitVec 32) List!32066) Bool)

(assert (=> b!1366786 (= res!910455 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45071 0))(
  ( (Unit!45072) )
))
(declare-fun lt!601655 () Unit!45071)

(declare-fun noDuplicateSubseq!182 (List!32066 List!32066) Unit!45071)

(assert (=> b!1366786 (= lt!601655 (noDuplicateSubseq!182 newAcc!98 acc!866))))

(declare-fun b!1366787 () Bool)

(assert (=> b!1366787 (= e!774656 (not (noDuplicate!2483 newAcc!98)))))

(declare-fun lt!601651 () Unit!45071)

(declare-fun lt!601654 () List!32066)

(declare-fun lt!601652 () List!32066)

(assert (=> b!1366787 (= lt!601651 (noDuplicateSubseq!182 lt!601654 lt!601652))))

(assert (=> b!1366787 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601654)))

(declare-fun lt!601653 () Unit!45071)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92791 List!32066 List!32066 (_ BitVec 32)) Unit!45071)

(assert (=> b!1366787 (= lt!601653 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601652 lt!601654 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366787 (= lt!601654 (Cons!32062 (select (arr!44818 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366787 (= lt!601652 (Cons!32062 (select (arr!44818 a!3861) from!3239) acc!866))))

(assert (= (and start!115592 res!910456) b!1366784))

(assert (= (and b!1366784 res!910454) b!1366780))

(assert (= (and b!1366780 res!910457) b!1366777))

(assert (= (and b!1366777 res!910452) b!1366782))

(assert (= (and b!1366782 res!910449) b!1366781))

(assert (= (and b!1366781 res!910451) b!1366785))

(assert (= (and b!1366785 res!910458) b!1366786))

(assert (= (and b!1366786 res!910455) b!1366779))

(assert (= (and b!1366779 res!910453) b!1366783))

(assert (= (and b!1366783 res!910448) b!1366778))

(assert (= (and b!1366778 res!910450) b!1366787))

(declare-fun m!1251085 () Bool)

(assert (=> b!1366783 m!1251085))

(assert (=> b!1366783 m!1251085))

(declare-fun m!1251087 () Bool)

(assert (=> b!1366783 m!1251087))

(declare-fun m!1251089 () Bool)

(assert (=> start!115592 m!1251089))

(declare-fun m!1251091 () Bool)

(assert (=> b!1366784 m!1251091))

(declare-fun m!1251093 () Bool)

(assert (=> b!1366781 m!1251093))

(assert (=> b!1366778 m!1251085))

(assert (=> b!1366778 m!1251085))

(declare-fun m!1251095 () Bool)

(assert (=> b!1366778 m!1251095))

(declare-fun m!1251097 () Bool)

(assert (=> b!1366780 m!1251097))

(declare-fun m!1251099 () Bool)

(assert (=> b!1366785 m!1251099))

(declare-fun m!1251101 () Bool)

(assert (=> b!1366777 m!1251101))

(declare-fun m!1251103 () Bool)

(assert (=> b!1366782 m!1251103))

(declare-fun m!1251105 () Bool)

(assert (=> b!1366787 m!1251105))

(declare-fun m!1251107 () Bool)

(assert (=> b!1366787 m!1251107))

(assert (=> b!1366787 m!1251085))

(declare-fun m!1251109 () Bool)

(assert (=> b!1366787 m!1251109))

(declare-fun m!1251111 () Bool)

(assert (=> b!1366787 m!1251111))

(declare-fun m!1251113 () Bool)

(assert (=> b!1366786 m!1251113))

(declare-fun m!1251115 () Bool)

(assert (=> b!1366786 m!1251115))

(push 1)

(assert (not b!1366781))

(assert (not b!1366787))

(assert (not b!1366778))

(assert (not start!115592))

(assert (not b!1366786))

(assert (not b!1366785))

(assert (not b!1366780))

(assert (not b!1366777))

(assert (not b!1366784))

(assert (not b!1366782))

(assert (not b!1366783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146639 () Bool)

(declare-fun lt!601688 () Bool)

(declare-fun content!721 (List!32066) (Set (_ BitVec 64)))

(assert (=> d!146639 (= lt!601688 (set.member (select (arr!44818 a!3861) from!3239) (content!721 acc!866)))))

(declare-fun e!774690 () Bool)

(assert (=> d!146639 (= lt!601688 e!774690)))

(declare-fun res!910536 () Bool)

(assert (=> d!146639 (=> (not res!910536) (not e!774690))))

(assert (=> d!146639 (= res!910536 (is-Cons!32062 acc!866))))

(assert (=> d!146639 (= (contains!9604 acc!866 (select (arr!44818 a!3861) from!3239)) lt!601688)))

(declare-fun b!1366868 () Bool)

(declare-fun e!774689 () Bool)

(assert (=> b!1366868 (= e!774690 e!774689)))

(declare-fun res!910535 () Bool)

(assert (=> b!1366868 (=> res!910535 e!774689)))

(assert (=> b!1366868 (= res!910535 (= (h!33271 acc!866) (select (arr!44818 a!3861) from!3239)))))

(declare-fun b!1366869 () Bool)

(assert (=> b!1366869 (= e!774689 (contains!9604 (t!46767 acc!866) (select (arr!44818 a!3861) from!3239)))))

(assert (= (and d!146639 res!910536) b!1366868))

(assert (= (and b!1366868 (not res!910535)) b!1366869))

(declare-fun m!1251181 () Bool)

(assert (=> d!146639 m!1251181))

(assert (=> d!146639 m!1251085))

(declare-fun m!1251183 () Bool)

(assert (=> d!146639 m!1251183))

(assert (=> b!1366869 m!1251085))

(declare-fun m!1251185 () Bool)

(assert (=> b!1366869 m!1251185))

(assert (=> b!1366778 d!146639))

(declare-fun d!146643 () Bool)

(assert (=> d!146643 (= (validKeyInArray!0 (select (arr!44818 a!3861) from!3239)) (and (not (= (select (arr!44818 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44818 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1366783 d!146643))

(declare-fun d!146645 () Bool)

(declare-fun lt!601689 () Bool)

(assert (=> d!146645 (= lt!601689 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!721 newAcc!98)))))

(declare-fun e!774704 () Bool)

(assert (=> d!146645 (= lt!601689 e!774704)))

(declare-fun res!910547 () Bool)

(assert (=> d!146645 (=> (not res!910547) (not e!774704))))

(assert (=> d!146645 (= res!910547 (is-Cons!32062 newAcc!98))))

(assert (=> d!146645 (= (contains!9604 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601689)))

(declare-fun b!1366885 () Bool)

(declare-fun e!774703 () Bool)

(assert (=> b!1366885 (= e!774704 e!774703)))

(declare-fun res!910546 () Bool)

(assert (=> b!1366885 (=> res!910546 e!774703)))

(assert (=> b!1366885 (= res!910546 (= (h!33271 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366886 () Bool)

(assert (=> b!1366886 (= e!774703 (contains!9604 (t!46767 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146645 res!910547) b!1366885))

(assert (= (and b!1366885 (not res!910546)) b!1366886))

(declare-fun m!1251189 () Bool)

(assert (=> d!146645 m!1251189))

(declare-fun m!1251191 () Bool)

(assert (=> d!146645 m!1251191))

(declare-fun m!1251193 () Bool)

(assert (=> b!1366886 m!1251193))

(assert (=> b!1366782 d!146645))

(declare-fun d!146649 () Bool)

(assert (=> d!146649 (= (array_inv!33763 a!3861) (bvsge (size!45369 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115592 d!146649))

(declare-fun d!146651 () Bool)

(declare-fun lt!601690 () Bool)

(assert (=> d!146651 (= lt!601690 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!721 acc!866)))))

(declare-fun e!774706 () Bool)

(assert (=> d!146651 (= lt!601690 e!774706)))

(declare-fun res!910549 () Bool)

(assert (=> d!146651 (=> (not res!910549) (not e!774706))))

(assert (=> d!146651 (= res!910549 (is-Cons!32062 acc!866))))

(assert (=> d!146651 (= (contains!9604 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601690)))

(declare-fun b!1366887 () Bool)

(declare-fun e!774705 () Bool)

(assert (=> b!1366887 (= e!774706 e!774705)))

(declare-fun res!910548 () Bool)

(assert (=> b!1366887 (=> res!910548 e!774705)))

(assert (=> b!1366887 (= res!910548 (= (h!33271 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366888 () Bool)

(assert (=> b!1366888 (= e!774705 (contains!9604 (t!46767 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146651 res!910549) b!1366887))

(assert (= (and b!1366887 (not res!910548)) b!1366888))

(assert (=> d!146651 m!1251181))

(declare-fun m!1251195 () Bool)

(assert (=> d!146651 m!1251195))

(declare-fun m!1251197 () Bool)

(assert (=> b!1366888 m!1251197))

(assert (=> b!1366777 d!146651))

(declare-fun d!146653 () Bool)

(declare-fun res!910560 () Bool)

(declare-fun e!774718 () Bool)

(assert (=> d!146653 (=> res!910560 e!774718)))

(assert (=> d!146653 (= res!910560 (is-Nil!32063 newAcc!98))))

(assert (=> d!146653 (= (noDuplicate!2483 newAcc!98) e!774718)))

(declare-fun b!1366901 () Bool)

(declare-fun e!774719 () Bool)

(assert (=> b!1366901 (= e!774718 e!774719)))

(declare-fun res!910561 () Bool)

(assert (=> b!1366901 (=> (not res!910561) (not e!774719))))

(assert (=> b!1366901 (= res!910561 (not (contains!9604 (t!46767 newAcc!98) (h!33271 newAcc!98))))))

(declare-fun b!1366902 () Bool)

(assert (=> b!1366902 (= e!774719 (noDuplicate!2483 (t!46767 newAcc!98)))))

(assert (= (and d!146653 (not res!910560)) b!1366901))

(assert (= (and b!1366901 res!910561) b!1366902))

(declare-fun m!1251203 () Bool)

(assert (=> b!1366901 m!1251203))

(declare-fun m!1251205 () Bool)

(assert (=> b!1366902 m!1251205))

(assert (=> b!1366787 d!146653))

(declare-fun d!146659 () Bool)

(assert (=> d!146659 (noDuplicate!2483 lt!601654)))

(declare-fun lt!601701 () Unit!45071)

(declare-fun choose!2003 (List!32066 List!32066) Unit!45071)

(assert (=> d!146659 (= lt!601701 (choose!2003 lt!601654 lt!601652))))

(declare-fun e!774729 () Bool)

(assert (=> d!146659 e!774729))

(declare-fun res!910571 () Bool)

(assert (=> d!146659 (=> (not res!910571) (not e!774729))))

(assert (=> d!146659 (= res!910571 (subseq!995 lt!601654 lt!601652))))

(assert (=> d!146659 (= (noDuplicateSubseq!182 lt!601654 lt!601652) lt!601701)))

(declare-fun b!1366912 () Bool)

(assert (=> b!1366912 (= e!774729 (noDuplicate!2483 lt!601652))))

(assert (= (and d!146659 res!910571) b!1366912))

(declare-fun m!1251209 () Bool)

(assert (=> d!146659 m!1251209))

(declare-fun m!1251211 () Bool)

(assert (=> d!146659 m!1251211))

(declare-fun m!1251213 () Bool)

(assert (=> d!146659 m!1251213))

(declare-fun m!1251215 () Bool)

(assert (=> b!1366912 m!1251215))

(assert (=> b!1366787 d!146659))

(declare-fun b!1366951 () Bool)

(declare-fun e!774765 () Bool)

(declare-fun e!774768 () Bool)

(assert (=> b!1366951 (= e!774765 e!774768)))

(declare-fun c!127616 () Bool)

(assert (=> b!1366951 (= c!127616 (validKeyInArray!0 (select (arr!44818 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!146665 () Bool)

(declare-fun res!910604 () Bool)

(declare-fun e!774767 () Bool)

(assert (=> d!146665 (=> res!910604 e!774767)))

(assert (=> d!146665 (= res!910604 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45369 a!3861)))))

(assert (=> d!146665 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601654) e!774767)))

(declare-fun e!774766 () Bool)

(declare-fun b!1366952 () Bool)

(assert (=> b!1366952 (= e!774766 (contains!9604 lt!601654 (select (arr!44818 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366953 () Bool)

(declare-fun call!65477 () Bool)

(assert (=> b!1366953 (= e!774768 call!65477)))

(declare-fun b!1366954 () Bool)

(assert (=> b!1366954 (= e!774768 call!65477)))

(declare-fun b!1366955 () Bool)

(assert (=> b!1366955 (= e!774767 e!774765)))

(declare-fun res!910606 () Bool)

(assert (=> b!1366955 (=> (not res!910606) (not e!774765))))

(assert (=> b!1366955 (= res!910606 (not e!774766))))

(declare-fun res!910605 () Bool)

(assert (=> b!1366955 (=> (not res!910605) (not e!774766))))

(assert (=> b!1366955 (= res!910605 (validKeyInArray!0 (select (arr!44818 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65474 () Bool)

(assert (=> bm!65474 (= call!65477 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127616 (Cons!32062 (select (arr!44818 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!601654) lt!601654)))))

(assert (= (and d!146665 (not res!910604)) b!1366955))

(assert (= (and b!1366955 res!910605) b!1366952))

(assert (= (and b!1366955 res!910606) b!1366951))

(assert (= (and b!1366951 c!127616) b!1366954))

(assert (= (and b!1366951 (not c!127616)) b!1366953))

(assert (= (or b!1366954 b!1366953) bm!65474))

(declare-fun m!1251253 () Bool)

(assert (=> b!1366951 m!1251253))

(assert (=> b!1366951 m!1251253))

(declare-fun m!1251255 () Bool)

(assert (=> b!1366951 m!1251255))

(assert (=> b!1366952 m!1251253))

(assert (=> b!1366952 m!1251253))

(declare-fun m!1251257 () Bool)

(assert (=> b!1366952 m!1251257))

(assert (=> b!1366955 m!1251253))

(assert (=> b!1366955 m!1251253))

(assert (=> b!1366955 m!1251255))

(assert (=> bm!65474 m!1251253))

(declare-fun m!1251259 () Bool)

(assert (=> bm!65474 m!1251259))

(assert (=> b!1366787 d!146665))

(declare-fun d!146683 () Bool)

(assert (=> d!146683 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601654)))

(declare-fun lt!601711 () Unit!45071)

(declare-fun choose!80 (array!92791 List!32066 List!32066 (_ BitVec 32)) Unit!45071)

(assert (=> d!146683 (= lt!601711 (choose!80 a!3861 lt!601652 lt!601654 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146683 (bvslt (size!45369 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146683 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601652 lt!601654 (bvadd #b00000000000000000000000000000001 from!3239)) lt!601711)))

(declare-fun bs!39210 () Bool)

(assert (= bs!39210 d!146683))

(assert (=> bs!39210 m!1251107))

(declare-fun m!1251281 () Bool)

(assert (=> bs!39210 m!1251281))

(assert (=> b!1366787 d!146683))

(declare-fun b!1366976 () Bool)

(declare-fun e!774788 () Bool)

(declare-fun e!774791 () Bool)

(assert (=> b!1366976 (= e!774788 e!774791)))

(declare-fun c!127618 () Bool)

(assert (=> b!1366976 (= c!127618 (validKeyInArray!0 (select (arr!44818 a!3861) from!3239)))))

(declare-fun d!146691 () Bool)

(declare-fun res!910625 () Bool)

(declare-fun e!774790 () Bool)

(assert (=> d!146691 (=> res!910625 e!774790)))

(assert (=> d!146691 (= res!910625 (bvsge from!3239 (size!45369 a!3861)))))

(assert (=> d!146691 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!774790)))

(declare-fun e!774789 () Bool)

(declare-fun b!1366977 () Bool)

(assert (=> b!1366977 (= e!774789 (contains!9604 acc!866 (select (arr!44818 a!3861) from!3239)))))

(declare-fun b!1366978 () Bool)

(declare-fun call!65479 () Bool)

(assert (=> b!1366978 (= e!774791 call!65479)))

(declare-fun b!1366979 () Bool)

(assert (=> b!1366979 (= e!774791 call!65479)))

(declare-fun b!1366980 () Bool)

(assert (=> b!1366980 (= e!774790 e!774788)))

(declare-fun res!910627 () Bool)

(assert (=> b!1366980 (=> (not res!910627) (not e!774788))))

(assert (=> b!1366980 (= res!910627 (not e!774789))))

(declare-fun res!910626 () Bool)

(assert (=> b!1366980 (=> (not res!910626) (not e!774789))))

(assert (=> b!1366980 (= res!910626 (validKeyInArray!0 (select (arr!44818 a!3861) from!3239)))))

(declare-fun bm!65476 () Bool)

(assert (=> bm!65476 (= call!65479 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127618 (Cons!32062 (select (arr!44818 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!146691 (not res!910625)) b!1366980))

(assert (= (and b!1366980 res!910626) b!1366977))

(assert (= (and b!1366980 res!910627) b!1366976))

(assert (= (and b!1366976 c!127618) b!1366979))

(assert (= (and b!1366976 (not c!127618)) b!1366978))

(assert (= (or b!1366979 b!1366978) bm!65476))

(assert (=> b!1366976 m!1251085))

(assert (=> b!1366976 m!1251085))

(assert (=> b!1366976 m!1251087))

(assert (=> b!1366977 m!1251085))

(assert (=> b!1366977 m!1251085))

(assert (=> b!1366977 m!1251095))

(assert (=> b!1366980 m!1251085))

(assert (=> b!1366980 m!1251085))

(assert (=> b!1366980 m!1251087))

(assert (=> bm!65476 m!1251085))

(declare-fun m!1251283 () Bool)

(assert (=> bm!65476 m!1251283))

(assert (=> b!1366786 d!146691))

(declare-fun d!146693 () Bool)

(assert (=> d!146693 (noDuplicate!2483 newAcc!98)))

(declare-fun lt!601712 () Unit!45071)

(assert (=> d!146693 (= lt!601712 (choose!2003 newAcc!98 acc!866))))

(declare-fun e!774792 () Bool)

(assert (=> d!146693 e!774792))

(declare-fun res!910628 () Bool)

(assert (=> d!146693 (=> (not res!910628) (not e!774792))))

(assert (=> d!146693 (= res!910628 (subseq!995 newAcc!98 acc!866))))

(assert (=> d!146693 (= (noDuplicateSubseq!182 newAcc!98 acc!866) lt!601712)))

(declare-fun b!1366981 () Bool)

(assert (=> b!1366981 (= e!774792 (noDuplicate!2483 acc!866))))

(assert (= (and d!146693 res!910628) b!1366981))

(assert (=> d!146693 m!1251105))

(declare-fun m!1251285 () Bool)

(assert (=> d!146693 m!1251285))

(assert (=> d!146693 m!1251099))

(assert (=> b!1366981 m!1251091))

(assert (=> b!1366786 d!146693))

(declare-fun d!146695 () Bool)

(declare-fun lt!601713 () Bool)

(assert (=> d!146695 (= lt!601713 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!721 newAcc!98)))))

(declare-fun e!774798 () Bool)

(assert (=> d!146695 (= lt!601713 e!774798)))

(declare-fun res!910634 () Bool)

(assert (=> d!146695 (=> (not res!910634) (not e!774798))))

(assert (=> d!146695 (= res!910634 (is-Cons!32062 newAcc!98))))

(assert (=> d!146695 (= (contains!9604 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601713)))

(declare-fun b!1366986 () Bool)

(declare-fun e!774797 () Bool)

(assert (=> b!1366986 (= e!774798 e!774797)))

(declare-fun res!910633 () Bool)

(assert (=> b!1366986 (=> res!910633 e!774797)))

(assert (=> b!1366986 (= res!910633 (= (h!33271 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366987 () Bool)

(assert (=> b!1366987 (= e!774797 (contains!9604 (t!46767 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146695 res!910634) b!1366986))

(assert (= (and b!1366986 (not res!910633)) b!1366987))

(assert (=> d!146695 m!1251189))

(declare-fun m!1251291 () Bool)

(assert (=> d!146695 m!1251291))

(declare-fun m!1251293 () Bool)

(assert (=> b!1366987 m!1251293))

(assert (=> b!1366781 d!146695))

(declare-fun d!146699 () Bool)

(declare-fun lt!601716 () Bool)

(assert (=> d!146699 (= lt!601716 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!721 acc!866)))))

(declare-fun e!774802 () Bool)

(assert (=> d!146699 (= lt!601716 e!774802)))

(declare-fun res!910638 () Bool)

(assert (=> d!146699 (=> (not res!910638) (not e!774802))))

(assert (=> d!146699 (= res!910638 (is-Cons!32062 acc!866))))

(assert (=> d!146699 (= (contains!9604 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601716)))

(declare-fun b!1366990 () Bool)

(declare-fun e!774801 () Bool)

(assert (=> b!1366990 (= e!774802 e!774801)))

(declare-fun res!910637 () Bool)

(assert (=> b!1366990 (=> res!910637 e!774801)))

(assert (=> b!1366990 (= res!910637 (= (h!33271 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366991 () Bool)

(assert (=> b!1366991 (= e!774801 (contains!9604 (t!46767 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146699 res!910638) b!1366990))

(assert (= (and b!1366990 (not res!910637)) b!1366991))

(assert (=> d!146699 m!1251181))

(declare-fun m!1251299 () Bool)

(assert (=> d!146699 m!1251299))

(declare-fun m!1251301 () Bool)

(assert (=> b!1366991 m!1251301))

(assert (=> b!1366780 d!146699))

(declare-fun b!1367020 () Bool)

(declare-fun e!774831 () Bool)

(assert (=> b!1367020 (= e!774831 (subseq!995 (t!46767 newAcc!98) (t!46767 acc!866)))))

(declare-fun b!1367021 () Bool)

(declare-fun e!774830 () Bool)

(assert (=> b!1367021 (= e!774830 (subseq!995 newAcc!98 (t!46767 acc!866)))))

(declare-fun b!1367019 () Bool)

(declare-fun e!774832 () Bool)

(assert (=> b!1367019 (= e!774832 e!774830)))

(declare-fun res!910666 () Bool)

(assert (=> b!1367019 (=> res!910666 e!774830)))

(assert (=> b!1367019 (= res!910666 e!774831)))

(declare-fun res!910665 () Bool)

(assert (=> b!1367019 (=> (not res!910665) (not e!774831))))

(assert (=> b!1367019 (= res!910665 (= (h!33271 newAcc!98) (h!33271 acc!866)))))

(declare-fun d!146703 () Bool)

(declare-fun res!910668 () Bool)

(declare-fun e!774829 () Bool)

(assert (=> d!146703 (=> res!910668 e!774829)))

(assert (=> d!146703 (= res!910668 (is-Nil!32063 newAcc!98))))

(assert (=> d!146703 (= (subseq!995 newAcc!98 acc!866) e!774829)))

(declare-fun b!1367018 () Bool)

(assert (=> b!1367018 (= e!774829 e!774832)))

(declare-fun res!910667 () Bool)

(assert (=> b!1367018 (=> (not res!910667) (not e!774832))))

(assert (=> b!1367018 (= res!910667 (is-Cons!32062 acc!866))))

(assert (= (and d!146703 (not res!910668)) b!1367018))

(assert (= (and b!1367018 res!910667) b!1367019))

(assert (= (and b!1367019 res!910665) b!1367020))

(assert (= (and b!1367019 (not res!910666)) b!1367021))

(declare-fun m!1251339 () Bool)

(assert (=> b!1367020 m!1251339))

(declare-fun m!1251341 () Bool)

(assert (=> b!1367021 m!1251341))

(assert (=> b!1366785 d!146703))

(declare-fun d!146721 () Bool)

(declare-fun res!910669 () Bool)

(declare-fun e!774833 () Bool)

(assert (=> d!146721 (=> res!910669 e!774833)))

(assert (=> d!146721 (= res!910669 (is-Nil!32063 acc!866))))

(assert (=> d!146721 (= (noDuplicate!2483 acc!866) e!774833)))

(declare-fun b!1367022 () Bool)

(declare-fun e!774834 () Bool)

(assert (=> b!1367022 (= e!774833 e!774834)))

(declare-fun res!910670 () Bool)

(assert (=> b!1367022 (=> (not res!910670) (not e!774834))))

(assert (=> b!1367022 (= res!910670 (not (contains!9604 (t!46767 acc!866) (h!33271 acc!866))))))

(declare-fun b!1367023 () Bool)

(assert (=> b!1367023 (= e!774834 (noDuplicate!2483 (t!46767 acc!866)))))

(assert (= (and d!146721 (not res!910669)) b!1367022))

