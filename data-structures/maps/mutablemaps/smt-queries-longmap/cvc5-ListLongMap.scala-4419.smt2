; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61020 () Bool)

(assert start!61020)

(declare-fun b!684335 () Bool)

(declare-fun res!450067 () Bool)

(declare-fun e!389696 () Bool)

(assert (=> b!684335 (=> (not res!450067) (not e!389696))))

(declare-datatypes ((array!39585 0))(
  ( (array!39586 (arr!18969 (Array (_ BitVec 32) (_ BitVec 64))) (size!19335 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39585)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13063 0))(
  ( (Nil!13060) (Cons!13059 (h!14104 (_ BitVec 64)) (t!19317 List!13063)) )
))
(declare-fun acc!681 () List!13063)

(declare-fun arrayNoDuplicates!0 (array!39585 (_ BitVec 32) List!13063) Bool)

(assert (=> b!684335 (= res!450067 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684336 () Bool)

(declare-fun res!450065 () Bool)

(assert (=> b!684336 (=> (not res!450065) (not e!389696))))

(declare-fun e!389695 () Bool)

(assert (=> b!684336 (= res!450065 e!389695)))

(declare-fun res!450068 () Bool)

(assert (=> b!684336 (=> res!450068 e!389695)))

(declare-fun e!389699 () Bool)

(assert (=> b!684336 (= res!450068 e!389699)))

(declare-fun res!450053 () Bool)

(assert (=> b!684336 (=> (not res!450053) (not e!389699))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684336 (= res!450053 (bvsgt from!3004 i!1382))))

(declare-fun b!684337 () Bool)

(declare-fun res!450061 () Bool)

(assert (=> b!684337 (=> (not res!450061) (not e!389696))))

(declare-fun noDuplicate!853 (List!13063) Bool)

(assert (=> b!684337 (= res!450061 (noDuplicate!853 acc!681))))

(declare-fun res!450059 () Bool)

(assert (=> start!61020 (=> (not res!450059) (not e!389696))))

(assert (=> start!61020 (= res!450059 (and (bvslt (size!19335 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19335 a!3626))))))

(assert (=> start!61020 e!389696))

(assert (=> start!61020 true))

(declare-fun array_inv!14743 (array!39585) Bool)

(assert (=> start!61020 (array_inv!14743 a!3626)))

(declare-fun b!684338 () Bool)

(declare-fun e!389700 () Bool)

(declare-fun lt!314322 () List!13063)

(declare-fun subseq!191 (List!13063 List!13063) Bool)

(assert (=> b!684338 (= e!389700 (subseq!191 acc!681 lt!314322))))

(declare-fun b!684339 () Bool)

(declare-fun res!450051 () Bool)

(assert (=> b!684339 (=> (not res!450051) (not e!389696))))

(assert (=> b!684339 (= res!450051 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13060))))

(declare-fun b!684340 () Bool)

(declare-fun res!450058 () Bool)

(assert (=> b!684340 (=> (not res!450058) (not e!389696))))

(declare-fun contains!3606 (List!13063 (_ BitVec 64)) Bool)

(assert (=> b!684340 (= res!450058 (not (contains!3606 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684341 () Bool)

(declare-datatypes ((Unit!24082 0))(
  ( (Unit!24083) )
))
(declare-fun e!389694 () Unit!24082)

(declare-fun lt!314314 () Unit!24082)

(assert (=> b!684341 (= e!389694 lt!314314)))

(declare-fun lt!314316 () Unit!24082)

(declare-fun lemmaListSubSeqRefl!0 (List!13063) Unit!24082)

(assert (=> b!684341 (= lt!314316 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684341 (subseq!191 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39585 List!13063 List!13063 (_ BitVec 32)) Unit!24082)

(declare-fun $colon$colon!355 (List!13063 (_ BitVec 64)) List!13063)

(assert (=> b!684341 (= lt!314314 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!355 acc!681 (select (arr!18969 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684341 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684342 () Bool)

(declare-fun e!389698 () Unit!24082)

(declare-fun Unit!24084 () Unit!24082)

(assert (=> b!684342 (= e!389698 Unit!24084)))

(declare-fun b!684343 () Bool)

(declare-fun e!389701 () Bool)

(assert (=> b!684343 (= e!389695 e!389701)))

(declare-fun res!450060 () Bool)

(assert (=> b!684343 (=> (not res!450060) (not e!389701))))

(assert (=> b!684343 (= res!450060 (bvsle from!3004 i!1382))))

(declare-fun b!684344 () Bool)

(assert (=> b!684344 (= e!389696 (not e!389700))))

(declare-fun res!450066 () Bool)

(assert (=> b!684344 (=> res!450066 e!389700)))

(assert (=> b!684344 (= res!450066 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun -!156 (List!13063 (_ BitVec 64)) List!13063)

(assert (=> b!684344 (= (-!156 lt!314322 k!2843) acc!681)))

(assert (=> b!684344 (= lt!314322 ($colon$colon!355 acc!681 k!2843))))

(declare-fun lt!314318 () Unit!24082)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13063) Unit!24082)

(assert (=> b!684344 (= lt!314318 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!684344 (subseq!191 acc!681 acc!681)))

(declare-fun lt!314319 () Unit!24082)

(assert (=> b!684344 (= lt!314319 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684344 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314320 () Unit!24082)

(assert (=> b!684344 (= lt!314320 e!389694)))

(declare-fun c!77510 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684344 (= c!77510 (validKeyInArray!0 (select (arr!18969 a!3626) from!3004)))))

(declare-fun lt!314315 () Unit!24082)

(assert (=> b!684344 (= lt!314315 e!389698)))

(declare-fun c!77509 () Bool)

(declare-fun lt!314321 () Bool)

(assert (=> b!684344 (= c!77509 lt!314321)))

(declare-fun arrayContainsKey!0 (array!39585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684344 (= lt!314321 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684344 (arrayContainsKey!0 (array!39586 (store (arr!18969 a!3626) i!1382 k!2843) (size!19335 a!3626)) k!2843 from!3004)))

(declare-fun b!684345 () Bool)

(declare-fun res!450056 () Bool)

(assert (=> b!684345 (=> (not res!450056) (not e!389696))))

(assert (=> b!684345 (= res!450056 (not (contains!3606 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684346 () Bool)

(declare-fun res!450062 () Bool)

(assert (=> b!684346 (=> (not res!450062) (not e!389696))))

(assert (=> b!684346 (= res!450062 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19335 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684347 () Bool)

(declare-fun res!450063 () Bool)

(assert (=> b!684347 (=> res!450063 e!389700)))

(assert (=> b!684347 (= res!450063 (contains!3606 acc!681 k!2843))))

(declare-fun b!684348 () Bool)

(declare-fun res!450064 () Bool)

(assert (=> b!684348 (=> res!450064 e!389700)))

(assert (=> b!684348 (= res!450064 (not (noDuplicate!853 lt!314322)))))

(declare-fun b!684349 () Bool)

(assert (=> b!684349 (= e!389701 (not (contains!3606 acc!681 k!2843)))))

(declare-fun b!684350 () Bool)

(declare-fun res!450052 () Bool)

(assert (=> b!684350 (=> (not res!450052) (not e!389696))))

(assert (=> b!684350 (= res!450052 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19335 a!3626))))))

(declare-fun b!684351 () Bool)

(declare-fun Unit!24085 () Unit!24082)

(assert (=> b!684351 (= e!389698 Unit!24085)))

(declare-fun lt!314317 () Unit!24082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39585 (_ BitVec 64) (_ BitVec 32)) Unit!24082)

(assert (=> b!684351 (= lt!314317 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684351 false))

(declare-fun b!684352 () Bool)

(declare-fun res!450054 () Bool)

(assert (=> b!684352 (=> (not res!450054) (not e!389696))))

(assert (=> b!684352 (= res!450054 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684353 () Bool)

(assert (=> b!684353 (= e!389699 (contains!3606 acc!681 k!2843))))

(declare-fun b!684354 () Bool)

(declare-fun res!450055 () Bool)

(assert (=> b!684354 (=> res!450055 e!389700)))

(assert (=> b!684354 (= res!450055 lt!314321)))

(declare-fun b!684355 () Bool)

(declare-fun Unit!24086 () Unit!24082)

(assert (=> b!684355 (= e!389694 Unit!24086)))

(declare-fun b!684356 () Bool)

(declare-fun res!450057 () Bool)

(assert (=> b!684356 (=> (not res!450057) (not e!389696))))

(assert (=> b!684356 (= res!450057 (validKeyInArray!0 k!2843))))

(assert (= (and start!61020 res!450059) b!684337))

(assert (= (and b!684337 res!450061) b!684345))

(assert (= (and b!684345 res!450056) b!684340))

(assert (= (and b!684340 res!450058) b!684336))

(assert (= (and b!684336 res!450053) b!684353))

(assert (= (and b!684336 (not res!450068)) b!684343))

(assert (= (and b!684343 res!450060) b!684349))

(assert (= (and b!684336 res!450065) b!684339))

(assert (= (and b!684339 res!450051) b!684335))

(assert (= (and b!684335 res!450067) b!684350))

(assert (= (and b!684350 res!450052) b!684356))

(assert (= (and b!684356 res!450057) b!684352))

(assert (= (and b!684352 res!450054) b!684346))

(assert (= (and b!684346 res!450062) b!684344))

(assert (= (and b!684344 c!77509) b!684351))

(assert (= (and b!684344 (not c!77509)) b!684342))

(assert (= (and b!684344 c!77510) b!684341))

(assert (= (and b!684344 (not c!77510)) b!684355))

(assert (= (and b!684344 (not res!450066)) b!684348))

(assert (= (and b!684348 (not res!450064)) b!684354))

(assert (= (and b!684354 (not res!450055)) b!684347))

(assert (= (and b!684347 (not res!450063)) b!684338))

(declare-fun m!648735 () Bool)

(assert (=> b!684349 m!648735))

(declare-fun m!648737 () Bool)

(assert (=> b!684338 m!648737))

(declare-fun m!648739 () Bool)

(assert (=> b!684341 m!648739))

(declare-fun m!648741 () Bool)

(assert (=> b!684341 m!648741))

(declare-fun m!648743 () Bool)

(assert (=> b!684341 m!648743))

(declare-fun m!648745 () Bool)

(assert (=> b!684341 m!648745))

(assert (=> b!684341 m!648741))

(assert (=> b!684341 m!648743))

(declare-fun m!648747 () Bool)

(assert (=> b!684341 m!648747))

(declare-fun m!648749 () Bool)

(assert (=> b!684341 m!648749))

(declare-fun m!648751 () Bool)

(assert (=> b!684337 m!648751))

(declare-fun m!648753 () Bool)

(assert (=> start!61020 m!648753))

(declare-fun m!648755 () Bool)

(assert (=> b!684345 m!648755))

(declare-fun m!648757 () Bool)

(assert (=> b!684340 m!648757))

(declare-fun m!648759 () Bool)

(assert (=> b!684335 m!648759))

(assert (=> b!684353 m!648735))

(declare-fun m!648761 () Bool)

(assert (=> b!684344 m!648761))

(assert (=> b!684344 m!648739))

(assert (=> b!684344 m!648741))

(declare-fun m!648763 () Bool)

(assert (=> b!684344 m!648763))

(declare-fun m!648765 () Bool)

(assert (=> b!684344 m!648765))

(assert (=> b!684344 m!648747))

(declare-fun m!648767 () Bool)

(assert (=> b!684344 m!648767))

(declare-fun m!648769 () Bool)

(assert (=> b!684344 m!648769))

(assert (=> b!684344 m!648741))

(declare-fun m!648771 () Bool)

(assert (=> b!684344 m!648771))

(declare-fun m!648773 () Bool)

(assert (=> b!684344 m!648773))

(assert (=> b!684344 m!648749))

(declare-fun m!648775 () Bool)

(assert (=> b!684339 m!648775))

(assert (=> b!684347 m!648735))

(declare-fun m!648777 () Bool)

(assert (=> b!684352 m!648777))

(declare-fun m!648779 () Bool)

(assert (=> b!684351 m!648779))

(declare-fun m!648781 () Bool)

(assert (=> b!684356 m!648781))

(declare-fun m!648783 () Bool)

(assert (=> b!684348 m!648783))

(push 1)

(assert (not b!684340))

(assert (not b!684348))

(assert (not b!684353))

(assert (not start!61020))

(assert (not b!684345))

(assert (not b!684356))

(assert (not b!684335))

(assert (not b!684347))

(assert (not b!684351))

(assert (not b!684352))

(assert (not b!684344))

(assert (not b!684339))

(assert (not b!684341))

(assert (not b!684349))

(assert (not b!684337))

(assert (not b!684338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94229 () Bool)

(declare-fun res!450251 () Bool)

(declare-fun e!389828 () Bool)

(assert (=> d!94229 (=> res!450251 e!389828)))

(assert (=> d!94229 (= res!450251 (= (select (arr!18969 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94229 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!389828)))

(declare-fun b!684571 () Bool)

(declare-fun e!389829 () Bool)

(assert (=> b!684571 (= e!389828 e!389829)))

(declare-fun res!450252 () Bool)

(assert (=> b!684571 (=> (not res!450252) (not e!389829))))

(assert (=> b!684571 (= res!450252 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19335 a!3626)))))

(declare-fun b!684572 () Bool)

(assert (=> b!684572 (= e!389829 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94229 (not res!450251)) b!684571))

(assert (= (and b!684571 res!450252) b!684572))

(declare-fun m!648949 () Bool)

(assert (=> d!94229 m!648949))

(declare-fun m!648951 () Bool)

(assert (=> b!684572 m!648951))

(assert (=> b!684352 d!94229))

(declare-fun d!94233 () Bool)

(declare-fun lt!314398 () Bool)

(declare-fun content!287 (List!13063) (Set (_ BitVec 64)))

(assert (=> d!94233 (= lt!314398 (set.member k!2843 (content!287 acc!681)))))

(declare-fun e!389852 () Bool)

(assert (=> d!94233 (= lt!314398 e!389852)))

(declare-fun res!450263 () Bool)

(assert (=> d!94233 (=> (not res!450263) (not e!389852))))

(assert (=> d!94233 (= res!450263 (is-Cons!13059 acc!681))))

(assert (=> d!94233 (= (contains!3606 acc!681 k!2843) lt!314398)))

(declare-fun b!684602 () Bool)

(declare-fun e!389851 () Bool)

(assert (=> b!684602 (= e!389852 e!389851)))

(declare-fun res!450262 () Bool)

(assert (=> b!684602 (=> res!450262 e!389851)))

(assert (=> b!684602 (= res!450262 (= (h!14104 acc!681) k!2843))))

(declare-fun b!684603 () Bool)

(assert (=> b!684603 (= e!389851 (contains!3606 (t!19317 acc!681) k!2843))))

(assert (= (and d!94233 res!450263) b!684602))

(assert (= (and b!684602 (not res!450262)) b!684603))

(declare-fun m!648953 () Bool)

(assert (=> d!94233 m!648953))

(declare-fun m!648955 () Bool)

(assert (=> d!94233 m!648955))

(declare-fun m!648957 () Bool)

(assert (=> b!684603 m!648957))

(assert (=> b!684353 d!94233))

(declare-fun d!94235 () Bool)

(assert (=> d!94235 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684356 d!94235))

(declare-fun b!684636 () Bool)

(declare-fun e!389881 () Bool)

(declare-fun call!34039 () Bool)

(assert (=> b!684636 (= e!389881 call!34039)))

(declare-fun bm!34036 () Bool)

(declare-fun c!77542 () Bool)

(assert (=> bm!34036 (= call!34039 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77542 (Cons!13059 (select (arr!18969 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!684637 () Bool)

(assert (=> b!684637 (= e!389881 call!34039)))

(declare-fun e!389882 () Bool)

(declare-fun b!684638 () Bool)

(assert (=> b!684638 (= e!389882 (contains!3606 acc!681 (select (arr!18969 a!3626) from!3004)))))

(declare-fun b!684639 () Bool)

(declare-fun e!389883 () Bool)

(declare-fun e!389880 () Bool)

(assert (=> b!684639 (= e!389883 e!389880)))

(declare-fun res!450287 () Bool)

(assert (=> b!684639 (=> (not res!450287) (not e!389880))))

(assert (=> b!684639 (= res!450287 (not e!389882))))

(declare-fun res!450288 () Bool)

(assert (=> b!684639 (=> (not res!450288) (not e!389882))))

(assert (=> b!684639 (= res!450288 (validKeyInArray!0 (select (arr!18969 a!3626) from!3004)))))

(declare-fun d!94239 () Bool)

(declare-fun res!450286 () Bool)

(assert (=> d!94239 (=> res!450286 e!389883)))

(assert (=> d!94239 (= res!450286 (bvsge from!3004 (size!19335 a!3626)))))

(assert (=> d!94239 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!389883)))

(declare-fun b!684640 () Bool)

(assert (=> b!684640 (= e!389880 e!389881)))

(assert (=> b!684640 (= c!77542 (validKeyInArray!0 (select (arr!18969 a!3626) from!3004)))))

(assert (= (and d!94239 (not res!450286)) b!684639))

(assert (= (and b!684639 res!450288) b!684638))

(assert (= (and b!684639 res!450287) b!684640))

(assert (= (and b!684640 c!77542) b!684636))

(assert (= (and b!684640 (not c!77542)) b!684637))

(assert (= (or b!684636 b!684637) bm!34036))

(assert (=> bm!34036 m!648741))

(declare-fun m!649007 () Bool)

(assert (=> bm!34036 m!649007))

(assert (=> b!684638 m!648741))

(assert (=> b!684638 m!648741))

(declare-fun m!649009 () Bool)

(assert (=> b!684638 m!649009))

(assert (=> b!684639 m!648741))

(assert (=> b!684639 m!648741))

(assert (=> b!684639 m!648771))

(assert (=> b!684640 m!648741))

(assert (=> b!684640 m!648741))

(assert (=> b!684640 m!648771))

(assert (=> b!684335 d!94239))

(declare-fun b!684666 () Bool)

(declare-fun e!389904 () List!13063)

(assert (=> b!684666 (= e!389904 Nil!13060)))

(declare-fun lt!314411 () List!13063)

(declare-fun e!389905 () Bool)

(declare-fun b!684667 () Bool)

(assert (=> b!684667 (= e!389905 (= (content!287 lt!314411) (set.minus (content!287 lt!314322) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!684668 () Bool)

(declare-fun e!389903 () List!13063)

(assert (=> b!684668 (= e!389904 e!389903)))

(declare-fun c!77551 () Bool)

(assert (=> b!684668 (= c!77551 (= k!2843 (h!14104 lt!314322)))))

(declare-fun b!684669 () Bool)

(declare-fun call!34045 () List!13063)

(assert (=> b!684669 (= e!389903 call!34045)))

(declare-fun b!684670 () Bool)

(assert (=> b!684670 (= e!389903 (Cons!13059 (h!14104 lt!314322) call!34045))))

(declare-fun d!94265 () Bool)

(assert (=> d!94265 e!389905))

(declare-fun res!450300 () Bool)

(assert (=> d!94265 (=> (not res!450300) (not e!389905))))

(declare-fun size!19340 (List!13063) Int)

(assert (=> d!94265 (= res!450300 (<= (size!19340 lt!314411) (size!19340 lt!314322)))))

(assert (=> d!94265 (= lt!314411 e!389904)))

(declare-fun c!77550 () Bool)

(assert (=> d!94265 (= c!77550 (is-Cons!13059 lt!314322))))

(assert (=> d!94265 (= (-!156 lt!314322 k!2843) lt!314411)))

(declare-fun bm!34042 () Bool)

(assert (=> bm!34042 (= call!34045 (-!156 (t!19317 lt!314322) k!2843))))

(assert (= (and d!94265 c!77550) b!684668))

(assert (= (and d!94265 (not c!77550)) b!684666))

(assert (= (and b!684668 c!77551) b!684669))

(assert (= (and b!684668 (not c!77551)) b!684670))

(assert (= (or b!684669 b!684670) bm!34042))

(assert (= (and d!94265 res!450300) b!684667))

(declare-fun m!649019 () Bool)

(assert (=> b!684667 m!649019))

(declare-fun m!649021 () Bool)

(assert (=> b!684667 m!649021))

(declare-fun m!649023 () Bool)

(assert (=> b!684667 m!649023))

(declare-fun m!649025 () Bool)

(assert (=> d!94265 m!649025))

(declare-fun m!649027 () Bool)

(assert (=> d!94265 m!649027))

(declare-fun m!649029 () Bool)

(assert (=> bm!34042 m!649029))

(assert (=> b!684344 d!94265))

(declare-fun d!94269 () Bool)

(declare-fun res!450316 () Bool)

(declare-fun e!389920 () Bool)

(assert (=> d!94269 (=> res!450316 e!389920)))

(assert (=> d!94269 (= res!450316 (is-Nil!13060 acc!681))))

(assert (=> d!94269 (= (subseq!191 acc!681 acc!681) e!389920)))

(declare-fun b!684686 () Bool)

(declare-fun e!389923 () Bool)

(declare-fun e!389921 () Bool)

(assert (=> b!684686 (= e!389923 e!389921)))

(declare-fun res!450317 () Bool)

(assert (=> b!684686 (=> res!450317 e!389921)))

(declare-fun e!389922 () Bool)

(assert (=> b!684686 (= res!450317 e!389922)))

(declare-fun res!450318 () Bool)

(assert (=> b!684686 (=> (not res!450318) (not e!389922))))

(assert (=> b!684686 (= res!450318 (= (h!14104 acc!681) (h!14104 acc!681)))))

(declare-fun b!684687 () Bool)

(assert (=> b!684687 (= e!389922 (subseq!191 (t!19317 acc!681) (t!19317 acc!681)))))

(declare-fun b!684688 () Bool)

(assert (=> b!684688 (= e!389921 (subseq!191 acc!681 (t!19317 acc!681)))))

(declare-fun b!684685 () Bool)

(assert (=> b!684685 (= e!389920 e!389923)))

(declare-fun res!450315 () Bool)

(assert (=> b!684685 (=> (not res!450315) (not e!389923))))

(assert (=> b!684685 (= res!450315 (is-Cons!13059 acc!681))))

(assert (= (and d!94269 (not res!450316)) b!684685))

(assert (= (and b!684685 res!450315) b!684686))

(assert (= (and b!684686 res!450318) b!684687))

(assert (= (and b!684686 (not res!450317)) b!684688))

(declare-fun m!649037 () Bool)

(assert (=> b!684687 m!649037))

(declare-fun m!649039 () Bool)

(assert (=> b!684688 m!649039))

(assert (=> b!684344 d!94269))

(declare-fun d!94273 () Bool)

(declare-fun res!450319 () Bool)

(declare-fun e!389924 () Bool)

(assert (=> d!94273 (=> res!450319 e!389924)))

(assert (=> d!94273 (= res!450319 (= (select (arr!18969 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94273 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389924)))

(declare-fun b!684689 () Bool)

(declare-fun e!389925 () Bool)

(assert (=> b!684689 (= e!389924 e!389925)))

(declare-fun res!450320 () Bool)

(assert (=> b!684689 (=> (not res!450320) (not e!389925))))

(assert (=> b!684689 (= res!450320 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19335 a!3626)))))

(declare-fun b!684690 () Bool)

(assert (=> b!684690 (= e!389925 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94273 (not res!450319)) b!684689))

(assert (= (and b!684689 res!450320) b!684690))

(declare-fun m!649041 () Bool)

(assert (=> d!94273 m!649041))

(declare-fun m!649043 () Bool)

(assert (=> b!684690 m!649043))

(assert (=> b!684344 d!94273))

(declare-fun d!94275 () Bool)

(assert (=> d!94275 (= (-!156 ($colon$colon!355 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!314421 () Unit!24082)

(declare-fun choose!16 ((_ BitVec 64) List!13063) Unit!24082)

(assert (=> d!94275 (= lt!314421 (choose!16 k!2843 acc!681))))

(assert (=> d!94275 (not (contains!3606 acc!681 k!2843))))

(assert (=> d!94275 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!314421)))

(declare-fun bs!20076 () Bool)

(assert (= bs!20076 d!94275))

(assert (=> bs!20076 m!648769))

(assert (=> bs!20076 m!648769))

(declare-fun m!649059 () Bool)

(assert (=> bs!20076 m!649059))

(declare-fun m!649061 () Bool)

(assert (=> bs!20076 m!649061))

(assert (=> bs!20076 m!648735))

(assert (=> b!684344 d!94275))

(declare-fun d!94289 () Bool)

(declare-fun res!450328 () Bool)

(declare-fun e!389934 () Bool)

(assert (=> d!94289 (=> res!450328 e!389934)))

(assert (=> d!94289 (= res!450328 (= (select (arr!18969 (array!39586 (store (arr!18969 a!3626) i!1382 k!2843) (size!19335 a!3626))) from!3004) k!2843))))

(assert (=> d!94289 (= (arrayContainsKey!0 (array!39586 (store (arr!18969 a!3626) i!1382 k!2843) (size!19335 a!3626)) k!2843 from!3004) e!389934)))

(declare-fun b!684700 () Bool)

(declare-fun e!389935 () Bool)

(assert (=> b!684700 (= e!389934 e!389935)))

(declare-fun res!450329 () Bool)

(assert (=> b!684700 (=> (not res!450329) (not e!389935))))

(assert (=> b!684700 (= res!450329 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19335 (array!39586 (store (arr!18969 a!3626) i!1382 k!2843) (size!19335 a!3626)))))))

(declare-fun b!684701 () Bool)

(assert (=> b!684701 (= e!389935 (arrayContainsKey!0 (array!39586 (store (arr!18969 a!3626) i!1382 k!2843) (size!19335 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94289 (not res!450328)) b!684700))

(assert (= (and b!684700 res!450329) b!684701))

(declare-fun m!649063 () Bool)

(assert (=> d!94289 m!649063))

(declare-fun m!649065 () Bool)

(assert (=> b!684701 m!649065))

(assert (=> b!684344 d!94289))

(declare-fun d!94293 () Bool)

(assert (=> d!94293 (subseq!191 acc!681 acc!681)))

(declare-fun lt!314424 () Unit!24082)

(declare-fun choose!36 (List!13063) Unit!24082)

(assert (=> d!94293 (= lt!314424 (choose!36 acc!681))))

(assert (=> d!94293 (= (lemmaListSubSeqRefl!0 acc!681) lt!314424)))

(declare-fun bs!20077 () Bool)

(assert (= bs!20077 d!94293))

(assert (=> bs!20077 m!648749))

(declare-fun m!649067 () Bool)

(assert (=> bs!20077 m!649067))

(assert (=> b!684344 d!94293))

(declare-fun d!94295 () Bool)

(assert (=> d!94295 (= (validKeyInArray!0 (select (arr!18969 a!3626) from!3004)) (and (not (= (select (arr!18969 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18969 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684344 d!94295))

(declare-fun d!94297 () Bool)

(assert (=> d!94297 (= ($colon$colon!355 acc!681 k!2843) (Cons!13059 k!2843 acc!681))))

(assert (=> b!684344 d!94297))

(declare-fun b!684702 () Bool)

(declare-fun e!389937 () Bool)

(declare-fun call!34047 () Bool)

(assert (=> b!684702 (= e!389937 call!34047)))

(declare-fun bm!34044 () Bool)

(declare-fun c!77553 () Bool)

(assert (=> bm!34044 (= call!34047 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77553 (Cons!13059 (select (arr!18969 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!684703 () Bool)

(assert (=> b!684703 (= e!389937 call!34047)))

(declare-fun e!389938 () Bool)

(declare-fun b!684704 () Bool)

(assert (=> b!684704 (= e!389938 (contains!3606 acc!681 (select (arr!18969 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!684705 () Bool)

(declare-fun e!389939 () Bool)

(declare-fun e!389936 () Bool)

(assert (=> b!684705 (= e!389939 e!389936)))

(declare-fun res!450331 () Bool)

(assert (=> b!684705 (=> (not res!450331) (not e!389936))))

(assert (=> b!684705 (= res!450331 (not e!389938))))

(declare-fun res!450332 () Bool)

(assert (=> b!684705 (=> (not res!450332) (not e!389938))))

(assert (=> b!684705 (= res!450332 (validKeyInArray!0 (select (arr!18969 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94299 () Bool)

(declare-fun res!450330 () Bool)

(assert (=> d!94299 (=> res!450330 e!389939)))

(assert (=> d!94299 (= res!450330 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19335 a!3626)))))

(assert (=> d!94299 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!389939)))

(declare-fun b!684706 () Bool)

(assert (=> b!684706 (= e!389936 e!389937)))

(assert (=> b!684706 (= c!77553 (validKeyInArray!0 (select (arr!18969 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94299 (not res!450330)) b!684705))

(assert (= (and b!684705 res!450332) b!684704))

(assert (= (and b!684705 res!450331) b!684706))

(assert (= (and b!684706 c!77553) b!684702))

(assert (= (and b!684706 (not c!77553)) b!684703))

(assert (= (or b!684702 b!684703) bm!34044))

(assert (=> bm!34044 m!649041))

(declare-fun m!649075 () Bool)

(assert (=> bm!34044 m!649075))

(assert (=> b!684704 m!649041))

(assert (=> b!684704 m!649041))

(declare-fun m!649077 () Bool)

(assert (=> b!684704 m!649077))

(assert (=> b!684705 m!649041))

(assert (=> b!684705 m!649041))

(declare-fun m!649079 () Bool)

(assert (=> b!684705 m!649079))

(assert (=> b!684706 m!649041))

(assert (=> b!684706 m!649041))

(assert (=> b!684706 m!649079))

(assert (=> b!684344 d!94299))

(declare-fun d!94305 () Bool)

(declare-fun lt!314428 () Bool)

(assert (=> d!94305 (= lt!314428 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!287 acc!681)))))

(declare-fun e!389947 () Bool)

(assert (=> d!94305 (= lt!314428 e!389947)))

(declare-fun res!450340 () Bool)

(assert (=> d!94305 (=> (not res!450340) (not e!389947))))

(assert (=> d!94305 (= res!450340 (is-Cons!13059 acc!681))))

(assert (=> d!94305 (= (contains!3606 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314428)))

(declare-fun b!684713 () Bool)

(declare-fun e!389946 () Bool)

(assert (=> b!684713 (= e!389947 e!389946)))

(declare-fun res!450339 () Bool)

(assert (=> b!684713 (=> res!450339 e!389946)))

(assert (=> b!684713 (= res!450339 (= (h!14104 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!684714 () Bool)

(assert (=> b!684714 (= e!389946 (contains!3606 (t!19317 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94305 res!450340) b!684713))

(assert (= (and b!684713 (not res!450339)) b!684714))

(assert (=> d!94305 m!648953))

(declare-fun m!649085 () Bool)

(assert (=> d!94305 m!649085))

(declare-fun m!649087 () Bool)

(assert (=> b!684714 m!649087))

(assert (=> b!684345 d!94305))

(declare-fun d!94309 () Bool)

(declare-fun res!450350 () Bool)

(declare-fun e!389958 () Bool)

(assert (=> d!94309 (=> res!450350 e!389958)))

(assert (=> d!94309 (= res!450350 (is-Nil!13060 lt!314322))))

(assert (=> d!94309 (= (noDuplicate!853 lt!314322) e!389958)))

(declare-fun b!684726 () Bool)

(declare-fun e!389959 () Bool)

(assert (=> b!684726 (= e!389958 e!389959)))

(declare-fun res!450351 () Bool)

(assert (=> b!684726 (=> (not res!450351) (not e!389959))))

(assert (=> b!684726 (= res!450351 (not (contains!3606 (t!19317 lt!314322) (h!14104 lt!314322))))))

(declare-fun b!684727 () Bool)

(assert (=> b!684727 (= e!389959 (noDuplicate!853 (t!19317 lt!314322)))))

(assert (= (and d!94309 (not res!450350)) b!684726))

(assert (= (and b!684726 res!450351) b!684727))

(declare-fun m!649099 () Bool)

(assert (=> b!684726 m!649099))

(declare-fun m!649101 () Bool)

(assert (=> b!684727 m!649101))

(assert (=> b!684348 d!94309))

(declare-fun d!94313 () Bool)

(declare-fun res!450353 () Bool)

(declare-fun e!389960 () Bool)

(assert (=> d!94313 (=> res!450353 e!389960)))

(assert (=> d!94313 (= res!450353 (is-Nil!13060 acc!681))))

(assert (=> d!94313 (= (subseq!191 acc!681 lt!314322) e!389960)))

(declare-fun b!684729 () Bool)

(declare-fun e!389963 () Bool)

(declare-fun e!389961 () Bool)

(assert (=> b!684729 (= e!389963 e!389961)))

(declare-fun res!450354 () Bool)

(assert (=> b!684729 (=> res!450354 e!389961)))

(declare-fun e!389962 () Bool)

(assert (=> b!684729 (= res!450354 e!389962)))

(declare-fun res!450355 () Bool)

(assert (=> b!684729 (=> (not res!450355) (not e!389962))))

(assert (=> b!684729 (= res!450355 (= (h!14104 acc!681) (h!14104 lt!314322)))))

(declare-fun b!684730 () Bool)

(assert (=> b!684730 (= e!389962 (subseq!191 (t!19317 acc!681) (t!19317 lt!314322)))))

(declare-fun b!684731 () Bool)

(assert (=> b!684731 (= e!389961 (subseq!191 acc!681 (t!19317 lt!314322)))))

(declare-fun b!684728 () Bool)

(assert (=> b!684728 (= e!389960 e!389963)))

(declare-fun res!450352 () Bool)

(assert (=> b!684728 (=> (not res!450352) (not e!389963))))

(assert (=> b!684728 (= res!450352 (is-Cons!13059 lt!314322))))

(assert (= (and d!94313 (not res!450353)) b!684728))

