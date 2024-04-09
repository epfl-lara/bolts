; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61104 () Bool)

(assert start!61104)

(declare-fun b!684788 () Bool)

(declare-fun res!450418 () Bool)

(declare-fun e!389993 () Bool)

(assert (=> b!684788 (=> (not res!450418) (not e!389993))))

(declare-datatypes ((array!39594 0))(
  ( (array!39595 (arr!18972 (Array (_ BitVec 32) (_ BitVec 64))) (size!19341 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39594)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684788 (= res!450418 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684789 () Bool)

(declare-fun res!450411 () Bool)

(declare-fun e!389992 () Bool)

(assert (=> b!684789 (=> res!450411 e!389992)))

(declare-datatypes ((List!13066 0))(
  ( (Nil!13063) (Cons!13062 (h!14107 (_ BitVec 64)) (t!19323 List!13066)) )
))
(declare-fun acc!681 () List!13066)

(declare-fun contains!3609 (List!13066 (_ BitVec 64)) Bool)

(assert (=> b!684789 (= res!450411 (contains!3609 acc!681 k!2843))))

(declare-fun b!684790 () Bool)

(declare-fun e!389989 () Bool)

(declare-fun e!389991 () Bool)

(assert (=> b!684790 (= e!389989 e!389991)))

(declare-fun res!450415 () Bool)

(assert (=> b!684790 (=> (not res!450415) (not e!389991))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684790 (= res!450415 (bvsle from!3004 i!1382))))

(declare-fun b!684791 () Bool)

(declare-datatypes ((Unit!24097 0))(
  ( (Unit!24098) )
))
(declare-fun e!389990 () Unit!24097)

(declare-fun Unit!24099 () Unit!24097)

(assert (=> b!684791 (= e!389990 Unit!24099)))

(declare-fun b!684792 () Bool)

(declare-fun res!450403 () Bool)

(assert (=> b!684792 (=> (not res!450403) (not e!389993))))

(declare-fun noDuplicate!856 (List!13066) Bool)

(assert (=> b!684792 (= res!450403 (noDuplicate!856 acc!681))))

(declare-fun b!684793 () Bool)

(declare-fun res!450412 () Bool)

(assert (=> b!684793 (=> (not res!450412) (not e!389993))))

(assert (=> b!684793 (= res!450412 e!389989)))

(declare-fun res!450409 () Bool)

(assert (=> b!684793 (=> res!450409 e!389989)))

(declare-fun e!389994 () Bool)

(assert (=> b!684793 (= res!450409 e!389994)))

(declare-fun res!450407 () Bool)

(assert (=> b!684793 (=> (not res!450407) (not e!389994))))

(assert (=> b!684793 (= res!450407 (bvsgt from!3004 i!1382))))

(declare-fun res!450404 () Bool)

(assert (=> start!61104 (=> (not res!450404) (not e!389993))))

(assert (=> start!61104 (= res!450404 (and (bvslt (size!19341 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19341 a!3626))))))

(assert (=> start!61104 e!389993))

(assert (=> start!61104 true))

(declare-fun array_inv!14746 (array!39594) Bool)

(assert (=> start!61104 (array_inv!14746 a!3626)))

(declare-fun b!684787 () Bool)

(declare-fun lt!314462 () Unit!24097)

(assert (=> b!684787 (= e!389990 lt!314462)))

(declare-fun lt!314455 () Unit!24097)

(declare-fun lemmaListSubSeqRefl!0 (List!13066) Unit!24097)

(assert (=> b!684787 (= lt!314455 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!194 (List!13066 List!13066) Bool)

(assert (=> b!684787 (subseq!194 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39594 List!13066 List!13066 (_ BitVec 32)) Unit!24097)

(declare-fun $colon$colon!358 (List!13066 (_ BitVec 64)) List!13066)

(assert (=> b!684787 (= lt!314462 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!358 acc!681 (select (arr!18972 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39594 (_ BitVec 32) List!13066) Bool)

(assert (=> b!684787 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684794 () Bool)

(declare-fun lt!314459 () List!13066)

(assert (=> b!684794 (= e!389992 (contains!3609 lt!314459 k!2843))))

(declare-fun b!684795 () Bool)

(declare-fun e!389988 () Unit!24097)

(declare-fun Unit!24100 () Unit!24097)

(assert (=> b!684795 (= e!389988 Unit!24100)))

(declare-fun lt!314460 () Unit!24097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39594 (_ BitVec 64) (_ BitVec 32)) Unit!24097)

(assert (=> b!684795 (= lt!314460 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684795 false))

(declare-fun b!684796 () Bool)

(declare-fun res!450413 () Bool)

(assert (=> b!684796 (=> res!450413 e!389992)))

(assert (=> b!684796 (= res!450413 (not (noDuplicate!856 lt!314459)))))

(declare-fun b!684797 () Bool)

(declare-fun res!450406 () Bool)

(assert (=> b!684797 (=> (not res!450406) (not e!389993))))

(assert (=> b!684797 (= res!450406 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13063))))

(declare-fun b!684798 () Bool)

(assert (=> b!684798 (= e!389993 (not e!389992))))

(declare-fun res!450408 () Bool)

(assert (=> b!684798 (=> res!450408 e!389992)))

(assert (=> b!684798 (= res!450408 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!159 (List!13066 (_ BitVec 64)) List!13066)

(assert (=> b!684798 (= (-!159 lt!314459 k!2843) acc!681)))

(assert (=> b!684798 (= lt!314459 ($colon$colon!358 acc!681 k!2843))))

(declare-fun lt!314463 () Unit!24097)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13066) Unit!24097)

(assert (=> b!684798 (= lt!314463 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!684798 (subseq!194 acc!681 acc!681)))

(declare-fun lt!314458 () Unit!24097)

(assert (=> b!684798 (= lt!314458 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684798 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314457 () Unit!24097)

(assert (=> b!684798 (= lt!314457 e!389990)))

(declare-fun c!77560 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684798 (= c!77560 (validKeyInArray!0 (select (arr!18972 a!3626) from!3004)))))

(declare-fun lt!314456 () Unit!24097)

(assert (=> b!684798 (= lt!314456 e!389988)))

(declare-fun c!77561 () Bool)

(declare-fun lt!314461 () Bool)

(assert (=> b!684798 (= c!77561 lt!314461)))

(assert (=> b!684798 (= lt!314461 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684798 (arrayContainsKey!0 (array!39595 (store (arr!18972 a!3626) i!1382 k!2843) (size!19341 a!3626)) k!2843 from!3004)))

(declare-fun b!684799 () Bool)

(assert (=> b!684799 (= e!389991 (not (contains!3609 acc!681 k!2843)))))

(declare-fun b!684800 () Bool)

(declare-fun res!450405 () Bool)

(assert (=> b!684800 (=> res!450405 e!389992)))

(assert (=> b!684800 (= res!450405 lt!314461)))

(declare-fun b!684801 () Bool)

(declare-fun res!450410 () Bool)

(assert (=> b!684801 (=> (not res!450410) (not e!389993))))

(assert (=> b!684801 (= res!450410 (validKeyInArray!0 k!2843))))

(declare-fun b!684802 () Bool)

(assert (=> b!684802 (= e!389994 (contains!3609 acc!681 k!2843))))

(declare-fun b!684803 () Bool)

(declare-fun res!450402 () Bool)

(assert (=> b!684803 (=> (not res!450402) (not e!389993))))

(assert (=> b!684803 (= res!450402 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684804 () Bool)

(declare-fun res!450417 () Bool)

(assert (=> b!684804 (=> (not res!450417) (not e!389993))))

(assert (=> b!684804 (= res!450417 (not (contains!3609 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684805 () Bool)

(declare-fun Unit!24101 () Unit!24097)

(assert (=> b!684805 (= e!389988 Unit!24101)))

(declare-fun b!684806 () Bool)

(declare-fun res!450416 () Bool)

(assert (=> b!684806 (=> res!450416 e!389992)))

(assert (=> b!684806 (= res!450416 (not (subseq!194 acc!681 lt!314459)))))

(declare-fun b!684807 () Bool)

(declare-fun res!450414 () Bool)

(assert (=> b!684807 (=> (not res!450414) (not e!389993))))

(assert (=> b!684807 (= res!450414 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19341 a!3626))))))

(declare-fun b!684808 () Bool)

(declare-fun res!450419 () Bool)

(assert (=> b!684808 (=> (not res!450419) (not e!389993))))

(assert (=> b!684808 (= res!450419 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19341 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684809 () Bool)

(declare-fun res!450401 () Bool)

(assert (=> b!684809 (=> (not res!450401) (not e!389993))))

(assert (=> b!684809 (= res!450401 (not (contains!3609 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61104 res!450404) b!684792))

(assert (= (and b!684792 res!450403) b!684809))

(assert (= (and b!684809 res!450401) b!684804))

(assert (= (and b!684804 res!450417) b!684793))

(assert (= (and b!684793 res!450407) b!684802))

(assert (= (and b!684793 (not res!450409)) b!684790))

(assert (= (and b!684790 res!450415) b!684799))

(assert (= (and b!684793 res!450412) b!684797))

(assert (= (and b!684797 res!450406) b!684803))

(assert (= (and b!684803 res!450402) b!684807))

(assert (= (and b!684807 res!450414) b!684801))

(assert (= (and b!684801 res!450410) b!684788))

(assert (= (and b!684788 res!450418) b!684808))

(assert (= (and b!684808 res!450419) b!684798))

(assert (= (and b!684798 c!77561) b!684795))

(assert (= (and b!684798 (not c!77561)) b!684805))

(assert (= (and b!684798 c!77560) b!684787))

(assert (= (and b!684798 (not c!77560)) b!684791))

(assert (= (and b!684798 (not res!450408)) b!684796))

(assert (= (and b!684796 (not res!450413)) b!684800))

(assert (= (and b!684800 (not res!450405)) b!684789))

(assert (= (and b!684789 (not res!450411)) b!684806))

(assert (= (and b!684806 (not res!450416)) b!684794))

(declare-fun m!649125 () Bool)

(assert (=> b!684789 m!649125))

(declare-fun m!649127 () Bool)

(assert (=> b!684806 m!649127))

(declare-fun m!649129 () Bool)

(assert (=> b!684792 m!649129))

(declare-fun m!649131 () Bool)

(assert (=> b!684798 m!649131))

(declare-fun m!649133 () Bool)

(assert (=> b!684798 m!649133))

(declare-fun m!649135 () Bool)

(assert (=> b!684798 m!649135))

(declare-fun m!649137 () Bool)

(assert (=> b!684798 m!649137))

(declare-fun m!649139 () Bool)

(assert (=> b!684798 m!649139))

(declare-fun m!649141 () Bool)

(assert (=> b!684798 m!649141))

(declare-fun m!649143 () Bool)

(assert (=> b!684798 m!649143))

(declare-fun m!649145 () Bool)

(assert (=> b!684798 m!649145))

(assert (=> b!684798 m!649135))

(declare-fun m!649147 () Bool)

(assert (=> b!684798 m!649147))

(declare-fun m!649149 () Bool)

(assert (=> b!684798 m!649149))

(declare-fun m!649151 () Bool)

(assert (=> b!684798 m!649151))

(assert (=> b!684802 m!649125))

(assert (=> b!684787 m!649133))

(assert (=> b!684787 m!649135))

(declare-fun m!649153 () Bool)

(assert (=> b!684787 m!649153))

(declare-fun m!649155 () Bool)

(assert (=> b!684787 m!649155))

(assert (=> b!684787 m!649135))

(assert (=> b!684787 m!649153))

(assert (=> b!684787 m!649141))

(assert (=> b!684787 m!649151))

(declare-fun m!649157 () Bool)

(assert (=> b!684804 m!649157))

(declare-fun m!649159 () Bool)

(assert (=> b!684794 m!649159))

(declare-fun m!649161 () Bool)

(assert (=> b!684797 m!649161))

(assert (=> b!684799 m!649125))

(declare-fun m!649163 () Bool)

(assert (=> b!684796 m!649163))

(declare-fun m!649165 () Bool)

(assert (=> start!61104 m!649165))

(declare-fun m!649167 () Bool)

(assert (=> b!684809 m!649167))

(declare-fun m!649169 () Bool)

(assert (=> b!684788 m!649169))

(declare-fun m!649171 () Bool)

(assert (=> b!684803 m!649171))

(declare-fun m!649173 () Bool)

(assert (=> b!684795 m!649173))

(declare-fun m!649175 () Bool)

(assert (=> b!684801 m!649175))

(push 1)

(assert (not b!684795))

(assert (not b!684798))

(assert (not b!684809))

(assert (not b!684801))

(assert (not b!684788))

(assert (not b!684797))

(assert (not b!684806))

(assert (not b!684794))

(assert (not b!684789))

(assert (not b!684792))

(assert (not b!684803))

(assert (not b!684802))

(assert (not b!684804))

(assert (not b!684796))

(assert (not b!684799))

(assert (not b!684787))

(assert (not start!61104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94347 () Bool)

(declare-fun res!450578 () Bool)

(declare-fun e!390094 () Bool)

(assert (=> d!94347 (=> res!450578 e!390094)))

(assert (=> d!94347 (= res!450578 (is-Nil!13063 acc!681))))

(assert (=> d!94347 (= (noDuplicate!856 acc!681) e!390094)))

(declare-fun b!685004 () Bool)

(declare-fun e!390095 () Bool)

(assert (=> b!685004 (= e!390094 e!390095)))

(declare-fun res!450579 () Bool)

(assert (=> b!685004 (=> (not res!450579) (not e!390095))))

(assert (=> b!685004 (= res!450579 (not (contains!3609 (t!19323 acc!681) (h!14107 acc!681))))))

(declare-fun b!685005 () Bool)

(assert (=> b!685005 (= e!390095 (noDuplicate!856 (t!19323 acc!681)))))

(assert (= (and d!94347 (not res!450578)) b!685004))

(assert (= (and b!685004 res!450579) b!685005))

(declare-fun m!649309 () Bool)

(assert (=> b!685004 m!649309))

(declare-fun m!649311 () Bool)

(assert (=> b!685005 m!649311))

(assert (=> b!684792 d!94347))

(declare-fun e!390124 () Bool)

(declare-fun b!685035 () Bool)

(assert (=> b!685035 (= e!390124 (contains!3609 acc!681 (select (arr!18972 a!3626) from!3004)))))

(declare-fun b!685036 () Bool)

(declare-fun e!390125 () Bool)

(declare-fun e!390122 () Bool)

(assert (=> b!685036 (= e!390125 e!390122)))

(declare-fun c!77583 () Bool)

(assert (=> b!685036 (= c!77583 (validKeyInArray!0 (select (arr!18972 a!3626) from!3004)))))

(declare-fun d!94353 () Bool)

(declare-fun res!450603 () Bool)

(declare-fun e!390123 () Bool)

(assert (=> d!94353 (=> res!450603 e!390123)))

(assert (=> d!94353 (= res!450603 (bvsge from!3004 (size!19341 a!3626)))))

(assert (=> d!94353 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!390123)))

(declare-fun call!34059 () Bool)

(declare-fun bm!34056 () Bool)

(assert (=> bm!34056 (= call!34059 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77583 (Cons!13062 (select (arr!18972 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!685037 () Bool)

(assert (=> b!685037 (= e!390122 call!34059)))

(declare-fun b!685038 () Bool)

(assert (=> b!685038 (= e!390123 e!390125)))

(declare-fun res!450605 () Bool)

(assert (=> b!685038 (=> (not res!450605) (not e!390125))))

(assert (=> b!685038 (= res!450605 (not e!390124))))

(declare-fun res!450604 () Bool)

(assert (=> b!685038 (=> (not res!450604) (not e!390124))))

(assert (=> b!685038 (= res!450604 (validKeyInArray!0 (select (arr!18972 a!3626) from!3004)))))

(declare-fun b!685039 () Bool)

(assert (=> b!685039 (= e!390122 call!34059)))

(assert (= (and d!94353 (not res!450603)) b!685038))

(assert (= (and b!685038 res!450604) b!685035))

(assert (= (and b!685038 res!450605) b!685036))

(assert (= (and b!685036 c!77583) b!685037))

(assert (= (and b!685036 (not c!77583)) b!685039))

(assert (= (or b!685037 b!685039) bm!34056))

(assert (=> b!685035 m!649135))

(assert (=> b!685035 m!649135))

(declare-fun m!649337 () Bool)

(assert (=> b!685035 m!649337))

(assert (=> b!685036 m!649135))

(assert (=> b!685036 m!649135))

(assert (=> b!685036 m!649147))

(assert (=> bm!34056 m!649135))

(declare-fun m!649339 () Bool)

(assert (=> bm!34056 m!649339))

(assert (=> b!685038 m!649135))

(assert (=> b!685038 m!649135))

(assert (=> b!685038 m!649147))

(assert (=> b!684803 d!94353))

(declare-fun d!94365 () Bool)

(declare-fun lt!314536 () Bool)

(declare-fun content!291 (List!13066) (Set (_ BitVec 64)))

(assert (=> d!94365 (= lt!314536 (set.member k!2843 (content!291 lt!314459)))))

(declare-fun e!390157 () Bool)

(assert (=> d!94365 (= lt!314536 e!390157)))

(declare-fun res!450637 () Bool)

(assert (=> d!94365 (=> (not res!450637) (not e!390157))))

(assert (=> d!94365 (= res!450637 (is-Cons!13062 lt!314459))))

(assert (=> d!94365 (= (contains!3609 lt!314459 k!2843) lt!314536)))

(declare-fun b!685070 () Bool)

(declare-fun e!390156 () Bool)

(assert (=> b!685070 (= e!390157 e!390156)))

(declare-fun res!450636 () Bool)

(assert (=> b!685070 (=> res!450636 e!390156)))

(assert (=> b!685070 (= res!450636 (= (h!14107 lt!314459) k!2843))))

(declare-fun b!685071 () Bool)

(assert (=> b!685071 (= e!390156 (contains!3609 (t!19323 lt!314459) k!2843))))

(assert (= (and d!94365 res!450637) b!685070))

(assert (= (and b!685070 (not res!450636)) b!685071))

(declare-fun m!649357 () Bool)

(assert (=> d!94365 m!649357))

(declare-fun m!649359 () Bool)

(assert (=> d!94365 m!649359))

(declare-fun m!649361 () Bool)

(assert (=> b!685071 m!649361))

(assert (=> b!684794 d!94365))

(declare-fun d!94375 () Bool)

(declare-fun lt!314537 () Bool)

(assert (=> d!94375 (= lt!314537 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!291 acc!681)))))

(declare-fun e!390159 () Bool)

(assert (=> d!94375 (= lt!314537 e!390159)))

(declare-fun res!450639 () Bool)

(assert (=> d!94375 (=> (not res!450639) (not e!390159))))

(assert (=> d!94375 (= res!450639 (is-Cons!13062 acc!681))))

(assert (=> d!94375 (= (contains!3609 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314537)))

(declare-fun b!685072 () Bool)

(declare-fun e!390158 () Bool)

(assert (=> b!685072 (= e!390159 e!390158)))

(declare-fun res!450638 () Bool)

(assert (=> b!685072 (=> res!450638 e!390158)))

(assert (=> b!685072 (= res!450638 (= (h!14107 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685073 () Bool)

(assert (=> b!685073 (= e!390158 (contains!3609 (t!19323 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94375 res!450639) b!685072))

(assert (= (and b!685072 (not res!450638)) b!685073))

(declare-fun m!649363 () Bool)

(assert (=> d!94375 m!649363))

(declare-fun m!649365 () Bool)

(assert (=> d!94375 m!649365))

(declare-fun m!649367 () Bool)

(assert (=> b!685073 m!649367))

(assert (=> b!684804 d!94375))

(declare-fun b!685114 () Bool)

(declare-fun e!390197 () Bool)

(declare-fun e!390195 () Bool)

(assert (=> b!685114 (= e!390197 e!390195)))

(declare-fun res!450666 () Bool)

(assert (=> b!685114 (=> (not res!450666) (not e!390195))))

(assert (=> b!685114 (= res!450666 (is-Cons!13062 lt!314459))))

(declare-fun b!685116 () Bool)

(declare-fun e!390196 () Bool)

(assert (=> b!685116 (= e!390196 (subseq!194 (t!19323 acc!681) (t!19323 lt!314459)))))

(declare-fun d!94377 () Bool)

(declare-fun res!450667 () Bool)

(assert (=> d!94377 (=> res!450667 e!390197)))

(assert (=> d!94377 (= res!450667 (is-Nil!13063 acc!681))))

(assert (=> d!94377 (= (subseq!194 acc!681 lt!314459) e!390197)))

(declare-fun b!685117 () Bool)

(declare-fun e!390194 () Bool)

(assert (=> b!685117 (= e!390194 (subseq!194 acc!681 (t!19323 lt!314459)))))

(declare-fun b!685115 () Bool)

(assert (=> b!685115 (= e!390195 e!390194)))

(declare-fun res!450669 () Bool)

(assert (=> b!685115 (=> res!450669 e!390194)))

(assert (=> b!685115 (= res!450669 e!390196)))

(declare-fun res!450668 () Bool)

(assert (=> b!685115 (=> (not res!450668) (not e!390196))))

(assert (=> b!685115 (= res!450668 (= (h!14107 acc!681) (h!14107 lt!314459)))))

(assert (= (and d!94377 (not res!450667)) b!685114))

(assert (= (and b!685114 res!450666) b!685115))

(assert (= (and b!685115 res!450668) b!685116))

(assert (= (and b!685115 (not res!450669)) b!685117))

(declare-fun m!649391 () Bool)

(assert (=> b!685116 m!649391))

(declare-fun m!649393 () Bool)

(assert (=> b!685117 m!649393))

(assert (=> b!684806 d!94377))

(declare-fun d!94393 () Bool)

(assert (=> d!94393 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314545 () Unit!24097)

(declare-fun choose!13 (array!39594 (_ BitVec 64) (_ BitVec 32)) Unit!24097)

(assert (=> d!94393 (= lt!314545 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94393 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94393 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!314545)))

(declare-fun bs!20087 () Bool)

(assert (= bs!20087 d!94393))

(assert (=> bs!20087 m!649169))

(declare-fun m!649415 () Bool)

(assert (=> bs!20087 m!649415))

(assert (=> b!684795 d!94393))

(declare-fun d!94401 () Bool)

(assert (=> d!94401 (= (array_inv!14746 a!3626) (bvsge (size!19341 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61104 d!94401))

(declare-fun b!685132 () Bool)

(declare-fun e!390211 () Bool)

(assert (=> b!685132 (= e!390211 (contains!3609 Nil!13063 (select (arr!18972 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685133 () Bool)

(declare-fun e!390212 () Bool)

(declare-fun e!390209 () Bool)

(assert (=> b!685133 (= e!390212 e!390209)))

(declare-fun c!77595 () Bool)

(assert (=> b!685133 (= c!77595 (validKeyInArray!0 (select (arr!18972 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94403 () Bool)

(declare-fun res!450676 () Bool)

(declare-fun e!390210 () Bool)

(assert (=> d!94403 (=> res!450676 e!390210)))

(assert (=> d!94403 (= res!450676 (bvsge #b00000000000000000000000000000000 (size!19341 a!3626)))))

(assert (=> d!94403 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13063) e!390210)))

(declare-fun bm!34061 () Bool)

(declare-fun call!34064 () Bool)

(assert (=> bm!34061 (= call!34064 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77595 (Cons!13062 (select (arr!18972 a!3626) #b00000000000000000000000000000000) Nil!13063) Nil!13063)))))

(declare-fun b!685134 () Bool)

(assert (=> b!685134 (= e!390209 call!34064)))

(declare-fun b!685135 () Bool)

(assert (=> b!685135 (= e!390210 e!390212)))

(declare-fun res!450678 () Bool)

(assert (=> b!685135 (=> (not res!450678) (not e!390212))))

(assert (=> b!685135 (= res!450678 (not e!390211))))

(declare-fun res!450677 () Bool)

(assert (=> b!685135 (=> (not res!450677) (not e!390211))))

(assert (=> b!685135 (= res!450677 (validKeyInArray!0 (select (arr!18972 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685136 () Bool)

(assert (=> b!685136 (= e!390209 call!34064)))

(assert (= (and d!94403 (not res!450676)) b!685135))

(assert (= (and b!685135 res!450677) b!685132))

(assert (= (and b!685135 res!450678) b!685133))

(assert (= (and b!685133 c!77595) b!685134))

(assert (= (and b!685133 (not c!77595)) b!685136))

(assert (= (or b!685134 b!685136) bm!34061))

(declare-fun m!649417 () Bool)

(assert (=> b!685132 m!649417))

(assert (=> b!685132 m!649417))

(declare-fun m!649419 () Bool)

(assert (=> b!685132 m!649419))

(assert (=> b!685133 m!649417))

(assert (=> b!685133 m!649417))

(declare-fun m!649421 () Bool)

(assert (=> b!685133 m!649421))

(assert (=> bm!34061 m!649417))

(declare-fun m!649423 () Bool)

(assert (=> bm!34061 m!649423))

(assert (=> b!685135 m!649417))

(assert (=> b!685135 m!649417))

(assert (=> b!685135 m!649421))

(assert (=> b!684797 d!94403))

(declare-fun d!94405 () Bool)

(declare-fun res!450681 () Bool)

(declare-fun e!390215 () Bool)

(assert (=> d!94405 (=> res!450681 e!390215)))

(assert (=> d!94405 (= res!450681 (is-Nil!13063 lt!314459))))

(assert (=> d!94405 (= (noDuplicate!856 lt!314459) e!390215)))

(declare-fun b!685139 () Bool)

(declare-fun e!390216 () Bool)

(assert (=> b!685139 (= e!390215 e!390216)))

(declare-fun res!450682 () Bool)

(assert (=> b!685139 (=> (not res!450682) (not e!390216))))

(assert (=> b!685139 (= res!450682 (not (contains!3609 (t!19323 lt!314459) (h!14107 lt!314459))))))

(declare-fun b!685140 () Bool)

(assert (=> b!685140 (= e!390216 (noDuplicate!856 (t!19323 lt!314459)))))

(assert (= (and d!94405 (not res!450681)) b!685139))

(assert (= (and b!685139 res!450682) b!685140))

(declare-fun m!649429 () Bool)

(assert (=> b!685139 m!649429))

(declare-fun m!649431 () Bool)

(assert (=> b!685140 m!649431))

(assert (=> b!684796 d!94405))

(declare-fun b!685143 () Bool)

(declare-fun e!390222 () Bool)

(declare-fun e!390220 () Bool)

(assert (=> b!685143 (= e!390222 e!390220)))

(declare-fun res!450685 () Bool)

(assert (=> b!685143 (=> (not res!450685) (not e!390220))))

(assert (=> b!685143 (= res!450685 (is-Cons!13062 acc!681))))

(declare-fun b!685145 () Bool)

(declare-fun e!390221 () Bool)

(assert (=> b!685145 (= e!390221 (subseq!194 (t!19323 acc!681) (t!19323 acc!681)))))

(declare-fun d!94409 () Bool)

(declare-fun res!450686 () Bool)

(assert (=> d!94409 (=> res!450686 e!390222)))

(assert (=> d!94409 (= res!450686 (is-Nil!13063 acc!681))))

(assert (=> d!94409 (= (subseq!194 acc!681 acc!681) e!390222)))

(declare-fun b!685146 () Bool)

(declare-fun e!390219 () Bool)

(assert (=> b!685146 (= e!390219 (subseq!194 acc!681 (t!19323 acc!681)))))

(declare-fun b!685144 () Bool)

(assert (=> b!685144 (= e!390220 e!390219)))

(declare-fun res!450688 () Bool)

(assert (=> b!685144 (=> res!450688 e!390219)))

(assert (=> b!685144 (= res!450688 e!390221)))

(declare-fun res!450687 () Bool)

(assert (=> b!685144 (=> (not res!450687) (not e!390221))))

(assert (=> b!685144 (= res!450687 (= (h!14107 acc!681) (h!14107 acc!681)))))

(assert (= (and d!94409 (not res!450686)) b!685143))

(assert (= (and b!685143 res!450685) b!685144))

(assert (= (and b!685144 res!450687) b!685145))

(assert (= (and b!685144 (not res!450688)) b!685146))

(declare-fun m!649437 () Bool)

(assert (=> b!685145 m!649437))

(declare-fun m!649439 () Bool)

(assert (=> b!685146 m!649439))

(assert (=> b!684798 d!94409))

(declare-fun d!94413 () Bool)

(declare-fun res!450694 () Bool)

(declare-fun e!390230 () Bool)

(assert (=> d!94413 (=> res!450694 e!390230)))

(assert (=> d!94413 (= res!450694 (= (select (arr!18972 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94413 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!390230)))

(declare-fun b!685156 () Bool)

(declare-fun e!390231 () Bool)

(assert (=> b!685156 (= e!390230 e!390231)))

(declare-fun res!450695 () Bool)

(assert (=> b!685156 (=> (not res!450695) (not e!390231))))

(assert (=> b!685156 (= res!450695 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19341 a!3626)))))

(declare-fun b!685157 () Bool)

(assert (=> b!685157 (= e!390231 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94413 (not res!450694)) b!685156))

(assert (= (and b!685156 res!450695) b!685157))

(declare-fun m!649453 () Bool)

(assert (=> d!94413 m!649453))

(declare-fun m!649455 () Bool)

(assert (=> b!685157 m!649455))

(assert (=> b!684798 d!94413))

(declare-fun b!685186 () Bool)

(declare-fun e!390255 () List!13066)

(declare-fun e!390256 () List!13066)

(assert (=> b!685186 (= e!390255 e!390256)))

(declare-fun c!77605 () Bool)

(assert (=> b!685186 (= c!77605 (= k!2843 (h!14107 lt!314459)))))

(declare-fun b!685187 () Bool)

(declare-fun call!34072 () List!13066)

(assert (=> b!685187 (= e!390256 call!34072)))

(declare-fun bm!34069 () Bool)

(assert (=> bm!34069 (= call!34072 (-!159 (t!19323 lt!314459) k!2843))))

(declare-fun b!685188 () Bool)

(assert (=> b!685188 (= e!390256 (Cons!13062 (h!14107 lt!314459) call!34072))))

(declare-fun e!390257 () Bool)

(declare-fun lt!314565 () List!13066)

(declare-fun b!685189 () Bool)

(assert (=> b!685189 (= e!390257 (= (content!291 lt!314565) (set.minus (content!291 lt!314459) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!685190 () Bool)

(assert (=> b!685190 (= e!390255 Nil!13063)))

(declare-fun d!94423 () Bool)

(assert (=> d!94423 e!390257))

(declare-fun res!450712 () Bool)

(assert (=> d!94423 (=> (not res!450712) (not e!390257))))

(declare-fun size!19346 (List!13066) Int)

(assert (=> d!94423 (= res!450712 (<= (size!19346 lt!314565) (size!19346 lt!314459)))))

(assert (=> d!94423 (= lt!314565 e!390255)))

(declare-fun c!77604 () Bool)

(assert (=> d!94423 (= c!77604 (is-Cons!13062 lt!314459))))

(assert (=> d!94423 (= (-!159 lt!314459 k!2843) lt!314565)))

(assert (= (and d!94423 c!77604) b!685186))

(assert (= (and d!94423 (not c!77604)) b!685190))

(assert (= (and b!685186 c!77605) b!685187))

(assert (= (and b!685186 (not c!77605)) b!685188))

(assert (= (or b!685187 b!685188) bm!34069))

(assert (= (and d!94423 res!450712) b!685189))

(declare-fun m!649489 () Bool)

(assert (=> bm!34069 m!649489))

(declare-fun m!649491 () Bool)

(assert (=> b!685189 m!649491))

(assert (=> b!685189 m!649357))

(declare-fun m!649493 () Bool)

(assert (=> b!685189 m!649493))

(declare-fun m!649495 () Bool)

(assert (=> d!94423 m!649495))

(declare-fun m!649497 () Bool)

(assert (=> d!94423 m!649497))

(assert (=> b!684798 d!94423))

(declare-fun d!94449 () Bool)

(assert (=> d!94449 (= (-!159 ($colon$colon!358 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!314572 () Unit!24097)

(declare-fun choose!16 ((_ BitVec 64) List!13066) Unit!24097)

(assert (=> d!94449 (= lt!314572 (choose!16 k!2843 acc!681))))

(assert (=> d!94449 (not (contains!3609 acc!681 k!2843))))

(assert (=> d!94449 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!314572)))

(declare-fun bs!20093 () Bool)

(assert (= bs!20093 d!94449))

(assert (=> bs!20093 m!649145))

(assert (=> bs!20093 m!649145))

(declare-fun m!649505 () Bool)

(assert (=> bs!20093 m!649505))

(declare-fun m!649507 () Bool)

(assert (=> bs!20093 m!649507))

(assert (=> bs!20093 m!649125))

(assert (=> b!684798 d!94449))

(declare-fun d!94453 () Bool)

(declare-fun res!450715 () Bool)

(declare-fun e!390260 () Bool)

(assert (=> d!94453 (=> res!450715 e!390260)))

(assert (=> d!94453 (= res!450715 (= (select (arr!18972 (array!39595 (store (arr!18972 a!3626) i!1382 k!2843) (size!19341 a!3626))) from!3004) k!2843))))

(assert (=> d!94453 (= (arrayContainsKey!0 (array!39595 (store (arr!18972 a!3626) i!1382 k!2843) (size!19341 a!3626)) k!2843 from!3004) e!390260)))

(declare-fun b!685193 () Bool)

(declare-fun e!390261 () Bool)

(assert (=> b!685193 (= e!390260 e!390261)))

(declare-fun res!450716 () Bool)

(assert (=> b!685193 (=> (not res!450716) (not e!390261))))

(assert (=> b!685193 (= res!450716 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19341 (array!39595 (store (arr!18972 a!3626) i!1382 k!2843) (size!19341 a!3626)))))))

(declare-fun b!685194 () Bool)

(assert (=> b!685194 (= e!390261 (arrayContainsKey!0 (array!39595 (store (arr!18972 a!3626) i!1382 k!2843) (size!19341 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94453 (not res!450715)) b!685193))

(assert (= (and b!685193 res!450716) b!685194))

(declare-fun m!649509 () Bool)

(assert (=> d!94453 m!649509))

(declare-fun m!649511 () Bool)

(assert (=> b!685194 m!649511))

(assert (=> b!684798 d!94453))

(declare-fun d!94455 () Bool)

(assert (=> d!94455 (subseq!194 acc!681 acc!681)))

(declare-fun lt!314575 () Unit!24097)

(declare-fun choose!36 (List!13066) Unit!24097)

(assert (=> d!94455 (= lt!314575 (choose!36 acc!681))))

(assert (=> d!94455 (= (lemmaListSubSeqRefl!0 acc!681) lt!314575)))

(declare-fun bs!20094 () Bool)

(assert (= bs!20094 d!94455))

(assert (=> bs!20094 m!649151))

(declare-fun m!649513 () Bool)

(assert (=> bs!20094 m!649513))

(assert (=> b!684798 d!94455))

(declare-fun d!94457 () Bool)

(assert (=> d!94457 (= (validKeyInArray!0 (select (arr!18972 a!3626) from!3004)) (and (not (= (select (arr!18972 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18972 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684798 d!94457))

(declare-fun d!94459 () Bool)

(assert (=> d!94459 (= ($colon$colon!358 acc!681 k!2843) (Cons!13062 k!2843 acc!681))))

(assert (=> b!684798 d!94459))

(declare-fun e!390264 () Bool)

(declare-fun b!685195 () Bool)

(assert (=> b!685195 (= e!390264 (contains!3609 acc!681 (select (arr!18972 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685196 () Bool)

(declare-fun e!390265 () Bool)

(declare-fun e!390262 () Bool)

(assert (=> b!685196 (= e!390265 e!390262)))

(declare-fun c!77606 () Bool)

(assert (=> b!685196 (= c!77606 (validKeyInArray!0 (select (arr!18972 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94461 () Bool)

(declare-fun res!450717 () Bool)

(declare-fun e!390263 () Bool)

(assert (=> d!94461 (=> res!450717 e!390263)))

(assert (=> d!94461 (= res!450717 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19341 a!3626)))))

(assert (=> d!94461 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390263)))

(declare-fun call!34073 () Bool)

(declare-fun bm!34070 () Bool)

(assert (=> bm!34070 (= call!34073 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77606 (Cons!13062 (select (arr!18972 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!685197 () Bool)

(assert (=> b!685197 (= e!390262 call!34073)))

(declare-fun b!685198 () Bool)

(assert (=> b!685198 (= e!390263 e!390265)))

(declare-fun res!450719 () Bool)

(assert (=> b!685198 (=> (not res!450719) (not e!390265))))

(assert (=> b!685198 (= res!450719 (not e!390264))))

(declare-fun res!450718 () Bool)

(assert (=> b!685198 (=> (not res!450718) (not e!390264))))

(assert (=> b!685198 (= res!450718 (validKeyInArray!0 (select (arr!18972 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685199 () Bool)

(assert (=> b!685199 (= e!390262 call!34073)))

(assert (= (and d!94461 (not res!450717)) b!685198))

(assert (= (and b!685198 res!450718) b!685195))

(assert (= (and b!685198 res!450719) b!685196))

(assert (= (and b!685196 c!77606) b!685197))

(assert (= (and b!685196 (not c!77606)) b!685199))

(assert (= (or b!685197 b!685199) bm!34070))

(assert (=> b!685195 m!649453))

(assert (=> b!685195 m!649453))

(declare-fun m!649515 () Bool)

(assert (=> b!685195 m!649515))

(assert (=> b!685196 m!649453))

(assert (=> b!685196 m!649453))

(declare-fun m!649517 () Bool)

(assert (=> b!685196 m!649517))

(assert (=> bm!34070 m!649453))

(declare-fun m!649519 () Bool)

(assert (=> bm!34070 m!649519))

(assert (=> b!685198 m!649453))

(assert (=> b!685198 m!649453))

(assert (=> b!685198 m!649517))

(assert (=> b!684798 d!94461))

(declare-fun d!94463 () Bool)

(declare-fun lt!314576 () Bool)

(assert (=> d!94463 (= lt!314576 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!291 acc!681)))))

(declare-fun e!390267 () Bool)

(assert (=> d!94463 (= lt!314576 e!390267)))

(declare-fun res!450721 () Bool)

(assert (=> d!94463 (=> (not res!450721) (not e!390267))))

(assert (=> d!94463 (= res!450721 (is-Cons!13062 acc!681))))

(assert (=> d!94463 (= (contains!3609 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314576)))

(declare-fun b!685200 () Bool)

(declare-fun e!390266 () Bool)

(assert (=> b!685200 (= e!390267 e!390266)))

(declare-fun res!450720 () Bool)

(assert (=> b!685200 (=> res!450720 e!390266)))

(assert (=> b!685200 (= res!450720 (= (h!14107 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685201 () Bool)

(assert (=> b!685201 (= e!390266 (contains!3609 (t!19323 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94463 res!450721) b!685200))

