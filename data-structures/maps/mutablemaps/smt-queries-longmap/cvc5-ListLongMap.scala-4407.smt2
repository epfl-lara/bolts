; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60804 () Bool)

(assert start!60804)

(declare-fun b!681837 () Bool)

(declare-fun res!448089 () Bool)

(declare-fun e!388502 () Bool)

(assert (=> b!681837 (=> (not res!448089) (not e!388502))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681837 (= res!448089 (validKeyInArray!0 k!2843))))

(declare-fun b!681838 () Bool)

(declare-datatypes ((array!39507 0))(
  ( (array!39508 (arr!18933 (Array (_ BitVec 32) (_ BitVec 64))) (size!19297 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39507)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13027 0))(
  ( (Nil!13024) (Cons!13023 (h!14068 (_ BitVec 64)) (t!19275 List!13027)) )
))
(declare-fun acc!681 () List!13027)

(declare-fun arrayNoDuplicates!0 (array!39507 (_ BitVec 32) List!13027) Bool)

(assert (=> b!681838 (= e!388502 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))))

(declare-datatypes ((Unit!23902 0))(
  ( (Unit!23903) )
))
(declare-fun lt!313360 () Unit!23902)

(declare-fun e!388498 () Unit!23902)

(assert (=> b!681838 (= lt!313360 e!388498)))

(declare-fun c!77246 () Bool)

(assert (=> b!681838 (= c!77246 (validKeyInArray!0 (select (arr!18933 a!3626) from!3004)))))

(declare-fun lt!313361 () Unit!23902)

(declare-fun e!388504 () Unit!23902)

(assert (=> b!681838 (= lt!313361 e!388504)))

(declare-fun c!77245 () Bool)

(declare-fun arrayContainsKey!0 (array!39507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681838 (= c!77245 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681838 (arrayContainsKey!0 (array!39508 (store (arr!18933 a!3626) i!1382 k!2843) (size!19297 a!3626)) k!2843 from!3004)))

(declare-fun b!681839 () Bool)

(declare-fun res!448082 () Bool)

(assert (=> b!681839 (=> (not res!448082) (not e!388502))))

(assert (=> b!681839 (= res!448082 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13024))))

(declare-fun b!681840 () Bool)

(declare-fun res!448085 () Bool)

(assert (=> b!681840 (=> (not res!448085) (not e!388502))))

(assert (=> b!681840 (= res!448085 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681841 () Bool)

(declare-fun res!448093 () Bool)

(assert (=> b!681841 (=> (not res!448093) (not e!388502))))

(declare-fun e!388500 () Bool)

(assert (=> b!681841 (= res!448093 e!388500)))

(declare-fun res!448091 () Bool)

(assert (=> b!681841 (=> res!448091 e!388500)))

(declare-fun e!388501 () Bool)

(assert (=> b!681841 (= res!448091 e!388501)))

(declare-fun res!448083 () Bool)

(assert (=> b!681841 (=> (not res!448083) (not e!388501))))

(assert (=> b!681841 (= res!448083 (bvsgt from!3004 i!1382))))

(declare-fun b!681842 () Bool)

(declare-fun Unit!23904 () Unit!23902)

(assert (=> b!681842 (= e!388504 Unit!23904)))

(declare-fun lt!313358 () Unit!23902)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39507 (_ BitVec 64) (_ BitVec 32)) Unit!23902)

(assert (=> b!681842 (= lt!313358 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681842 false))

(declare-fun b!681843 () Bool)

(declare-fun Unit!23905 () Unit!23902)

(assert (=> b!681843 (= e!388498 Unit!23905)))

(declare-fun b!681844 () Bool)

(declare-fun res!448081 () Bool)

(assert (=> b!681844 (=> (not res!448081) (not e!388502))))

(assert (=> b!681844 (= res!448081 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19297 a!3626))))))

(declare-fun b!681845 () Bool)

(declare-fun res!448084 () Bool)

(assert (=> b!681845 (=> (not res!448084) (not e!388502))))

