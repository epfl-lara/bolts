; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116446 () Bool)

(assert start!116446)

(declare-fun b!1373577 () Bool)

(declare-fun res!916907 () Bool)

(declare-fun e!778132 () Bool)

(assert (=> b!1373577 (=> (not res!916907) (not e!778132))))

(declare-datatypes ((List!32202 0))(
  ( (Nil!32199) (Cons!32198 (h!33407 (_ BitVec 64)) (t!46903 List!32202)) )
))
(declare-fun acc!866 () List!32202)

(declare-fun contains!9740 (List!32202 (_ BitVec 64)) Bool)

(assert (=> b!1373577 (= res!916907 (not (contains!9740 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373578 () Bool)

(declare-fun res!916909 () Bool)

(assert (=> b!1373578 (=> (not res!916909) (not e!778132))))

(declare-fun newAcc!98 () List!32202)

(assert (=> b!1373578 (= res!916909 (not (contains!9740 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!93102 0))(
  ( (array!93103 (arr!44954 (Array (_ BitVec 32) (_ BitVec 64))) (size!45505 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93102)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun e!778130 () Bool)

(declare-fun b!1373579 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93102 (_ BitVec 32) List!32202) Bool)

(assert (=> b!1373579 (= e!778130 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1373580 () Bool)

(assert (=> b!1373580 (= e!778132 e!778130)))

(declare-fun res!916912 () Bool)

(assert (=> b!1373580 (=> (not res!916912) (not e!778130))))

(assert (=> b!1373580 (= res!916912 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45343 0))(
  ( (Unit!45344) )
))
(declare-fun lt!603026 () Unit!45343)

(declare-fun noDuplicateSubseq!318 (List!32202 List!32202) Unit!45343)

(assert (=> b!1373580 (= lt!603026 (noDuplicateSubseq!318 newAcc!98 acc!866))))

(declare-fun b!1373581 () Bool)

(declare-fun res!916911 () Bool)

(assert (=> b!1373581 (=> (not res!916911) (not e!778130))))

(assert (=> b!1373581 (= res!916911 (bvsge from!3239 (size!45505 a!3861)))))

(declare-fun b!1373582 () Bool)

(declare-fun res!916914 () Bool)

(assert (=> b!1373582 (=> (not res!916914) (not e!778132))))

(assert (=> b!1373582 (= res!916914 (not (contains!9740 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373583 () Bool)

(declare-fun res!916906 () Bool)

(assert (=> b!1373583 (=> (not res!916906) (not e!778132))))

(assert (=> b!1373583 (= res!916906 (not (contains!9740 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916908 () Bool)

(assert (=> start!116446 (=> (not res!916908) (not e!778132))))

(assert (=> start!116446 (= res!916908 (and (bvslt (size!45505 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45505 a!3861))))))

(assert (=> start!116446 e!778132))

(declare-fun array_inv!33899 (array!93102) Bool)

(assert (=> start!116446 (array_inv!33899 a!3861)))

(assert (=> start!116446 true))

(declare-fun b!1373584 () Bool)

(declare-fun res!916913 () Bool)

(assert (=> b!1373584 (=> (not res!916913) (not e!778132))))

(declare-fun noDuplicate!2619 (List!32202) Bool)

(assert (=> b!1373584 (= res!916913 (noDuplicate!2619 acc!866))))

(declare-fun b!1373585 () Bool)

(declare-fun res!916910 () Bool)

(assert (=> b!1373585 (=> (not res!916910) (not e!778132))))

(declare-fun subseq!1131 (List!32202 List!32202) Bool)

(assert (=> b!1373585 (= res!916910 (subseq!1131 newAcc!98 acc!866))))

(assert (= (and start!116446 res!916908) b!1373584))

(assert (= (and b!1373584 res!916913) b!1373577))

(assert (= (and b!1373577 res!916907) b!1373582))

(assert (= (and b!1373582 res!916914) b!1373583))

(assert (= (and b!1373583 res!916906) b!1373578))

(assert (= (and b!1373578 res!916909) b!1373585))

(assert (= (and b!1373585 res!916910) b!1373580))

(assert (= (and b!1373580 res!916912) b!1373581))

(assert (= (and b!1373581 res!916911) b!1373579))

(declare-fun m!1256829 () Bool)

(assert (=> b!1373579 m!1256829))

(declare-fun m!1256831 () Bool)

(assert (=> b!1373580 m!1256831))

(declare-fun m!1256833 () Bool)

(assert (=> b!1373580 m!1256833))

(declare-fun m!1256835 () Bool)

(assert (=> b!1373577 m!1256835))

(declare-fun m!1256837 () Bool)

(assert (=> b!1373583 m!1256837))

(declare-fun m!1256839 () Bool)

(assert (=> b!1373584 m!1256839))

(declare-fun m!1256841 () Bool)

(assert (=> b!1373578 m!1256841))

(declare-fun m!1256843 () Bool)

(assert (=> b!1373582 m!1256843))

(declare-fun m!1256845 () Bool)

(assert (=> b!1373585 m!1256845))

(declare-fun m!1256847 () Bool)

(assert (=> start!116446 m!1256847))

(check-sat (not b!1373584) (not b!1373579) (not b!1373577) (not b!1373585) (not b!1373580) (not b!1373583) (not b!1373578) (not start!116446) (not b!1373582))
(check-sat)
(get-model)

(declare-fun d!147957 () Bool)

(declare-fun lt!603032 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!759 (List!32202) (InoxSet (_ BitVec 64)))

(assert (=> d!147957 (= lt!603032 (select (content!759 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778147 () Bool)

(assert (=> d!147957 (= lt!603032 e!778147)))

(declare-fun res!916947 () Bool)

(assert (=> d!147957 (=> (not res!916947) (not e!778147))))

(get-info :version)

(assert (=> d!147957 (= res!916947 ((_ is Cons!32198) newAcc!98))))

(assert (=> d!147957 (= (contains!9740 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603032)))

(declare-fun b!1373617 () Bool)

(declare-fun e!778146 () Bool)

(assert (=> b!1373617 (= e!778147 e!778146)))

(declare-fun res!916946 () Bool)

(assert (=> b!1373617 (=> res!916946 e!778146)))

(assert (=> b!1373617 (= res!916946 (= (h!33407 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373618 () Bool)

(assert (=> b!1373618 (= e!778146 (contains!9740 (t!46903 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147957 res!916947) b!1373617))

(assert (= (and b!1373617 (not res!916946)) b!1373618))

(declare-fun m!1256869 () Bool)

(assert (=> d!147957 m!1256869))

(declare-fun m!1256871 () Bool)

(assert (=> d!147957 m!1256871))

(declare-fun m!1256873 () Bool)

(assert (=> b!1373618 m!1256873))

(assert (=> b!1373578 d!147957))

(declare-fun b!1373654 () Bool)

(declare-fun e!778177 () Bool)

(declare-fun call!65634 () Bool)

(assert (=> b!1373654 (= e!778177 call!65634)))

(declare-fun c!127785 () Bool)

(declare-fun bm!65631 () Bool)

(assert (=> bm!65631 (= call!65634 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127785 (Cons!32198 (select (arr!44954 a!3861) from!3239) newAcc!98) newAcc!98)))))

(declare-fun d!147961 () Bool)

(declare-fun res!916969 () Bool)

(declare-fun e!778178 () Bool)

(assert (=> d!147961 (=> res!916969 e!778178)))

(assert (=> d!147961 (= res!916969 (bvsge from!3239 (size!45505 a!3861)))))

(assert (=> d!147961 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!778178)))

(declare-fun b!1373655 () Bool)

(declare-fun e!778176 () Bool)

(assert (=> b!1373655 (= e!778178 e!778176)))

(declare-fun res!916971 () Bool)

(assert (=> b!1373655 (=> (not res!916971) (not e!778176))))

(declare-fun e!778179 () Bool)

(assert (=> b!1373655 (= res!916971 (not e!778179))))

(declare-fun res!916970 () Bool)

(assert (=> b!1373655 (=> (not res!916970) (not e!778179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373655 (= res!916970 (validKeyInArray!0 (select (arr!44954 a!3861) from!3239)))))

(declare-fun b!1373656 () Bool)

(assert (=> b!1373656 (= e!778176 e!778177)))

(assert (=> b!1373656 (= c!127785 (validKeyInArray!0 (select (arr!44954 a!3861) from!3239)))))

(declare-fun b!1373657 () Bool)

(assert (=> b!1373657 (= e!778177 call!65634)))

(declare-fun b!1373658 () Bool)

(assert (=> b!1373658 (= e!778179 (contains!9740 newAcc!98 (select (arr!44954 a!3861) from!3239)))))

(assert (= (and d!147961 (not res!916969)) b!1373655))

(assert (= (and b!1373655 res!916970) b!1373658))

(assert (= (and b!1373655 res!916971) b!1373656))

(assert (= (and b!1373656 c!127785) b!1373654))

(assert (= (and b!1373656 (not c!127785)) b!1373657))

(assert (= (or b!1373654 b!1373657) bm!65631))

(declare-fun m!1256883 () Bool)

(assert (=> bm!65631 m!1256883))

(declare-fun m!1256885 () Bool)

(assert (=> bm!65631 m!1256885))

(assert (=> b!1373655 m!1256883))

(assert (=> b!1373655 m!1256883))

(declare-fun m!1256887 () Bool)

(assert (=> b!1373655 m!1256887))

(assert (=> b!1373656 m!1256883))

(assert (=> b!1373656 m!1256883))

(assert (=> b!1373656 m!1256887))

(assert (=> b!1373658 m!1256883))

(assert (=> b!1373658 m!1256883))

(declare-fun m!1256891 () Bool)

(assert (=> b!1373658 m!1256891))

(assert (=> b!1373579 d!147961))

(declare-fun d!147967 () Bool)

(declare-fun res!916990 () Bool)

(declare-fun e!778200 () Bool)

(assert (=> d!147967 (=> res!916990 e!778200)))

(assert (=> d!147967 (= res!916990 ((_ is Nil!32199) acc!866))))

(assert (=> d!147967 (= (noDuplicate!2619 acc!866) e!778200)))

(declare-fun b!1373681 () Bool)

(declare-fun e!778201 () Bool)

(assert (=> b!1373681 (= e!778200 e!778201)))

(declare-fun res!916991 () Bool)

(assert (=> b!1373681 (=> (not res!916991) (not e!778201))))

(assert (=> b!1373681 (= res!916991 (not (contains!9740 (t!46903 acc!866) (h!33407 acc!866))))))

(declare-fun b!1373682 () Bool)

(assert (=> b!1373682 (= e!778201 (noDuplicate!2619 (t!46903 acc!866)))))

(assert (= (and d!147967 (not res!916990)) b!1373681))

(assert (= (and b!1373681 res!916991) b!1373682))

(declare-fun m!1256903 () Bool)

(assert (=> b!1373681 m!1256903))

(declare-fun m!1256905 () Bool)

(assert (=> b!1373682 m!1256905))

(assert (=> b!1373584 d!147967))

(declare-fun d!147973 () Bool)

(declare-fun lt!603033 () Bool)

(assert (=> d!147973 (= lt!603033 (select (content!759 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778203 () Bool)

(assert (=> d!147973 (= lt!603033 e!778203)))

(declare-fun res!916993 () Bool)

(assert (=> d!147973 (=> (not res!916993) (not e!778203))))

(assert (=> d!147973 (= res!916993 ((_ is Cons!32198) acc!866))))

(assert (=> d!147973 (= (contains!9740 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603033)))

(declare-fun b!1373683 () Bool)

(declare-fun e!778202 () Bool)

(assert (=> b!1373683 (= e!778203 e!778202)))

(declare-fun res!916992 () Bool)

(assert (=> b!1373683 (=> res!916992 e!778202)))

(assert (=> b!1373683 (= res!916992 (= (h!33407 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373684 () Bool)

(assert (=> b!1373684 (= e!778202 (contains!9740 (t!46903 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147973 res!916993) b!1373683))

(assert (= (and b!1373683 (not res!916992)) b!1373684))

(declare-fun m!1256907 () Bool)

(assert (=> d!147973 m!1256907))

(declare-fun m!1256909 () Bool)

(assert (=> d!147973 m!1256909))

(declare-fun m!1256911 () Bool)

(assert (=> b!1373684 m!1256911))

(assert (=> b!1373577 d!147973))

(declare-fun d!147975 () Bool)

(declare-fun lt!603034 () Bool)

(assert (=> d!147975 (= lt!603034 (select (content!759 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778209 () Bool)

(assert (=> d!147975 (= lt!603034 e!778209)))

(declare-fun res!916999 () Bool)

(assert (=> d!147975 (=> (not res!916999) (not e!778209))))

(assert (=> d!147975 (= res!916999 ((_ is Cons!32198) acc!866))))

(assert (=> d!147975 (= (contains!9740 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603034)))

(declare-fun b!1373689 () Bool)

(declare-fun e!778208 () Bool)

(assert (=> b!1373689 (= e!778209 e!778208)))

(declare-fun res!916998 () Bool)

(assert (=> b!1373689 (=> res!916998 e!778208)))

(assert (=> b!1373689 (= res!916998 (= (h!33407 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373690 () Bool)

(assert (=> b!1373690 (= e!778208 (contains!9740 (t!46903 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147975 res!916999) b!1373689))

(assert (= (and b!1373689 (not res!916998)) b!1373690))

(assert (=> d!147975 m!1256907))

(declare-fun m!1256915 () Bool)

(assert (=> d!147975 m!1256915))

(declare-fun m!1256919 () Bool)

(assert (=> b!1373690 m!1256919))

(assert (=> b!1373582 d!147975))

(declare-fun d!147979 () Bool)

(assert (=> d!147979 (= (array_inv!33899 a!3861) (bvsge (size!45505 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116446 d!147979))

(declare-fun d!147981 () Bool)

(declare-fun lt!603037 () Bool)

(assert (=> d!147981 (= lt!603037 (select (content!759 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778217 () Bool)

(assert (=> d!147981 (= lt!603037 e!778217)))

(declare-fun res!917006 () Bool)

(assert (=> d!147981 (=> (not res!917006) (not e!778217))))

(assert (=> d!147981 (= res!917006 ((_ is Cons!32198) newAcc!98))))

(assert (=> d!147981 (= (contains!9740 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603037)))

(declare-fun b!1373698 () Bool)

(declare-fun e!778216 () Bool)

(assert (=> b!1373698 (= e!778217 e!778216)))

(declare-fun res!917005 () Bool)

(assert (=> b!1373698 (=> res!917005 e!778216)))

(assert (=> b!1373698 (= res!917005 (= (h!33407 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373699 () Bool)

(assert (=> b!1373699 (= e!778216 (contains!9740 (t!46903 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147981 res!917006) b!1373698))

(assert (= (and b!1373698 (not res!917005)) b!1373699))

(assert (=> d!147981 m!1256869))

(declare-fun m!1256925 () Bool)

(assert (=> d!147981 m!1256925))

(declare-fun m!1256929 () Bool)

(assert (=> b!1373699 m!1256929))

(assert (=> b!1373583 d!147981))

(declare-fun d!147985 () Bool)

(declare-fun res!917025 () Bool)

(declare-fun e!778239 () Bool)

(assert (=> d!147985 (=> res!917025 e!778239)))

(assert (=> d!147985 (= res!917025 ((_ is Nil!32199) newAcc!98))))

(assert (=> d!147985 (= (subseq!1131 newAcc!98 acc!866) e!778239)))

(declare-fun b!1373718 () Bool)

(declare-fun e!778237 () Bool)

(assert (=> b!1373718 (= e!778239 e!778237)))

(declare-fun res!917028 () Bool)

(assert (=> b!1373718 (=> (not res!917028) (not e!778237))))

(assert (=> b!1373718 (= res!917028 ((_ is Cons!32198) acc!866))))

(declare-fun b!1373719 () Bool)

(declare-fun e!778236 () Bool)

(assert (=> b!1373719 (= e!778237 e!778236)))

(declare-fun res!917026 () Bool)

(assert (=> b!1373719 (=> res!917026 e!778236)))

(declare-fun e!778238 () Bool)

(assert (=> b!1373719 (= res!917026 e!778238)))

(declare-fun res!917027 () Bool)

(assert (=> b!1373719 (=> (not res!917027) (not e!778238))))

(assert (=> b!1373719 (= res!917027 (= (h!33407 newAcc!98) (h!33407 acc!866)))))

(declare-fun b!1373720 () Bool)

(assert (=> b!1373720 (= e!778238 (subseq!1131 (t!46903 newAcc!98) (t!46903 acc!866)))))

(declare-fun b!1373721 () Bool)

(assert (=> b!1373721 (= e!778236 (subseq!1131 newAcc!98 (t!46903 acc!866)))))

(assert (= (and d!147985 (not res!917025)) b!1373718))

(assert (= (and b!1373718 res!917028) b!1373719))

(assert (= (and b!1373719 res!917027) b!1373720))

(assert (= (and b!1373719 (not res!917026)) b!1373721))

(declare-fun m!1256941 () Bool)

(assert (=> b!1373720 m!1256941))

(declare-fun m!1256943 () Bool)

(assert (=> b!1373721 m!1256943))

(assert (=> b!1373585 d!147985))

(declare-fun b!1373726 () Bool)

(declare-fun e!778245 () Bool)

(declare-fun call!65638 () Bool)

(assert (=> b!1373726 (= e!778245 call!65638)))

(declare-fun bm!65635 () Bool)

(declare-fun c!127789 () Bool)

(assert (=> bm!65635 (= call!65638 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127789 (Cons!32198 (select (arr!44954 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun d!147993 () Bool)

(declare-fun res!917033 () Bool)

(declare-fun e!778246 () Bool)

(assert (=> d!147993 (=> res!917033 e!778246)))

(assert (=> d!147993 (= res!917033 (bvsge from!3239 (size!45505 a!3861)))))

(assert (=> d!147993 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778246)))

(declare-fun b!1373727 () Bool)

(declare-fun e!778244 () Bool)

(assert (=> b!1373727 (= e!778246 e!778244)))

(declare-fun res!917035 () Bool)

(assert (=> b!1373727 (=> (not res!917035) (not e!778244))))

(declare-fun e!778247 () Bool)

(assert (=> b!1373727 (= res!917035 (not e!778247))))

(declare-fun res!917034 () Bool)

(assert (=> b!1373727 (=> (not res!917034) (not e!778247))))

(assert (=> b!1373727 (= res!917034 (validKeyInArray!0 (select (arr!44954 a!3861) from!3239)))))

(declare-fun b!1373728 () Bool)

(assert (=> b!1373728 (= e!778244 e!778245)))

(assert (=> b!1373728 (= c!127789 (validKeyInArray!0 (select (arr!44954 a!3861) from!3239)))))

(declare-fun b!1373729 () Bool)

(assert (=> b!1373729 (= e!778245 call!65638)))

(declare-fun b!1373730 () Bool)

(assert (=> b!1373730 (= e!778247 (contains!9740 acc!866 (select (arr!44954 a!3861) from!3239)))))

(assert (= (and d!147993 (not res!917033)) b!1373727))

(assert (= (and b!1373727 res!917034) b!1373730))

(assert (= (and b!1373727 res!917035) b!1373728))

(assert (= (and b!1373728 c!127789) b!1373726))

(assert (= (and b!1373728 (not c!127789)) b!1373729))

(assert (= (or b!1373726 b!1373729) bm!65635))

(assert (=> bm!65635 m!1256883))

(declare-fun m!1256945 () Bool)

(assert (=> bm!65635 m!1256945))

(assert (=> b!1373727 m!1256883))

(assert (=> b!1373727 m!1256883))

(assert (=> b!1373727 m!1256887))

(assert (=> b!1373728 m!1256883))

(assert (=> b!1373728 m!1256883))

(assert (=> b!1373728 m!1256887))

(assert (=> b!1373730 m!1256883))

(assert (=> b!1373730 m!1256883))

(declare-fun m!1256947 () Bool)

(assert (=> b!1373730 m!1256947))

(assert (=> b!1373580 d!147993))

(declare-fun d!147995 () Bool)

(assert (=> d!147995 (noDuplicate!2619 newAcc!98)))

(declare-fun lt!603051 () Unit!45343)

(declare-fun choose!2036 (List!32202 List!32202) Unit!45343)

(assert (=> d!147995 (= lt!603051 (choose!2036 newAcc!98 acc!866))))

(declare-fun e!778266 () Bool)

(assert (=> d!147995 e!778266))

(declare-fun res!917054 () Bool)

(assert (=> d!147995 (=> (not res!917054) (not e!778266))))

(assert (=> d!147995 (= res!917054 (subseq!1131 newAcc!98 acc!866))))

(assert (=> d!147995 (= (noDuplicateSubseq!318 newAcc!98 acc!866) lt!603051)))

(declare-fun b!1373749 () Bool)

(assert (=> b!1373749 (= e!778266 (noDuplicate!2619 acc!866))))

(assert (= (and d!147995 res!917054) b!1373749))

(declare-fun m!1256969 () Bool)

(assert (=> d!147995 m!1256969))

(declare-fun m!1256971 () Bool)

(assert (=> d!147995 m!1256971))

(assert (=> d!147995 m!1256845))

(assert (=> b!1373749 m!1256839))

(assert (=> b!1373580 d!147995))

(check-sat (not b!1373618) (not bm!65631) (not b!1373749) (not b!1373655) (not b!1373727) (not b!1373730) (not d!147957) (not d!147981) (not b!1373720) (not b!1373682) (not b!1373656) (not bm!65635) (not b!1373658) (not d!147975) (not b!1373681) (not b!1373690) (not b!1373728) (not b!1373721) (not d!147995) (not b!1373699) (not d!147973) (not b!1373684))
(check-sat)
