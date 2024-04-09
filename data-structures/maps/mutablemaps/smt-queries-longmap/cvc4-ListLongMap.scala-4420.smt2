; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61108 () Bool)

(assert start!61108)

(declare-fun b!684925 () Bool)

(declare-datatypes ((Unit!24107 0))(
  ( (Unit!24108) )
))
(declare-fun e!390036 () Unit!24107)

(declare-fun Unit!24109 () Unit!24107)

(assert (=> b!684925 (= e!390036 Unit!24109)))

(declare-fun lt!314513 () Unit!24107)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39598 0))(
  ( (array!39599 (arr!18974 (Array (_ BitVec 32) (_ BitVec 64))) (size!19343 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39598 (_ BitVec 64) (_ BitVec 32)) Unit!24107)

(assert (=> b!684925 (= lt!314513 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684925 false))

(declare-fun b!684926 () Bool)

(declare-fun e!390040 () Unit!24107)

(declare-fun Unit!24110 () Unit!24107)

(assert (=> b!684926 (= e!390040 Unit!24110)))

(declare-fun b!684927 () Bool)

(declare-fun e!390038 () Bool)

(declare-datatypes ((List!13068 0))(
  ( (Nil!13065) (Cons!13064 (h!14109 (_ BitVec 64)) (t!19325 List!13068)) )
))
(declare-fun lt!314511 () List!13068)

(declare-fun contains!3611 (List!13068 (_ BitVec 64)) Bool)

(assert (=> b!684927 (= e!390038 (contains!3611 lt!314511 k!2843))))

(declare-fun b!684928 () Bool)

(declare-fun res!450525 () Bool)

(declare-fun e!390041 () Bool)

(assert (=> b!684928 (=> (not res!450525) (not e!390041))))

(declare-fun acc!681 () List!13068)

(declare-fun noDuplicate!858 (List!13068) Bool)

(assert (=> b!684928 (= res!450525 (noDuplicate!858 acc!681))))

(declare-fun b!684929 () Bool)

(declare-fun res!450533 () Bool)

(assert (=> b!684929 (=> (not res!450533) (not e!390041))))

(declare-fun arrayNoDuplicates!0 (array!39598 (_ BitVec 32) List!13068) Bool)

(assert (=> b!684929 (= res!450533 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13065))))

(declare-fun b!684930 () Bool)

(declare-fun e!390037 () Bool)

(assert (=> b!684930 (= e!390037 (contains!3611 acc!681 k!2843))))

(declare-fun b!684931 () Bool)

(declare-fun res!450532 () Bool)

(assert (=> b!684931 (=> (not res!450532) (not e!390041))))

(assert (=> b!684931 (= res!450532 (not (contains!3611 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684933 () Bool)

(assert (=> b!684933 (= e!390041 (not e!390038))))

(declare-fun res!450526 () Bool)

(assert (=> b!684933 (=> res!450526 e!390038)))

(assert (=> b!684933 (= res!450526 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!161 (List!13068 (_ BitVec 64)) List!13068)

(assert (=> b!684933 (= (-!161 lt!314511 k!2843) acc!681)))

(declare-fun $colon$colon!360 (List!13068 (_ BitVec 64)) List!13068)

(assert (=> b!684933 (= lt!314511 ($colon$colon!360 acc!681 k!2843))))

(declare-fun lt!314512 () Unit!24107)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13068) Unit!24107)

(assert (=> b!684933 (= lt!314512 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!196 (List!13068 List!13068) Bool)

(assert (=> b!684933 (subseq!196 acc!681 acc!681)))

(declare-fun lt!314516 () Unit!24107)

(declare-fun lemmaListSubSeqRefl!0 (List!13068) Unit!24107)

(assert (=> b!684933 (= lt!314516 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684933 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314510 () Unit!24107)

(assert (=> b!684933 (= lt!314510 e!390040)))

(declare-fun c!77573 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684933 (= c!77573 (validKeyInArray!0 (select (arr!18974 a!3626) from!3004)))))

(declare-fun lt!314517 () Unit!24107)

(assert (=> b!684933 (= lt!314517 e!390036)))

(declare-fun c!77572 () Bool)

(declare-fun lt!314514 () Bool)

(assert (=> b!684933 (= c!77572 lt!314514)))

(declare-fun arrayContainsKey!0 (array!39598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684933 (= lt!314514 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684933 (arrayContainsKey!0 (array!39599 (store (arr!18974 a!3626) i!1382 k!2843) (size!19343 a!3626)) k!2843 from!3004)))

(declare-fun b!684934 () Bool)

(declare-fun res!450527 () Bool)

(assert (=> b!684934 (=> (not res!450527) (not e!390041))))

(assert (=> b!684934 (= res!450527 (not (contains!3611 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684935 () Bool)

(declare-fun res!450520 () Bool)

(assert (=> b!684935 (=> (not res!450520) (not e!390041))))

(assert (=> b!684935 (= res!450520 (validKeyInArray!0 k!2843))))

(declare-fun b!684936 () Bool)

(declare-fun lt!314509 () Unit!24107)

(assert (=> b!684936 (= e!390040 lt!314509)))

(declare-fun lt!314515 () Unit!24107)

(assert (=> b!684936 (= lt!314515 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684936 (subseq!196 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39598 List!13068 List!13068 (_ BitVec 32)) Unit!24107)

(assert (=> b!684936 (= lt!314509 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!360 acc!681 (select (arr!18974 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684936 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684937 () Bool)

(declare-fun res!450531 () Bool)

(assert (=> b!684937 (=> (not res!450531) (not e!390041))))

(assert (=> b!684937 (= res!450531 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684938 () Bool)

(declare-fun res!450529 () Bool)

(assert (=> b!684938 (=> (not res!450529) (not e!390041))))

(assert (=> b!684938 (= res!450529 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19343 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684939 () Bool)

(declare-fun res!450515 () Bool)

(assert (=> b!684939 (=> (not res!450515) (not e!390041))))

(assert (=> b!684939 (= res!450515 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684940 () Bool)

(declare-fun e!390039 () Bool)

(declare-fun e!390043 () Bool)

(assert (=> b!684940 (= e!390039 e!390043)))

(declare-fun res!450528 () Bool)

(assert (=> b!684940 (=> (not res!450528) (not e!390043))))

(assert (=> b!684940 (= res!450528 (bvsle from!3004 i!1382))))

(declare-fun b!684941 () Bool)

(declare-fun res!450518 () Bool)

(assert (=> b!684941 (=> res!450518 e!390038)))

(assert (=> b!684941 (= res!450518 (not (subseq!196 acc!681 lt!314511)))))

(declare-fun res!450530 () Bool)

(assert (=> start!61108 (=> (not res!450530) (not e!390041))))

(assert (=> start!61108 (= res!450530 (and (bvslt (size!19343 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19343 a!3626))))))

(assert (=> start!61108 e!390041))

(assert (=> start!61108 true))

(declare-fun array_inv!14748 (array!39598) Bool)

(assert (=> start!61108 (array_inv!14748 a!3626)))

(declare-fun b!684932 () Bool)

(declare-fun res!450522 () Bool)

(assert (=> b!684932 (=> (not res!450522) (not e!390041))))

(assert (=> b!684932 (= res!450522 e!390039)))

(declare-fun res!450521 () Bool)

(assert (=> b!684932 (=> res!450521 e!390039)))

(assert (=> b!684932 (= res!450521 e!390037)))

(declare-fun res!450523 () Bool)

(assert (=> b!684932 (=> (not res!450523) (not e!390037))))

(assert (=> b!684932 (= res!450523 (bvsgt from!3004 i!1382))))

(declare-fun b!684942 () Bool)

(declare-fun res!450516 () Bool)

(assert (=> b!684942 (=> res!450516 e!390038)))

(assert (=> b!684942 (= res!450516 (contains!3611 acc!681 k!2843))))

(declare-fun b!684943 () Bool)

(declare-fun res!450524 () Bool)

(assert (=> b!684943 (=> res!450524 e!390038)))

(assert (=> b!684943 (= res!450524 lt!314514)))

(declare-fun b!684944 () Bool)

(declare-fun Unit!24111 () Unit!24107)

(assert (=> b!684944 (= e!390036 Unit!24111)))

(declare-fun b!684945 () Bool)

(declare-fun res!450519 () Bool)

(assert (=> b!684945 (=> res!450519 e!390038)))

(assert (=> b!684945 (= res!450519 (not (noDuplicate!858 lt!314511)))))

(declare-fun b!684946 () Bool)

(declare-fun res!450517 () Bool)

(assert (=> b!684946 (=> (not res!450517) (not e!390041))))

(assert (=> b!684946 (= res!450517 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19343 a!3626))))))

(declare-fun b!684947 () Bool)

(assert (=> b!684947 (= e!390043 (not (contains!3611 acc!681 k!2843)))))

(assert (= (and start!61108 res!450530) b!684928))

(assert (= (and b!684928 res!450525) b!684934))

(assert (= (and b!684934 res!450527) b!684931))

(assert (= (and b!684931 res!450532) b!684932))

(assert (= (and b!684932 res!450523) b!684930))

(assert (= (and b!684932 (not res!450521)) b!684940))

(assert (= (and b!684940 res!450528) b!684947))

(assert (= (and b!684932 res!450522) b!684929))

(assert (= (and b!684929 res!450533) b!684937))

(assert (= (and b!684937 res!450531) b!684946))

(assert (= (and b!684946 res!450517) b!684935))

(assert (= (and b!684935 res!450520) b!684939))

(assert (= (and b!684939 res!450515) b!684938))

(assert (= (and b!684938 res!450529) b!684933))

(assert (= (and b!684933 c!77572) b!684925))

(assert (= (and b!684933 (not c!77572)) b!684944))

(assert (= (and b!684933 c!77573) b!684936))

(assert (= (and b!684933 (not c!77573)) b!684926))

(assert (= (and b!684933 (not res!450526)) b!684945))

(assert (= (and b!684945 (not res!450519)) b!684943))

(assert (= (and b!684943 (not res!450524)) b!684942))

(assert (= (and b!684942 (not res!450516)) b!684941))

(assert (= (and b!684941 (not res!450518)) b!684927))

(declare-fun m!649229 () Bool)

(assert (=> b!684939 m!649229))

(declare-fun m!649231 () Bool)

(assert (=> b!684927 m!649231))

(declare-fun m!649233 () Bool)

(assert (=> b!684934 m!649233))

(declare-fun m!649235 () Bool)

(assert (=> b!684931 m!649235))

(declare-fun m!649237 () Bool)

(assert (=> b!684936 m!649237))

(declare-fun m!649239 () Bool)

(assert (=> b!684936 m!649239))

(declare-fun m!649241 () Bool)

(assert (=> b!684936 m!649241))

(declare-fun m!649243 () Bool)

(assert (=> b!684936 m!649243))

(assert (=> b!684936 m!649239))

(assert (=> b!684936 m!649241))

(declare-fun m!649245 () Bool)

(assert (=> b!684936 m!649245))

(declare-fun m!649247 () Bool)

(assert (=> b!684936 m!649247))

(declare-fun m!649249 () Bool)

(assert (=> b!684942 m!649249))

(declare-fun m!649251 () Bool)

(assert (=> b!684928 m!649251))

(declare-fun m!649253 () Bool)

(assert (=> start!61108 m!649253))

(assert (=> b!684930 m!649249))

(declare-fun m!649255 () Bool)

(assert (=> b!684941 m!649255))

(declare-fun m!649257 () Bool)

(assert (=> b!684937 m!649257))

(declare-fun m!649259 () Bool)

(assert (=> b!684945 m!649259))

(declare-fun m!649261 () Bool)

(assert (=> b!684935 m!649261))

(declare-fun m!649263 () Bool)

(assert (=> b!684925 m!649263))

(declare-fun m!649265 () Bool)

(assert (=> b!684929 m!649265))

(assert (=> b!684933 m!649237))

(assert (=> b!684933 m!649239))

(declare-fun m!649267 () Bool)

(assert (=> b!684933 m!649267))

(declare-fun m!649269 () Bool)

(assert (=> b!684933 m!649269))

(declare-fun m!649271 () Bool)

(assert (=> b!684933 m!649271))

(assert (=> b!684933 m!649245))

(declare-fun m!649273 () Bool)

(assert (=> b!684933 m!649273))

(declare-fun m!649275 () Bool)

(assert (=> b!684933 m!649275))

(assert (=> b!684933 m!649239))

(declare-fun m!649277 () Bool)

(assert (=> b!684933 m!649277))

(declare-fun m!649279 () Bool)

(assert (=> b!684933 m!649279))

(assert (=> b!684933 m!649247))

(assert (=> b!684947 m!649249))

(push 1)

(assert (not b!684935))

(assert (not b!684928))

(assert (not b!684933))

(assert (not b!684934))

(assert (not start!61108))

(assert (not b!684927))

(assert (not b!684931))

(assert (not b!684941))

(assert (not b!684947))

(assert (not b!684939))

(assert (not b!684930))

(assert (not b!684942))

(assert (not b!684936))

(assert (not b!684925))

(assert (not b!684937))

(assert (not b!684945))

(assert (not b!684929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!684970 () Bool)

(declare-fun e!390067 () Bool)

(declare-fun e!390065 () Bool)

(assert (=> b!684970 (= e!390067 e!390065)))

(declare-fun c!77576 () Bool)

(assert (=> b!684970 (= c!77576 (validKeyInArray!0 (select (arr!18974 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!684971 () Bool)

(declare-fun e!390066 () Bool)

(assert (=> b!684971 (= e!390066 (contains!3611 Nil!13065 (select (arr!18974 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!684972 () Bool)

(declare-fun e!390064 () Bool)

(assert (=> b!684972 (= e!390064 e!390067)))

(declare-fun res!450554 () Bool)

(assert (=> b!684972 (=> (not res!450554) (not e!390067))))

(assert (=> b!684972 (= res!450554 (not e!390066))))

(declare-fun res!450552 () Bool)

(assert (=> b!684972 (=> (not res!450552) (not e!390066))))

(assert (=> b!684972 (= res!450552 (validKeyInArray!0 (select (arr!18974 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34049 () Bool)

(declare-fun call!34052 () Bool)

(assert (=> bm!34049 (= call!34052 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77576 (Cons!13064 (select (arr!18974 a!3626) #b00000000000000000000000000000000) Nil!13065) Nil!13065)))))

(declare-fun d!94339 () Bool)

(declare-fun res!450553 () Bool)

(assert (=> d!94339 (=> res!450553 e!390064)))

(assert (=> d!94339 (= res!450553 (bvsge #b00000000000000000000000000000000 (size!19343 a!3626)))))

(assert (=> d!94339 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13065) e!390064)))

(declare-fun b!684973 () Bool)

(assert (=> b!684973 (= e!390065 call!34052)))

(declare-fun b!684974 () Bool)

(assert (=> b!684974 (= e!390065 call!34052)))

(assert (= (and d!94339 (not res!450553)) b!684972))

(assert (= (and b!684972 res!450552) b!684971))

(assert (= (and b!684972 res!450554) b!684970))

(assert (= (and b!684970 c!77576) b!684974))

(assert (= (and b!684970 (not c!77576)) b!684973))

(assert (= (or b!684974 b!684973) bm!34049))

(declare-fun m!649289 () Bool)

(assert (=> b!684970 m!649289))

(assert (=> b!684970 m!649289))

(declare-fun m!649291 () Bool)

(assert (=> b!684970 m!649291))

(assert (=> b!684971 m!649289))

(assert (=> b!684971 m!649289))

(declare-fun m!649293 () Bool)

(assert (=> b!684971 m!649293))

(assert (=> b!684972 m!649289))

(assert (=> b!684972 m!649289))

(assert (=> b!684972 m!649291))

(assert (=> bm!34049 m!649289))

(declare-fun m!649295 () Bool)

(assert (=> bm!34049 m!649295))

(assert (=> b!684929 d!94339))

(declare-fun d!94345 () Bool)

(declare-fun res!450565 () Bool)

(declare-fun e!390080 () Bool)

(assert (=> d!94345 (=> res!450565 e!390080)))

(assert (=> d!94345 (= res!450565 (is-Nil!13065 acc!681))))

(assert (=> d!94345 (= (noDuplicate!858 acc!681) e!390080)))

(declare-fun b!684989 () Bool)

(declare-fun e!390081 () Bool)

(assert (=> b!684989 (= e!390080 e!390081)))

(declare-fun res!450566 () Bool)

(assert (=> b!684989 (=> (not res!450566) (not e!390081))))

(assert (=> b!684989 (= res!450566 (not (contains!3611 (t!19325 acc!681) (h!14109 acc!681))))))

(declare-fun b!684990 () Bool)

(assert (=> b!684990 (= e!390081 (noDuplicate!858 (t!19325 acc!681)))))

(assert (= (and d!94345 (not res!450565)) b!684989))

(assert (= (and b!684989 res!450566) b!684990))

(declare-fun m!649297 () Bool)

(assert (=> b!684989 m!649297))

(declare-fun m!649299 () Bool)

(assert (=> b!684990 m!649299))

(assert (=> b!684928 d!94345))

(declare-fun d!94349 () Bool)

(declare-fun res!450580 () Bool)

(declare-fun e!390096 () Bool)

(assert (=> d!94349 (=> res!450580 e!390096)))

(assert (=> d!94349 (= res!450580 (= (select (arr!18974 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94349 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!390096)))

(declare-fun b!685006 () Bool)

(declare-fun e!390097 () Bool)

(assert (=> b!685006 (= e!390096 e!390097)))

(declare-fun res!450581 () Bool)

(assert (=> b!685006 (=> (not res!450581) (not e!390097))))

(assert (=> b!685006 (= res!450581 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19343 a!3626)))))

(declare-fun b!685007 () Bool)

(assert (=> b!685007 (= e!390097 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94349 (not res!450580)) b!685006))

(assert (= (and b!685006 res!450581) b!685007))

(assert (=> d!94349 m!649289))

(declare-fun m!649313 () Bool)

(assert (=> b!685007 m!649313))

(assert (=> b!684939 d!94349))

(declare-fun d!94355 () Bool)

(declare-fun lt!314529 () Bool)

(declare-fun content!290 (List!13068) (Set (_ BitVec 64)))

(assert (=> d!94355 (= lt!314529 (member k!2843 (content!290 acc!681)))))

(declare-fun e!390116 () Bool)

(assert (=> d!94355 (= lt!314529 e!390116)))

(declare-fun res!450598 () Bool)

(assert (=> d!94355 (=> (not res!450598) (not e!390116))))

(assert (=> d!94355 (= res!450598 (is-Cons!13064 acc!681))))

(assert (=> d!94355 (= (contains!3611 acc!681 k!2843) lt!314529)))

(declare-fun b!685028 () Bool)

(declare-fun e!390117 () Bool)

(assert (=> b!685028 (= e!390116 e!390117)))

(declare-fun res!450599 () Bool)

(assert (=> b!685028 (=> res!450599 e!390117)))

(assert (=> b!685028 (= res!450599 (= (h!14109 acc!681) k!2843))))

(declare-fun b!685029 () Bool)

(assert (=> b!685029 (= e!390117 (contains!3611 (t!19325 acc!681) k!2843))))

(assert (= (and d!94355 res!450598) b!685028))

(assert (= (and b!685028 (not res!450599)) b!685029))

(declare-fun m!649321 () Bool)

(assert (=> d!94355 m!649321))

(declare-fun m!649323 () Bool)

(assert (=> d!94355 m!649323))

(declare-fun m!649325 () Bool)

(assert (=> b!685029 m!649325))

(assert (=> b!684930 d!94355))

(declare-fun b!685054 () Bool)

(declare-fun e!390139 () Bool)

(assert (=> b!685054 (= e!390139 (subseq!196 (t!19325 acc!681) (t!19325 lt!314511)))))

(declare-fun b!685055 () Bool)

(declare-fun e!390141 () Bool)

(assert (=> b!685055 (= e!390141 (subseq!196 acc!681 (t!19325 lt!314511)))))

(declare-fun b!685052 () Bool)

(declare-fun e!390138 () Bool)

(declare-fun e!390140 () Bool)

(assert (=> b!685052 (= e!390138 e!390140)))

(declare-fun res!450620 () Bool)

(assert (=> b!685052 (=> (not res!450620) (not e!390140))))

(assert (=> b!685052 (= res!450620 (is-Cons!13064 lt!314511))))

(declare-fun b!685053 () Bool)

(assert (=> b!685053 (= e!390140 e!390141)))

(declare-fun res!450621 () Bool)

(assert (=> b!685053 (=> res!450621 e!390141)))

(assert (=> b!685053 (= res!450621 e!390139)))

(declare-fun res!450619 () Bool)

(assert (=> b!685053 (=> (not res!450619) (not e!390139))))

(assert (=> b!685053 (= res!450619 (= (h!14109 acc!681) (h!14109 lt!314511)))))

(declare-fun d!94359 () Bool)

(declare-fun res!450618 () Bool)

(assert (=> d!94359 (=> res!450618 e!390138)))

(assert (=> d!94359 (= res!450618 (is-Nil!13065 acc!681))))

(assert (=> d!94359 (= (subseq!196 acc!681 lt!314511) e!390138)))

(assert (= (and d!94359 (not res!450618)) b!685052))

(assert (= (and b!685052 res!450620) b!685053))

(assert (= (and b!685053 res!450619) b!685054))

(assert (= (and b!685053 (not res!450621)) b!685055))

(declare-fun m!649343 () Bool)

(assert (=> b!685054 m!649343))

(declare-fun m!649347 () Bool)

(assert (=> b!685055 m!649347))

(assert (=> b!684941 d!94359))

(assert (=> b!684942 d!94355))

(declare-fun d!94369 () Bool)

(declare-fun lt!314533 () Bool)

(assert (=> d!94369 (= lt!314533 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!290 acc!681)))))

(declare-fun e!390146 () Bool)

(assert (=> d!94369 (= lt!314533 e!390146)))

(declare-fun res!450626 () Bool)

(assert (=> d!94369 (=> (not res!450626) (not e!390146))))

(assert (=> d!94369 (= res!450626 (is-Cons!13064 acc!681))))

(assert (=> d!94369 (= (contains!3611 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314533)))

(declare-fun b!685060 () Bool)

(declare-fun e!390147 () Bool)

(assert (=> b!685060 (= e!390146 e!390147)))

(declare-fun res!450627 () Bool)

(assert (=> b!685060 (=> res!450627 e!390147)))

(assert (=> b!685060 (= res!450627 (= (h!14109 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685061 () Bool)

(assert (=> b!685061 (= e!390147 (contains!3611 (t!19325 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94369 res!450626) b!685060))

(assert (= (and b!685060 (not res!450627)) b!685061))

(assert (=> d!94369 m!649321))

(declare-fun m!649353 () Bool)

(assert (=> d!94369 m!649353))

(declare-fun m!649355 () Bool)

(assert (=> b!685061 m!649355))

(assert (=> b!684931 d!94369))

(declare-fun d!94373 () Bool)

(declare-fun e!390191 () Bool)

(assert (=> d!94373 e!390191))

(declare-fun res!450665 () Bool)

(assert (=> d!94373 (=> (not res!450665) (not e!390191))))

(declare-fun lt!314542 () List!13068)

(declare-fun size!19344 (List!13068) Int)

(assert (=> d!94373 (= res!450665 (<= (size!19344 lt!314542) (size!19344 lt!314511)))))

(declare-fun e!390192 () List!13068)

(assert (=> d!94373 (= lt!314542 e!390192)))

(declare-fun c!77590 () Bool)

(assert (=> d!94373 (= c!77590 (is-Cons!13064 lt!314511))))

(assert (=> d!94373 (= (-!161 lt!314511 k!2843) lt!314542)))

(declare-fun b!685109 () Bool)

(declare-fun e!390193 () List!13068)

(declare-fun call!34063 () List!13068)

(assert (=> b!685109 (= e!390193 call!34063)))

(declare-fun b!685110 () Bool)

(assert (=> b!685110 (= e!390191 (= (content!290 lt!314542) (setminus (content!290 lt!314511) (insert k!2843 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!685111 () Bool)

(assert (=> b!685111 (= e!390192 e!390193)))

(declare-fun c!77589 () Bool)

(assert (=> b!685111 (= c!77589 (= k!2843 (h!14109 lt!314511)))))

(declare-fun bm!34060 () Bool)

(assert (=> bm!34060 (= call!34063 (-!161 (t!19325 lt!314511) k!2843))))

(declare-fun b!685112 () Bool)

(assert (=> b!685112 (= e!390192 Nil!13065)))

(declare-fun b!685113 () Bool)

(assert (=> b!685113 (= e!390193 (Cons!13064 (h!14109 lt!314511) call!34063))))

(assert (= (and d!94373 c!77590) b!685111))

(assert (= (and d!94373 (not c!77590)) b!685112))

(assert (= (and b!685111 c!77589) b!685109))

(assert (= (and b!685111 (not c!77589)) b!685113))

(assert (= (or b!685109 b!685113) bm!34060))

(assert (= (and d!94373 res!450665) b!685110))

(declare-fun m!649395 () Bool)

(assert (=> d!94373 m!649395))

(declare-fun m!649397 () Bool)

(assert (=> d!94373 m!649397))

(declare-fun m!649399 () Bool)

(assert (=> b!685110 m!649399))

(declare-fun m!649401 () Bool)

(assert (=> b!685110 m!649401))

(declare-fun m!649403 () Bool)

(assert (=> b!685110 m!649403))

(declare-fun m!649405 () Bool)

(assert (=> bm!34060 m!649405))

(assert (=> b!684933 d!94373))

(declare-fun b!685120 () Bool)

(declare-fun e!390199 () Bool)

(assert (=> b!685120 (= e!390199 (subseq!196 (t!19325 acc!681) (t!19325 acc!681)))))

(declare-fun b!685121 () Bool)

(declare-fun e!390201 () Bool)

(assert (=> b!685121 (= e!390201 (subseq!196 acc!681 (t!19325 acc!681)))))

(declare-fun b!685118 () Bool)

(declare-fun e!390198 () Bool)

(declare-fun e!390200 () Bool)

(assert (=> b!685118 (= e!390198 e!390200)))

(declare-fun res!450672 () Bool)

(assert (=> b!685118 (=> (not res!450672) (not e!390200))))

(assert (=> b!685118 (= res!450672 (is-Cons!13064 acc!681))))

(declare-fun b!685119 () Bool)

(assert (=> b!685119 (= e!390200 e!390201)))

(declare-fun res!450673 () Bool)

(assert (=> b!685119 (=> res!450673 e!390201)))

(assert (=> b!685119 (= res!450673 e!390199)))

(declare-fun res!450671 () Bool)

(assert (=> b!685119 (=> (not res!450671) (not e!390199))))

(assert (=> b!685119 (= res!450671 (= (h!14109 acc!681) (h!14109 acc!681)))))

(declare-fun d!94395 () Bool)

(declare-fun res!450670 () Bool)

(assert (=> d!94395 (=> res!450670 e!390198)))

(assert (=> d!94395 (= res!450670 (is-Nil!13065 acc!681))))

(assert (=> d!94395 (= (subseq!196 acc!681 acc!681) e!390198)))

(assert (= (and d!94395 (not res!450670)) b!685118))

(assert (= (and b!685118 res!450672) b!685119))

(assert (= (and b!685119 res!450671) b!685120))

(assert (= (and b!685119 (not res!450673)) b!685121))

(declare-fun m!649407 () Bool)

(assert (=> b!685120 m!649407))

(declare-fun m!649409 () Bool)

(assert (=> b!685121 m!649409))

(assert (=> b!684933 d!94395))

(declare-fun d!94397 () Bool)

(declare-fun res!450674 () Bool)

(declare-fun e!390202 () Bool)

(assert (=> d!94397 (=> res!450674 e!390202)))

(assert (=> d!94397 (= res!450674 (= (select (arr!18974 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94397 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!390202)))

(declare-fun b!685122 () Bool)

(declare-fun e!390203 () Bool)

(assert (=> b!685122 (= e!390202 e!390203)))

(declare-fun res!450675 () Bool)

(assert (=> b!685122 (=> (not res!450675) (not e!390203))))

(assert (=> b!685122 (= res!450675 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19343 a!3626)))))

(declare-fun b!685123 () Bool)

(assert (=> b!685123 (= e!390203 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94397 (not res!450674)) b!685122))

(assert (= (and b!685122 res!450675) b!685123))

(declare-fun m!649411 () Bool)

(assert (=> d!94397 m!649411))

(declare-fun m!649413 () Bool)

(assert (=> b!685123 m!649413))

(assert (=> b!684933 d!94397))

(declare-fun d!94399 () Bool)

(assert (=> d!94399 (= (-!161 ($colon$colon!360 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!314550 () Unit!24107)

(declare-fun choose!16 ((_ BitVec 64) List!13068) Unit!24107)

(assert (=> d!94399 (= lt!314550 (choose!16 k!2843 acc!681))))

(assert (=> d!94399 (not (contains!3611 acc!681 k!2843))))

(assert (=> d!94399 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!314550)))

(declare-fun bs!20088 () Bool)

(assert (= bs!20088 d!94399))

(assert (=> bs!20088 m!649275))

(assert (=> bs!20088 m!649275))

(declare-fun m!649425 () Bool)

(assert (=> bs!20088 m!649425))

(declare-fun m!649427 () Bool)

(assert (=> bs!20088 m!649427))

(assert (=> bs!20088 m!649249))

(assert (=> b!684933 d!94399))

(declare-fun d!94407 () Bool)

(declare-fun res!450683 () Bool)

(declare-fun e!390217 () Bool)

(assert (=> d!94407 (=> res!450683 e!390217)))

(assert (=> d!94407 (= res!450683 (= (select (arr!18974 (array!39599 (store (arr!18974 a!3626) i!1382 k!2843) (size!19343 a!3626))) from!3004) k!2843))))

(assert (=> d!94407 (= (arrayContainsKey!0 (array!39599 (store (arr!18974 a!3626) i!1382 k!2843) (size!19343 a!3626)) k!2843 from!3004) e!390217)))

(declare-fun b!685141 () Bool)

(declare-fun e!390218 () Bool)

(assert (=> b!685141 (= e!390217 e!390218)))

(declare-fun res!450684 () Bool)

(assert (=> b!685141 (=> (not res!450684) (not e!390218))))

(assert (=> b!685141 (= res!450684 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19343 (array!39599 (store (arr!18974 a!3626) i!1382 k!2843) (size!19343 a!3626)))))))

(declare-fun b!685142 () Bool)

(assert (=> b!685142 (= e!390218 (arrayContainsKey!0 (array!39599 (store (arr!18974 a!3626) i!1382 k!2843) (size!19343 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94407 (not res!450683)) b!685141))

(assert (= (and b!685141 res!450684) b!685142))

(declare-fun m!649433 () Bool)

(assert (=> d!94407 m!649433))

(declare-fun m!649435 () Bool)

(assert (=> b!685142 m!649435))

(assert (=> b!684933 d!94407))

(declare-fun d!94411 () Bool)

(assert (=> d!94411 (subseq!196 acc!681 acc!681)))

(declare-fun lt!314553 () Unit!24107)

(declare-fun choose!36 (List!13068) Unit!24107)

(assert (=> d!94411 (= lt!314553 (choose!36 acc!681))))

(assert (=> d!94411 (= (lemmaListSubSeqRefl!0 acc!681) lt!314553)))

(declare-fun bs!20089 () Bool)

(assert (= bs!20089 d!94411))

(assert (=> bs!20089 m!649247))

(declare-fun m!649441 () Bool)

(assert (=> bs!20089 m!649441))

(assert (=> b!684933 d!94411))

(declare-fun d!94415 () Bool)

(assert (=> d!94415 (= (validKeyInArray!0 (select (arr!18974 a!3626) from!3004)) (and (not (= (select (arr!18974 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18974 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684933 d!94415))

(declare-fun d!94419 () Bool)

(assert (=> d!94419 (= ($colon$colon!360 acc!681 k!2843) (Cons!13064 k!2843 acc!681))))

(assert (=> b!684933 d!94419))

(declare-fun b!685158 () Bool)

(declare-fun e!390235 () Bool)

(declare-fun e!390233 () Bool)

(assert (=> b!685158 (= e!390235 e!390233)))

(declare-fun c!77598 () Bool)

(assert (=> b!685158 (= c!77598 (validKeyInArray!0 (select (arr!18974 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685159 () Bool)

(declare-fun e!390234 () Bool)

(assert (=> b!685159 (= e!390234 (contains!3611 acc!681 (select (arr!18974 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685160 () Bool)

(declare-fun e!390232 () Bool)

(assert (=> b!685160 (= e!390232 e!390235)))

(declare-fun res!450698 () Bool)

(assert (=> b!685160 (=> (not res!450698) (not e!390235))))

(assert (=> b!685160 (= res!450698 (not e!390234))))

(declare-fun res!450696 () Bool)

(assert (=> b!685160 (=> (not res!450696) (not e!390234))))

(assert (=> b!685160 (= res!450696 (validKeyInArray!0 (select (arr!18974 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34065 () Bool)

(declare-fun call!34068 () Bool)

(assert (=> bm!34065 (= call!34068 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77598 (Cons!13064 (select (arr!18974 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun d!94421 () Bool)

(declare-fun res!450697 () Bool)

(assert (=> d!94421 (=> res!450697 e!390232)))

(assert (=> d!94421 (= res!450697 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19343 a!3626)))))

(assert (=> d!94421 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390232)))

(declare-fun b!685161 () Bool)

(assert (=> b!685161 (= e!390233 call!34068)))

(declare-fun b!685162 () Bool)

(assert (=> b!685162 (= e!390233 call!34068)))

(assert (= (and d!94421 (not res!450697)) b!685160))

(assert (= (and b!685160 res!450696) b!685159))

(assert (= (and b!685160 res!450698) b!685158))

(assert (= (and b!685158 c!77598) b!685162))

(assert (= (and b!685158 (not c!77598)) b!685161))

(assert (= (or b!685162 b!685161) bm!34065))

(assert (=> b!685158 m!649411))

(assert (=> b!685158 m!649411))

(declare-fun m!649457 () Bool)

(assert (=> b!685158 m!649457))

(assert (=> b!685159 m!649411))

(assert (=> b!685159 m!649411))

(declare-fun m!649459 () Bool)

(assert (=> b!685159 m!649459))

(assert (=> b!685160 m!649411))

(assert (=> b!685160 m!649411))

(assert (=> b!685160 m!649457))

(assert (=> bm!34065 m!649411))

(declare-fun m!649461 () Bool)

(assert (=> bm!34065 m!649461))

(assert (=> b!684933 d!94421))

(declare-fun d!94425 () Bool)

(declare-fun lt!314557 () Bool)

(assert (=> d!94425 (= lt!314557 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!290 acc!681)))))

(declare-fun e!390236 () Bool)

(assert (=> d!94425 (= lt!314557 e!390236)))

(declare-fun res!450699 () Bool)

(assert (=> d!94425 (=> (not res!450699) (not e!390236))))

(assert (=> d!94425 (= res!450699 (is-Cons!13064 acc!681))))

(assert (=> d!94425 (= (contains!3611 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314557)))

(declare-fun b!685163 () Bool)

(declare-fun e!390237 () Bool)

(assert (=> b!685163 (= e!390236 e!390237)))

(declare-fun res!450700 () Bool)

(assert (=> b!685163 (=> res!450700 e!390237)))

(assert (=> b!685163 (= res!450700 (= (h!14109 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685164 () Bool)

(assert (=> b!685164 (= e!390237 (contains!3611 (t!19325 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94425 res!450699) b!685163))

(assert (= (and b!685163 (not res!450700)) b!685164))

(assert (=> d!94425 m!649321))

(declare-fun m!649463 () Bool)

(assert (=> d!94425 m!649463))

(declare-fun m!649465 () Bool)

(assert (=> b!685164 m!649465))

(assert (=> b!684934 d!94425))

(declare-fun d!94427 () Bool)

(declare-fun res!450701 () Bool)

(declare-fun e!390238 () Bool)

(assert (=> d!94427 (=> res!450701 e!390238)))

(assert (=> d!94427 (= res!450701 (is-Nil!13065 lt!314511))))

(assert (=> d!94427 (= (noDuplicate!858 lt!314511) e!390238)))

(declare-fun b!685165 () Bool)

(declare-fun e!390239 () Bool)

(assert (=> b!685165 (= e!390238 e!390239)))

(declare-fun res!450702 () Bool)

(assert (=> b!685165 (=> (not res!450702) (not e!390239))))

(assert (=> b!685165 (= res!450702 (not (contains!3611 (t!19325 lt!314511) (h!14109 lt!314511))))))

(declare-fun b!685166 () Bool)

(assert (=> b!685166 (= e!390239 (noDuplicate!858 (t!19325 lt!314511)))))

(assert (= (and d!94427 (not res!450701)) b!685165))

(assert (= (and b!685165 res!450702) b!685166))

(declare-fun m!649467 () Bool)

(assert (=> b!685165 m!649467))

(declare-fun m!649469 () Bool)

(assert (=> b!685166 m!649469))

(assert (=> b!684945 d!94427))

(declare-fun d!94429 () Bool)

(assert (=> d!94429 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314564 () Unit!24107)

(declare-fun choose!13 (array!39598 (_ BitVec 64) (_ BitVec 32)) Unit!24107)

(assert (=> d!94429 (= lt!314564 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94429 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94429 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!314564)))

(declare-fun bs!20091 () Bool)

(assert (= bs!20091 d!94429))

(assert (=> bs!20091 m!649229))

(declare-fun m!649483 () Bool)

