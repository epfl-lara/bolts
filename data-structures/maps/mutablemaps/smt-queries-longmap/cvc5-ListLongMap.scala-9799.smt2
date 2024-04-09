; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116444 () Bool)

(assert start!116444)

(declare-fun b!1373550 () Bool)

(declare-fun res!916880 () Bool)

(declare-fun e!778122 () Bool)

(assert (=> b!1373550 (=> (not res!916880) (not e!778122))))

(declare-datatypes ((List!32201 0))(
  ( (Nil!32198) (Cons!32197 (h!33406 (_ BitVec 64)) (t!46902 List!32201)) )
))
(declare-fun acc!866 () List!32201)

(declare-fun contains!9739 (List!32201 (_ BitVec 64)) Bool)

(assert (=> b!1373550 (= res!916880 (not (contains!9739 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373551 () Bool)

(declare-fun res!916883 () Bool)

(assert (=> b!1373551 (=> (not res!916883) (not e!778122))))

(declare-fun noDuplicate!2618 (List!32201) Bool)

(assert (=> b!1373551 (= res!916883 (noDuplicate!2618 acc!866))))

(declare-fun b!1373552 () Bool)

(declare-fun res!916881 () Bool)

(assert (=> b!1373552 (=> (not res!916881) (not e!778122))))

(declare-fun newAcc!98 () List!32201)

(assert (=> b!1373552 (= res!916881 (not (contains!9739 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916882 () Bool)

(assert (=> start!116444 (=> (not res!916882) (not e!778122))))

(declare-datatypes ((array!93100 0))(
  ( (array!93101 (arr!44953 (Array (_ BitVec 32) (_ BitVec 64))) (size!45504 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93100)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116444 (= res!916882 (and (bvslt (size!45504 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45504 a!3861))))))

(assert (=> start!116444 e!778122))

(declare-fun array_inv!33898 (array!93100) Bool)

(assert (=> start!116444 (array_inv!33898 a!3861)))

(assert (=> start!116444 true))

(declare-fun b!1373553 () Bool)

(declare-fun e!778123 () Bool)

(assert (=> b!1373553 (= e!778122 e!778123)))

(declare-fun res!916884 () Bool)

(assert (=> b!1373553 (=> (not res!916884) (not e!778123))))

(declare-fun arrayNoDuplicates!0 (array!93100 (_ BitVec 32) List!32201) Bool)

(assert (=> b!1373553 (= res!916884 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45341 0))(
  ( (Unit!45342) )
))
(declare-fun lt!603023 () Unit!45341)

(declare-fun noDuplicateSubseq!317 (List!32201 List!32201) Unit!45341)

(assert (=> b!1373553 (= lt!603023 (noDuplicateSubseq!317 newAcc!98 acc!866))))

(declare-fun b!1373554 () Bool)

(assert (=> b!1373554 (= e!778123 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1373555 () Bool)

(declare-fun res!916887 () Bool)

(assert (=> b!1373555 (=> (not res!916887) (not e!778123))))

(assert (=> b!1373555 (= res!916887 (bvsge from!3239 (size!45504 a!3861)))))

(declare-fun b!1373556 () Bool)

(declare-fun res!916879 () Bool)

(assert (=> b!1373556 (=> (not res!916879) (not e!778122))))

(assert (=> b!1373556 (= res!916879 (not (contains!9739 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373557 () Bool)

(declare-fun res!916885 () Bool)

(assert (=> b!1373557 (=> (not res!916885) (not e!778122))))

(assert (=> b!1373557 (= res!916885 (not (contains!9739 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373558 () Bool)

(declare-fun res!916886 () Bool)

(assert (=> b!1373558 (=> (not res!916886) (not e!778122))))

(declare-fun subseq!1130 (List!32201 List!32201) Bool)

(assert (=> b!1373558 (= res!916886 (subseq!1130 newAcc!98 acc!866))))

(assert (= (and start!116444 res!916882) b!1373551))

(assert (= (and b!1373551 res!916883) b!1373556))

(assert (= (and b!1373556 res!916879) b!1373550))

(assert (= (and b!1373550 res!916880) b!1373552))

(assert (= (and b!1373552 res!916881) b!1373557))

(assert (= (and b!1373557 res!916885) b!1373558))

(assert (= (and b!1373558 res!916886) b!1373553))

(assert (= (and b!1373553 res!916884) b!1373555))

(assert (= (and b!1373555 res!916887) b!1373554))

(declare-fun m!1256809 () Bool)

(assert (=> b!1373550 m!1256809))

(declare-fun m!1256811 () Bool)

(assert (=> start!116444 m!1256811))

(declare-fun m!1256813 () Bool)

(assert (=> b!1373551 m!1256813))

(declare-fun m!1256815 () Bool)

(assert (=> b!1373557 m!1256815))

(declare-fun m!1256817 () Bool)

(assert (=> b!1373553 m!1256817))

(declare-fun m!1256819 () Bool)

(assert (=> b!1373553 m!1256819))

(declare-fun m!1256821 () Bool)

(assert (=> b!1373558 m!1256821))

(declare-fun m!1256823 () Bool)

(assert (=> b!1373556 m!1256823))

(declare-fun m!1256825 () Bool)

(assert (=> b!1373552 m!1256825))

(declare-fun m!1256827 () Bool)

(assert (=> b!1373554 m!1256827))

(push 1)

(assert (not start!116444))

(assert (not b!1373553))

(assert (not b!1373554))

(assert (not b!1373557))

(assert (not b!1373558))

(assert (not b!1373550))

(assert (not b!1373556))

(assert (not b!1373552))

(assert (not b!1373551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1373649 () Bool)

(declare-fun e!778173 () Bool)

(declare-fun e!778174 () Bool)

(assert (=> b!1373649 (= e!778173 e!778174)))

(declare-fun res!916968 () Bool)

(assert (=> b!1373649 (=> (not res!916968) (not e!778174))))

(declare-fun e!778175 () Bool)

(assert (=> b!1373649 (= res!916968 (not e!778175))))

(declare-fun res!916966 () Bool)

(assert (=> b!1373649 (=> (not res!916966) (not e!778175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373649 (= res!916966 (validKeyInArray!0 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373650 () Bool)

(declare-fun e!778172 () Bool)

(assert (=> b!1373650 (= e!778174 e!778172)))

(declare-fun c!127784 () Bool)

(assert (=> b!1373650 (= c!127784 (validKeyInArray!0 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373651 () Bool)

(declare-fun call!65633 () Bool)

(assert (=> b!1373651 (= e!778172 call!65633)))

(declare-fun b!1373652 () Bool)

(assert (=> b!1373652 (= e!778175 (contains!9739 newAcc!98 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373653 () Bool)

(assert (=> b!1373653 (= e!778172 call!65633)))

(declare-fun d!147959 () Bool)

(declare-fun res!916967 () Bool)

(assert (=> d!147959 (=> res!916967 e!778173)))

(assert (=> d!147959 (= res!916967 (bvsge from!3239 (size!45504 a!3861)))))

(assert (=> d!147959 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!778173)))

(declare-fun bm!65630 () Bool)

(assert (=> bm!65630 (= call!65633 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127784 (Cons!32197 (select (arr!44953 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147959 (not res!916967)) b!1373649))

(assert (= (and b!1373649 res!916966) b!1373652))

(assert (= (and b!1373649 res!916968) b!1373650))

(assert (= (and b!1373650 c!127784) b!1373651))

(assert (= (and b!1373650 (not c!127784)) b!1373653))

(assert (= (or b!1373651 b!1373653) bm!65630))

(declare-fun m!1256875 () Bool)

(assert (=> b!1373649 m!1256875))

(assert (=> b!1373649 m!1256875))

(declare-fun m!1256877 () Bool)

(assert (=> b!1373649 m!1256877))

(assert (=> b!1373650 m!1256875))

(assert (=> b!1373650 m!1256875))

(assert (=> b!1373650 m!1256877))

(assert (=> b!1373652 m!1256875))

(assert (=> b!1373652 m!1256875))

(declare-fun m!1256879 () Bool)

(assert (=> b!1373652 m!1256879))

(assert (=> bm!65630 m!1256875))

(declare-fun m!1256881 () Bool)

(assert (=> bm!65630 m!1256881))

(assert (=> b!1373554 d!147959))

(declare-fun b!1373685 () Bool)

(declare-fun e!778207 () Bool)

(declare-fun e!778205 () Bool)

(assert (=> b!1373685 (= e!778207 e!778205)))

(declare-fun res!916996 () Bool)

(assert (=> b!1373685 (=> (not res!916996) (not e!778205))))

(assert (=> b!1373685 (= res!916996 (is-Cons!32197 acc!866))))

(declare-fun b!1373688 () Bool)

(declare-fun e!778204 () Bool)

(assert (=> b!1373688 (= e!778204 (subseq!1130 newAcc!98 (t!46902 acc!866)))))

(declare-fun b!1373687 () Bool)

(declare-fun e!778206 () Bool)

(assert (=> b!1373687 (= e!778206 (subseq!1130 (t!46902 newAcc!98) (t!46902 acc!866)))))

(declare-fun d!147965 () Bool)

(declare-fun res!916995 () Bool)

(assert (=> d!147965 (=> res!916995 e!778207)))

(assert (=> d!147965 (= res!916995 (is-Nil!32198 newAcc!98))))

(assert (=> d!147965 (= (subseq!1130 newAcc!98 acc!866) e!778207)))

(declare-fun b!1373686 () Bool)

(assert (=> b!1373686 (= e!778205 e!778204)))

(declare-fun res!916997 () Bool)

(assert (=> b!1373686 (=> res!916997 e!778204)))

(assert (=> b!1373686 (= res!916997 e!778206)))

(declare-fun res!916994 () Bool)

(assert (=> b!1373686 (=> (not res!916994) (not e!778206))))

(assert (=> b!1373686 (= res!916994 (= (h!33406 newAcc!98) (h!33406 acc!866)))))

(assert (= (and d!147965 (not res!916995)) b!1373685))

(assert (= (and b!1373685 res!916996) b!1373686))

(assert (= (and b!1373686 res!916994) b!1373687))

(assert (= (and b!1373686 (not res!916997)) b!1373688))

(declare-fun m!1256913 () Bool)

(assert (=> b!1373688 m!1256913))

(declare-fun m!1256917 () Bool)

(assert (=> b!1373687 m!1256917))

(assert (=> b!1373558 d!147965))

(declare-fun b!1373693 () Bool)

(declare-fun e!778213 () Bool)

(declare-fun e!778214 () Bool)

(assert (=> b!1373693 (= e!778213 e!778214)))

(declare-fun res!917004 () Bool)

(assert (=> b!1373693 (=> (not res!917004) (not e!778214))))

(declare-fun e!778215 () Bool)

(assert (=> b!1373693 (= res!917004 (not e!778215))))

(declare-fun res!917002 () Bool)

(assert (=> b!1373693 (=> (not res!917002) (not e!778215))))

(assert (=> b!1373693 (= res!917002 (validKeyInArray!0 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373694 () Bool)

(declare-fun e!778212 () Bool)

(assert (=> b!1373694 (= e!778214 e!778212)))

(declare-fun c!127788 () Bool)

(assert (=> b!1373694 (= c!127788 (validKeyInArray!0 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373695 () Bool)

(declare-fun call!65637 () Bool)

(assert (=> b!1373695 (= e!778212 call!65637)))

(declare-fun b!1373696 () Bool)

(assert (=> b!1373696 (= e!778215 (contains!9739 acc!866 (select (arr!44953 a!3861) from!3239)))))

(declare-fun b!1373697 () Bool)

(assert (=> b!1373697 (= e!778212 call!65637)))

(declare-fun d!147977 () Bool)

(declare-fun res!917003 () Bool)

(assert (=> d!147977 (=> res!917003 e!778213)))

(assert (=> d!147977 (= res!917003 (bvsge from!3239 (size!45504 a!3861)))))

(assert (=> d!147977 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778213)))

(declare-fun bm!65634 () Bool)

(assert (=> bm!65634 (= call!65637 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127788 (Cons!32197 (select (arr!44953 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147977 (not res!917003)) b!1373693))

(assert (= (and b!1373693 res!917002) b!1373696))

(assert (= (and b!1373693 res!917004) b!1373694))

(assert (= (and b!1373694 c!127788) b!1373695))

(assert (= (and b!1373694 (not c!127788)) b!1373697))

(assert (= (or b!1373695 b!1373697) bm!65634))

(assert (=> b!1373693 m!1256875))

(assert (=> b!1373693 m!1256875))

(assert (=> b!1373693 m!1256877))

(assert (=> b!1373694 m!1256875))

(assert (=> b!1373694 m!1256875))

(assert (=> b!1373694 m!1256877))

(assert (=> b!1373696 m!1256875))

(assert (=> b!1373696 m!1256875))

(declare-fun m!1256921 () Bool)

(assert (=> b!1373696 m!1256921))

(assert (=> bm!65634 m!1256875))

(declare-fun m!1256923 () Bool)

(assert (=> bm!65634 m!1256923))

(assert (=> b!1373553 d!147977))

(declare-fun d!147983 () Bool)

(assert (=> d!147983 (noDuplicate!2618 newAcc!98)))

(declare-fun lt!603041 () Unit!45341)

(declare-fun choose!2034 (List!32201 List!32201) Unit!45341)

(assert (=> d!147983 (= lt!603041 (choose!2034 newAcc!98 acc!866))))

(declare-fun e!778235 () Bool)

(assert (=> d!147983 e!778235))

(declare-fun res!917024 () Bool)

(assert (=> d!147983 (=> (not res!917024) (not e!778235))))

(assert (=> d!147983 (= res!917024 (subseq!1130 newAcc!98 acc!866))))

(assert (=> d!147983 (= (noDuplicateSubseq!317 newAcc!98 acc!866) lt!603041)))

(declare-fun b!1373717 () Bool)

(assert (=> b!1373717 (= e!778235 (noDuplicate!2618 acc!866))))

(assert (= (and d!147983 res!917024) b!1373717))

(declare-fun m!1256937 () Bool)

(assert (=> d!147983 m!1256937))

(declare-fun m!1256939 () Bool)

(assert (=> d!147983 m!1256939))

(assert (=> d!147983 m!1256821))

(assert (=> b!1373717 m!1256813))

(assert (=> b!1373553 d!147983))

(declare-fun d!147991 () Bool)

(declare-fun res!917040 () Bool)

(declare-fun e!778252 () Bool)

(assert (=> d!147991 (=> res!917040 e!778252)))

(assert (=> d!147991 (= res!917040 (is-Nil!32198 acc!866))))

(assert (=> d!147991 (= (noDuplicate!2618 acc!866) e!778252)))

(declare-fun b!1373735 () Bool)

(declare-fun e!778253 () Bool)

(assert (=> b!1373735 (= e!778252 e!778253)))

(declare-fun res!917041 () Bool)

(assert (=> b!1373735 (=> (not res!917041) (not e!778253))))

(assert (=> b!1373735 (= res!917041 (not (contains!9739 (t!46902 acc!866) (h!33406 acc!866))))))

(declare-fun b!1373736 () Bool)

(assert (=> b!1373736 (= e!778253 (noDuplicate!2618 (t!46902 acc!866)))))

(assert (= (and d!147991 (not res!917040)) b!1373735))

(assert (= (and b!1373735 res!917041) b!1373736))

(declare-fun m!1256949 () Bool)

(assert (=> b!1373735 m!1256949))

(declare-fun m!1256951 () Bool)

(assert (=> b!1373736 m!1256951))

(assert (=> b!1373551 d!147991))

(declare-fun d!147997 () Bool)

(declare-fun lt!603052 () Bool)

(declare-fun content!760 (List!32201) (Set (_ BitVec 64)))

(assert (=> d!147997 (= lt!603052 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!760 newAcc!98)))))

(declare-fun e!778267 () Bool)

(assert (=> d!147997 (= lt!603052 e!778267)))

(declare-fun res!917055 () Bool)

(assert (=> d!147997 (=> (not res!917055) (not e!778267))))

(assert (=> d!147997 (= res!917055 (is-Cons!32197 newAcc!98))))

(assert (=> d!147997 (= (contains!9739 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603052)))

(declare-fun b!1373750 () Bool)

(declare-fun e!778268 () Bool)

(assert (=> b!1373750 (= e!778267 e!778268)))

(declare-fun res!917056 () Bool)

(assert (=> b!1373750 (=> res!917056 e!778268)))

(assert (=> b!1373750 (= res!917056 (= (h!33406 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373751 () Bool)

(assert (=> b!1373751 (= e!778268 (contains!9739 (t!46902 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147997 res!917055) b!1373750))

(assert (= (and b!1373750 (not res!917056)) b!1373751))

(declare-fun m!1256973 () Bool)

(assert (=> d!147997 m!1256973))

(declare-fun m!1256975 () Bool)

(assert (=> d!147997 m!1256975))

(declare-fun m!1256977 () Bool)

(assert (=> b!1373751 m!1256977))

(assert (=> b!1373552 d!147997))

(declare-fun d!148005 () Bool)

(declare-fun lt!603053 () Bool)

(assert (=> d!148005 (= lt!603053 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!760 newAcc!98)))))

(declare-fun e!778273 () Bool)

(assert (=> d!148005 (= lt!603053 e!778273)))

(declare-fun res!917061 () Bool)

(assert (=> d!148005 (=> (not res!917061) (not e!778273))))

(assert (=> d!148005 (= res!917061 (is-Cons!32197 newAcc!98))))

(assert (=> d!148005 (= (contains!9739 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603053)))

(declare-fun b!1373756 () Bool)

(declare-fun e!778274 () Bool)

(assert (=> b!1373756 (= e!778273 e!778274)))

(declare-fun res!917062 () Bool)

(assert (=> b!1373756 (=> res!917062 e!778274)))

(assert (=> b!1373756 (= res!917062 (= (h!33406 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373757 () Bool)

(assert (=> b!1373757 (= e!778274 (contains!9739 (t!46902 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!148005 res!917061) b!1373756))

(assert (= (and b!1373756 (not res!917062)) b!1373757))

(assert (=> d!148005 m!1256973))

(declare-fun m!1256979 () Bool)

(assert (=> d!148005 m!1256979))

(declare-fun m!1256981 () Bool)

(assert (=> b!1373757 m!1256981))

(assert (=> b!1373557 d!148005))

(declare-fun d!148007 () Bool)

(declare-fun lt!603054 () Bool)

(assert (=> d!148007 (= lt!603054 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!760 acc!866)))))

(declare-fun e!778279 () Bool)

(assert (=> d!148007 (= lt!603054 e!778279)))

(declare-fun res!917067 () Bool)

(assert (=> d!148007 (=> (not res!917067) (not e!778279))))

(assert (=> d!148007 (= res!917067 (is-Cons!32197 acc!866))))

(assert (=> d!148007 (= (contains!9739 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603054)))

(declare-fun b!1373762 () Bool)

(declare-fun e!778280 () Bool)

(assert (=> b!1373762 (= e!778279 e!778280)))

(declare-fun res!917068 () Bool)

(assert (=> b!1373762 (=> res!917068 e!778280)))

(assert (=> b!1373762 (= res!917068 (= (h!33406 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373763 () Bool)

(assert (=> b!1373763 (= e!778280 (contains!9739 (t!46902 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!148007 res!917067) b!1373762))

(assert (= (and b!1373762 (not res!917068)) b!1373763))

(declare-fun m!1256983 () Bool)

(assert (=> d!148007 m!1256983))

(declare-fun m!1256985 () Bool)

(assert (=> d!148007 m!1256985))

(declare-fun m!1256987 () Bool)

(assert (=> b!1373763 m!1256987))

(assert (=> b!1373550 d!148007))

(declare-fun d!148009 () Bool)

(assert (=> d!148009 (= (array_inv!33898 a!3861) (bvsge (size!45504 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116444 d!148009))

(declare-fun d!148011 () Bool)

(declare-fun lt!603055 () Bool)

(assert (=> d!148011 (= lt!603055 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!760 acc!866)))))

(declare-fun e!778281 () Bool)

(assert (=> d!148011 (= lt!603055 e!778281)))

(declare-fun res!917069 () Bool)

(assert (=> d!148011 (=> (not res!917069) (not e!778281))))

(assert (=> d!148011 (= res!917069 (is-Cons!32197 acc!866))))

(assert (=> d!148011 (= (contains!9739 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603055)))

(declare-fun b!1373764 () Bool)

(declare-fun e!778282 () Bool)

(assert (=> b!1373764 (= e!778281 e!778282)))

(declare-fun res!917070 () Bool)

(assert (=> b!1373764 (=> res!917070 e!778282)))

(assert (=> b!1373764 (= res!917070 (= (h!33406 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373765 () Bool)

(assert (=> b!1373765 (= e!778282 (contains!9739 (t!46902 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!148011 res!917069) b!1373764))

(assert (= (and b!1373764 (not res!917070)) b!1373765))

(assert (=> d!148011 m!1256983))

(declare-fun m!1256989 () Bool)

(assert (=> d!148011 m!1256989))

(declare-fun m!1256991 () Bool)

(assert (=> b!1373765 m!1256991))

(assert (=> b!1373556 d!148011))

(push 1)