(assert (=> b!681845 (= res!448084 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681846 () Bool)

(declare-fun res!448092 () Bool)

(assert (=> b!681846 (=> (not res!448092) (not e!388502))))

(declare-fun noDuplicate!817 (List!13027) Bool)

(assert (=> b!681846 (= res!448092 (noDuplicate!817 acc!681))))

(declare-fun b!681847 () Bool)

(declare-fun lt!313359 () Unit!23902)

(assert (=> b!681847 (= e!388498 lt!313359)))

(declare-fun lt!313362 () Unit!23902)

(declare-fun lemmaListSubSeqRefl!0 (List!13027) Unit!23902)

(assert (=> b!681847 (= lt!313362 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!155 (List!13027 List!13027) Bool)

(assert (=> b!681847 (subseq!155 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39507 List!13027 List!13027 (_ BitVec 32)) Unit!23902)

(declare-fun $colon$colon!319 (List!13027 (_ BitVec 64)) List!13027)

(assert (=> b!681847 (= lt!313359 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!319 acc!681 (select (arr!18933 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681847 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!681848 () Bool)

(declare-fun res!448087 () Bool)

(assert (=> b!681848 (=> (not res!448087) (not e!388502))))

(assert (=> b!681848 (= res!448087 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19297 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681849 () Bool)

(declare-fun res!448088 () Bool)

(assert (=> b!681849 (=> (not res!448088) (not e!388502))))

(declare-fun contains!3570 (List!13027 (_ BitVec 64)) Bool)

(assert (=> b!681849 (= res!448088 (not (contains!3570 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681850 () Bool)

(declare-fun e!388499 () Bool)

(assert (=> b!681850 (= e!388500 e!388499)))

(declare-fun res!448090 () Bool)

(assert (=> b!681850 (=> (not res!448090) (not e!388499))))

(assert (=> b!681850 (= res!448090 (bvsle from!3004 i!1382))))

(declare-fun res!448086 () Bool)

(assert (=> start!60804 (=> (not res!448086) (not e!388502))))

(assert (=> start!60804 (= res!448086 (and (bvslt (size!19297 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19297 a!3626))))))

(assert (=> start!60804 e!388502))

(assert (=> start!60804 true))

(declare-fun array_inv!14707 (array!39507) Bool)

(assert (=> start!60804 (array_inv!14707 a!3626)))

(declare-fun b!681851 () Bool)

(declare-fun res!448094 () Bool)

(assert (=> b!681851 (=> (not res!448094) (not e!388502))))

(assert (=> b!681851 (= res!448094 (not (contains!3570 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681852 () Bool)

(declare-fun Unit!23906 () Unit!23902)

(assert (=> b!681852 (= e!388504 Unit!23906)))

(declare-fun b!681853 () Bool)

(assert (=> b!681853 (= e!388501 (contains!3570 acc!681 k!2843))))

(declare-fun b!681854 () Bool)

(assert (=> b!681854 (= e!388499 (not (contains!3570 acc!681 k!2843)))))

(assert (= (and start!60804 res!448086) b!681846))

(assert (= (and b!681846 res!448092) b!681851))

(assert (= (and b!681851 res!448094) b!681849))

(assert (= (and b!681849 res!448088) b!681841))

(assert (= (and b!681841 res!448083) b!681853))

(assert (= (and b!681841 (not res!448091)) b!681850))

(assert (= (and b!681850 res!448090) b!681854))

(assert (= (and b!681841 res!448093) b!681839))

(assert (= (and b!681839 res!448082) b!681840))

(assert (= (and b!681840 res!448085) b!681844))

(assert (= (and b!681844 res!448081) b!681837))

(assert (= (and b!681837 res!448089) b!681845))

(assert (= (and b!681845 res!448084) b!681848))

(assert (= (and b!681848 res!448087) b!681838))

(assert (= (and b!681838 c!77245) b!681842))

(assert (= (and b!681838 (not c!77245)) b!681852))

(assert (= (and b!681838 c!77246) b!681847))

(assert (= (and b!681838 (not c!77246)) b!681843))

(declare-fun m!646683 () Bool)

(assert (=> b!681854 m!646683))

(declare-fun m!646685 () Bool)

(assert (=> b!681846 m!646685))

(declare-fun m!646687 () Bool)

(assert (=> b!681845 m!646687))

(assert (=> b!681853 m!646683))

(declare-fun m!646689 () Bool)

(assert (=> start!60804 m!646689))

(declare-fun m!646691 () Bool)

(assert (=> b!681847 m!646691))

(declare-fun m!646693 () Bool)

(assert (=> b!681847 m!646693))

(declare-fun m!646695 () Bool)

(assert (=> b!681847 m!646695))

(declare-fun m!646697 () Bool)

(assert (=> b!681847 m!646697))

(assert (=> b!681847 m!646693))

(assert (=> b!681847 m!646695))

(declare-fun m!646699 () Bool)

(assert (=> b!681847 m!646699))

(declare-fun m!646701 () Bool)

(assert (=> b!681847 m!646701))

(declare-fun m!646703 () Bool)

(assert (=> b!681849 m!646703))

(declare-fun m!646705 () Bool)

(assert (=> b!681839 m!646705))

(declare-fun m!646707 () Bool)

(assert (=> b!681842 m!646707))

(declare-fun m!646709 () Bool)

(assert (=> b!681840 m!646709))

(declare-fun m!646711 () Bool)

(assert (=> b!681837 m!646711))

(assert (=> b!681838 m!646691))

(assert (=> b!681838 m!646693))

(declare-fun m!646713 () Bool)

(assert (=> b!681838 m!646713))

(declare-fun m!646715 () Bool)

(assert (=> b!681838 m!646715))

(assert (=> b!681838 m!646693))

(declare-fun m!646717 () Bool)

(assert (=> b!681838 m!646717))

(declare-fun m!646719 () Bool)

(assert (=> b!681838 m!646719))

(declare-fun m!646721 () Bool)

(assert (=> b!681851 m!646721))

(push 1)

(assert (not b!681840))

(assert (not b!681849))

(assert (not start!60804))

(assert (not b!681838))

(assert (not b!681846))

(assert (not b!681845))

(assert (not b!681837))

(assert (not b!681851))

(assert (not b!681847))

(assert (not b!681842))

(assert (not b!681839))

(assert (not b!681854))

(assert (not b!681853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93935 () Bool)

(declare-fun lt!313398 () Bool)

(declare-fun content!280 (List!13027) (Set (_ BitVec 64)))

(assert (=> d!93935 (= lt!313398 (set.member k!2843 (content!280 acc!681)))))

(declare-fun e!388563 () Bool)

(assert (=> d!93935 (= lt!313398 e!388563)))

(declare-fun res!448196 () Bool)

(assert (=> d!93935 (=> (not res!448196) (not e!388563))))

(assert (=> d!93935 (= res!448196 (is-Cons!13023 acc!681))))

(assert (=> d!93935 (= (contains!3570 acc!681 k!2843) lt!313398)))

(declare-fun b!681979 () Bool)

(declare-fun e!388564 () Bool)

(assert (=> b!681979 (= e!388563 e!388564)))

(declare-fun res!448195 () Bool)

(assert (=> b!681979 (=> res!448195 e!388564)))

(assert (=> b!681979 (= res!448195 (= (h!14068 acc!681) k!2843))))

(declare-fun b!681980 () Bool)

(assert (=> b!681980 (= e!388564 (contains!3570 (t!19275 acc!681) k!2843))))

(assert (= (and d!93935 res!448196) b!681979))

(assert (= (and b!681979 (not res!448195)) b!681980))

(declare-fun m!646809 () Bool)

(assert (=> d!93935 m!646809))

(declare-fun m!646811 () Bool)

(assert (=> d!93935 m!646811))

(declare-fun m!646813 () Bool)

(assert (=> b!681980 m!646813))

(assert (=> b!681854 d!93935))

(declare-fun d!93941 () Bool)

(assert (=> d!93941 (= (array_inv!14707 a!3626) (bvsge (size!19297 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60804 d!93941))

(assert (=> b!681853 d!93935))

(declare-fun d!93943 () Bool)

(assert (=> d!93943 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313406 () Unit!23902)

(declare-fun choose!13 (array!39507 (_ BitVec 64) (_ BitVec 32)) Unit!23902)

(assert (=> d!93943 (= lt!313406 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!93943 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93943 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313406)))

(declare-fun bs!20014 () Bool)

(assert (= bs!20014 d!93943))

(assert (=> bs!20014 m!646687))

(declare-fun m!646817 () Bool)

(assert (=> bs!20014 m!646817))

(assert (=> b!681842 d!93943))

(declare-fun d!93947 () Bool)

(declare-fun lt!313407 () Bool)

(assert (=> d!93947 (= lt!313407 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!280 acc!681)))))

(declare-fun e!388569 () Bool)

(assert (=> d!93947 (= lt!313407 e!388569)))

(declare-fun res!448202 () Bool)

(assert (=> d!93947 (=> (not res!448202) (not e!388569))))

(assert (=> d!93947 (= res!448202 (is-Cons!13023 acc!681))))

(assert (=> d!93947 (= (contains!3570 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313407)))

(declare-fun b!681985 () Bool)

(declare-fun e!388570 () Bool)

(assert (=> b!681985 (= e!388569 e!388570)))

(declare-fun res!448201 () Bool)

(assert (=> b!681985 (=> res!448201 e!388570)))

(assert (=> b!681985 (= res!448201 (= (h!14068 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681986 () Bool)

(assert (=> b!681986 (= e!388570 (contains!3570 (t!19275 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93947 res!448202) b!681985))

(assert (= (and b!681985 (not res!448201)) b!681986))

(assert (=> d!93947 m!646809))

(declare-fun m!646819 () Bool)

(assert (=> d!93947 m!646819))

(declare-fun m!646821 () Bool)

(assert (=> b!681986 m!646821))

(assert (=> b!681851 d!93947))

(declare-fun bm!33988 () Bool)

(declare-fun call!33991 () Bool)

(declare-fun c!77263 () Bool)

(assert (=> bm!33988 (= call!33991 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77263 (Cons!13023 (select (arr!18933 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!682015 () Bool)

(declare-fun e!388598 () Bool)

(assert (=> b!682015 (= e!388598 call!33991)))

(declare-fun b!682016 () Bool)

(declare-fun e!388596 () Bool)

(assert (=> b!682016 (= e!388596 e!388598)))

(assert (=> b!682016 (= c!77263 (validKeyInArray!0 (select (arr!18933 a!3626) from!3004)))))

(declare-fun b!682017 () Bool)

(assert (=> b!682017 (= e!388598 call!33991)))

(declare-fun b!682018 () Bool)

(declare-fun e!388595 () Bool)

(assert (=> b!682018 (= e!388595 (contains!3570 acc!681 (select (arr!18933 a!3626) from!3004)))))

(declare-fun b!682019 () Bool)

(declare-fun e!388597 () Bool)

(assert (=> b!682019 (= e!388597 e!388596)))

(declare-fun res!448224 () Bool)

(assert (=> b!682019 (=> (not res!448224) (not e!388596))))

(assert (=> b!682019 (= res!448224 (not e!388595))))

(declare-fun res!448225 () Bool)

(assert (=> b!682019 (=> (not res!448225) (not e!388595))))

(assert (=> b!682019 (= res!448225 (validKeyInArray!0 (select (arr!18933 a!3626) from!3004)))))

(declare-fun d!93949 () Bool)

(declare-fun res!448223 () Bool)

(assert (=> d!93949 (=> res!448223 e!388597)))

(assert (=> d!93949 (= res!448223 (bvsge from!3004 (size!19297 a!3626)))))

(assert (=> d!93949 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388597)))

(assert (= (and d!93949 (not res!448223)) b!682019))

(assert (= (and b!682019 res!448225) b!682018))

(assert (= (and b!682019 res!448224) b!682016))

(assert (= (and b!682016 c!77263) b!682015))

(assert (= (and b!682016 (not c!77263)) b!682017))

(assert (= (or b!682015 b!682017) bm!33988))

(assert (=> bm!33988 m!646693))

(declare-fun m!646833 () Bool)

(assert (=> bm!33988 m!646833))

(assert (=> b!682016 m!646693))

(assert (=> b!682016 m!646693))

(assert (=> b!682016 m!646717))

(assert (=> b!682018 m!646693))

(assert (=> b!682018 m!646693))

(declare-fun m!646835 () Bool)

(assert (=> b!682018 m!646835))

(assert (=> b!682019 m!646693))

(assert (=> b!682019 m!646693))

(assert (=> b!682019 m!646717))

(assert (=> b!681840 d!93949))

(declare-fun bm!33989 () Bool)

(declare-fun call!33992 () Bool)

(declare-fun c!77264 () Bool)

(assert (=> bm!33989 (= call!33992 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77264 (Cons!13023 (select (arr!18933 a!3626) #b00000000000000000000000000000000) Nil!13024) Nil!13024)))))

(declare-fun b!682020 () Bool)

(declare-fun e!388602 () Bool)

(assert (=> b!682020 (= e!388602 call!33992)))

(declare-fun b!682021 () Bool)

(declare-fun e!388600 () Bool)

(assert (=> b!682021 (= e!388600 e!388602)))

(assert (=> b!682021 (= c!77264 (validKeyInArray!0 (select (arr!18933 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!682022 () Bool)

(assert (=> b!682022 (= e!388602 call!33992)))

(declare-fun b!682023 () Bool)

(declare-fun e!388599 () Bool)

(assert (=> b!682023 (= e!388599 (contains!3570 Nil!13024 (select (arr!18933 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!682024 () Bool)

(declare-fun e!388601 () Bool)

(assert (=> b!682024 (= e!388601 e!388600)))

(declare-fun res!448227 () Bool)

(assert (=> b!682024 (=> (not res!448227) (not e!388600))))

(assert (=> b!682024 (= res!448227 (not e!388599))))

(declare-fun res!448228 () Bool)

(assert (=> b!682024 (=> (not res!448228) (not e!388599))))

(assert (=> b!682024 (= res!448228 (validKeyInArray!0 (select (arr!18933 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93955 () Bool)

(declare-fun res!448226 () Bool)

(assert (=> d!93955 (=> res!448226 e!388601)))

(assert (=> d!93955 (= res!448226 (bvsge #b00000000000000000000000000000000 (size!19297 a!3626)))))

(assert (=> d!93955 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13024) e!388601)))

(assert (= (and d!93955 (not res!448226)) b!682024))

(assert (= (and b!682024 res!448228) b!682023))

(assert (= (and b!682024 res!448227) b!682021))

(assert (= (and b!682021 c!77264) b!682020))

(assert (= (and b!682021 (not c!77264)) b!682022))

(assert (= (or b!682020 b!682022) bm!33989))

(declare-fun m!646837 () Bool)

(assert (=> bm!33989 m!646837))

(declare-fun m!646839 () Bool)

(assert (=> bm!33989 m!646839))

(assert (=> b!682021 m!646837))

(assert (=> b!682021 m!646837))

(declare-fun m!646841 () Bool)

(assert (=> b!682021 m!646841))

(assert (=> b!682023 m!646837))

(assert (=> b!682023 m!646837))

(declare-fun m!646843 () Bool)

(assert (=> b!682023 m!646843))

(assert (=> b!682024 m!646837))

(assert (=> b!682024 m!646837))

(assert (=> b!682024 m!646841))

(assert (=> b!681839 d!93955))

(declare-fun d!93957 () Bool)

(declare-fun lt!313409 () Bool)

(assert (=> d!93957 (= lt!313409 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!280 acc!681)))))

(declare-fun e!388607 () Bool)

(assert (=> d!93957 (= lt!313409 e!388607)))

(declare-fun res!448233 () Bool)

(assert (=> d!93957 (=> (not res!448233) (not e!388607))))

(assert (=> d!93957 (= res!448233 (is-Cons!13023 acc!681))))

(assert (=> d!93957 (= (contains!3570 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313409)))

(declare-fun b!682030 () Bool)

(declare-fun e!388608 () Bool)

(assert (=> b!682030 (= e!388607 e!388608)))

(declare-fun res!448232 () Bool)

(assert (=> b!682030 (=> res!448232 e!388608)))

(assert (=> b!682030 (= res!448232 (= (h!14068 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!682031 () Bool)

(assert (=> b!682031 (= e!388608 (contains!3570 (t!19275 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93957 res!448233) b!682030))

(assert (= (and b!682030 (not res!448232)) b!682031))

(assert (=> d!93957 m!646809))

(declare-fun m!646845 () Bool)

(assert (=> d!93957 m!646845))

(declare-fun m!646847 () Bool)

(assert (=> b!682031 m!646847))

(assert (=> b!681849 d!93957))

(declare-fun c!77266 () Bool)

(declare-fun bm!33991 () Bool)

(declare-fun call!33994 () Bool)

(assert (=> bm!33991 (= call!33994 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77266 (Cons!13023 (select (arr!18933 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!682032 () Bool)

(declare-fun e!388612 () Bool)

(assert (=> b!682032 (= e!388612 call!33994)))

(declare-fun b!682033 () Bool)

(declare-fun e!388610 () Bool)

(assert (=> b!682033 (= e!388610 e!388612)))

(assert (=> b!682033 (= c!77266 (validKeyInArray!0 (select (arr!18933 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!682034 () Bool)

(assert (=> b!682034 (= e!388612 call!33994)))

(declare-fun e!388609 () Bool)

(declare-fun b!682035 () Bool)

(assert (=> b!682035 (= e!388609 (contains!3570 acc!681 (select (arr!18933 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!682036 () Bool)

(declare-fun e!388611 () Bool)

(assert (=> b!682036 (= e!388611 e!388610)))

(declare-fun res!448235 () Bool)

(assert (=> b!682036 (=> (not res!448235) (not e!388610))))

(assert (=> b!682036 (= res!448235 (not e!388609))))

(declare-fun res!448236 () Bool)

(assert (=> b!682036 (=> (not res!448236) (not e!388609))))

(assert (=> b!682036 (= res!448236 (validKeyInArray!0 (select (arr!18933 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!93959 () Bool)

(declare-fun res!448234 () Bool)

(assert (=> d!93959 (=> res!448234 e!388611)))

(assert (=> d!93959 (= res!448234 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19297 a!3626)))))

(assert (=> d!93959 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!388611)))

(assert (= (and d!93959 (not res!448234)) b!682036))

(assert (= (and b!682036 res!448236) b!682035))

(assert (= (and b!682036 res!448235) b!682033))

(assert (= (and b!682033 c!77266) b!682032))

(assert (= (and b!682033 (not c!77266)) b!682034))

(assert (= (or b!682032 b!682034) bm!33991))

(declare-fun m!646855 () Bool)

(assert (=> bm!33991 m!646855))

(declare-fun m!646859 () Bool)

(assert (=> bm!33991 m!646859))

(assert (=> b!682033 m!646855))

(assert (=> b!682033 m!646855))

(declare-fun m!646861 () Bool)

(assert (=> b!682033 m!646861))

(assert (=> b!682035 m!646855))

(assert (=> b!682035 m!646855))

(declare-fun m!646863 () Bool)

(assert (=> b!682035 m!646863))

(assert (=> b!682036 m!646855))

(assert (=> b!682036 m!646855))

(assert (=> b!682036 m!646861))

(assert (=> b!681838 d!93959))

(declare-fun d!93963 () Bool)

(assert (=> d!93963 (= (validKeyInArray!0 (select (arr!18933 a!3626) from!3004)) (and (not (= (select (arr!18933 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18933 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681838 d!93963))

(declare-fun d!93967 () Bool)

(declare-fun res!448251 () Bool)

(declare-fun e!388629 () Bool)

(assert (=> d!93967 (=> res!448251 e!388629)))

(assert (=> d!93967 (= res!448251 (= (select (arr!18933 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93967 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388629)))

(declare-fun b!682055 () Bool)

(declare-fun e!388630 () Bool)

(assert (=> b!682055 (= e!388629 e!388630)))

(declare-fun res!448252 () Bool)

(assert (=> b!682055 (=> (not res!448252) (not e!388630))))

(assert (=> b!682055 (= res!448252 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19297 a!3626)))))

(declare-fun b!682056 () Bool)

(assert (=> b!682056 (= e!388630 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93967 (not res!448251)) b!682055))

(assert (= (and b!682055 res!448252) b!682056))

(assert (=> d!93967 m!646855))

(declare-fun m!646865 () Bool)

(assert (=> b!682056 m!646865))

(assert (=> b!681838 d!93967))

(declare-fun d!93969 () Bool)

(declare-fun res!448255 () Bool)

(declare-fun e!388633 () Bool)

(assert (=> d!93969 (=> res!448255 e!388633)))

(assert (=> d!93969 (= res!448255 (= (select (arr!18933 (array!39508 (store (arr!18933 a!3626) i!1382 k!2843) (size!19297 a!3626))) from!3004) k!2843))))

(assert (=> d!93969 (= (arrayContainsKey!0 (array!39508 (store (arr!18933 a!3626) i!1382 k!2843) (size!19297 a!3626)) k!2843 from!3004) e!388633)))

(declare-fun b!682059 () Bool)

(declare-fun e!388634 () Bool)

(assert (=> b!682059 (= e!388633 e!388634)))

(declare-fun res!448256 () Bool)

(assert (=> b!682059 (=> (not res!448256) (not e!388634))))

(assert (=> b!682059 (= res!448256 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19297 (array!39508 (store (arr!18933 a!3626) i!1382 k!2843) (size!19297 a!3626)))))))

(declare-fun b!682060 () Bool)

(assert (=> b!682060 (= e!388634 (arrayContainsKey!0 (array!39508 (store (arr!18933 a!3626) i!1382 k!2843) (size!19297 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93969 (not res!448255)) b!682059))

(assert (= (and b!682059 res!448256) b!682060))

(declare-fun m!646867 () Bool)

(assert (=> d!93969 m!646867))

(declare-fun m!646869 () Bool)

(assert (=> b!682060 m!646869))

(assert (=> b!681838 d!93969))

(declare-fun d!93971 () Bool)

(assert (=> d!93971 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681837 d!93971))

(declare-fun d!93973 () Bool)

(assert (=> d!93973 (= ($colon$colon!319 acc!681 (select (arr!18933 a!3626) from!3004)) (Cons!13023 (select (arr!18933 a!3626) from!3004) acc!681))))

(assert (=> b!681847 d!93973))

(declare-fun b!682080 () Bool)

(declare-fun e!388655 () Bool)

(declare-fun e!388656 () Bool)

(assert (=> b!682080 (= e!388655 e!388656)))

(declare-fun res!448276 () Bool)

(assert (=> b!682080 (=> (not res!448276) (not e!388656))))

(assert (=> b!682080 (= res!448276 (is-Cons!13023 acc!681))))

(declare-fun b!682082 () Bool)

(declare-fun e!388653 () Bool)

(assert (=> b!682082 (= e!388653 (subseq!155 (t!19275 acc!681) (t!19275 acc!681)))))

(declare-fun b!682081 () Bool)

(declare-fun e!388654 () Bool)

(assert (=> b!682081 (= e!388656 e!388654)))

(declare-fun res!448275 () Bool)

(assert (=> b!682081 (=> res!448275 e!388654)))

(assert (=> b!682081 (= res!448275 e!388653)))

(declare-fun res!448274 () Bool)

(assert (=> b!682081 (=> (not res!448274) (not e!388653))))

(assert (=> b!682081 (= res!448274 (= (h!14068 acc!681) (h!14068 acc!681)))))

(declare-fun d!93977 () Bool)

(declare-fun res!448277 () Bool)

(assert (=> d!93977 (=> res!448277 e!388655)))

(assert (=> d!93977 (= res!448277 (is-Nil!13024 acc!681))))

(assert (=> d!93977 (= (subseq!155 acc!681 acc!681) e!388655)))

(declare-fun b!682083 () Bool)

(assert (=> b!682083 (= e!388654 (subseq!155 acc!681 (t!19275 acc!681)))))

(assert (= (and d!93977 (not res!448277)) b!682080))

(assert (= (and b!682080 res!448276) b!682081))

(assert (= (and b!682081 res!448274) b!682082))

(assert (= (and b!682081 (not res!448275)) b!682083))

(declare-fun m!646887 () Bool)

(assert (=> b!682082 m!646887))

(declare-fun m!646889 () Bool)

(assert (=> b!682083 m!646889))

(assert (=> b!681847 d!93977))

(declare-fun d!93989 () Bool)

(assert (=> d!93989 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313417 () Unit!23902)

(declare-fun choose!80 (array!39507 List!13027 List!13027 (_ BitVec 32)) Unit!23902)

(assert (=> d!93989 (= lt!313417 (choose!80 a!3626 ($colon$colon!319 acc!681 (select (arr!18933 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!93989 (bvslt (size!19297 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!93989 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!319 acc!681 (select (arr!18933 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!313417)))

(declare-fun bs!20015 () Bool)

(assert (= bs!20015 d!93989))

(assert (=> bs!20015 m!646691))

(assert (=> bs!20015 m!646695))

(declare-fun m!646909 () Bool)

(assert (=> bs!20015 m!646909))

(assert (=> b!681847 d!93989))

(declare-fun d!93999 () Bool)

(assert (=> d!93999 (subseq!155 acc!681 acc!681)))

(declare-fun lt!313420 () Unit!23902)

(declare-fun choose!36 (List!13027) Unit!23902)

(assert (=> d!93999 (= lt!313420 (choose!36 acc!681))))

(assert (=> d!93999 (= (lemmaListSubSeqRefl!0 acc!681) lt!313420)))

(declare-fun bs!20016 () Bool)

(assert (= bs!20016 d!93999))

(assert (=> bs!20016 m!646701))

(declare-fun m!646911 () Bool)

(assert (=> bs!20016 m!646911))

(assert (=> b!681847 d!93999))

(assert (=> b!681847 d!93959))

(declare-fun d!94001 () Bool)

(declare-fun res!448302 () Bool)

(declare-fun e!388681 () Bool)

(assert (=> d!94001 (=> res!448302 e!388681)))

(assert (=> d!94001 (= res!448302 (is-Nil!13024 acc!681))))

(assert (=> d!94001 (= (noDuplicate!817 acc!681) e!388681)))

(declare-fun b!682108 () Bool)

(declare-fun e!388682 () Bool)

(assert (=> b!682108 (= e!388681 e!388682)))

(declare-fun res!448303 () Bool)

(assert (=> b!682108 (=> (not res!448303) (not e!388682))))

(assert (=> b!682108 (= res!448303 (not (contains!3570 (t!19275 acc!681) (h!14068 acc!681))))))

(declare-fun b!682109 () Bool)

(assert (=> b!682109 (= e!388682 (noDuplicate!817 (t!19275 acc!681)))))

(assert (= (and d!94001 (not res!448302)) b!682108))

(assert (= (and b!682108 res!448303) b!682109))

(declare-fun m!646925 () Bool)

(assert (=> b!682108 m!646925))

(declare-fun m!646927 () Bool)

(assert (=> b!682109 m!646927))

(assert (=> b!681846 d!94001))

(declare-fun d!94009 () Bool)

(declare-fun res!448304 () Bool)

(declare-fun e!388683 () Bool)

(assert (=> d!94009 (=> res!448304 e!388683)))

(assert (=> d!94009 (= res!448304 (= (select (arr!18933 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94009 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!388683)))

(declare-fun b!682110 () Bool)

(declare-fun e!388684 () Bool)

(assert (=> b!682110 (= e!388683 e!388684)))

(declare-fun res!448305 () Bool)

(assert (=> b!682110 (=> (not res!448305) (not e!388684))))

(assert (=> b!682110 (= res!448305 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19297 a!3626)))))

(declare-fun b!682111 () Bool)

(assert (=> b!682111 (= e!388684 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94009 (not res!448304)) b!682110))

(assert (= (and b!682110 res!448305) b!682111))

(assert (=> d!94009 m!646837))

(declare-fun m!646931 () Bool)

(assert (=> b!682111 m!646931))

(assert (=> b!681845 d!94009))

(push 1)

(assert (not bm!33988))

(assert (not b!682060))

(assert (not b!681986))

(assert (not bm!33991))

(assert (not bm!33989))

(assert (not b!682021))

(assert (not d!93999))

(assert (not b!682109))

(assert (not b!682082))

(assert (not b!682019))

(assert (not d!93989))

(assert (not b!682111))

(assert (not b!682036))

(assert (not d!93957))

(assert (not b!682108))

(assert (not b!682031))

(assert (not b!682016))

(assert (not b!682018))

(assert (not b!682035))

(assert (not d!93943))

(assert (not b!681980))

(assert (not d!93935))

(assert (not b!682083))

(assert (not b!682024))

(assert (not b!682033))

(assert (not d!93947))

(assert (not b!682056))

(assert (not b!682023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

