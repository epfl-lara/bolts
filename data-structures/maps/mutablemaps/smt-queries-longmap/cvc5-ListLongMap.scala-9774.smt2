; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115850 () Bool)

(assert start!115850)

(declare-fun b!1369209 () Bool)

(declare-fun res!912811 () Bool)

(declare-fun e!775652 () Bool)

(assert (=> b!1369209 (=> (not res!912811) (not e!775652))))

(declare-datatypes ((List!32126 0))(
  ( (Nil!32123) (Cons!32122 (h!33331 (_ BitVec 64)) (t!46827 List!32126)) )
))
(declare-fun newAcc!98 () List!32126)

(declare-fun contains!9664 (List!32126 (_ BitVec 64)) Bool)

(assert (=> b!1369209 (= res!912811 (not (contains!9664 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369210 () Bool)

(declare-fun res!912812 () Bool)

(assert (=> b!1369210 (=> (not res!912812) (not e!775652))))

(declare-fun acc!866 () List!32126)

(assert (=> b!1369210 (= res!912812 (not (contains!9664 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369211 () Bool)

(declare-fun res!912814 () Bool)

(assert (=> b!1369211 (=> (not res!912814) (not e!775652))))

(assert (=> b!1369211 (= res!912814 (not (contains!9664 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912816 () Bool)

(assert (=> start!115850 (=> (not res!912816) (not e!775652))))

(declare-datatypes ((array!92920 0))(
  ( (array!92921 (arr!44878 (Array (_ BitVec 32) (_ BitVec 64))) (size!45429 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92920)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115850 (= res!912816 (and (bvslt (size!45429 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45429 a!3861))))))

(assert (=> start!115850 e!775652))

(declare-fun array_inv!33823 (array!92920) Bool)

(assert (=> start!115850 (array_inv!33823 a!3861)))

(assert (=> start!115850 true))

(declare-fun b!1369212 () Bool)

(declare-fun res!912815 () Bool)

(assert (=> b!1369212 (=> (not res!912815) (not e!775652))))

(declare-fun subseq!1055 (List!32126 List!32126) Bool)

(assert (=> b!1369212 (= res!912815 (subseq!1055 newAcc!98 acc!866))))

(declare-fun b!1369213 () Bool)

(declare-fun res!912808 () Bool)

(declare-fun e!775654 () Bool)

(assert (=> b!1369213 (=> (not res!912808) (not e!775654))))

(assert (=> b!1369213 (= res!912808 (bvsge from!3239 (size!45429 a!3861)))))

(declare-fun b!1369214 () Bool)

(declare-fun res!912810 () Bool)

(assert (=> b!1369214 (=> (not res!912810) (not e!775652))))

(assert (=> b!1369214 (= res!912810 (not (contains!9664 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369215 () Bool)

(declare-fun noDuplicate!2543 (List!32126) Bool)

(assert (=> b!1369215 (= e!775654 (not (noDuplicate!2543 newAcc!98)))))

(declare-fun b!1369216 () Bool)

(assert (=> b!1369216 (= e!775652 e!775654)))

(declare-fun res!912809 () Bool)

(assert (=> b!1369216 (=> (not res!912809) (not e!775654))))

(declare-fun arrayNoDuplicates!0 (array!92920 (_ BitVec 32) List!32126) Bool)

(assert (=> b!1369216 (= res!912809 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45191 0))(
  ( (Unit!45192) )
))
(declare-fun lt!602174 () Unit!45191)

(declare-fun noDuplicateSubseq!242 (List!32126 List!32126) Unit!45191)

(assert (=> b!1369216 (= lt!602174 (noDuplicateSubseq!242 newAcc!98 acc!866))))

(declare-fun b!1369217 () Bool)

(declare-fun res!912813 () Bool)

(assert (=> b!1369217 (=> (not res!912813) (not e!775652))))

(assert (=> b!1369217 (= res!912813 (noDuplicate!2543 acc!866))))

(assert (= (and start!115850 res!912816) b!1369217))

(assert (= (and b!1369217 res!912813) b!1369214))

(assert (= (and b!1369214 res!912810) b!1369210))

(assert (= (and b!1369210 res!912812) b!1369211))

(assert (= (and b!1369211 res!912814) b!1369209))

(assert (= (and b!1369209 res!912811) b!1369212))

(assert (= (and b!1369212 res!912815) b!1369216))

(assert (= (and b!1369216 res!912809) b!1369213))

(assert (= (and b!1369213 res!912808) b!1369215))

(declare-fun m!1253059 () Bool)

(assert (=> b!1369212 m!1253059))

(declare-fun m!1253061 () Bool)

(assert (=> start!115850 m!1253061))

(declare-fun m!1253063 () Bool)

(assert (=> b!1369210 m!1253063))

(declare-fun m!1253065 () Bool)

(assert (=> b!1369215 m!1253065))

(declare-fun m!1253067 () Bool)

(assert (=> b!1369214 m!1253067))

(declare-fun m!1253069 () Bool)

(assert (=> b!1369211 m!1253069))

(declare-fun m!1253071 () Bool)

(assert (=> b!1369217 m!1253071))

(declare-fun m!1253073 () Bool)

(assert (=> b!1369209 m!1253073))

(declare-fun m!1253075 () Bool)

(assert (=> b!1369216 m!1253075))

(declare-fun m!1253077 () Bool)

(assert (=> b!1369216 m!1253077))

(push 1)

(assert (not b!1369215))

(assert (not b!1369212))

(assert (not start!115850))

(assert (not b!1369214))

(assert (not b!1369217))

(assert (not b!1369210))

(assert (not b!1369209))

(assert (not b!1369216))

(assert (not b!1369211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146925 () Bool)

(declare-fun lt!602183 () Bool)

(declare-fun content!729 (List!32126) (Set (_ BitVec 64)))

(assert (=> d!146925 (= lt!602183 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!729 acc!866)))))

(declare-fun e!775690 () Bool)

(assert (=> d!146925 (= lt!602183 e!775690)))

(declare-fun res!912885 () Bool)

(assert (=> d!146925 (=> (not res!912885) (not e!775690))))

(assert (=> d!146925 (= res!912885 (is-Cons!32122 acc!866))))

(assert (=> d!146925 (= (contains!9664 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602183)))

(declare-fun b!1369291 () Bool)

(declare-fun e!775689 () Bool)

(assert (=> b!1369291 (= e!775690 e!775689)))

(declare-fun res!912884 () Bool)

(assert (=> b!1369291 (=> res!912884 e!775689)))

(assert (=> b!1369291 (= res!912884 (= (h!33331 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369292 () Bool)

(assert (=> b!1369292 (= e!775689 (contains!9664 (t!46827 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146925 res!912885) b!1369291))

(assert (= (and b!1369291 (not res!912884)) b!1369292))

(declare-fun m!1253127 () Bool)

(assert (=> d!146925 m!1253127))

(declare-fun m!1253129 () Bool)

(assert (=> d!146925 m!1253129))

(declare-fun m!1253131 () Bool)

(assert (=> b!1369292 m!1253131))

(assert (=> b!1369214 d!146925))

(declare-fun d!146931 () Bool)

(declare-fun lt!602186 () Bool)

(assert (=> d!146931 (= lt!602186 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!729 newAcc!98)))))

(declare-fun e!775696 () Bool)

(assert (=> d!146931 (= lt!602186 e!775696)))

(declare-fun res!912891 () Bool)

(assert (=> d!146931 (=> (not res!912891) (not e!775696))))

(assert (=> d!146931 (= res!912891 (is-Cons!32122 newAcc!98))))

(assert (=> d!146931 (= (contains!9664 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602186)))

(declare-fun b!1369297 () Bool)

(declare-fun e!775695 () Bool)

(assert (=> b!1369297 (= e!775696 e!775695)))

(declare-fun res!912890 () Bool)

(assert (=> b!1369297 (=> res!912890 e!775695)))

(assert (=> b!1369297 (= res!912890 (= (h!33331 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369298 () Bool)

(assert (=> b!1369298 (= e!775695 (contains!9664 (t!46827 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146931 res!912891) b!1369297))

(assert (= (and b!1369297 (not res!912890)) b!1369298))

(declare-fun m!1253133 () Bool)

(assert (=> d!146931 m!1253133))

(declare-fun m!1253135 () Bool)

(assert (=> d!146931 m!1253135))

(declare-fun m!1253137 () Bool)

(assert (=> b!1369298 m!1253137))

(assert (=> b!1369209 d!146931))

(declare-fun d!146933 () Bool)

(declare-fun lt!602189 () Bool)

(assert (=> d!146933 (= lt!602189 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!729 acc!866)))))

(declare-fun e!775700 () Bool)

(assert (=> d!146933 (= lt!602189 e!775700)))

(declare-fun res!912895 () Bool)

(assert (=> d!146933 (=> (not res!912895) (not e!775700))))

(assert (=> d!146933 (= res!912895 (is-Cons!32122 acc!866))))

(assert (=> d!146933 (= (contains!9664 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602189)))

(declare-fun b!1369301 () Bool)

(declare-fun e!775699 () Bool)

(assert (=> b!1369301 (= e!775700 e!775699)))

(declare-fun res!912894 () Bool)

(assert (=> b!1369301 (=> res!912894 e!775699)))

(assert (=> b!1369301 (= res!912894 (= (h!33331 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369302 () Bool)

(assert (=> b!1369302 (= e!775699 (contains!9664 (t!46827 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146933 res!912895) b!1369301))

(assert (= (and b!1369301 (not res!912894)) b!1369302))

(assert (=> d!146933 m!1253127))

(declare-fun m!1253139 () Bool)

(assert (=> d!146933 m!1253139))

(declare-fun m!1253141 () Bool)

(assert (=> b!1369302 m!1253141))

(assert (=> b!1369210 d!146933))

(declare-fun d!146935 () Bool)

(assert (=> d!146935 (= (array_inv!33823 a!3861) (bvsge (size!45429 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115850 d!146935))

(declare-fun d!146937 () Bool)

(declare-fun res!912907 () Bool)

(declare-fun e!775712 () Bool)

(assert (=> d!146937 (=> res!912907 e!775712)))

(assert (=> d!146937 (= res!912907 (is-Nil!32123 newAcc!98))))

(assert (=> d!146937 (= (noDuplicate!2543 newAcc!98) e!775712)))

(declare-fun b!1369314 () Bool)

(declare-fun e!775713 () Bool)

(assert (=> b!1369314 (= e!775712 e!775713)))

(declare-fun res!912908 () Bool)

(assert (=> b!1369314 (=> (not res!912908) (not e!775713))))

(assert (=> b!1369314 (= res!912908 (not (contains!9664 (t!46827 newAcc!98) (h!33331 newAcc!98))))))

(declare-fun b!1369315 () Bool)

(assert (=> b!1369315 (= e!775713 (noDuplicate!2543 (t!46827 newAcc!98)))))

(assert (= (and d!146937 (not res!912907)) b!1369314))

(assert (= (and b!1369314 res!912908) b!1369315))

(declare-fun m!1253151 () Bool)

(assert (=> b!1369314 m!1253151))

(declare-fun m!1253153 () Bool)

(assert (=> b!1369315 m!1253153))

(assert (=> b!1369215 d!146937))

(declare-fun d!146943 () Bool)

(declare-fun res!912909 () Bool)

(declare-fun e!775714 () Bool)

(assert (=> d!146943 (=> res!912909 e!775714)))

(assert (=> d!146943 (= res!912909 (is-Nil!32123 acc!866))))

(assert (=> d!146943 (= (noDuplicate!2543 acc!866) e!775714)))

(declare-fun b!1369316 () Bool)

(declare-fun e!775715 () Bool)

(assert (=> b!1369316 (= e!775714 e!775715)))

(declare-fun res!912910 () Bool)

(assert (=> b!1369316 (=> (not res!912910) (not e!775715))))

(assert (=> b!1369316 (= res!912910 (not (contains!9664 (t!46827 acc!866) (h!33331 acc!866))))))

(declare-fun b!1369317 () Bool)

(assert (=> b!1369317 (= e!775715 (noDuplicate!2543 (t!46827 acc!866)))))

(assert (= (and d!146943 (not res!912909)) b!1369316))

(assert (= (and b!1369316 res!912910) b!1369317))

(declare-fun m!1253155 () Bool)

(assert (=> b!1369316 m!1253155))

(declare-fun m!1253157 () Bool)

(assert (=> b!1369317 m!1253157))

(assert (=> b!1369217 d!146943))

(declare-fun d!146945 () Bool)

(declare-fun res!912944 () Bool)

(declare-fun e!775754 () Bool)

(assert (=> d!146945 (=> res!912944 e!775754)))

(assert (=> d!146945 (= res!912944 (bvsge from!3239 (size!45429 a!3861)))))

(assert (=> d!146945 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775754)))

(declare-fun e!775756 () Bool)

(declare-fun b!1369359 () Bool)

(assert (=> b!1369359 (= e!775756 (contains!9664 acc!866 (select (arr!44878 a!3861) from!3239)))))

(declare-fun b!1369360 () Bool)

(declare-fun e!775757 () Bool)

(declare-fun call!65512 () Bool)

(assert (=> b!1369360 (= e!775757 call!65512)))

(declare-fun bm!65509 () Bool)

(declare-fun c!127651 () Bool)

(assert (=> bm!65509 (= call!65512 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127651 (Cons!32122 (select (arr!44878 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1369361 () Bool)

(declare-fun e!775755 () Bool)

(assert (=> b!1369361 (= e!775754 e!775755)))

(declare-fun res!912946 () Bool)

(assert (=> b!1369361 (=> (not res!912946) (not e!775755))))

(assert (=> b!1369361 (= res!912946 (not e!775756))))

(declare-fun res!912945 () Bool)

(assert (=> b!1369361 (=> (not res!912945) (not e!775756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369361 (= res!912945 (validKeyInArray!0 (select (arr!44878 a!3861) from!3239)))))

(declare-fun b!1369362 () Bool)

(assert (=> b!1369362 (= e!775757 call!65512)))

(declare-fun b!1369363 () Bool)

(assert (=> b!1369363 (= e!775755 e!775757)))

(assert (=> b!1369363 (= c!127651 (validKeyInArray!0 (select (arr!44878 a!3861) from!3239)))))

(assert (= (and d!146945 (not res!912944)) b!1369361))

(assert (= (and b!1369361 res!912945) b!1369359))

(assert (= (and b!1369361 res!912946) b!1369363))

(assert (= (and b!1369363 c!127651) b!1369362))

(assert (= (and b!1369363 (not c!127651)) b!1369360))

(assert (= (or b!1369362 b!1369360) bm!65509))

(declare-fun m!1253183 () Bool)

(assert (=> b!1369359 m!1253183))

(assert (=> b!1369359 m!1253183))

(declare-fun m!1253185 () Bool)

(assert (=> b!1369359 m!1253185))

(assert (=> bm!65509 m!1253183))

(declare-fun m!1253187 () Bool)

(assert (=> bm!65509 m!1253187))

(assert (=> b!1369361 m!1253183))

(assert (=> b!1369361 m!1253183))

(declare-fun m!1253189 () Bool)

(assert (=> b!1369361 m!1253189))

(assert (=> b!1369363 m!1253183))

(assert (=> b!1369363 m!1253183))

(assert (=> b!1369363 m!1253189))

(assert (=> b!1369216 d!146945))

(declare-fun d!146955 () Bool)

(assert (=> d!146955 (noDuplicate!2543 newAcc!98)))

(declare-fun lt!602204 () Unit!45191)

(declare-fun choose!2011 (List!32126 List!32126) Unit!45191)

(assert (=> d!146955 (= lt!602204 (choose!2011 newAcc!98 acc!866))))

(declare-fun e!775779 () Bool)

(assert (=> d!146955 e!775779))

(declare-fun res!912968 () Bool)

(assert (=> d!146955 (=> (not res!912968) (not e!775779))))

(assert (=> d!146955 (= res!912968 (subseq!1055 newAcc!98 acc!866))))

(assert (=> d!146955 (= (noDuplicateSubseq!242 newAcc!98 acc!866) lt!602204)))

(declare-fun b!1369387 () Bool)

(assert (=> b!1369387 (= e!775779 (noDuplicate!2543 acc!866))))

(assert (= (and d!146955 res!912968) b!1369387))

(assert (=> d!146955 m!1253065))

