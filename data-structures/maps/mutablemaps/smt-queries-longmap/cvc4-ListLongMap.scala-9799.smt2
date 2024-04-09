; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116448 () Bool)

(assert start!116448)

(declare-fun b!1373604 () Bool)

(declare-fun res!916937 () Bool)

(declare-fun e!778139 () Bool)

(assert (=> b!1373604 (=> (not res!916937) (not e!778139))))

(declare-datatypes ((List!32203 0))(
  ( (Nil!32200) (Cons!32199 (h!33408 (_ BitVec 64)) (t!46904 List!32203)) )
))
(declare-fun acc!866 () List!32203)

(declare-fun contains!9741 (List!32203 (_ BitVec 64)) Bool)

(assert (=> b!1373604 (= res!916937 (not (contains!9741 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373605 () Bool)

(declare-fun res!916933 () Bool)

(declare-fun e!778140 () Bool)

(assert (=> b!1373605 (=> (not res!916933) (not e!778140))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93104 0))(
  ( (array!93105 (arr!44955 (Array (_ BitVec 32) (_ BitVec 64))) (size!45506 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93104)

(assert (=> b!1373605 (= res!916933 (bvsge from!3239 (size!45506 a!3861)))))

(declare-fun res!916934 () Bool)

(assert (=> start!116448 (=> (not res!916934) (not e!778139))))

(assert (=> start!116448 (= res!916934 (and (bvslt (size!45506 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45506 a!3861))))))

(assert (=> start!116448 e!778139))

(declare-fun array_inv!33900 (array!93104) Bool)

(assert (=> start!116448 (array_inv!33900 a!3861)))

(assert (=> start!116448 true))

(declare-fun b!1373606 () Bool)

(declare-fun res!916939 () Bool)

(assert (=> b!1373606 (=> (not res!916939) (not e!778139))))

(declare-fun newAcc!98 () List!32203)

(assert (=> b!1373606 (= res!916939 (not (contains!9741 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373607 () Bool)

(declare-fun res!916935 () Bool)

(assert (=> b!1373607 (=> (not res!916935) (not e!778139))))

(declare-fun noDuplicate!2620 (List!32203) Bool)

(assert (=> b!1373607 (= res!916935 (noDuplicate!2620 acc!866))))

(declare-fun b!1373608 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93104 (_ BitVec 32) List!32203) Bool)

(assert (=> b!1373608 (= e!778140 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1373609 () Bool)

(declare-fun res!916938 () Bool)

(assert (=> b!1373609 (=> (not res!916938) (not e!778139))))

(declare-fun subseq!1132 (List!32203 List!32203) Bool)

(assert (=> b!1373609 (= res!916938 (subseq!1132 newAcc!98 acc!866))))

(declare-fun b!1373610 () Bool)

(declare-fun res!916940 () Bool)

(assert (=> b!1373610 (=> (not res!916940) (not e!778139))))

(assert (=> b!1373610 (= res!916940 (not (contains!9741 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373611 () Bool)

(declare-fun res!916941 () Bool)

(assert (=> b!1373611 (=> (not res!916941) (not e!778139))))

(assert (=> b!1373611 (= res!916941 (not (contains!9741 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373612 () Bool)

(assert (=> b!1373612 (= e!778139 e!778140)))

(declare-fun res!916936 () Bool)

(assert (=> b!1373612 (=> (not res!916936) (not e!778140))))

(assert (=> b!1373612 (= res!916936 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45345 0))(
  ( (Unit!45346) )
))
(declare-fun lt!603029 () Unit!45345)

(declare-fun noDuplicateSubseq!319 (List!32203 List!32203) Unit!45345)

(assert (=> b!1373612 (= lt!603029 (noDuplicateSubseq!319 newAcc!98 acc!866))))

(assert (= (and start!116448 res!916934) b!1373607))

(assert (= (and b!1373607 res!916935) b!1373604))

(assert (= (and b!1373604 res!916937) b!1373610))

(assert (= (and b!1373610 res!916940) b!1373611))

(assert (= (and b!1373611 res!916941) b!1373606))

(assert (= (and b!1373606 res!916939) b!1373609))

(assert (= (and b!1373609 res!916938) b!1373612))

(assert (= (and b!1373612 res!916936) b!1373605))

(assert (= (and b!1373605 res!916933) b!1373608))

(declare-fun m!1256849 () Bool)

(assert (=> b!1373608 m!1256849))

(declare-fun m!1256851 () Bool)

(assert (=> b!1373612 m!1256851))

(declare-fun m!1256853 () Bool)

(assert (=> b!1373612 m!1256853))

(declare-fun m!1256855 () Bool)

(assert (=> b!1373609 m!1256855))

(declare-fun m!1256857 () Bool)

(assert (=> b!1373606 m!1256857))

(declare-fun m!1256859 () Bool)

(assert (=> b!1373604 m!1256859))

(declare-fun m!1256861 () Bool)

(assert (=> b!1373607 m!1256861))

(declare-fun m!1256863 () Bool)

(assert (=> start!116448 m!1256863))

(declare-fun m!1256865 () Bool)

(assert (=> b!1373610 m!1256865))

(declare-fun m!1256867 () Bool)

(assert (=> b!1373611 m!1256867))

(push 1)

(assert (not start!116448))

(assert (not b!1373604))

(assert (not b!1373611))

(assert (not b!1373606))

(assert (not b!1373612))

(assert (not b!1373609))

(assert (not b!1373607))

(assert (not b!1373608))

(assert (not b!1373610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147963 () Bool)

(declare-fun res!916973 () Bool)

(declare-fun e!778182 () Bool)

(assert (=> d!147963 (=> res!916973 e!778182)))

(assert (=> d!147963 (= res!916973 (bvsge from!3239 (size!45506 a!3861)))))

(assert (=> d!147963 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!778182)))

(declare-fun call!65635 () Bool)

(declare-fun bm!65632 () Bool)

(declare-fun c!127786 () Bool)

(assert (=> bm!65632 (= call!65635 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127786 (Cons!32199 (select (arr!44955 a!3861) from!3239) newAcc!98) newAcc!98)))))

(declare-fun b!1373659 () Bool)

(declare-fun e!778181 () Bool)

(assert (=> b!1373659 (= e!778181 call!65635)))

(declare-fun e!778183 () Bool)

(declare-fun b!1373660 () Bool)

(assert (=> b!1373660 (= e!778183 (contains!9741 newAcc!98 (select (arr!44955 a!3861) from!3239)))))

(declare-fun b!1373661 () Bool)

(assert (=> b!1373661 (= e!778181 call!65635)))

(declare-fun b!1373662 () Bool)

(declare-fun e!778180 () Bool)

(assert (=> b!1373662 (= e!778182 e!778180)))

(declare-fun res!916974 () Bool)

(assert (=> b!1373662 (=> (not res!916974) (not e!778180))))

(assert (=> b!1373662 (= res!916974 (not e!778183))))

(declare-fun res!916972 () Bool)

(assert (=> b!1373662 (=> (not res!916972) (not e!778183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373662 (= res!916972 (validKeyInArray!0 (select (arr!44955 a!3861) from!3239)))))

(declare-fun b!1373663 () Bool)

(assert (=> b!1373663 (= e!778180 e!778181)))

(assert (=> b!1373663 (= c!127786 (validKeyInArray!0 (select (arr!44955 a!3861) from!3239)))))

(assert (= (and d!147963 (not res!916973)) b!1373662))

(assert (= (and b!1373662 res!916972) b!1373660))

(assert (= (and b!1373662 res!916974) b!1373663))

(assert (= (and b!1373663 c!127786) b!1373661))

(assert (= (and b!1373663 (not c!127786)) b!1373659))

(assert (= (or b!1373661 b!1373659) bm!65632))

(declare-fun m!1256889 () Bool)

(assert (=> bm!65632 m!1256889))

(declare-fun m!1256893 () Bool)

(assert (=> bm!65632 m!1256893))

(assert (=> b!1373660 m!1256889))

(assert (=> b!1373660 m!1256889))

(declare-fun m!1256895 () Bool)

(assert (=> b!1373660 m!1256895))

(assert (=> b!1373662 m!1256889))

(assert (=> b!1373662 m!1256889))

(declare-fun m!1256897 () Bool)

(assert (=> b!1373662 m!1256897))

(assert (=> b!1373663 m!1256889))

(assert (=> b!1373663 m!1256889))

(assert (=> b!1373663 m!1256897))

(assert (=> b!1373608 d!147963))

(declare-fun d!147969 () Bool)

(declare-fun res!916976 () Bool)

(declare-fun e!778186 () Bool)

(assert (=> d!147969 (=> res!916976 e!778186)))

(assert (=> d!147969 (= res!916976 (bvsge from!3239 (size!45506 a!3861)))))

(assert (=> d!147969 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778186)))

(declare-fun c!127787 () Bool)

(declare-fun call!65636 () Bool)

(declare-fun bm!65633 () Bool)

(assert (=> bm!65633 (= call!65636 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127787 (Cons!32199 (select (arr!44955 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1373664 () Bool)

(declare-fun e!778185 () Bool)

(assert (=> b!1373664 (= e!778185 call!65636)))

(declare-fun b!1373665 () Bool)

(declare-fun e!778187 () Bool)

(assert (=> b!1373665 (= e!778187 (contains!9741 acc!866 (select (arr!44955 a!3861) from!3239)))))

(declare-fun b!1373666 () Bool)

(assert (=> b!1373666 (= e!778185 call!65636)))

(declare-fun b!1373667 () Bool)

(declare-fun e!778184 () Bool)

(assert (=> b!1373667 (= e!778186 e!778184)))

(declare-fun res!916977 () Bool)

(assert (=> b!1373667 (=> (not res!916977) (not e!778184))))

(assert (=> b!1373667 (= res!916977 (not e!778187))))

(declare-fun res!916975 () Bool)

(assert (=> b!1373667 (=> (not res!916975) (not e!778187))))

(assert (=> b!1373667 (= res!916975 (validKeyInArray!0 (select (arr!44955 a!3861) from!3239)))))

(declare-fun b!1373668 () Bool)

(assert (=> b!1373668 (= e!778184 e!778185)))

(assert (=> b!1373668 (= c!127787 (validKeyInArray!0 (select (arr!44955 a!3861) from!3239)))))

(assert (= (and d!147969 (not res!916976)) b!1373667))

(assert (= (and b!1373667 res!916975) b!1373665))

(assert (= (and b!1373667 res!916977) b!1373668))

(assert (= (and b!1373668 c!127787) b!1373666))

(assert (= (and b!1373668 (not c!127787)) b!1373664))

(assert (= (or b!1373666 b!1373664) bm!65633))

(assert (=> bm!65633 m!1256889))

(declare-fun m!1256899 () Bool)

(assert (=> bm!65633 m!1256899))

(assert (=> b!1373665 m!1256889))

(assert (=> b!1373665 m!1256889))

(declare-fun m!1256901 () Bool)

(assert (=> b!1373665 m!1256901))

(assert (=> b!1373667 m!1256889))

(assert (=> b!1373667 m!1256889))

(assert (=> b!1373667 m!1256897))

(assert (=> b!1373668 m!1256889))

(assert (=> b!1373668 m!1256889))

(assert (=> b!1373668 m!1256897))

(assert (=> b!1373612 d!147969))

(declare-fun d!147971 () Bool)

(assert (=> d!147971 (noDuplicate!2620 newAcc!98)))

(declare-fun lt!603038 () Unit!45345)

(declare-fun choose!2035 (List!32203 List!32203) Unit!45345)

(assert (=> d!147971 (= lt!603038 (choose!2035 newAcc!98 acc!866))))

(declare-fun e!778218 () Bool)

(assert (=> d!147971 e!778218))

(declare-fun res!917007 () Bool)

(assert (=> d!147971 (=> (not res!917007) (not e!778218))))

(assert (=> d!147971 (= res!917007 (subseq!1132 newAcc!98 acc!866))))

(assert (=> d!147971 (= (noDuplicateSubseq!319 newAcc!98 acc!866) lt!603038)))

(declare-fun b!1373700 () Bool)

(assert (=> b!1373700 (= e!778218 (noDuplicate!2620 acc!866))))

(assert (= (and d!147971 res!917007) b!1373700))

(declare-fun m!1256927 () Bool)

(assert (=> d!147971 m!1256927))

(declare-fun m!1256931 () Bool)

(assert (=> d!147971 m!1256931))

(assert (=> d!147971 m!1256855))

(assert (=> b!1373700 m!1256861))

(assert (=> b!1373612 d!147971))

(declare-fun d!147987 () Bool)

(declare-fun res!917016 () Bool)

(declare-fun e!778227 () Bool)

(assert (=> d!147987 (=> res!917016 e!778227)))

(assert (=> d!147987 (= res!917016 (is-Nil!32200 acc!866))))

(assert (=> d!147987 (= (noDuplicate!2620 acc!866) e!778227)))

(declare-fun b!1373709 () Bool)

(declare-fun e!778230 () Bool)

(assert (=> b!1373709 (= e!778227 e!778230)))

(declare-fun res!917018 () Bool)

(assert (=> b!1373709 (=> (not res!917018) (not e!778230))))

(assert (=> b!1373709 (= res!917018 (not (contains!9741 (t!46904 acc!866) (h!33408 acc!866))))))

(declare-fun b!1373710 () Bool)

(assert (=> b!1373710 (= e!778230 (noDuplicate!2620 (t!46904 acc!866)))))

(assert (= (and d!147987 (not res!917016)) b!1373709))

(assert (= (and b!1373709 res!917018) b!1373710))

(declare-fun m!1256933 () Bool)

(assert (=> b!1373709 m!1256933))

(declare-fun m!1256935 () Bool)

(assert (=> b!1373710 m!1256935))

(assert (=> b!1373607 d!147987))

(declare-fun d!147989 () Bool)

(declare-fun lt!603044 () Bool)

(declare-fun content!761 (List!32203) (Set (_ BitVec 64)))

(assert (=> d!147989 (= lt!603044 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!761 newAcc!98)))))

(declare-fun e!778255 () Bool)

(assert (=> d!147989 (= lt!603044 e!778255)))

(declare-fun res!917043 () Bool)

(assert (=> d!147989 (=> (not res!917043) (not e!778255))))

(assert (=> d!147989 (= res!917043 (is-Cons!32199 newAcc!98))))

(assert (=> d!147989 (= (contains!9741 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603044)))

(declare-fun b!1373737 () Bool)

(declare-fun e!778254 () Bool)

(assert (=> b!1373737 (= e!778255 e!778254)))

(declare-fun res!917042 () Bool)

(assert (=> b!1373737 (=> res!917042 e!778254)))

(assert (=> b!1373737 (= res!917042 (= (h!33408 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373738 () Bool)

(assert (=> b!1373738 (= e!778254 (contains!9741 (t!46904 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147989 res!917043) b!1373737))

(assert (= (and b!1373737 (not res!917042)) b!1373738))

(declare-fun m!1256953 () Bool)

(assert (=> d!147989 m!1256953))

(declare-fun m!1256955 () Bool)

(assert (=> d!147989 m!1256955))

(declare-fun m!1256957 () Bool)

(assert (=> b!1373738 m!1256957))

(assert (=> b!1373606 d!147989))

(declare-fun d!147999 () Bool)

(declare-fun lt!603045 () Bool)

(assert (=> d!147999 (= lt!603045 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!761 newAcc!98)))))

(declare-fun e!778257 () Bool)

(assert (=> d!147999 (= lt!603045 e!778257)))

(declare-fun res!917045 () Bool)

(assert (=> d!147999 (=> (not res!917045) (not e!778257))))

(assert (=> d!147999 (= res!917045 (is-Cons!32199 newAcc!98))))

(assert (=> d!147999 (= (contains!9741 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603045)))

(declare-fun b!1373739 () Bool)

(declare-fun e!778256 () Bool)

(assert (=> b!1373739 (= e!778257 e!778256)))

(declare-fun res!917044 () Bool)

(assert (=> b!1373739 (=> res!917044 e!778256)))

(assert (=> b!1373739 (= res!917044 (= (h!33408 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373740 () Bool)

(assert (=> b!1373740 (= e!778256