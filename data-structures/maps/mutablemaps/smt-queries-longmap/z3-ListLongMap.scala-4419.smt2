; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61022 () Bool)

(assert start!61022)

(declare-fun b!684401 () Bool)

(declare-datatypes ((Unit!24087 0))(
  ( (Unit!24088) )
))
(declare-fun e!389722 () Unit!24087)

(declare-fun Unit!24089 () Unit!24087)

(assert (=> b!684401 (= e!389722 Unit!24089)))

(declare-fun b!684402 () Bool)

(declare-fun res!450121 () Bool)

(declare-fun e!389721 () Bool)

(assert (=> b!684402 (=> (not res!450121) (not e!389721))))

(declare-datatypes ((array!39587 0))(
  ( (array!39588 (arr!18970 (Array (_ BitVec 32) (_ BitVec 64))) (size!19336 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39587)

(declare-datatypes ((List!13064 0))(
  ( (Nil!13061) (Cons!13060 (h!14105 (_ BitVec 64)) (t!19318 List!13064)) )
))
(declare-fun acc!681 () List!13064)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39587 (_ BitVec 32) List!13064) Bool)

(assert (=> b!684402 (= res!450121 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684403 () Bool)

(declare-fun e!389725 () Bool)

(declare-fun lt!314344 () List!13064)

(declare-fun subseq!192 (List!13064 List!13064) Bool)

(assert (=> b!684403 (= e!389725 (subseq!192 acc!681 lt!314344))))

(declare-fun b!684404 () Bool)

(declare-fun res!450122 () Bool)

(assert (=> b!684404 (=> (not res!450122) (not e!389721))))

(declare-fun noDuplicate!854 (List!13064) Bool)

(assert (=> b!684404 (= res!450122 (noDuplicate!854 acc!681))))

(declare-fun b!684405 () Bool)

(declare-fun res!450119 () Bool)

(assert (=> b!684405 (=> (not res!450119) (not e!389721))))

(declare-fun e!389724 () Bool)

(assert (=> b!684405 (= res!450119 e!389724)))

(declare-fun res!450118 () Bool)

(assert (=> b!684405 (=> res!450118 e!389724)))

(declare-fun e!389719 () Bool)

(assert (=> b!684405 (= res!450118 e!389719)))

(declare-fun res!450113 () Bool)

(assert (=> b!684405 (=> (not res!450113) (not e!389719))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684405 (= res!450113 (bvsgt from!3004 i!1382))))

(declare-fun b!684406 () Bool)

(declare-fun res!450109 () Bool)

(assert (=> b!684406 (=> (not res!450109) (not e!389721))))

(assert (=> b!684406 (= res!450109 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13061))))

(declare-fun b!684407 () Bool)

(declare-fun res!450110 () Bool)

(assert (=> b!684407 (=> res!450110 e!389725)))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3607 (List!13064 (_ BitVec 64)) Bool)

(assert (=> b!684407 (= res!450110 (contains!3607 acc!681 k0!2843))))

(declare-fun b!684408 () Bool)

(declare-fun res!450111 () Bool)

(assert (=> b!684408 (=> res!450111 e!389725)))

(assert (=> b!684408 (= res!450111 (not (noDuplicate!854 lt!314344)))))

(declare-fun b!684409 () Bool)

(declare-fun res!450116 () Bool)

(assert (=> b!684409 (=> res!450116 e!389725)))

(declare-fun lt!314347 () Bool)

(assert (=> b!684409 (= res!450116 lt!314347)))

(declare-fun b!684410 () Bool)

(declare-fun res!450106 () Bool)

(assert (=> b!684410 (=> (not res!450106) (not e!389721))))

(assert (=> b!684410 (= res!450106 (not (contains!3607 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684411 () Bool)

(assert (=> b!684411 (= e!389719 (contains!3607 acc!681 k0!2843))))

(declare-fun b!684412 () Bool)

(declare-fun res!450115 () Bool)

(assert (=> b!684412 (=> (not res!450115) (not e!389721))))

(declare-fun arrayContainsKey!0 (array!39587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684412 (= res!450115 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684414 () Bool)

(assert (=> b!684414 (= e!389721 (not e!389725))))

(declare-fun res!450105 () Bool)

(assert (=> b!684414 (=> res!450105 e!389725)))

(assert (=> b!684414 (= res!450105 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!157 (List!13064 (_ BitVec 64)) List!13064)

(assert (=> b!684414 (= (-!157 lt!314344 k0!2843) acc!681)))

(declare-fun $colon$colon!356 (List!13064 (_ BitVec 64)) List!13064)

(assert (=> b!684414 (= lt!314344 ($colon$colon!356 acc!681 k0!2843))))

(declare-fun lt!314348 () Unit!24087)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13064) Unit!24087)

(assert (=> b!684414 (= lt!314348 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!684414 (subseq!192 acc!681 acc!681)))

(declare-fun lt!314349 () Unit!24087)

(declare-fun lemmaListSubSeqRefl!0 (List!13064) Unit!24087)

(assert (=> b!684414 (= lt!314349 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684414 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314345 () Unit!24087)

(assert (=> b!684414 (= lt!314345 e!389722)))

(declare-fun c!77515 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684414 (= c!77515 (validKeyInArray!0 (select (arr!18970 a!3626) from!3004)))))

(declare-fun lt!314342 () Unit!24087)

(declare-fun e!389720 () Unit!24087)

(assert (=> b!684414 (= lt!314342 e!389720)))

(declare-fun c!77516 () Bool)

(assert (=> b!684414 (= c!77516 lt!314347)))

(assert (=> b!684414 (= lt!314347 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684414 (arrayContainsKey!0 (array!39588 (store (arr!18970 a!3626) i!1382 k0!2843) (size!19336 a!3626)) k0!2843 from!3004)))

(declare-fun b!684415 () Bool)

(declare-fun e!389718 () Bool)

(assert (=> b!684415 (= e!389718 (not (contains!3607 acc!681 k0!2843)))))

(declare-fun b!684416 () Bool)

(declare-fun res!450108 () Bool)

(assert (=> b!684416 (=> (not res!450108) (not e!389721))))

(assert (=> b!684416 (= res!450108 (validKeyInArray!0 k0!2843))))

(declare-fun b!684417 () Bool)

(declare-fun Unit!24090 () Unit!24087)

(assert (=> b!684417 (= e!389720 Unit!24090)))

(declare-fun b!684418 () Bool)

(declare-fun res!450120 () Bool)

(assert (=> b!684418 (=> (not res!450120) (not e!389721))))

(assert (=> b!684418 (= res!450120 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19336 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684419 () Bool)

(declare-fun lt!314341 () Unit!24087)

(assert (=> b!684419 (= e!389722 lt!314341)))

(declare-fun lt!314346 () Unit!24087)

(assert (=> b!684419 (= lt!314346 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684419 (subseq!192 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39587 List!13064 List!13064 (_ BitVec 32)) Unit!24087)

(assert (=> b!684419 (= lt!314341 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!356 acc!681 (select (arr!18970 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684419 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684420 () Bool)

(declare-fun res!450112 () Bool)

(assert (=> b!684420 (=> (not res!450112) (not e!389721))))

(assert (=> b!684420 (= res!450112 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19336 a!3626))))))

(declare-fun res!450114 () Bool)

(assert (=> start!61022 (=> (not res!450114) (not e!389721))))

(assert (=> start!61022 (= res!450114 (and (bvslt (size!19336 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19336 a!3626))))))

(assert (=> start!61022 e!389721))

(assert (=> start!61022 true))

(declare-fun array_inv!14744 (array!39587) Bool)

(assert (=> start!61022 (array_inv!14744 a!3626)))

(declare-fun b!684413 () Bool)

(declare-fun Unit!24091 () Unit!24087)

(assert (=> b!684413 (= e!389720 Unit!24091)))

(declare-fun lt!314343 () Unit!24087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39587 (_ BitVec 64) (_ BitVec 32)) Unit!24087)

(assert (=> b!684413 (= lt!314343 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!684413 false))

(declare-fun b!684421 () Bool)

(declare-fun res!450107 () Bool)

(assert (=> b!684421 (=> (not res!450107) (not e!389721))))

(assert (=> b!684421 (= res!450107 (not (contains!3607 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684422 () Bool)

(assert (=> b!684422 (= e!389724 e!389718)))

(declare-fun res!450117 () Bool)

(assert (=> b!684422 (=> (not res!450117) (not e!389718))))

(assert (=> b!684422 (= res!450117 (bvsle from!3004 i!1382))))

(assert (= (and start!61022 res!450114) b!684404))

(assert (= (and b!684404 res!450122) b!684410))

(assert (= (and b!684410 res!450106) b!684421))

(assert (= (and b!684421 res!450107) b!684405))

(assert (= (and b!684405 res!450113) b!684411))

(assert (= (and b!684405 (not res!450118)) b!684422))

(assert (= (and b!684422 res!450117) b!684415))

(assert (= (and b!684405 res!450119) b!684406))

(assert (= (and b!684406 res!450109) b!684402))

(assert (= (and b!684402 res!450121) b!684420))

(assert (= (and b!684420 res!450112) b!684416))

(assert (= (and b!684416 res!450108) b!684412))

(assert (= (and b!684412 res!450115) b!684418))

(assert (= (and b!684418 res!450120) b!684414))

(assert (= (and b!684414 c!77516) b!684413))

(assert (= (and b!684414 (not c!77516)) b!684417))

(assert (= (and b!684414 c!77515) b!684419))

(assert (= (and b!684414 (not c!77515)) b!684401))

(assert (= (and b!684414 (not res!450105)) b!684408))

(assert (= (and b!684408 (not res!450111)) b!684409))

(assert (= (and b!684409 (not res!450116)) b!684407))

(assert (= (and b!684407 (not res!450110)) b!684403))

(declare-fun m!648785 () Bool)

(assert (=> b!684403 m!648785))

(declare-fun m!648787 () Bool)

(assert (=> b!684414 m!648787))

(declare-fun m!648789 () Bool)

(assert (=> b!684414 m!648789))

(declare-fun m!648791 () Bool)

(assert (=> b!684414 m!648791))

(declare-fun m!648793 () Bool)

(assert (=> b!684414 m!648793))

(declare-fun m!648795 () Bool)

(assert (=> b!684414 m!648795))

(declare-fun m!648797 () Bool)

(assert (=> b!684414 m!648797))

(declare-fun m!648799 () Bool)

(assert (=> b!684414 m!648799))

(declare-fun m!648801 () Bool)

(assert (=> b!684414 m!648801))

(assert (=> b!684414 m!648789))

(declare-fun m!648803 () Bool)

(assert (=> b!684414 m!648803))

(declare-fun m!648805 () Bool)

(assert (=> b!684414 m!648805))

(declare-fun m!648807 () Bool)

(assert (=> b!684414 m!648807))

(declare-fun m!648809 () Bool)

(assert (=> b!684415 m!648809))

(assert (=> b!684419 m!648787))

(assert (=> b!684419 m!648789))

(declare-fun m!648811 () Bool)

(assert (=> b!684419 m!648811))

(declare-fun m!648813 () Bool)

(assert (=> b!684419 m!648813))

(assert (=> b!684419 m!648789))

(assert (=> b!684419 m!648811))

(assert (=> b!684419 m!648797))

(assert (=> b!684419 m!648807))

(declare-fun m!648815 () Bool)

(assert (=> start!61022 m!648815))

(declare-fun m!648817 () Bool)

(assert (=> b!684421 m!648817))

(declare-fun m!648819 () Bool)

(assert (=> b!684406 m!648819))

(declare-fun m!648821 () Bool)

(assert (=> b!684413 m!648821))

(declare-fun m!648823 () Bool)

(assert (=> b!684402 m!648823))

(assert (=> b!684407 m!648809))

(declare-fun m!648825 () Bool)

(assert (=> b!684412 m!648825))

(declare-fun m!648827 () Bool)

(assert (=> b!684410 m!648827))

(declare-fun m!648829 () Bool)

(assert (=> b!684408 m!648829))

(declare-fun m!648831 () Bool)

(assert (=> b!684404 m!648831))

(assert (=> b!684411 m!648809))

(declare-fun m!648833 () Bool)

(assert (=> b!684416 m!648833))

(check-sat (not b!684410) (not b!684416) (not b!684406) (not b!684412) (not b!684414) (not b!684421) (not start!61022) (not b!684407) (not b!684404) (not b!684403) (not b!684408) (not b!684413) (not b!684411) (not b!684419) (not b!684415) (not b!684402))
(check-sat)
(get-model)

(declare-fun d!94191 () Bool)

(assert (=> d!94191 (= (array_inv!14744 a!3626) (bvsge (size!19336 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61022 d!94191))

(declare-fun d!94193 () Bool)

(assert (=> d!94193 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684416 d!94193))

(declare-fun b!684499 () Bool)

(declare-fun e!389760 () Bool)

(declare-fun e!389759 () Bool)

(assert (=> b!684499 (= e!389760 e!389759)))

(declare-fun c!77525 () Bool)

(assert (=> b!684499 (= c!77525 (validKeyInArray!0 (select (arr!18970 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94195 () Bool)

(declare-fun res!450183 () Bool)

(declare-fun e!389758 () Bool)

(assert (=> d!94195 (=> res!450183 e!389758)))

(assert (=> d!94195 (= res!450183 (bvsge #b00000000000000000000000000000000 (size!19336 a!3626)))))

(assert (=> d!94195 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13061) e!389758)))

(declare-fun b!684500 () Bool)

(declare-fun call!34028 () Bool)

(assert (=> b!684500 (= e!389759 call!34028)))

(declare-fun b!684501 () Bool)

(declare-fun e!389761 () Bool)

(assert (=> b!684501 (= e!389761 (contains!3607 Nil!13061 (select (arr!18970 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!684502 () Bool)

(assert (=> b!684502 (= e!389759 call!34028)))

(declare-fun b!684503 () Bool)

(assert (=> b!684503 (= e!389758 e!389760)))

(declare-fun res!450185 () Bool)

(assert (=> b!684503 (=> (not res!450185) (not e!389760))))

(assert (=> b!684503 (= res!450185 (not e!389761))))

(declare-fun res!450184 () Bool)

(assert (=> b!684503 (=> (not res!450184) (not e!389761))))

(assert (=> b!684503 (= res!450184 (validKeyInArray!0 (select (arr!18970 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34025 () Bool)

(assert (=> bm!34025 (= call!34028 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77525 (Cons!13060 (select (arr!18970 a!3626) #b00000000000000000000000000000000) Nil!13061) Nil!13061)))))

(assert (= (and d!94195 (not res!450183)) b!684503))

(assert (= (and b!684503 res!450184) b!684501))

(assert (= (and b!684503 res!450185) b!684499))

(assert (= (and b!684499 c!77525) b!684502))

(assert (= (and b!684499 (not c!77525)) b!684500))

(assert (= (or b!684502 b!684500) bm!34025))

(declare-fun m!648885 () Bool)

(assert (=> b!684499 m!648885))

(assert (=> b!684499 m!648885))

(declare-fun m!648887 () Bool)

(assert (=> b!684499 m!648887))

(assert (=> b!684501 m!648885))

(assert (=> b!684501 m!648885))

(declare-fun m!648889 () Bool)

(assert (=> b!684501 m!648889))

(assert (=> b!684503 m!648885))

(assert (=> b!684503 m!648885))

(assert (=> b!684503 m!648887))

(assert (=> bm!34025 m!648885))

(declare-fun m!648891 () Bool)

(assert (=> bm!34025 m!648891))

(assert (=> b!684406 d!94195))

(declare-fun d!94197 () Bool)

(declare-fun res!450190 () Bool)

(declare-fun e!389766 () Bool)

(assert (=> d!94197 (=> res!450190 e!389766)))

(get-info :version)

(assert (=> d!94197 (= res!450190 ((_ is Nil!13061) acc!681))))

(assert (=> d!94197 (= (noDuplicate!854 acc!681) e!389766)))

(declare-fun b!684508 () Bool)

(declare-fun e!389767 () Bool)

(assert (=> b!684508 (= e!389766 e!389767)))

(declare-fun res!450191 () Bool)

(assert (=> b!684508 (=> (not res!450191) (not e!389767))))

(assert (=> b!684508 (= res!450191 (not (contains!3607 (t!19318 acc!681) (h!14105 acc!681))))))

(declare-fun b!684509 () Bool)

(assert (=> b!684509 (= e!389767 (noDuplicate!854 (t!19318 acc!681)))))

(assert (= (and d!94197 (not res!450190)) b!684508))

(assert (= (and b!684508 res!450191) b!684509))

(declare-fun m!648893 () Bool)

(assert (=> b!684508 m!648893))

(declare-fun m!648895 () Bool)

(assert (=> b!684509 m!648895))

(assert (=> b!684404 d!94197))

(declare-fun d!94199 () Bool)

(declare-fun lt!314379 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!286 (List!13064) (InoxSet (_ BitVec 64)))

(assert (=> d!94199 (= lt!314379 (select (content!286 acc!681) k0!2843))))

(declare-fun e!389772 () Bool)

(assert (=> d!94199 (= lt!314379 e!389772)))

(declare-fun res!450197 () Bool)

(assert (=> d!94199 (=> (not res!450197) (not e!389772))))

(assert (=> d!94199 (= res!450197 ((_ is Cons!13060) acc!681))))

(assert (=> d!94199 (= (contains!3607 acc!681 k0!2843) lt!314379)))

(declare-fun b!684514 () Bool)

(declare-fun e!389773 () Bool)

(assert (=> b!684514 (= e!389772 e!389773)))

(declare-fun res!450196 () Bool)

(assert (=> b!684514 (=> res!450196 e!389773)))

(assert (=> b!684514 (= res!450196 (= (h!14105 acc!681) k0!2843))))

(declare-fun b!684515 () Bool)

(assert (=> b!684515 (= e!389773 (contains!3607 (t!19318 acc!681) k0!2843))))

(assert (= (and d!94199 res!450197) b!684514))

(assert (= (and b!684514 (not res!450196)) b!684515))

(declare-fun m!648897 () Bool)

(assert (=> d!94199 m!648897))

(declare-fun m!648899 () Bool)

(assert (=> d!94199 m!648899))

(declare-fun m!648901 () Bool)

(assert (=> b!684515 m!648901))

(assert (=> b!684415 d!94199))

(declare-fun d!94201 () Bool)

(declare-fun res!450198 () Bool)

(declare-fun e!389774 () Bool)

(assert (=> d!94201 (=> res!450198 e!389774)))

(assert (=> d!94201 (= res!450198 ((_ is Nil!13061) lt!314344))))

(assert (=> d!94201 (= (noDuplicate!854 lt!314344) e!389774)))

(declare-fun b!684516 () Bool)

(declare-fun e!389775 () Bool)

(assert (=> b!684516 (= e!389774 e!389775)))

(declare-fun res!450199 () Bool)

(assert (=> b!684516 (=> (not res!450199) (not e!389775))))

(assert (=> b!684516 (= res!450199 (not (contains!3607 (t!19318 lt!314344) (h!14105 lt!314344))))))

(declare-fun b!684517 () Bool)

(assert (=> b!684517 (= e!389775 (noDuplicate!854 (t!19318 lt!314344)))))

(assert (= (and d!94201 (not res!450198)) b!684516))

(assert (= (and b!684516 res!450199) b!684517))

(declare-fun m!648903 () Bool)

(assert (=> b!684516 m!648903))

(declare-fun m!648905 () Bool)

(assert (=> b!684517 m!648905))

(assert (=> b!684408 d!94201))

(declare-fun d!94203 () Bool)

(assert (=> d!94203 (= ($colon$colon!356 acc!681 (select (arr!18970 a!3626) from!3004)) (Cons!13060 (select (arr!18970 a!3626) from!3004) acc!681))))

(assert (=> b!684419 d!94203))

(declare-fun b!684528 () Bool)

(declare-fun e!389784 () Bool)

(assert (=> b!684528 (= e!389784 (subseq!192 (t!19318 acc!681) (t!19318 acc!681)))))

(declare-fun d!94205 () Bool)

(declare-fun res!450211 () Bool)

(declare-fun e!389787 () Bool)

(assert (=> d!94205 (=> res!450211 e!389787)))

(assert (=> d!94205 (= res!450211 ((_ is Nil!13061) acc!681))))

(assert (=> d!94205 (= (subseq!192 acc!681 acc!681) e!389787)))

(declare-fun b!684526 () Bool)

(declare-fun e!389785 () Bool)

(assert (=> b!684526 (= e!389787 e!389785)))

(declare-fun res!450209 () Bool)

(assert (=> b!684526 (=> (not res!450209) (not e!389785))))

(assert (=> b!684526 (= res!450209 ((_ is Cons!13060) acc!681))))

(declare-fun b!684529 () Bool)

(declare-fun e!389786 () Bool)

(assert (=> b!684529 (= e!389786 (subseq!192 acc!681 (t!19318 acc!681)))))

(declare-fun b!684527 () Bool)

(assert (=> b!684527 (= e!389785 e!389786)))

(declare-fun res!450210 () Bool)

(assert (=> b!684527 (=> res!450210 e!389786)))

(assert (=> b!684527 (= res!450210 e!389784)))

(declare-fun res!450208 () Bool)

(assert (=> b!684527 (=> (not res!450208) (not e!389784))))

(assert (=> b!684527 (= res!450208 (= (h!14105 acc!681) (h!14105 acc!681)))))

(assert (= (and d!94205 (not res!450211)) b!684526))

(assert (= (and b!684526 res!450209) b!684527))

(assert (= (and b!684527 res!450208) b!684528))

(assert (= (and b!684527 (not res!450210)) b!684529))

(declare-fun m!648907 () Bool)

(assert (=> b!684528 m!648907))

(declare-fun m!648909 () Bool)

(assert (=> b!684529 m!648909))

(assert (=> b!684419 d!94205))

(declare-fun d!94207 () Bool)

(assert (=> d!94207 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314382 () Unit!24087)

(declare-fun choose!80 (array!39587 List!13064 List!13064 (_ BitVec 32)) Unit!24087)

(assert (=> d!94207 (= lt!314382 (choose!80 a!3626 ($colon$colon!356 acc!681 (select (arr!18970 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94207 (bvslt (size!19336 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94207 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!356 acc!681 (select (arr!18970 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!314382)))

(declare-fun bs!20069 () Bool)

(assert (= bs!20069 d!94207))

(assert (=> bs!20069 m!648787))

(assert (=> bs!20069 m!648811))

(declare-fun m!648915 () Bool)

(assert (=> bs!20069 m!648915))

(assert (=> b!684419 d!94207))

(declare-fun d!94213 () Bool)

(assert (=> d!94213 (subseq!192 acc!681 acc!681)))

(declare-fun lt!314385 () Unit!24087)

(declare-fun choose!36 (List!13064) Unit!24087)

(assert (=> d!94213 (= lt!314385 (choose!36 acc!681))))

(assert (=> d!94213 (= (lemmaListSubSeqRefl!0 acc!681) lt!314385)))

(declare-fun bs!20070 () Bool)

(assert (= bs!20070 d!94213))

(assert (=> bs!20070 m!648807))

(declare-fun m!648917 () Bool)

(assert (=> bs!20070 m!648917))

(assert (=> b!684419 d!94213))

(declare-fun b!684536 () Bool)

(declare-fun e!389796 () Bool)

(declare-fun e!389795 () Bool)

(assert (=> b!684536 (= e!389796 e!389795)))

(declare-fun c!77526 () Bool)

(assert (=> b!684536 (= c!77526 (validKeyInArray!0 (select (arr!18970 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94215 () Bool)

(declare-fun res!450218 () Bool)

(declare-fun e!389794 () Bool)

(assert (=> d!94215 (=> res!450218 e!389794)))

(assert (=> d!94215 (= res!450218 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19336 a!3626)))))

(assert (=> d!94215 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!389794)))

(declare-fun b!684537 () Bool)

(declare-fun call!34029 () Bool)

(assert (=> b!684537 (= e!389795 call!34029)))

(declare-fun e!389797 () Bool)

(declare-fun b!684538 () Bool)

(assert (=> b!684538 (= e!389797 (contains!3607 acc!681 (select (arr!18970 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!684539 () Bool)

(assert (=> b!684539 (= e!389795 call!34029)))

(declare-fun b!684540 () Bool)

(assert (=> b!684540 (= e!389794 e!389796)))

(declare-fun res!450220 () Bool)

(assert (=> b!684540 (=> (not res!450220) (not e!389796))))

(assert (=> b!684540 (= res!450220 (not e!389797))))

(declare-fun res!450219 () Bool)

(assert (=> b!684540 (=> (not res!450219) (not e!389797))))

(assert (=> b!684540 (= res!450219 (validKeyInArray!0 (select (arr!18970 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34026 () Bool)

(assert (=> bm!34026 (= call!34029 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77526 (Cons!13060 (select (arr!18970 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(assert (= (and d!94215 (not res!450218)) b!684540))

(assert (= (and b!684540 res!450219) b!684538))

(assert (= (and b!684540 res!450220) b!684536))

(assert (= (and b!684536 c!77526) b!684539))

(assert (= (and b!684536 (not c!77526)) b!684537))

(assert (= (or b!684539 b!684537) bm!34026))

(declare-fun m!648919 () Bool)

(assert (=> b!684536 m!648919))

(assert (=> b!684536 m!648919))

(declare-fun m!648921 () Bool)

(assert (=> b!684536 m!648921))

(assert (=> b!684538 m!648919))

(assert (=> b!684538 m!648919))

(declare-fun m!648923 () Bool)

(assert (=> b!684538 m!648923))

(assert (=> b!684540 m!648919))

(assert (=> b!684540 m!648919))

(assert (=> b!684540 m!648921))

(assert (=> bm!34026 m!648919))

(declare-fun m!648925 () Bool)

(assert (=> bm!34026 m!648925))

(assert (=> b!684419 d!94215))

(assert (=> b!684407 d!94199))

(declare-fun d!94217 () Bool)

(declare-fun lt!314386 () Bool)

(assert (=> d!94217 (= lt!314386 (select (content!286 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!389806 () Bool)

(assert (=> d!94217 (= lt!314386 e!389806)))

(declare-fun res!450230 () Bool)

(assert (=> d!94217 (=> (not res!450230) (not e!389806))))

(assert (=> d!94217 (= res!450230 ((_ is Cons!13060) acc!681))))

(assert (=> d!94217 (= (contains!3607 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314386)))

(declare-fun b!684549 () Bool)

(declare-fun e!389807 () Bool)

(assert (=> b!684549 (= e!389806 e!389807)))

(declare-fun res!450229 () Bool)

(assert (=> b!684549 (=> res!450229 e!389807)))

(assert (=> b!684549 (= res!450229 (= (h!14105 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!684550 () Bool)

(assert (=> b!684550 (= e!389807 (contains!3607 (t!19318 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94217 res!450230) b!684549))

(assert (= (and b!684549 (not res!450229)) b!684550))

(assert (=> d!94217 m!648897))

(declare-fun m!648927 () Bool)

(assert (=> d!94217 m!648927))

(declare-fun m!648929 () Bool)

(assert (=> b!684550 m!648929))

(assert (=> b!684421 d!94217))

(assert (=> b!684411 d!94199))

(declare-fun d!94219 () Bool)

(declare-fun lt!314387 () Bool)

(assert (=> d!94219 (= lt!314387 (select (content!286 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!389808 () Bool)

(assert (=> d!94219 (= lt!314387 e!389808)))

(declare-fun res!450232 () Bool)

(assert (=> d!94219 (=> (not res!450232) (not e!389808))))

(assert (=> d!94219 (= res!450232 ((_ is Cons!13060) acc!681))))

(assert (=> d!94219 (= (contains!3607 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314387)))

(declare-fun b!684551 () Bool)

(declare-fun e!389809 () Bool)

(assert (=> b!684551 (= e!389808 e!389809)))

(declare-fun res!450231 () Bool)

(assert (=> b!684551 (=> res!450231 e!389809)))

(assert (=> b!684551 (= res!450231 (= (h!14105 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!684552 () Bool)

(assert (=> b!684552 (= e!389809 (contains!3607 (t!19318 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94219 res!450232) b!684551))

(assert (= (and b!684551 (not res!450231)) b!684552))

(assert (=> d!94219 m!648897))

(declare-fun m!648931 () Bool)

(assert (=> d!94219 m!648931))

(declare-fun m!648933 () Bool)

(assert (=> b!684552 m!648933))

(assert (=> b!684410 d!94219))

(declare-fun d!94221 () Bool)

(assert (=> d!94221 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314390 () Unit!24087)

(declare-fun choose!13 (array!39587 (_ BitVec 64) (_ BitVec 32)) Unit!24087)

(assert (=> d!94221 (= lt!314390 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94221 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94221 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!314390)))

(declare-fun bs!20071 () Bool)

(assert (= bs!20071 d!94221))

(assert (=> bs!20071 m!648825))

(declare-fun m!648939 () Bool)

(assert (=> bs!20071 m!648939))

(assert (=> b!684413 d!94221))

(declare-fun b!684559 () Bool)

(declare-fun e!389814 () Bool)

(assert (=> b!684559 (= e!389814 (subseq!192 (t!19318 acc!681) (t!19318 lt!314344)))))

(declare-fun d!94225 () Bool)

(declare-fun res!450240 () Bool)

(declare-fun e!389817 () Bool)

(assert (=> d!94225 (=> res!450240 e!389817)))

(assert (=> d!94225 (= res!450240 ((_ is Nil!13061) acc!681))))

(assert (=> d!94225 (= (subseq!192 acc!681 lt!314344) e!389817)))

(declare-fun b!684557 () Bool)

(declare-fun e!389815 () Bool)

(assert (=> b!684557 (= e!389817 e!389815)))

(declare-fun res!450238 () Bool)

(assert (=> b!684557 (=> (not res!450238) (not e!389815))))

(assert (=> b!684557 (= res!450238 ((_ is Cons!13060) lt!314344))))

(declare-fun b!684560 () Bool)

(declare-fun e!389816 () Bool)

(assert (=> b!684560 (= e!389816 (subseq!192 acc!681 (t!19318 lt!314344)))))

(declare-fun b!684558 () Bool)

(assert (=> b!684558 (= e!389815 e!389816)))

(declare-fun res!450239 () Bool)

(assert (=> b!684558 (=> res!450239 e!389816)))

(assert (=> b!684558 (= res!450239 e!389814)))

(declare-fun res!450237 () Bool)

(assert (=> b!684558 (=> (not res!450237) (not e!389814))))

(assert (=> b!684558 (= res!450237 (= (h!14105 acc!681) (h!14105 lt!314344)))))

(assert (= (and d!94225 (not res!450240)) b!684557))

(assert (= (and b!684557 res!450238) b!684558))

(assert (= (and b!684558 res!450237) b!684559))

(assert (= (and b!684558 (not res!450239)) b!684560))

(declare-fun m!648941 () Bool)

(assert (=> b!684559 m!648941))

(declare-fun m!648943 () Bool)

(assert (=> b!684560 m!648943))

(assert (=> b!684403 d!94225))

(declare-fun b!684597 () Bool)

(declare-fun e!389849 () Bool)

(declare-fun lt!314397 () List!13064)

(assert (=> b!684597 (= e!389849 (= (content!286 lt!314397) ((_ map and) (content!286 lt!314344) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun d!94227 () Bool)

(assert (=> d!94227 e!389849))

(declare-fun res!450261 () Bool)

(assert (=> d!94227 (=> (not res!450261) (not e!389849))))

(declare-fun size!19339 (List!13064) Int)

(assert (=> d!94227 (= res!450261 (<= (size!19339 lt!314397) (size!19339 lt!314344)))))

(declare-fun e!389850 () List!13064)

(assert (=> d!94227 (= lt!314397 e!389850)))

(declare-fun c!77536 () Bool)

(assert (=> d!94227 (= c!77536 ((_ is Cons!13060) lt!314344))))

(assert (=> d!94227 (= (-!157 lt!314344 k0!2843) lt!314397)))

(declare-fun b!684598 () Bool)

(declare-fun e!389848 () List!13064)

(declare-fun call!34034 () List!13064)

(assert (=> b!684598 (= e!389848 (Cons!13060 (h!14105 lt!314344) call!34034))))

(declare-fun b!684599 () Bool)

(assert (=> b!684599 (= e!389848 call!34034)))

(declare-fun b!684600 () Bool)

(assert (=> b!684600 (= e!389850 e!389848)))

(declare-fun c!77535 () Bool)

(assert (=> b!684600 (= c!77535 (= k0!2843 (h!14105 lt!314344)))))

(declare-fun bm!34031 () Bool)

(assert (=> bm!34031 (= call!34034 (-!157 (t!19318 lt!314344) k0!2843))))

(declare-fun b!684601 () Bool)

(assert (=> b!684601 (= e!389850 Nil!13061)))

(assert (= (and d!94227 c!77536) b!684600))

(assert (= (and d!94227 (not c!77536)) b!684601))

(assert (= (and b!684600 c!77535) b!684599))

(assert (= (and b!684600 (not c!77535)) b!684598))

(assert (= (or b!684599 b!684598) bm!34031))

(assert (= (and d!94227 res!450261) b!684597))

(declare-fun m!648959 () Bool)

(assert (=> b!684597 m!648959))

(declare-fun m!648961 () Bool)

(assert (=> b!684597 m!648961))

(declare-fun m!648963 () Bool)

(assert (=> b!684597 m!648963))

(declare-fun m!648965 () Bool)

(assert (=> d!94227 m!648965))

(declare-fun m!648967 () Bool)

(assert (=> d!94227 m!648967))

(declare-fun m!648969 () Bool)

(assert (=> bm!34031 m!648969))

(assert (=> b!684414 d!94227))

(assert (=> b!684414 d!94205))

(declare-fun d!94237 () Bool)

(declare-fun res!450269 () Bool)

(declare-fun e!389860 () Bool)

(assert (=> d!94237 (=> res!450269 e!389860)))

(assert (=> d!94237 (= res!450269 (= (select (arr!18970 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!94237 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389860)))

(declare-fun b!684613 () Bool)

(declare-fun e!389861 () Bool)

(assert (=> b!684613 (= e!389860 e!389861)))

(declare-fun res!450270 () Bool)

(assert (=> b!684613 (=> (not res!450270) (not e!389861))))

(assert (=> b!684613 (= res!450270 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19336 a!3626)))))

(declare-fun b!684614 () Bool)

(assert (=> b!684614 (= e!389861 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94237 (not res!450269)) b!684613))

(assert (= (and b!684613 res!450270) b!684614))

(assert (=> d!94237 m!648919))

(declare-fun m!648983 () Bool)

(assert (=> b!684614 m!648983))

(assert (=> b!684414 d!94237))

(declare-fun d!94243 () Bool)

(assert (=> d!94243 (= (-!157 ($colon$colon!356 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!314405 () Unit!24087)

(declare-fun choose!16 ((_ BitVec 64) List!13064) Unit!24087)

(assert (=> d!94243 (= lt!314405 (choose!16 k0!2843 acc!681))))

(assert (=> d!94243 (not (contains!3607 acc!681 k0!2843))))

(assert (=> d!94243 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!314405)))

(declare-fun bs!20073 () Bool)

(assert (= bs!20073 d!94243))

(assert (=> bs!20073 m!648801))

(assert (=> bs!20073 m!648801))

(declare-fun m!648993 () Bool)

(assert (=> bs!20073 m!648993))

(declare-fun m!648995 () Bool)

(assert (=> bs!20073 m!648995))

(assert (=> bs!20073 m!648809))

(assert (=> b!684414 d!94243))

(declare-fun d!94249 () Bool)

(declare-fun res!450279 () Bool)

(declare-fun e!389872 () Bool)

(assert (=> d!94249 (=> res!450279 e!389872)))

(assert (=> d!94249 (= res!450279 (= (select (arr!18970 (array!39588 (store (arr!18970 a!3626) i!1382 k0!2843) (size!19336 a!3626))) from!3004) k0!2843))))

(assert (=> d!94249 (= (arrayContainsKey!0 (array!39588 (store (arr!18970 a!3626) i!1382 k0!2843) (size!19336 a!3626)) k0!2843 from!3004) e!389872)))

(declare-fun b!684627 () Bool)

(declare-fun e!389873 () Bool)

(assert (=> b!684627 (= e!389872 e!389873)))

(declare-fun res!450280 () Bool)

(assert (=> b!684627 (=> (not res!450280) (not e!389873))))

(assert (=> b!684627 (= res!450280 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19336 (array!39588 (store (arr!18970 a!3626) i!1382 k0!2843) (size!19336 a!3626)))))))

(declare-fun b!684628 () Bool)

(assert (=> b!684628 (= e!389873 (arrayContainsKey!0 (array!39588 (store (arr!18970 a!3626) i!1382 k0!2843) (size!19336 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94249 (not res!450279)) b!684627))

(assert (= (and b!684627 res!450280) b!684628))

(declare-fun m!648999 () Bool)

(assert (=> d!94249 m!648999))

(declare-fun m!649001 () Bool)

(assert (=> b!684628 m!649001))

(assert (=> b!684414 d!94249))

(assert (=> b!684414 d!94213))

(declare-fun d!94253 () Bool)

(assert (=> d!94253 (= (validKeyInArray!0 (select (arr!18970 a!3626) from!3004)) (and (not (= (select (arr!18970 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18970 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684414 d!94253))

(declare-fun d!94255 () Bool)

(assert (=> d!94255 (= ($colon$colon!356 acc!681 k0!2843) (Cons!13060 k0!2843 acc!681))))

(assert (=> b!684414 d!94255))

(assert (=> b!684414 d!94215))

(declare-fun d!94257 () Bool)

(declare-fun res!450281 () Bool)

(declare-fun e!389874 () Bool)

(assert (=> d!94257 (=> res!450281 e!389874)))

(assert (=> d!94257 (= res!450281 (= (select (arr!18970 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94257 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!389874)))

(declare-fun b!684629 () Bool)

(declare-fun e!389875 () Bool)

(assert (=> b!684629 (= e!389874 e!389875)))

(declare-fun res!450282 () Bool)

(assert (=> b!684629 (=> (not res!450282) (not e!389875))))

(assert (=> b!684629 (= res!450282 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19336 a!3626)))))

(declare-fun b!684630 () Bool)

(assert (=> b!684630 (= e!389875 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94257 (not res!450281)) b!684629))

(assert (= (and b!684629 res!450282) b!684630))

(assert (=> d!94257 m!648885))

(declare-fun m!649003 () Bool)

(assert (=> b!684630 m!649003))

(assert (=> b!684412 d!94257))

(declare-fun b!684631 () Bool)

(declare-fun e!389878 () Bool)

(declare-fun e!389877 () Bool)

(assert (=> b!684631 (= e!389878 e!389877)))

(declare-fun c!77541 () Bool)

(assert (=> b!684631 (= c!77541 (validKeyInArray!0 (select (arr!18970 a!3626) from!3004)))))

(declare-fun d!94259 () Bool)

(declare-fun res!450283 () Bool)

(declare-fun e!389876 () Bool)

(assert (=> d!94259 (=> res!450283 e!389876)))

(assert (=> d!94259 (= res!450283 (bvsge from!3004 (size!19336 a!3626)))))

(assert (=> d!94259 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!389876)))

(declare-fun b!684632 () Bool)

(declare-fun call!34038 () Bool)

(assert (=> b!684632 (= e!389877 call!34038)))

(declare-fun e!389879 () Bool)

(declare-fun b!684633 () Bool)

(assert (=> b!684633 (= e!389879 (contains!3607 acc!681 (select (arr!18970 a!3626) from!3004)))))

(declare-fun b!684634 () Bool)

(assert (=> b!684634 (= e!389877 call!34038)))

(declare-fun b!684635 () Bool)

(assert (=> b!684635 (= e!389876 e!389878)))

(declare-fun res!450285 () Bool)

(assert (=> b!684635 (=> (not res!450285) (not e!389878))))

(assert (=> b!684635 (= res!450285 (not e!389879))))

(declare-fun res!450284 () Bool)

(assert (=> b!684635 (=> (not res!450284) (not e!389879))))

(assert (=> b!684635 (= res!450284 (validKeyInArray!0 (select (arr!18970 a!3626) from!3004)))))

(declare-fun bm!34035 () Bool)

(assert (=> bm!34035 (= call!34038 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77541 (Cons!13060 (select (arr!18970 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!94259 (not res!450283)) b!684635))

(assert (= (and b!684635 res!450284) b!684633))

(assert (= (and b!684635 res!450285) b!684631))

(assert (= (and b!684631 c!77541) b!684634))

(assert (= (and b!684631 (not c!77541)) b!684632))

(assert (= (or b!684634 b!684632) bm!34035))

(assert (=> b!684631 m!648789))

(assert (=> b!684631 m!648789))

(assert (=> b!684631 m!648803))

(assert (=> b!684633 m!648789))

(assert (=> b!684633 m!648789))

(declare-fun m!649005 () Bool)

(assert (=> b!684633 m!649005))

(assert (=> b!684635 m!648789))

(assert (=> b!684635 m!648789))

(assert (=> b!684635 m!648803))

(assert (=> bm!34035 m!648789))

(declare-fun m!649011 () Bool)

(assert (=> bm!34035 m!649011))

(assert (=> b!684402 d!94259))

(check-sat (not d!94243) (not b!684536) (not b!684628) (not b!684529) (not bm!34035) (not b!684517) (not d!94199) (not d!94207) (not b!684508) (not d!94221) (not b!684516) (not b!684631) (not b!684635) (not b!684515) (not b!684509) (not b!684630) (not b!684503) (not b!684597) (not b!684538) (not bm!34026) (not b!684560) (not b!684528) (not d!94227) (not bm!34025) (not b!684499) (not bm!34031) (not b!684614) (not b!684552) (not b!684550) (not d!94217) (not d!94213) (not b!684559) (not d!94219) (not b!684501) (not b!684633) (not b!684540))
(check-sat)
