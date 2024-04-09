; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61608 () Bool)

(assert start!61608)

(declare-fun b!689419 () Bool)

(declare-datatypes ((Unit!24337 0))(
  ( (Unit!24338) )
))
(declare-fun e!392518 () Unit!24337)

(declare-fun lt!316190 () Unit!24337)

(assert (=> b!689419 (= e!392518 lt!316190)))

(declare-fun lt!316183 () Unit!24337)

(declare-datatypes ((List!13114 0))(
  ( (Nil!13111) (Cons!13110 (h!14155 (_ BitVec 64)) (t!19386 List!13114)) )
))
(declare-fun acc!681 () List!13114)

(declare-fun lemmaListSubSeqRefl!0 (List!13114) Unit!24337)

(assert (=> b!689419 (= lt!316183 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!242 (List!13114 List!13114) Bool)

(assert (=> b!689419 (subseq!242 acc!681 acc!681)))

(declare-datatypes ((array!39705 0))(
  ( (array!39706 (arr!19020 (Array (_ BitVec 32) (_ BitVec 64))) (size!19401 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39705)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39705 List!13114 List!13114 (_ BitVec 32)) Unit!24337)

(declare-fun $colon$colon!406 (List!13114 (_ BitVec 64)) List!13114)

(assert (=> b!689419 (= lt!316190 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!406 acc!681 (select (arr!19020 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39705 (_ BitVec 32) List!13114) Bool)

(assert (=> b!689419 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689420 () Bool)

(declare-fun res!454125 () Bool)

(declare-fun e!392508 () Bool)

(assert (=> b!689420 (=> (not res!454125) (not e!392508))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689420 (= res!454125 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19401 a!3626))))))

(declare-fun b!689421 () Bool)

(declare-fun res!454113 () Bool)

(declare-fun e!392515 () Bool)

(assert (=> b!689421 (=> res!454113 e!392515)))

(declare-fun lt!316187 () List!13114)

(declare-fun contains!3657 (List!13114 (_ BitVec 64)) Bool)

(assert (=> b!689421 (= res!454113 (contains!3657 lt!316187 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689422 () Bool)

(declare-fun e!392516 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!689422 (= e!392516 (contains!3657 lt!316187 k!2843))))

(declare-fun b!689423 () Bool)

(declare-fun res!454122 () Bool)

(assert (=> b!689423 (=> (not res!454122) (not e!392508))))

(declare-fun arrayContainsKey!0 (array!39705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689423 (= res!454122 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!454114 () Bool)

(assert (=> start!61608 (=> (not res!454114) (not e!392508))))

(assert (=> start!61608 (= res!454114 (and (bvslt (size!19401 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19401 a!3626))))))

(assert (=> start!61608 e!392508))

(assert (=> start!61608 true))

(declare-fun array_inv!14794 (array!39705) Bool)

(assert (=> start!61608 (array_inv!14794 a!3626)))

(declare-fun b!689424 () Bool)

(declare-fun e!392509 () Unit!24337)

(declare-fun Unit!24339 () Unit!24337)

(assert (=> b!689424 (= e!392509 Unit!24339)))

(declare-fun b!689425 () Bool)

(declare-fun lt!316191 () array!39705)

(assert (=> b!689425 (= e!392515 (arrayNoDuplicates!0 lt!316191 from!3004 acc!681))))

(assert (=> b!689425 (arrayNoDuplicates!0 lt!316191 (bvadd #b00000000000000000000000000000001 from!3004) lt!316187)))

(declare-fun lt!316186 () Unit!24337)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39705 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13114) Unit!24337)

(assert (=> b!689425 (= lt!316186 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316187))))

(declare-fun b!689426 () Bool)

(declare-fun res!454117 () Bool)

(assert (=> b!689426 (=> (not res!454117) (not e!392508))))

(assert (=> b!689426 (= res!454117 (not (contains!3657 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689427 () Bool)

(declare-fun res!454124 () Bool)

(assert (=> b!689427 (=> (not res!454124) (not e!392508))))

(assert (=> b!689427 (= res!454124 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19401 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689428 () Bool)

(declare-fun res!454109 () Bool)

(assert (=> b!689428 (=> (not res!454109) (not e!392508))))

(declare-fun noDuplicate!904 (List!13114) Bool)

(assert (=> b!689428 (= res!454109 (noDuplicate!904 acc!681))))

(declare-fun b!689429 () Bool)

(declare-fun res!454129 () Bool)

(assert (=> b!689429 (=> (not res!454129) (not e!392508))))

(declare-fun e!392514 () Bool)

(assert (=> b!689429 (= res!454129 e!392514)))

(declare-fun res!454112 () Bool)

(assert (=> b!689429 (=> res!454112 e!392514)))

(declare-fun e!392517 () Bool)

(assert (=> b!689429 (= res!454112 e!392517)))

(declare-fun res!454118 () Bool)

(assert (=> b!689429 (=> (not res!454118) (not e!392517))))

(assert (=> b!689429 (= res!454118 (bvsgt from!3004 i!1382))))

(declare-fun b!689430 () Bool)

(declare-fun Unit!24340 () Unit!24337)

(assert (=> b!689430 (= e!392518 Unit!24340)))

(declare-fun b!689431 () Bool)

(declare-fun res!454121 () Bool)

(assert (=> b!689431 (=> res!454121 e!392515)))

(declare-fun e!392512 () Bool)

(assert (=> b!689431 (= res!454121 e!392512)))

(declare-fun res!454128 () Bool)

(assert (=> b!689431 (=> (not res!454128) (not e!392512))))

(declare-fun e!392513 () Bool)

(assert (=> b!689431 (= res!454128 e!392513)))

(declare-fun res!454119 () Bool)

(assert (=> b!689431 (=> res!454119 e!392513)))

(assert (=> b!689431 (= res!454119 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689432 () Bool)

(declare-fun res!454111 () Bool)

(assert (=> b!689432 (=> (not res!454111) (not e!392508))))

(assert (=> b!689432 (= res!454111 (not (contains!3657 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689433 () Bool)

(declare-fun e!392510 () Bool)

(assert (=> b!689433 (= e!392514 e!392510)))

(declare-fun res!454115 () Bool)

(assert (=> b!689433 (=> (not res!454115) (not e!392510))))

(assert (=> b!689433 (= res!454115 (bvsle from!3004 i!1382))))

(declare-fun b!689434 () Bool)

(declare-fun res!454120 () Bool)

(assert (=> b!689434 (=> (not res!454120) (not e!392508))))

(assert (=> b!689434 (= res!454120 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13111))))

(declare-fun b!689435 () Bool)

(declare-fun res!454130 () Bool)

(assert (=> b!689435 (=> res!454130 e!392515)))

(assert (=> b!689435 (= res!454130 (contains!3657 lt!316187 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689436 () Bool)

(declare-fun res!454116 () Bool)

(assert (=> b!689436 (=> res!454116 e!392515)))

(assert (=> b!689436 (= res!454116 (not (noDuplicate!904 lt!316187)))))

(declare-fun b!689437 () Bool)

(assert (=> b!689437 (= e!392512 e!392516)))

(declare-fun res!454110 () Bool)

(assert (=> b!689437 (=> res!454110 e!392516)))

(assert (=> b!689437 (= res!454110 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689438 () Bool)

(assert (=> b!689438 (= e!392510 (not (contains!3657 acc!681 k!2843)))))

(declare-fun b!689439 () Bool)

(declare-fun Unit!24341 () Unit!24337)

(assert (=> b!689439 (= e!392509 Unit!24341)))

(declare-fun lt!316185 () Unit!24337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39705 (_ BitVec 64) (_ BitVec 32)) Unit!24337)

(assert (=> b!689439 (= lt!316185 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!689439 false))

(declare-fun b!689440 () Bool)

(assert (=> b!689440 (= e!392517 (contains!3657 acc!681 k!2843))))

(declare-fun b!689441 () Bool)

(assert (=> b!689441 (= e!392508 (not e!392515))))

(declare-fun res!454123 () Bool)

(assert (=> b!689441 (=> res!454123 e!392515)))

(assert (=> b!689441 (= res!454123 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689441 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316187)))

(declare-fun lt!316181 () Unit!24337)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39705 (_ BitVec 64) (_ BitVec 32) List!13114 List!13114) Unit!24337)

(assert (=> b!689441 (= lt!316181 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316187))))

(declare-fun -!207 (List!13114 (_ BitVec 64)) List!13114)

(assert (=> b!689441 (= (-!207 lt!316187 k!2843) acc!681)))

(assert (=> b!689441 (= lt!316187 ($colon$colon!406 acc!681 k!2843))))

(declare-fun lt!316189 () Unit!24337)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13114) Unit!24337)

(assert (=> b!689441 (= lt!316189 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!689441 (subseq!242 acc!681 acc!681)))

(declare-fun lt!316188 () Unit!24337)

(assert (=> b!689441 (= lt!316188 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689441 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316182 () Unit!24337)

(assert (=> b!689441 (= lt!316182 e!392518)))

(declare-fun c!78022 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689441 (= c!78022 (validKeyInArray!0 (select (arr!19020 a!3626) from!3004)))))

(declare-fun lt!316184 () Unit!24337)

(assert (=> b!689441 (= lt!316184 e!392509)))

(declare-fun c!78023 () Bool)

(assert (=> b!689441 (= c!78023 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689441 (arrayContainsKey!0 lt!316191 k!2843 from!3004)))

(assert (=> b!689441 (= lt!316191 (array!39706 (store (arr!19020 a!3626) i!1382 k!2843) (size!19401 a!3626)))))

(declare-fun b!689442 () Bool)

(declare-fun res!454126 () Bool)

(assert (=> b!689442 (=> (not res!454126) (not e!392508))))

(assert (=> b!689442 (= res!454126 (validKeyInArray!0 k!2843))))

(declare-fun b!689443 () Bool)

(declare-fun res!454127 () Bool)

(assert (=> b!689443 (=> (not res!454127) (not e!392508))))

(assert (=> b!689443 (= res!454127 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689444 () Bool)

(assert (=> b!689444 (= e!392513 (not (contains!3657 lt!316187 k!2843)))))

(assert (= (and start!61608 res!454114) b!689428))

(assert (= (and b!689428 res!454109) b!689432))

(assert (= (and b!689432 res!454111) b!689426))

(assert (= (and b!689426 res!454117) b!689429))

(assert (= (and b!689429 res!454118) b!689440))

(assert (= (and b!689429 (not res!454112)) b!689433))

(assert (= (and b!689433 res!454115) b!689438))

(assert (= (and b!689429 res!454129) b!689434))

(assert (= (and b!689434 res!454120) b!689443))

(assert (= (and b!689443 res!454127) b!689420))

(assert (= (and b!689420 res!454125) b!689442))

(assert (= (and b!689442 res!454126) b!689423))

(assert (= (and b!689423 res!454122) b!689427))

(assert (= (and b!689427 res!454124) b!689441))

(assert (= (and b!689441 c!78023) b!689439))

(assert (= (and b!689441 (not c!78023)) b!689424))

(assert (= (and b!689441 c!78022) b!689419))

(assert (= (and b!689441 (not c!78022)) b!689430))

(assert (= (and b!689441 (not res!454123)) b!689436))

(assert (= (and b!689436 (not res!454116)) b!689435))

(assert (= (and b!689435 (not res!454130)) b!689421))

(assert (= (and b!689421 (not res!454113)) b!689431))

(assert (= (and b!689431 (not res!454119)) b!689444))

(assert (= (and b!689431 res!454128) b!689437))

(assert (= (and b!689437 (not res!454110)) b!689422))

(assert (= (and b!689431 (not res!454121)) b!689425))

(declare-fun m!653109 () Bool)

(assert (=> b!689443 m!653109))

(declare-fun m!653111 () Bool)

(assert (=> b!689432 m!653111))

(declare-fun m!653113 () Bool)

(assert (=> b!689442 m!653113))

(declare-fun m!653115 () Bool)

(assert (=> b!689421 m!653115))

(declare-fun m!653117 () Bool)

(assert (=> b!689436 m!653117))

(declare-fun m!653119 () Bool)

(assert (=> start!61608 m!653119))

(declare-fun m!653121 () Bool)

(assert (=> b!689422 m!653121))

(assert (=> b!689444 m!653121))

(declare-fun m!653123 () Bool)

(assert (=> b!689434 m!653123))

(declare-fun m!653125 () Bool)

(assert (=> b!689423 m!653125))

(declare-fun m!653127 () Bool)

(assert (=> b!689438 m!653127))

(declare-fun m!653129 () Bool)

(assert (=> b!689419 m!653129))

(declare-fun m!653131 () Bool)

(assert (=> b!689419 m!653131))

(declare-fun m!653133 () Bool)

(assert (=> b!689419 m!653133))

(declare-fun m!653135 () Bool)

(assert (=> b!689419 m!653135))

(assert (=> b!689419 m!653131))

(assert (=> b!689419 m!653133))

(declare-fun m!653137 () Bool)

(assert (=> b!689419 m!653137))

(declare-fun m!653139 () Bool)

(assert (=> b!689419 m!653139))

(declare-fun m!653141 () Bool)

(assert (=> b!689441 m!653141))

(declare-fun m!653143 () Bool)

(assert (=> b!689441 m!653143))

(assert (=> b!689441 m!653129))

(assert (=> b!689441 m!653131))

(declare-fun m!653145 () Bool)

(assert (=> b!689441 m!653145))

(declare-fun m!653147 () Bool)

(assert (=> b!689441 m!653147))

(declare-fun m!653149 () Bool)

(assert (=> b!689441 m!653149))

(assert (=> b!689441 m!653137))

(declare-fun m!653151 () Bool)

(assert (=> b!689441 m!653151))

(declare-fun m!653153 () Bool)

(assert (=> b!689441 m!653153))

(declare-fun m!653155 () Bool)

(assert (=> b!689441 m!653155))

(assert (=> b!689441 m!653131))

(declare-fun m!653157 () Bool)

(assert (=> b!689441 m!653157))

(assert (=> b!689441 m!653139))

(assert (=> b!689440 m!653127))

(declare-fun m!653159 () Bool)

(assert (=> b!689428 m!653159))

(declare-fun m!653161 () Bool)

(assert (=> b!689435 m!653161))

(declare-fun m!653163 () Bool)

(assert (=> b!689426 m!653163))

(declare-fun m!653165 () Bool)

(assert (=> b!689425 m!653165))

(declare-fun m!653167 () Bool)

(assert (=> b!689425 m!653167))

(declare-fun m!653169 () Bool)

(assert (=> b!689425 m!653169))

(declare-fun m!653171 () Bool)

(assert (=> b!689439 m!653171))

(push 1)

(assert (not b!689442))

(assert (not b!689436))

(assert (not start!61608))

(assert (not b!689435))

(assert (not b!689444))

(assert (not b!689423))

(assert (not b!689425))

(assert (not b!689426))

(assert (not b!689434))

(assert (not b!689419))

(assert (not b!689439))

(assert (not b!689428))

(assert (not b!689438))

(assert (not b!689421))

(assert (not b!689443))

(assert (not b!689432))

(assert (not b!689440))

(assert (not b!689422))

(assert (not b!689441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95157 () Bool)

(declare-fun lt!316278 () Bool)

(declare-fun content!306 (List!13114) (Set (_ BitVec 64)))

(assert (=> d!95157 (= lt!316278 (set.member k!2843 (content!306 lt!316187)))))

(declare-fun e!392659 () Bool)

(assert (=> d!95157 (= lt!316278 e!392659)))

(declare-fun res!454330 () Bool)

(assert (=> d!95157 (=> (not res!454330) (not e!392659))))

(assert (=> d!95157 (= res!454330 (is-Cons!13110 lt!316187))))

(assert (=> d!95157 (= (contains!3657 lt!316187 k!2843) lt!316278)))

(declare-fun b!689681 () Bool)

(declare-fun e!392658 () Bool)

(assert (=> b!689681 (= e!392659 e!392658)))

(declare-fun res!454329 () Bool)

(assert (=> b!689681 (=> res!454329 e!392658)))

(assert (=> b!689681 (= res!454329 (= (h!14155 lt!316187) k!2843))))

(declare-fun b!689682 () Bool)

(assert (=> b!689682 (= e!392658 (contains!3657 (t!19386 lt!316187) k!2843))))

(assert (= (and d!95157 res!454330) b!689681))

(assert (= (and b!689681 (not res!454329)) b!689682))

(declare-fun m!653375 () Bool)

(assert (=> d!95157 m!653375))

(declare-fun m!653377 () Bool)

(assert (=> d!95157 m!653377))

(declare-fun m!653379 () Bool)

(assert (=> b!689682 m!653379))

(assert (=> b!689422 d!95157))

(declare-fun b!689724 () Bool)

(declare-fun e!392694 () Bool)

(declare-fun call!34193 () Bool)

(assert (=> b!689724 (= e!392694 call!34193)))

(declare-fun bm!34190 () Bool)

(declare-fun c!78053 () Bool)

(assert (=> bm!34190 (= call!34193 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78053 (Cons!13110 (select (arr!19020 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!689725 () Bool)

(assert (=> b!689725 (= e!392694 call!34193)))

(declare-fun b!689726 () Bool)

(declare-fun e!392695 () Bool)

(declare-fun e!392693 () Bool)

(assert (=> b!689726 (= e!392695 e!392693)))

(declare-fun res!454353 () Bool)

(assert (=> b!689726 (=> (not res!454353) (not e!392693))))

(declare-fun e!392692 () Bool)

(assert (=> b!689726 (= res!454353 (not e!392692))))

(declare-fun res!454352 () Bool)

(assert (=> b!689726 (=> (not res!454352) (not e!392692))))

(assert (=> b!689726 (= res!454352 (validKeyInArray!0 (select (arr!19020 a!3626) from!3004)))))

(declare-fun d!95163 () Bool)

(declare-fun res!454354 () Bool)

(assert (=> d!95163 (=> res!454354 e!392695)))

(assert (=> d!95163 (= res!454354 (bvsge from!3004 (size!19401 a!3626)))))

(assert (=> d!95163 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!392695)))

(declare-fun b!689727 () Bool)

(assert (=> b!689727 (= e!392693 e!392694)))

(assert (=> b!689727 (= c!78053 (validKeyInArray!0 (select (arr!19020 a!3626) from!3004)))))

(declare-fun b!689728 () Bool)

(assert (=> b!689728 (= e!392692 (contains!3657 acc!681 (select (arr!19020 a!3626) from!3004)))))

(assert (= (and d!95163 (not res!454354)) b!689726))

(assert (= (and b!689726 res!454352) b!689728))

(assert (= (and b!689726 res!454353) b!689727))

(assert (= (and b!689727 c!78053) b!689725))

(assert (= (and b!689727 (not c!78053)) b!689724))

(assert (= (or b!689725 b!689724) bm!34190))

(assert (=> bm!34190 m!653131))

(declare-fun m!653415 () Bool)

(assert (=> bm!34190 m!653415))

(assert (=> b!689726 m!653131))

(assert (=> b!689726 m!653131))

(assert (=> b!689726 m!653157))

(assert (=> b!689727 m!653131))

(assert (=> b!689727 m!653131))

(assert (=> b!689727 m!653157))

(assert (=> b!689728 m!653131))

(assert (=> b!689728 m!653131))

(declare-fun m!653417 () Bool)

(assert (=> b!689728 m!653417))

(assert (=> b!689443 d!95163))

(assert (=> b!689444 d!95157))

(declare-fun d!95175 () Bool)

(assert (=> d!95175 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!689442 d!95175))

(declare-fun d!95177 () Bool)

(declare-fun lt!316282 () Bool)

(assert (=> d!95177 (= lt!316282 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!306 acc!681)))))

(declare-fun e!392699 () Bool)

(assert (=> d!95177 (= lt!316282 e!392699)))

(declare-fun res!454358 () Bool)

(assert (=> d!95177 (=> (not res!454358) (not e!392699))))

(assert (=> d!95177 (= res!454358 (is-Cons!13110 acc!681))))

(assert (=> d!95177 (= (contains!3657 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316282)))

(declare-fun b!689731 () Bool)

(declare-fun e!392698 () Bool)

(assert (=> b!689731 (= e!392699 e!392698)))

(declare-fun res!454357 () Bool)

(assert (=> b!689731 (=> res!454357 e!392698)))

(assert (=> b!689731 (= res!454357 (= (h!14155 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689732 () Bool)

(assert (=> b!689732 (= e!392698 (contains!3657 (t!19386 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95177 res!454358) b!689731))

(assert (= (and b!689731 (not res!454357)) b!689732))

(declare-fun m!653419 () Bool)

(assert (=> d!95177 m!653419))

(declare-fun m!653421 () Bool)

(assert (=> d!95177 m!653421))

(declare-fun m!653423 () Bool)

(assert (=> b!689732 m!653423))

(assert (=> b!689432 d!95177))

(declare-fun d!95179 () Bool)

(declare-fun lt!316285 () Bool)

(assert (=> d!95179 (= lt!316285 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!306 lt!316187)))))

(declare-fun e!392709 () Bool)

(assert (=> d!95179 (= lt!316285 e!392709)))

(declare-fun res!454368 () Bool)

(assert (=> d!95179 (=> (not res!454368) (not e!392709))))

(assert (=> d!95179 (= res!454368 (is-Cons!13110 lt!316187))))

(assert (=> d!95179 (= (contains!3657 lt!316187 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316285)))

(declare-fun b!689741 () Bool)

(declare-fun e!392708 () Bool)

(assert (=> b!689741 (= e!392709 e!392708)))

(declare-fun res!454367 () Bool)

(assert (=> b!689741 (=> res!454367 e!392708)))

(assert (=> b!689741 (= res!454367 (= (h!14155 lt!316187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689742 () Bool)

(assert (=> b!689742 (= e!392708 (contains!3657 (t!19386 lt!316187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95179 res!454368) b!689741))

(assert (= (and b!689741 (not res!454367)) b!689742))

(assert (=> d!95179 m!653375))

(declare-fun m!653425 () Bool)

(assert (=> d!95179 m!653425))

(declare-fun m!653427 () Bool)

(assert (=> b!689742 m!653427))

(assert (=> b!689421 d!95179))

(declare-fun d!95181 () Bool)

(assert (=> d!95181 (= ($colon$colon!406 acc!681 (select (arr!19020 a!3626) from!3004)) (Cons!13110 (select (arr!19020 a!3626) from!3004) acc!681))))

(assert (=> b!689419 d!95181))

(declare-fun d!95183 () Bool)

(declare-fun res!454391 () Bool)

(declare-fun e!392735 () Bool)

(assert (=> d!95183 (=> res!454391 e!392735)))

(assert (=> d!95183 (= res!454391 (is-Nil!13111 acc!681))))

(assert (=> d!95183 (= (subseq!242 acc!681 acc!681) e!392735)))

(declare-fun b!689769 () Bool)

(declare-fun e!392733 () Bool)

(assert (=> b!689769 (= e!392733 (subseq!242 (t!19386 acc!681) (t!19386 acc!681)))))

(declare-fun b!689767 () Bool)

(declare-fun e!392736 () Bool)

(assert (=> b!689767 (= e!392735 e!392736)))

(declare-fun res!454394 () Bool)

(assert (=> b!689767 (=> (not res!454394) (not e!392736))))

(assert (=> b!689767 (= res!454394 (is-Cons!13110 acc!681))))

(declare-fun b!689770 () Bool)

(declare-fun e!392734 () Bool)

(assert (=> b!689770 (= e!392734 (subseq!242 acc!681 (t!19386 acc!681)))))

(declare-fun b!689768 () Bool)

(assert (=> b!689768 (= e!392736 e!392734)))

(declare-fun res!454392 () Bool)

(assert (=> b!689768 (=> res!454392 e!392734)))

(assert (=> b!689768 (= res!454392 e!392733)))

(declare-fun res!454393 () Bool)

(assert (=> b!689768 (=> (not res!454393) (not e!392733))))

(assert (=> b!689768 (= res!454393 (= (h!14155 acc!681) (h!14155 acc!681)))))

(assert (= (and d!95183 (not res!454391)) b!689767))

(assert (= (and b!689767 res!454394) b!689768))

(assert (= (and b!689768 res!454393) b!689769))

(assert (= (and b!689768 (not res!454392)) b!689770))

(declare-fun m!653461 () Bool)

(assert (=> b!689769 m!653461))

(declare-fun m!653463 () Bool)

(assert (=> b!689770 m!653463))

(assert (=> b!689419 d!95183))

(declare-fun d!95203 () Bool)

(assert (=> d!95203 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316298 () Unit!24337)

(declare-fun choose!80 (array!39705 List!13114 List!13114 (_ BitVec 32)) Unit!24337)

(assert (=> d!95203 (= lt!316298 (choose!80 a!3626 ($colon$colon!406 acc!681 (select (arr!19020 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95203 (bvslt (size!19401 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95203 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!406 acc!681 (select (arr!19020 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!316298)))

(declare-fun bs!20204 () Bool)

(assert (= bs!20204 d!95203))

(assert (=> bs!20204 m!653129))

(assert (=> bs!20204 m!653133))

(declare-fun m!653471 () Bool)

(assert (=> bs!20204 m!653471))

(assert (=> b!689419 d!95203))

(declare-fun d!95209 () Bool)

(assert (=> d!95209 (subseq!242 acc!681 acc!681)))

(declare-fun lt!316301 () Unit!24337)

(declare-fun choose!36 (List!13114) Unit!24337)

(assert (=> d!95209 (= lt!316301 (choose!36 acc!681))))

(assert (=> d!95209 (= (lemmaListSubSeqRefl!0 acc!681) lt!316301)))

(declare-fun bs!20205 () Bool)

(assert (= bs!20205 d!95209))

(assert (=> bs!20205 m!653139))

(declare-fun m!653483 () Bool)

(assert (=> bs!20205 m!653483))

(assert (=> b!689419 d!95209))

(declare-fun b!689786 () Bool)

(declare-fun e!392753 () Bool)

(declare-fun call!34196 () Bool)

(assert (=> b!689786 (= e!392753 call!34196)))

(declare-fun bm!34193 () Bool)

(declare-fun c!78056 () Bool)

(assert (=> bm!34193 (= call!34196 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78056 (Cons!13110 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!689787 () Bool)

(assert (=> b!689787 (= e!392753 call!34196)))

(declare-fun b!689788 () Bool)

(declare-fun e!392754 () Bool)

(declare-fun e!392752 () Bool)

(assert (=> b!689788 (= e!392754 e!392752)))

(declare-fun res!454409 () Bool)

(assert (=> b!689788 (=> (not res!454409) (not e!392752))))

(declare-fun e!392751 () Bool)

(assert (=> b!689788 (= res!454409 (not e!392751))))

(declare-fun res!454408 () Bool)

(assert (=> b!689788 (=> (not res!454408) (not e!392751))))

(assert (=> b!689788 (= res!454408 (validKeyInArray!0 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95219 () Bool)

(declare-fun res!454410 () Bool)

(assert (=> d!95219 (=> res!454410 e!392754)))

(assert (=> d!95219 (= res!454410 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19401 a!3626)))))

(assert (=> d!95219 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!392754)))

(declare-fun b!689789 () Bool)

(assert (=> b!689789 (= e!392752 e!392753)))

(assert (=> b!689789 (= c!78056 (validKeyInArray!0 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689790 () Bool)

(assert (=> b!689790 (= e!392751 (contains!3657 acc!681 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95219 (not res!454410)) b!689788))

(assert (= (and b!689788 res!454408) b!689790))

(assert (= (and b!689788 res!454409) b!689789))

(assert (= (and b!689789 c!78056) b!689787))

(assert (= (and b!689789 (not c!78056)) b!689786))

(assert (= (or b!689787 b!689786) bm!34193))

(declare-fun m!653485 () Bool)

(assert (=> bm!34193 m!653485))

(declare-fun m!653487 () Bool)

(assert (=> bm!34193 m!653487))

(assert (=> b!689788 m!653485))

(assert (=> b!689788 m!653485))

(declare-fun m!653489 () Bool)

(assert (=> b!689788 m!653489))

(assert (=> b!689789 m!653485))

(assert (=> b!689789 m!653485))

(assert (=> b!689789 m!653489))

(assert (=> b!689790 m!653485))

(assert (=> b!689790 m!653485))

(declare-fun m!653493 () Bool)

(assert (=> b!689790 m!653493))

(assert (=> b!689419 d!95219))

(declare-fun d!95223 () Bool)

(assert (=> d!95223 (= (array_inv!14794 a!3626) (bvsge (size!19401 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61608 d!95223))

(declare-fun d!95229 () Bool)

(declare-fun res!454430 () Bool)

(declare-fun e!392775 () Bool)

(assert (=> d!95229 (=> res!454430 e!392775)))

(assert (=> d!95229 (= res!454430 (= (select (arr!19020 lt!316191) from!3004) k!2843))))

(assert (=> d!95229 (= (arrayContainsKey!0 lt!316191 k!2843 from!3004) e!392775)))

(declare-fun b!689812 () Bool)

(declare-fun e!392776 () Bool)

(assert (=> b!689812 (= e!392775 e!392776)))

(declare-fun res!454431 () Bool)

(assert (=> b!689812 (=> (not res!454431) (not e!392776))))

(assert (=> b!689812 (= res!454431 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19401 lt!316191)))))

(declare-fun b!689813 () Bool)

(assert (=> b!689813 (= e!392776 (arrayContainsKey!0 lt!316191 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95229 (not res!454430)) b!689812))

(assert (= (and b!689812 res!454431) b!689813))

(declare-fun m!653503 () Bool)

(assert (=> d!95229 m!653503))

(declare-fun m!653505 () Bool)

(assert (=> b!689813 m!653505))

(assert (=> b!689441 d!95229))

(assert (=> b!689441 d!95183))

(declare-fun d!95235 () Bool)

(declare-fun res!454432 () Bool)

(declare-fun e!392777 () Bool)

(assert (=> d!95235 (=> res!454432 e!392777)))

(assert (=> d!95235 (= res!454432 (= (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!95235 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!392777)))

(declare-fun b!689814 () Bool)

(declare-fun e!392778 () Bool)

(assert (=> b!689814 (= e!392777 e!392778)))

(declare-fun res!454433 () Bool)

(assert (=> b!689814 (=> (not res!454433) (not e!392778))))

(assert (=> b!689814 (= res!454433 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19401 a!3626)))))

(declare-fun b!689815 () Bool)

(assert (=> b!689815 (= e!392778 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95235 (not res!454432)) b!689814))

(assert (= (and b!689814 res!454433) b!689815))

(assert (=> d!95235 m!653485))

(declare-fun m!653509 () Bool)

(assert (=> b!689815 m!653509))

(assert (=> b!689441 d!95235))

(declare-fun b!689821 () Bool)

(declare-fun e!392785 () Bool)

(declare-fun call!34199 () Bool)

(assert (=> b!689821 (= e!392785 call!34199)))

(declare-fun c!78059 () Bool)

(declare-fun bm!34196 () Bool)

(assert (=> bm!34196 (= call!34199 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78059 (Cons!13110 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316187) lt!316187)))))

(declare-fun b!689822 () Bool)

(assert (=> b!689822 (= e!392785 call!34199)))

(declare-fun b!689823 () Bool)

(declare-fun e!392786 () Bool)

(declare-fun e!392784 () Bool)

(assert (=> b!689823 (= e!392786 e!392784)))

(declare-fun res!454438 () Bool)

(assert (=> b!689823 (=> (not res!454438) (not e!392784))))

(declare-fun e!392783 () Bool)

(assert (=> b!689823 (= res!454438 (not e!392783))))

(declare-fun res!454437 () Bool)

(assert (=> b!689823 (=> (not res!454437) (not e!392783))))

(assert (=> b!689823 (= res!454437 (validKeyInArray!0 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95239 () Bool)

(declare-fun res!454439 () Bool)

(assert (=> d!95239 (=> res!454439 e!392786)))

(assert (=> d!95239 (= res!454439 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19401 a!3626)))))

(assert (=> d!95239 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316187) e!392786)))

(declare-fun b!689824 () Bool)

(assert (=> b!689824 (= e!392784 e!392785)))

(assert (=> b!689824 (= c!78059 (validKeyInArray!0 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689825 () Bool)

(assert (=> b!689825 (= e!392783 (contains!3657 lt!316187 (select (arr!19020 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95239 (not res!454439)) b!689823))

(assert (= (and b!689823 res!454437) b!689825))

(assert (= (and b!689823 res!454438) b!689824))

(assert (= (and b!689824 c!78059) b!689822))

(assert (= (and b!689824 (not c!78059)) b!689821))

(assert (= (or b!689822 b!689821) bm!34196))

(assert (=> bm!34196 m!653485))

(declare-fun m!653517 () Bool)

(assert (=> bm!34196 m!653517))

(assert (=> b!689823 m!653485))

(assert (=> b!689823 m!653485))

(assert (=> b!689823 m!653489))

(assert (=> b!689824 m!653485))

(assert (=> b!689824 m!653485))

(assert (=> b!689824 m!653489))

(assert (=> b!689825 m!653485))

(assert (=> b!689825 m!653485))

(declare-fun m!653519 () Bool)

(assert (=> b!689825 m!653519))

(assert (=> b!689441 d!95239))

(declare-fun d!95243 () Bool)

(assert (=> d!95243 (= (-!207 ($colon$colon!406 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!316317 () Unit!24337)

(declare-fun choose!16 ((_ BitVec 64) List!13114) Unit!24337)

(assert (=> d!95243 (= lt!316317 (choose!16 k!2843 acc!681))))

(assert (=> d!95243 (not (contains!3657 acc!681 k!2843))))

(assert (=> d!95243 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!316317)))

(declare-fun bs!20210 () Bool)

(assert (= bs!20210 d!95243))

(assert (=> bs!20210 m!653155))

(assert (=> bs!20210 m!653155))

(declare-fun m!653533 () Bool)

(assert (=> bs!20210 m!653533))

(declare-fun m!653535 () Bool)

(assert (=> bs!20210 m!653535))

(assert (=> bs!20210 m!653127))

(assert (=> b!689441 d!95243))

(assert (=> b!689441 d!95209))

(declare-fun d!95257 () Bool)

(assert (=> d!95257 (= (validKeyInArray!0 (select (arr!19020 a!3626) from!3004)) (and (not (= (select (arr!19020 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19020 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!689441 d!95257))

(declare-fun d!95259 () Bool)

(assert (=> d!95259 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316187)))

(declare-fun lt!316323 () Unit!24337)

(declare-fun choose!66 (array!39705 (_ BitVec 64) (_ BitVec 32) List!13114 List!13114) Unit!24337)

(assert (=> d!95259 (= lt!316323 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316187))))

(assert (=> d!95259 (bvslt (size!19401 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95259 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316187) lt!316323)))

(declare-fun bs!20212 () Bool)

(assert (= bs!20212 d!95259))

(assert (=> bs!20212 m!653143))

(declare-fun m!653549 () Bool)

(assert (=> bs!20212 m!653549))

(assert (=> b!689441 d!95259))

(declare-fun d!95265 () Bool)

(assert (=> d!95265 (= ($colon$colon!406 acc!681 k!2843) (Cons!13110 k!2843 acc!681))))

(assert (=> b!689441 d!95265))

(assert (=> b!689441 d!95219))

(declare-fun bm!34204 () Bool)

(declare-fun call!34207 () List!13114)

(assert (=> bm!34204 (= call!34207 (-!207 (t!19386 lt!316187) k!2843))))

(declare-fun b!689867 () Bool)

(declare-fun e!392820 () List!13114)

(assert (=> b!689867 (= e!392820 (Cons!13110 (h!14155 lt!316187) call!34207))))

(declare-fun b!689868 () Bool)

(assert (=> b!689868 (= e!392820 call!34207)))

(declare-fun d!95267 () Bool)

(declare-fun e!392819 () Bool)

(assert (=> d!95267 e!392819))

(declare-fun res!454459 () Bool)

(assert (=> d!95267 (=> (not res!454459) (not e!392819))))

(declare-fun lt!316331 () List!13114)

(declare-fun size!19405 (List!13114) Int)

(assert (=> d!95267 (= res!454459 (<= (size!19405 lt!316331) (size!19405 lt!316187)))))

(declare-fun e!392821 () List!13114)

(assert (=> d!95267 (= lt!316331 e!392821)))

(declare-fun c!78072 () Bool)

(assert (=> d!95267 (= c!78072 (is-Cons!13110 lt!316187))))

(assert (=> d!95267 (= (-!207 lt!316187 k!2843) lt!316331)))

(declare-fun b!689869 () Bool)

(assert (=> b!689869 (= e!392821 e!392820)))

(declare-fun c!78071 () Bool)

(assert (=> b!689869 (= c!78071 (= k!2843 (h!14155 lt!316187)))))

(declare-fun b!689870 () Bool)

(assert (=> b!689870 (= e!392819 (= (content!306 lt!316331) (set.minus (content!306 lt!316187) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!689871 () Bool)

(assert (=> b!689871 (= e!392821 Nil!13111)))

(assert (= (and d!95267 c!78072) b!689869))

(assert (= (and d!95267 (not c!78072)) b!689871))

(assert (= (and b!689869 c!78071) b!689868))

(assert (= (and b!689869 (not c!78071)) b!689867))

(assert (= (or b!689868 b!689867) bm!34204))

(assert (= (and d!95267 res!454459) b!689870))

(declare-fun m!653559 () Bool)

(assert (=> bm!34204 m!653559))

(declare-fun m!653561 () Bool)

(assert (=> d!95267 m!653561))

(declare-fun m!653563 () Bool)

(assert (=> d!95267 m!653563))

(declare-fun m!653565 () Bool)

(assert (=> b!689870 m!653565))

(assert (=> b!689870 m!653375))

(declare-fun m!653567 () Bool)

(assert (=> b!689870 m!653567))

(assert (=> b!689441 d!95267))

(declare-fun d!95275 () Bool)

(assert (=> d!95275 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316335 () Unit!24337)

(declare-fun choose!13 (array!39705 (_ BitVec 64) (_ BitVec 32)) Unit!24337)

(assert (=> d!95275 (= lt!316335 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95275 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95275 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316335)))

(declare-fun bs!20214 () Bool)

(assert (= bs!20214 d!95275))

(assert (=> bs!20214 m!653125))

(declare-fun m!653579 () Bool)

(assert (=> bs!20214 m!653579))

(assert (=> b!689439 d!95275))

(declare-fun d!95279 () Bool)

(declare-fun lt!316338 () Bool)

(assert (=> d!95279 (= lt!316338 (set.member k!2843 (content!306 acc!681)))))

(declare-fun e!392826 () Bool)

(assert (=> d!95279 (= lt!316338 e!392826)))

(declare-fun res!454462 () Bool)

(assert (=> d!95279 (=> (not res!454462) (not e!392826))))

(assert (=> d!95279 (= res!454462 (is-Cons!13110 acc!681))))

(assert (=> d!95279 (= (contains!3657 acc!681 k!2843) lt!316338)))

(declare-fun b!689877 () Bool)

(declare-fun e!392825 () Bool)

(assert (=> b!689877 (= e!392826 e!392825)))

(declare-fun res!454461 () Bool)

(assert (=> b!689877 (=> res!454461 e!392825)))

(assert (=> b!689877 (= res!454461 (= (h!14155 acc!681) k!2843))))

(declare-fun b!689878 () Bool)

(assert (=> b!689878 (= e!392825 (contains!3657 (t!19386 acc!681) k!2843))))

(assert (= (and d!95279 res!454462) b!689877))

(assert (= (and b!689877 (not res!454461)) b!689878))

(assert (=> d!95279 m!653419))

(declare-fun m!653581 () Bool)

(assert (=> d!95279 m!653581))

(declare-fun m!653583 () Bool)

(assert (=> b!689878 m!653583))

(assert (=> b!689440 d!95279))

(assert (=> b!689438 d!95279))

(declare-fun d!95281 () Bool)

(declare-fun res!454469 () Bool)

(declare-fun e!392833 () Bool)

(assert (=> d!95281 (=> res!454469 e!392833)))

(assert (=> d!95281 (= res!454469 (is-Nil!13111 acc!681))))

(assert (=> d!95281 (= (noDuplicate!904 acc!681) e!392833)))

(declare-fun b!689885 () Bool)

(declare-fun e!392834 () Bool)

(assert (=> b!689885 (= e!392833 e!392834)))

(declare-fun res!454470 () Bool)

(assert (=> b!689885 (=> (not res!454470) (not e!392834))))

(assert (=> b!689885 (= res!454470 (not (contains!3657 (t!19386 acc!681) (h!14155 acc!681))))))

(declare-fun b!689886 () Bool)

(assert (=> b!689886 (= e!392834 (noDuplicate!904 (t!19386 acc!681)))))

(assert (= (and d!95281 (not res!454469)) b!689885))

(assert (= (and b!689885 res!454470) b!689886))

(declare-fun m!653593 () Bool)

(assert (=> b!689885 m!653593))

(declare-fun m!653595 () Bool)

(assert (=> b!689886 m!653595))

(assert (=> b!689428 d!95281))

(declare-fun d!95289 () Bool)

(declare-fun lt!316340 () Bool)

(assert (=> d!95289 (= lt!316340 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!306 acc!681)))))

(declare-fun e!392836 () Bool)

(assert (=> d!95289 (= lt!316340 e!392836)))

(declare-fun res!454472 () Bool)

(assert (=> d!95289 (=> (not res!454472) (not e!392836))))

(assert (=> d!95289 (= res!454472 (is-Cons!13110 acc!681))))

(assert (=> d!95289 (= (contains!3657 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316340)))

(declare-fun b!689887 () Bool)

(declare-fun e!392835 () Bool)

(assert (=> b!689887 (= e!392836 e!392835)))

(declare-fun res!454471 () Bool)

(assert (=> b!689887 (=> res!454471 e!392835)))

(assert (=> b!689887 (= res!454471 (= (h!14155 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689888 () Bool)

(assert (=> b!689888 (= e!392835 (contains!3657 (t!19386 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95289 res!454472) b!689887))

(assert (= (and b!689887 (not res!454471)) b!689888))

(assert (=> d!95289 m!653419))

(declare-fun m!653597 () Bool)

(assert (=> d!95289 m!653597))

(declare-fun m!653599 () Bool)

(assert (=> b!689888 m!653599))

(assert (=> b!689426 d!95289))

(declare-fun d!95291 () Bool)

(declare-fun lt!316341 () Bool)

(assert (=> d!95291 (= lt!316341 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!306 lt!316187)))))

(declare-fun e!392838 () Bool)

(assert (=> d!95291 (= lt!316341 e!392838)))

(declare-fun res!454474 () Bool)

(assert (=> d!95291 (=> (not res!454474) (not e!392838))))

(assert (=> d!95291 (= res!454474 (is-Cons!13110 lt!316187))))

(assert (=> d!95291 (= (contains!3657 lt!316187 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316341)))

(declare-fun b!689889 () Bool)

(declare-fun e!392837 () Bool)

(assert (=> b!689889 (= e!392838 e!392837)))

(declare-fun res!454473 () Bool)

(assert (=> b!689889 (=> res!454473 e!392837)))

(assert (=> b!689889 (= res!454473 (= (h!14155 lt!316187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689890 () Bool)

(assert (=> b!689890 (= e!392837 (contains!3657 (t!19386 lt!316187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95291 res!454474) b!689889))

(assert (= (and b!689889 (not res!454473)) b!689890))

(assert (=> d!95291 m!653375))

(declare-fun m!653601 () Bool)

(assert (=> d!95291 m!653601))

(declare-fun m!653603 () Bool)

(assert (=> b!689890 m!653603))

(assert (=> b!689435 d!95291))

(declare-fun d!95293 () Bool)

(declare-fun res!454475 () Bool)

(declare-fun e!392839 () Bool)

(assert (=> d!95293 (=> res!454475 e!392839)))

(assert (=> d!95293 (= res!454475 (is-Nil!13111 lt!316187))))

(assert (=> d!95293 (= (noDuplicate!904 lt!316187) e!392839)))

(declare-fun b!689891 () Bool)

(declare-fun e!392840 () Bool)

(assert (=> b!689891 (= e!392839 e!392840)))

(declare-fun res!454476 () Bool)

(assert (=> b!689891 (=> (not res!454476) (not e!392840))))

(assert (=> b!689891 (= res!454476 (not (contains!3657 (t!19386 lt!316187) (h!14155 lt!316187))))))

(declare-fun b!689892 () Bool)

(assert (=> b!689892 (= e!392840 (noDuplicate!904 (t!19386 lt!316187)))))

(assert (= (and d!95293 (not res!454475)) b!689891))

(assert (= (and b!689891 res!454476) b!689892))

(declare-fun m!653605 () Bool)

(assert (=> b!689891 m!653605))

(declare-fun m!653607 () Bool)

(assert (=> b!689892 m!653607))

(assert (=> b!689436 d!95293))

(declare-fun b!689893 () Bool)

(declare-fun e!392843 () Bool)

(declare-fun call!34209 () Bool)

(assert (=> b!689893 (= e!392843 call!34209)))

(declare-fun bm!34206 () Bool)

(declare-fun c!78075 () Bool)

(assert (=> bm!34206 (= call!34209 (arrayNoDuplicates!0 lt!316191 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78075 (Cons!13110 (select (arr!19020 lt!316191) from!3004) acc!681) acc!681)))))

(declare-fun b!689894 () Bool)

(assert (=> b!689894 (= e!392843 call!34209)))

(declare-fun b!689895 () Bool)

(declare-fun e!392844 () Bool)

(declare-fun e!392842 () Bool)

(assert (=> b!689895 (= e!392844 e!392842)))

(declare-fun res!454478 () Bool)

(assert (=> b!689895 (=> (not res!454478) (not e!392842))))

(declare-fun e!392841 () Bool)

(assert (=> b!689895 (= res!454478 (not e!392841))))

(declare-fun res!454477 () Bool)

(assert (=> b!689895 (=> (not res!454477) (not e!392841))))

