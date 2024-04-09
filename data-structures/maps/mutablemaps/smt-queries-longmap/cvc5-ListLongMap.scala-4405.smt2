; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60666 () Bool)

(assert start!60666)

(declare-fun b!681024 () Bool)

(declare-fun res!447373 () Bool)

(declare-fun e!387956 () Bool)

(assert (=> b!681024 (=> (not res!447373) (not e!387956))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681024 (= res!447373 (validKeyInArray!0 k!2843))))

(declare-fun b!681025 () Bool)

(declare-datatypes ((Unit!23878 0))(
  ( (Unit!23879) )
))
(declare-fun e!387951 () Unit!23878)

(declare-fun Unit!23880 () Unit!23878)

(assert (=> b!681025 (= e!387951 Unit!23880)))

(declare-fun lt!313188 () Unit!23878)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39489 0))(
  ( (array!39490 (arr!18927 (Array (_ BitVec 32) (_ BitVec 64))) (size!19291 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39489)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39489 (_ BitVec 64) (_ BitVec 32)) Unit!23878)

(assert (=> b!681025 (= lt!313188 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681025 false))

(declare-fun b!681026 () Bool)

(declare-fun e!387958 () Bool)

(declare-fun e!387955 () Bool)

(assert (=> b!681026 (= e!387958 e!387955)))

(declare-fun res!447364 () Bool)

(assert (=> b!681026 (=> (not res!447364) (not e!387955))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681026 (= res!447364 (bvsle from!3004 i!1382))))

(declare-fun b!681027 () Bool)

(declare-fun e!387954 () Bool)

(assert (=> b!681027 (= e!387956 (not e!387954))))

(declare-fun res!447371 () Bool)

(assert (=> b!681027 (=> res!447371 e!387954)))

(assert (=> b!681027 (= res!447371 (not (validKeyInArray!0 (select (arr!18927 a!3626) from!3004))))))

(declare-fun lt!313190 () Unit!23878)

(assert (=> b!681027 (= lt!313190 e!387951)))

(declare-fun c!77198 () Bool)

(declare-fun arrayContainsKey!0 (array!39489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681027 (= c!77198 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681027 (arrayContainsKey!0 (array!39490 (store (arr!18927 a!3626) i!1382 k!2843) (size!19291 a!3626)) k!2843 from!3004)))

(declare-fun b!681028 () Bool)

(declare-datatypes ((List!13021 0))(
  ( (Nil!13018) (Cons!13017 (h!14062 (_ BitVec 64)) (t!19263 List!13021)) )
))
(declare-fun acc!681 () List!13021)

(declare-fun contains!3564 (List!13021 (_ BitVec 64)) Bool)

(assert (=> b!681028 (= e!387955 (not (contains!3564 acc!681 k!2843)))))

(declare-fun b!681029 () Bool)

(declare-fun e!387953 () Bool)

(declare-fun lt!313191 () List!13021)

(declare-fun subseq!149 (List!13021 List!13021) Bool)

(assert (=> b!681029 (= e!387953 (subseq!149 acc!681 lt!313191))))

(declare-fun b!681030 () Bool)

(declare-fun res!447374 () Bool)

(assert (=> b!681030 (=> (not res!447374) (not e!387956))))

(declare-fun arrayNoDuplicates!0 (array!39489 (_ BitVec 32) List!13021) Bool)

(assert (=> b!681030 (= res!447374 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13018))))

(declare-fun b!681031 () Bool)

(declare-fun res!447368 () Bool)

(assert (=> b!681031 (=> (not res!447368) (not e!387956))))

(assert (=> b!681031 (= res!447368 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19291 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681032 () Bool)

(declare-fun res!447369 () Bool)

(assert (=> b!681032 (=> (not res!447369) (not e!387956))))

(declare-fun noDuplicate!811 (List!13021) Bool)

(assert (=> b!681032 (= res!447369 (noDuplicate!811 acc!681))))

(declare-fun b!681033 () Bool)

(declare-fun res!447362 () Bool)

(assert (=> b!681033 (=> (not res!447362) (not e!387956))))

(assert (=> b!681033 (= res!447362 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19291 a!3626))))))

(declare-fun b!681034 () Bool)

(declare-fun res!447375 () Bool)

(assert (=> b!681034 (=> (not res!447375) (not e!387956))))

(assert (=> b!681034 (= res!447375 (not (contains!3564 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681035 () Bool)

(declare-fun Unit!23881 () Unit!23878)

(assert (=> b!681035 (= e!387951 Unit!23881)))

(declare-fun b!681036 () Bool)

(declare-fun res!447372 () Bool)

(assert (=> b!681036 (=> (not res!447372) (not e!387956))))

(assert (=> b!681036 (= res!447372 e!387958)))

(declare-fun res!447378 () Bool)

(assert (=> b!681036 (=> res!447378 e!387958)))

(declare-fun e!387957 () Bool)

(assert (=> b!681036 (= res!447378 e!387957)))

(declare-fun res!447380 () Bool)

(assert (=> b!681036 (=> (not res!447380) (not e!387957))))

(assert (=> b!681036 (= res!447380 (bvsgt from!3004 i!1382))))

(declare-fun res!447365 () Bool)

(assert (=> start!60666 (=> (not res!447365) (not e!387956))))

(assert (=> start!60666 (= res!447365 (and (bvslt (size!19291 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19291 a!3626))))))

(assert (=> start!60666 e!387956))

(assert (=> start!60666 true))

(declare-fun array_inv!14701 (array!39489) Bool)

(assert (=> start!60666 (array_inv!14701 a!3626)))

(declare-fun b!681037 () Bool)

(declare-fun res!447363 () Bool)

(assert (=> b!681037 (=> res!447363 e!387953)))

(assert (=> b!681037 (= res!447363 (not (noDuplicate!811 lt!313191)))))

(declare-fun b!681038 () Bool)

(declare-fun res!447376 () Bool)

(assert (=> b!681038 (=> res!447376 e!387953)))

(assert (=> b!681038 (= res!447376 (contains!3564 lt!313191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681039 () Bool)

(assert (=> b!681039 (= e!387957 (contains!3564 acc!681 k!2843))))

(declare-fun b!681040 () Bool)

(declare-fun res!447379 () Bool)

(assert (=> b!681040 (=> (not res!447379) (not e!387956))))

(assert (=> b!681040 (= res!447379 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681041 () Bool)

(declare-fun res!447377 () Bool)

(assert (=> b!681041 (=> (not res!447377) (not e!387956))))

(assert (=> b!681041 (= res!447377 (not (contains!3564 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681042 () Bool)

(declare-fun res!447366 () Bool)

(assert (=> b!681042 (=> res!447366 e!387953)))

(assert (=> b!681042 (= res!447366 (contains!3564 lt!313191 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681043 () Bool)

(assert (=> b!681043 (= e!387954 e!387953)))

(declare-fun res!447367 () Bool)

(assert (=> b!681043 (=> res!447367 e!387953)))

(assert (=> b!681043 (= res!447367 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!313 (List!13021 (_ BitVec 64)) List!13021)

(assert (=> b!681043 (= lt!313191 ($colon$colon!313 acc!681 (select (arr!18927 a!3626) from!3004)))))

(assert (=> b!681043 (subseq!149 acc!681 acc!681)))

(declare-fun lt!313189 () Unit!23878)

(declare-fun lemmaListSubSeqRefl!0 (List!13021) Unit!23878)

(assert (=> b!681043 (= lt!313189 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681044 () Bool)

(declare-fun res!447370 () Bool)

(assert (=> b!681044 (=> (not res!447370) (not e!387956))))

(assert (=> b!681044 (= res!447370 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60666 res!447365) b!681032))

(assert (= (and b!681032 res!447369) b!681041))

(assert (= (and b!681041 res!447377) b!681034))

(assert (= (and b!681034 res!447375) b!681036))

(assert (= (and b!681036 res!447380) b!681039))

(assert (= (and b!681036 (not res!447378)) b!681026))

(assert (= (and b!681026 res!447364) b!681028))

(assert (= (and b!681036 res!447372) b!681030))

(assert (= (and b!681030 res!447374) b!681040))

(assert (= (and b!681040 res!447379) b!681033))

(assert (= (and b!681033 res!447362) b!681024))

(assert (= (and b!681024 res!447373) b!681044))

(assert (= (and b!681044 res!447370) b!681031))

(assert (= (and b!681031 res!447368) b!681027))

(assert (= (and b!681027 c!77198) b!681025))

(assert (= (and b!681027 (not c!77198)) b!681035))

(assert (= (and b!681027 (not res!447371)) b!681043))

(assert (= (and b!681043 (not res!447367)) b!681037))

(assert (= (and b!681037 (not res!447363)) b!681038))

(assert (= (and b!681038 (not res!447376)) b!681042))

(assert (= (and b!681042 (not res!447366)) b!681029))

(declare-fun m!645987 () Bool)

(assert (=> b!681040 m!645987))

(declare-fun m!645989 () Bool)

(assert (=> b!681029 m!645989))

(declare-fun m!645991 () Bool)

(assert (=> b!681038 m!645991))

(declare-fun m!645993 () Bool)

(assert (=> b!681028 m!645993))

(declare-fun m!645995 () Bool)

(assert (=> b!681030 m!645995))

(declare-fun m!645997 () Bool)

(assert (=> b!681032 m!645997))

(declare-fun m!645999 () Bool)

(assert (=> b!681024 m!645999))

(declare-fun m!646001 () Bool)

(assert (=> b!681037 m!646001))

(declare-fun m!646003 () Bool)

(assert (=> b!681044 m!646003))

(declare-fun m!646005 () Bool)

(assert (=> b!681043 m!646005))

(assert (=> b!681043 m!646005))

(declare-fun m!646007 () Bool)

(assert (=> b!681043 m!646007))

(declare-fun m!646009 () Bool)

(assert (=> b!681043 m!646009))

(declare-fun m!646011 () Bool)

(assert (=> b!681043 m!646011))

(declare-fun m!646013 () Bool)

(assert (=> start!60666 m!646013))

(declare-fun m!646015 () Bool)

(assert (=> b!681041 m!646015))

(declare-fun m!646017 () Bool)

(assert (=> b!681025 m!646017))

(assert (=> b!681027 m!646005))

(declare-fun m!646019 () Bool)

(assert (=> b!681027 m!646019))

(declare-fun m!646021 () Bool)

(assert (=> b!681027 m!646021))

(assert (=> b!681027 m!646005))

(declare-fun m!646023 () Bool)

(assert (=> b!681027 m!646023))

(declare-fun m!646025 () Bool)

(assert (=> b!681027 m!646025))

(declare-fun m!646027 () Bool)

(assert (=> b!681042 m!646027))

(assert (=> b!681039 m!645993))

(declare-fun m!646029 () Bool)

(assert (=> b!681034 m!646029))

(push 1)

(assert (not b!681030))

(assert (not b!681040))

(assert (not b!681029))

(assert (not b!681027))

(assert (not b!681037))

(assert (not b!681044))

(assert (not b!681034))

(assert (not b!681028))

(assert (not b!681038))

(assert (not b!681039))

(assert (not b!681025))

(assert (not b!681024))

(assert (not b!681032))

(assert (not b!681043))

(assert (not start!60666))

(assert (not b!681042))

(assert (not b!681041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93679 () Bool)

(assert (=> d!93679 (= ($colon$colon!313 acc!681 (select (arr!18927 a!3626) from!3004)) (Cons!13017 (select (arr!18927 a!3626) from!3004) acc!681))))

(assert (=> b!681043 d!93679))

(declare-fun b!681208 () Bool)

(declare-fun e!388042 () Bool)

(assert (=> b!681208 (= e!388042 (subseq!149 acc!681 (t!19263 acc!681)))))

(declare-fun b!681207 () Bool)

(declare-fun e!388043 () Bool)

(assert (=> b!681207 (= e!388043 (subseq!149 (t!19263 acc!681) (t!19263 acc!681)))))

(declare-fun b!681205 () Bool)

(declare-fun e!388041 () Bool)

(declare-fun e!388044 () Bool)

(assert (=> b!681205 (= e!388041 e!388044)))

(declare-fun res!447530 () Bool)

(assert (=> b!681205 (=> (not res!447530) (not e!388044))))

(assert (=> b!681205 (= res!447530 (is-Cons!13017 acc!681))))

(declare-fun d!93681 () Bool)

(declare-fun res!447531 () Bool)

(assert (=> d!93681 (=> res!447531 e!388041)))

(assert (=> d!93681 (= res!447531 (is-Nil!13018 acc!681))))

(assert (=> d!93681 (= (subseq!149 acc!681 acc!681) e!388041)))

(declare-fun b!681206 () Bool)

(assert (=> b!681206 (= e!388044 e!388042)))

(declare-fun res!447529 () Bool)

(assert (=> b!681206 (=> res!447529 e!388042)))

(assert (=> b!681206 (= res!447529 e!388043)))

(declare-fun res!447532 () Bool)

(assert (=> b!681206 (=> (not res!447532) (not e!388043))))

(assert (=> b!681206 (= res!447532 (= (h!14062 acc!681) (h!14062 acc!681)))))

(assert (= (and d!93681 (not res!447531)) b!681205))

(assert (= (and b!681205 res!447530) b!681206))

(assert (= (and b!681206 res!447532) b!681207))

(assert (= (and b!681206 (not res!447529)) b!681208))

(declare-fun m!646143 () Bool)

(assert (=> b!681208 m!646143))

(declare-fun m!646145 () Bool)

(assert (=> b!681207 m!646145))

(assert (=> b!681043 d!93681))

(declare-fun d!93695 () Bool)

(assert (=> d!93695 (subseq!149 acc!681 acc!681)))

(declare-fun lt!313226 () Unit!23878)

(declare-fun choose!36 (List!13021) Unit!23878)

(assert (=> d!93695 (= lt!313226 (choose!36 acc!681))))

(assert (=> d!93695 (= (lemmaListSubSeqRefl!0 acc!681) lt!313226)))

(declare-fun bs!19994 () Bool)

(assert (= bs!19994 d!93695))

(assert (=> bs!19994 m!646009))

(declare-fun m!646151 () Bool)

(assert (=> bs!19994 m!646151))

(assert (=> b!681043 d!93695))

(declare-fun d!93703 () Bool)

(declare-fun res!447551 () Bool)

(declare-fun e!388063 () Bool)

(assert (=> d!93703 (=> res!447551 e!388063)))

(assert (=> d!93703 (= res!447551 (is-Nil!13018 acc!681))))

(assert (=> d!93703 (= (noDuplicate!811 acc!681) e!388063)))

(declare-fun b!681227 () Bool)

(declare-fun e!388064 () Bool)

(assert (=> b!681227 (= e!388063 e!388064)))

(declare-fun res!447552 () Bool)

(assert (=> b!681227 (=> (not res!447552) (not e!388064))))

(assert (=> b!681227 (= res!447552 (not (contains!3564 (t!19263 acc!681) (h!14062 acc!681))))))

(declare-fun b!681228 () Bool)

(assert (=> b!681228 (= e!388064 (noDuplicate!811 (t!19263 acc!681)))))

(assert (= (and d!93703 (not res!447551)) b!681227))

(assert (= (and b!681227 res!447552) b!681228))

(declare-fun m!646173 () Bool)

(assert (=> b!681227 m!646173))

(declare-fun m!646175 () Bool)

(assert (=> b!681228 m!646175))

(assert (=> b!681032 d!93703))

(declare-fun d!93715 () Bool)

(declare-fun lt!313235 () Bool)

(declare-fun content!276 (List!13021) (Set (_ BitVec 64)))

(assert (=> d!93715 (= lt!313235 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!276 acc!681)))))

(declare-fun e!388086 () Bool)

(assert (=> d!93715 (= lt!313235 e!388086)))

(declare-fun res!447573 () Bool)

(assert (=> d!93715 (=> (not res!447573) (not e!388086))))

(assert (=> d!93715 (= res!447573 (is-Cons!13017 acc!681))))

(assert (=> d!93715 (= (contains!3564 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313235)))

(declare-fun b!681249 () Bool)

(declare-fun e!388088 () Bool)

(assert (=> b!681249 (= e!388086 e!388088)))

(declare-fun res!447574 () Bool)

(assert (=> b!681249 (=> res!447574 e!388088)))

(assert (=> b!681249 (= res!447574 (= (h!14062 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681250 () Bool)

(assert (=> b!681250 (= e!388088 (contains!3564 (t!19263 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93715 res!447573) b!681249))

(assert (= (and b!681249 (not res!447574)) b!681250))

(declare-fun m!646185 () Bool)

(assert (=> d!93715 m!646185))

(declare-fun m!646187 () Bool)

(assert (=> d!93715 m!646187))

(declare-fun m!646189 () Bool)

(assert (=> b!681250 m!646189))

(assert (=> b!681034 d!93715))

(declare-fun d!93723 () Bool)

(declare-fun res!447595 () Bool)

(declare-fun e!388107 () Bool)

(assert (=> d!93723 (=> res!447595 e!388107)))

(assert (=> d!93723 (= res!447595 (= (select (arr!18927 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93723 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!388107)))

(declare-fun b!681271 () Bool)

(declare-fun e!388108 () Bool)

(assert (=> b!681271 (= e!388107 e!388108)))

(declare-fun res!447596 () Bool)

(assert (=> b!681271 (=> (not res!447596) (not e!388108))))

(assert (=> b!681271 (= res!447596 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19291 a!3626)))))

(declare-fun b!681272 () Bool)

(assert (=> b!681272 (= e!388108 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93723 (not res!447595)) b!681271))

(assert (= (and b!681271 res!447596) b!681272))

(declare-fun m!646203 () Bool)

(assert (=> d!93723 m!646203))

(declare-fun m!646205 () Bool)

(assert (=> b!681272 m!646205))

(assert (=> b!681044 d!93723))

(declare-fun d!93733 () Bool)

(assert (=> d!93733 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681024 d!93733))

(declare-fun d!93739 () Bool)

(assert (=> d!93739 (= (array_inv!14701 a!3626) (bvsge (size!19291 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60666 d!93739))

(declare-fun d!93745 () Bool)

(assert (=> d!93745 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313245 () Unit!23878)

(declare-fun choose!13 (array!39489 (_ BitVec 64) (_ BitVec 32)) Unit!23878)

(assert (=> d!93745 (= lt!313245 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!93745 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93745 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313245)))

(declare-fun bs!19998 () Bool)

(assert (= bs!19998 d!93745))

(assert (=> bs!19998 m!646003))

(declare-fun m!646223 () Bool)

(assert (=> bs!19998 m!646223))

(assert (=> b!681025 d!93745))

(declare-fun d!93749 () Bool)

(declare-fun lt!313246 () Bool)

(assert (=> d!93749 (= lt!313246 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!276 lt!313191)))))

(declare-fun e!388117 () Bool)

(assert (=> d!93749 (= lt!313246 e!388117)))

(declare-fun res!447605 () Bool)

(assert (=> d!93749 (=> (not res!447605) (not e!388117))))

(assert (=> d!93749 (= res!447605 (is-Cons!13017 lt!313191))))

(assert (=> d!93749 (= (contains!3564 lt!313191 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313246)))

(declare-fun b!681281 () Bool)

(declare-fun e!388118 () Bool)

(assert (=> b!681281 (= e!388117 e!388118)))

(declare-fun res!447606 () Bool)

(assert (=> b!681281 (=> res!447606 e!388118)))

(assert (=> b!681281 (= res!447606 (= (h!14062 lt!313191) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681282 () Bool)

(assert (=> b!681282 (= e!388118 (contains!3564 (t!19263 lt!313191) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93749 res!447605) b!681281))

(assert (= (and b!681281 (not res!447606)) b!681282))

(declare-fun m!646225 () Bool)

(assert (=> d!93749 m!646225))

(declare-fun m!646227 () Bool)

(assert (=> d!93749 m!646227))

(declare-fun m!646229 () Bool)

(assert (=> b!681282 m!646229))

(assert (=> b!681038 d!93749))

(declare-fun d!93751 () Bool)

(assert (=> d!93751 (= (validKeyInArray!0 (select (arr!18927 a!3626) from!3004)) (and (not (= (select (arr!18927 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18927 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681027 d!93751))

(declare-fun d!93753 () Bool)

(declare-fun res!447613 () Bool)

(declare-fun e!388125 () Bool)

(assert (=> d!93753 (=> res!447613 e!388125)))

(assert (=> d!93753 (= res!447613 (= (select (arr!18927 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93753 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388125)))

(declare-fun b!681289 () Bool)

(declare-fun e!388126 () Bool)

(assert (=> b!681289 (= e!388125 e!388126)))

(declare-fun res!447614 () Bool)

(assert (=> b!681289 (=> (not res!447614) (not e!388126))))

(assert (=> b!681289 (= res!447614 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19291 a!3626)))))

(declare-fun b!681290 () Bool)

(assert (=> b!681290 (= e!388126 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93753 (not res!447613)) b!681289))

(assert (= (and b!681289 res!447614) b!681290))

(declare-fun m!646231 () Bool)

(assert (=> d!93753 m!646231))

(declare-fun m!646233 () Bool)

(assert (=> b!681290 m!646233))

(assert (=> b!681027 d!93753))

(declare-fun d!93755 () Bool)

(declare-fun res!447619 () Bool)

(declare-fun e!388133 () Bool)

(assert (=> d!93755 (=> res!447619 e!388133)))

(assert (=> d!93755 (= res!447619 (= (select (arr!18927 (array!39490 (store (arr!18927 a!3626) i!1382 k!2843) (size!19291 a!3626))) from!3004) k!2843))))

(assert (=> d!93755 (= (arrayContainsKey!0 (array!39490 (store (arr!18927 a!3626) i!1382 k!2843) (size!19291 a!3626)) k!2843 from!3004) e!388133)))

(declare-fun b!681297 () Bool)

(declare-fun e!388134 () Bool)

(assert (=> b!681297 (= e!388133 e!388134)))

(declare-fun res!447620 () Bool)

(assert (=> b!681297 (=> (not res!447620) (not e!388134))))

(assert (=> b!681297 (= res!447620 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19291 (array!39490 (store (arr!18927 a!3626) i!1382 k!2843) (size!19291 a!3626)))))))

(declare-fun b!681298 () Bool)

(assert (=> b!681298 (= e!388134 (arrayContainsKey!0 (array!39490 (store (arr!18927 a!3626) i!1382 k!2843) (size!19291 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93755 (not res!447619)) b!681297))

(assert (= (and b!681297 res!447620) b!681298))

(declare-fun m!646235 () Bool)

(assert (=> d!93755 m!646235))

(declare-fun m!646237 () Bool)

(assert (=> b!681298 m!646237))

(assert (=> b!681027 d!93755))

(declare-fun d!93757 () Bool)

(declare-fun res!447623 () Bool)

(declare-fun e!388139 () Bool)

(assert (=> d!93757 (=> res!447623 e!388139)))

(assert (=> d!93757 (= res!447623 (is-Nil!13018 lt!313191))))

(assert (=> d!93757 (= (noDuplicate!811 lt!313191) e!388139)))

(declare-fun b!681307 () Bool)

(declare-fun e!388140 () Bool)

(assert (=> b!681307 (= e!388139 e!388140)))

(declare-fun res!447624 () Bool)

(assert (=> b!681307 (=> (not res!447624) (not e!388140))))

(assert (=> b!681307 (= res!447624 (not (contains!3564 (t!19263 lt!313191) (h!14062 lt!313191))))))

(declare-fun b!681308 () Bool)

(assert (=> b!681308 (= e!388140 (noDuplicate!811 (t!19263 lt!313191)))))

(assert (= (and d!93757 (not res!447623)) b!681307))

(assert (= (and b!681307 res!447624) b!681308))

(declare-fun m!646239 () Bool)

(assert (=> b!681307 m!646239))

(declare-fun m!646241 () Bool)

(assert (=> b!681308 m!646241))

(assert (=> b!681037 d!93757))

(declare-fun d!93759 () Bool)

(declare-fun lt!313247 () Bool)

(assert (=> d!93759 (= lt!313247 (set.member k!2843 (content!276 acc!681)))))

(declare-fun e!388141 () Bool)

(assert (=> d!93759 (= lt!313247 e!388141)))

(declare-fun res!447625 () Bool)

(assert (=> d!93759 (=> (not res!447625) (not e!388141))))

(assert (=> d!93759 (= res!447625 (is-Cons!13017 acc!681))))

(assert (=> d!93759 (= (contains!3564 acc!681 k!2843) lt!313247)))

(declare-fun b!681309 () Bool)

(declare-fun e!388142 () Bool)

(assert (=> b!681309 (= e!388141 e!388142)))

(declare-fun res!447626 () Bool)

(assert (=> b!681309 (=> res!447626 e!388142)))

(assert (=> b!681309 (= res!447626 (= (h!14062 acc!681) k!2843))))

(declare-fun b!681310 () Bool)

(assert (=> b!681310 (= e!388142 (contains!3564 (t!19263 acc!681) k!2843))))

(assert (= (and d!93759 res!447625) b!681309))

(assert (= (and b!681309 (not res!447626)) b!681310))

(assert (=> d!93759 m!646185))

(declare-fun m!646243 () Bool)

(assert (=> d!93759 m!646243))

(declare-fun m!646245 () Bool)

(assert (=> b!681310 m!646245))

(assert (=> b!681039 d!93759))

(assert (=> b!681028 d!93759))

(declare-fun bm!33967 () Bool)

(declare-fun call!33970 () Bool)

(declare-fun c!77215 () Bool)

(assert (=> bm!33967 (= call!33970 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77215 (Cons!13017 (select (arr!18927 a!3626) #b00000000000000000000000000000000) Nil!13018) Nil!13018)))))

(declare-fun b!681349 () Bool)

(declare-fun e!388178 () Bool)

(assert (=> b!681349 (= e!388178 call!33970)))

(declare-fun b!681350 () Bool)

(declare-fun e!388176 () Bool)

(assert (=> b!681350 (= e!388176 (contains!3564 Nil!13018 (select (arr!18927 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93761 () Bool)

(declare-fun res!447653 () Bool)

(declare-fun e!388175 () Bool)

(assert (=> d!93761 (=> res!447653 e!388175)))

(assert (=> d!93761 (= res!447653 (bvsge #b00000000000000000000000000000000 (size!19291 a!3626)))))

(assert (=> d!93761 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13018) e!388175)))

(declare-fun b!681351 () Bool)

(assert (=> b!681351 (= e!388178 call!33970)))

(declare-fun b!681352 () Bool)

(declare-fun e!388177 () Bool)

(assert (=> b!681352 (= e!388177 e!388178)))

(assert (=> b!681352 (= c!77215 (validKeyInArray!0 (select (arr!18927 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!681353 () Bool)

(assert (=> b!681353 (= e!388175 e!388177)))

(declare-fun res!447654 () Bool)

(assert (=> b!681353 (=> (not res!447654) (not e!388177))))

(assert (=> b!681353 (= res!447654 (not e!388176))))

(declare-fun res!447655 () Bool)

(assert (=> b!681353 (=> (not res!447655) (not e!388176))))

(assert (=> b!681353 (= res!447655 (validKeyInArray!0 (select (arr!18927 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!93761 (not res!447653)) b!681353))

(assert (= (and b!681353 res!447655) b!681350))

(assert (= (and b!681353 res!447654) b!681352))

(assert (= (and b!681352 c!77215) b!681351))

(assert (= (and b!681352 (not c!77215)) b!681349))

(assert (= (or b!681351 b!681349) bm!33967))

(assert (=> bm!33967 m!646203))

(declare-fun m!646277 () Bool)

(assert (=> bm!33967 m!646277))

(assert (=> b!681350 m!646203))

(assert (=> b!681350 m!646203))

(declare-fun m!646283 () Bool)

(assert (=> b!681350 m!646283))

(assert (=> b!681352 m!646203))

(assert (=> b!681352 m!646203))

(declare-fun m!646285 () Bool)

(assert (=> b!681352 m!646285))

(assert (=> b!681353 m!646203))

(assert (=> b!681353 m!646203))

(assert (=> b!681353 m!646285))

(assert (=> b!681030 d!93761))

(declare-fun bm!33968 () Bool)

(declare-fun call!33971 () Bool)

(declare-fun c!77216 () Bool)

(assert (=> bm!33968 (= call!33971 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77216 (Cons!13017 (select (arr!18927 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!681358 () Bool)

(declare-fun e!388186 () Bool)

(assert (=> b!681358 (= e!388186 call!33971)))

(declare-fun e!388184 () Bool)

(declare-fun b!681359 () Bool)

(assert (=> b!681359 (= e!388184 (contains!3564 acc!681 (select (arr!18927 a!3626) from!3004)))))

(declare-fun d!93775 () Bool)

(declare-fun res!447660 () Bool)

(declare-fun e!388183 () Bool)

(assert (=> d!93775 (=> res!447660 e!388183)))

(assert (=> d!93775 (= res!447660 (bvsge from!3004 (size!19291 a!3626)))))

(assert (=> d!93775 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388183)))

(declare-fun b!681360 () Bool)

(assert (=> b!681360 (= e!388186 call!33971)))

(declare-fun b!681361 () Bool)

(declare-fun e!388185 () Bool)

(assert (=> b!681361 (= e!388185 e!388186)))

(assert (=> b!681361 (= c!77216 (validKeyInArray!0 (select (arr!18927 a!3626) from!3004)))))

(declare-fun b!681362 () Bool)

(assert (=> b!681362 (= e!388183 e!388185)))

(declare-fun res!447661 () Bool)

(assert (=> b!681362 (=> (not res!447661) (not e!388185))))

(assert (=> b!681362 (= res!447661 (not e!388184))))

(declare-fun res!447662 () Bool)

(assert (=> b!681362 (=> (not res!447662) (not e!388184))))

(assert (=> b!681362 (= res!447662 (validKeyInArray!0 (select (arr!18927 a!3626) from!3004)))))

(assert (= (and d!93775 (not res!447660)) b!681362))

(assert (= (and b!681362 res!447662) b!681359))

(assert (= (and b!681362 res!447661) b!681361))

(assert (= (and b!681361 c!77216) b!681360))

(assert (= (and b!681361 (not c!77216)) b!681358))

(assert (= (or b!681360 b!681358) bm!33968))

(assert (=> bm!33968 m!646005))

(declare-fun m!646295 () Bool)

(assert (=> bm!33968 m!646295))

(assert (=> b!681359 m!646005))

(assert (=> b!681359 m!646005))

(declare-fun m!646297 () Bool)

(assert (=> b!681359 m!646297))

(assert (=> b!681361 m!646005))

(assert (=> b!681361 m!646005))

(assert (=> b!681361 m!646023))

(assert (=> b!681362 m!646005))

(assert (=> b!681362 m!646005))

(assert (=> b!681362 m!646023))

(assert (=> b!681040 d!93775))

(declare-fun b!681370 () Bool)

(declare-fun e!388192 () Bool)

(assert (=> b!681370 (= e!388192 (subseq!149 acc!681 (t!19263 lt!313191)))))

(declare-fun b!681369 () Bool)

(declare-fun e!388193 () Bool)

(assert (=> b!681369 (= e!388193 (subseq!149 (t!19263 acc!681) (t!19263 lt!313191)))))

(declare-fun b!681367 () Bool)

(declare-fun e!388191 () Bool)

(declare-fun e!388194 () Bool)

(assert (=> b!681367 (= e!388191 e!388194)))

(declare-fun res!447668 () Bool)

(assert (=> b!681367 (=> (not res!447668) (not e!388194))))

(assert (=> b!681367 (= res!447668 (is-Cons!13017 lt!313191))))

(declare-fun d!93785 () Bool)

