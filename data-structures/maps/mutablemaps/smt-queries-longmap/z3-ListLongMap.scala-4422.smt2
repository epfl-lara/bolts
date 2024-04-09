; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61196 () Bool)

(assert start!61196)

(declare-fun b!685538 () Bool)

(declare-fun res!451006 () Bool)

(declare-fun e!390395 () Bool)

(assert (=> b!685538 (=> (not res!451006) (not e!390395))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39611 0))(
  ( (array!39612 (arr!18979 (Array (_ BitVec 32) (_ BitVec 64))) (size!19351 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39611)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!685538 (= res!451006 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19351 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685539 () Bool)

(declare-fun res!451016 () Bool)

(assert (=> b!685539 (=> (not res!451016) (not e!390395))))

(declare-datatypes ((List!13073 0))(
  ( (Nil!13070) (Cons!13069 (h!14114 (_ BitVec 64)) (t!19333 List!13073)) )
))
(declare-fun acc!681 () List!13073)

(declare-fun noDuplicate!863 (List!13073) Bool)

(assert (=> b!685539 (= res!451016 (noDuplicate!863 acc!681))))

(declare-fun b!685540 () Bool)

(declare-fun res!451014 () Bool)

(assert (=> b!685540 (=> (not res!451014) (not e!390395))))

(declare-fun contains!3616 (List!13073 (_ BitVec 64)) Bool)

(assert (=> b!685540 (= res!451014 (not (contains!3616 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685541 () Bool)

(declare-fun res!451011 () Bool)

(assert (=> b!685541 (=> (not res!451011) (not e!390395))))

(declare-fun arrayNoDuplicates!0 (array!39611 (_ BitVec 32) List!13073) Bool)

(assert (=> b!685541 (= res!451011 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685542 () Bool)

(declare-fun res!451018 () Bool)

(declare-fun e!390389 () Bool)

(assert (=> b!685542 (=> res!451018 e!390389)))

(declare-fun lt!314717 () List!13073)

(assert (=> b!685542 (= res!451018 (not (noDuplicate!863 lt!314717)))))

(declare-fun b!685543 () Bool)

(declare-fun res!451022 () Bool)

(assert (=> b!685543 (=> (not res!451022) (not e!390395))))

(assert (=> b!685543 (= res!451022 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13070))))

(declare-fun b!685544 () Bool)

(declare-datatypes ((Unit!24132 0))(
  ( (Unit!24133) )
))
(declare-fun e!390392 () Unit!24132)

(declare-fun Unit!24134 () Unit!24132)

(assert (=> b!685544 (= e!390392 Unit!24134)))

(declare-fun lt!314719 () Unit!24132)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39611 (_ BitVec 64) (_ BitVec 32)) Unit!24132)

(assert (=> b!685544 (= lt!314719 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!685544 false))

(declare-fun res!451020 () Bool)

(assert (=> start!61196 (=> (not res!451020) (not e!390395))))

(assert (=> start!61196 (= res!451020 (and (bvslt (size!19351 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19351 a!3626))))))

(assert (=> start!61196 e!390395))

(assert (=> start!61196 true))

(declare-fun array_inv!14753 (array!39611) Bool)

(assert (=> start!61196 (array_inv!14753 a!3626)))

(declare-fun b!685545 () Bool)

(declare-fun e!390390 () Unit!24132)

(declare-fun lt!314722 () Unit!24132)

(assert (=> b!685545 (= e!390390 lt!314722)))

(declare-fun lt!314723 () Unit!24132)

(declare-fun lemmaListSubSeqRefl!0 (List!13073) Unit!24132)

(assert (=> b!685545 (= lt!314723 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!201 (List!13073 List!13073) Bool)

(assert (=> b!685545 (subseq!201 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39611 List!13073 List!13073 (_ BitVec 32)) Unit!24132)

(declare-fun $colon$colon!365 (List!13073 (_ BitVec 64)) List!13073)

(assert (=> b!685545 (= lt!314722 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!365 acc!681 (select (arr!18979 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685545 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685546 () Bool)

(declare-fun e!390396 () Bool)

(declare-fun e!390397 () Bool)

(assert (=> b!685546 (= e!390396 e!390397)))

(declare-fun res!451013 () Bool)

(assert (=> b!685546 (=> (not res!451013) (not e!390397))))

(assert (=> b!685546 (= res!451013 (bvsle from!3004 i!1382))))

(declare-fun b!685547 () Bool)

(declare-fun res!451002 () Bool)

(assert (=> b!685547 (=> (not res!451002) (not e!390395))))

(assert (=> b!685547 (= res!451002 (not (contains!3616 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685548 () Bool)

(declare-fun res!451003 () Bool)

(assert (=> b!685548 (=> res!451003 e!390389)))

(declare-fun lt!314720 () Bool)

(assert (=> b!685548 (= res!451003 lt!314720)))

(declare-fun b!685549 () Bool)

(declare-fun res!451010 () Bool)

(assert (=> b!685549 (=> (not res!451010) (not e!390395))))

(assert (=> b!685549 (= res!451010 e!390396)))

(declare-fun res!451004 () Bool)

(assert (=> b!685549 (=> res!451004 e!390396)))

(declare-fun e!390391 () Bool)

(assert (=> b!685549 (= res!451004 e!390391)))

(declare-fun res!451017 () Bool)

(assert (=> b!685549 (=> (not res!451017) (not e!390391))))

(assert (=> b!685549 (= res!451017 (bvsgt from!3004 i!1382))))

(declare-fun b!685550 () Bool)

(assert (=> b!685550 (= e!390397 (not (contains!3616 acc!681 k0!2843)))))

(declare-fun b!685551 () Bool)

(declare-fun res!451005 () Bool)

(assert (=> b!685551 (=> res!451005 e!390389)))

(assert (=> b!685551 (= res!451005 (not (subseq!201 acc!681 lt!314717)))))

(declare-fun b!685552 () Bool)

(assert (=> b!685552 (= e!390391 (contains!3616 acc!681 k0!2843))))

(declare-fun b!685553 () Bool)

(declare-fun e!390393 () Bool)

(assert (=> b!685553 (= e!390393 (not (contains!3616 lt!314717 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685554 () Bool)

(declare-fun res!451015 () Bool)

(assert (=> b!685554 (=> (not res!451015) (not e!390395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685554 (= res!451015 (validKeyInArray!0 k0!2843))))

(declare-fun b!685555 () Bool)

(declare-fun res!451007 () Bool)

(assert (=> b!685555 (=> res!451007 e!390389)))

(assert (=> b!685555 (= res!451007 (contains!3616 acc!681 k0!2843))))

(declare-fun b!685556 () Bool)

(declare-fun res!451009 () Bool)

(assert (=> b!685556 (=> (not res!451009) (not e!390395))))

(declare-fun arrayContainsKey!0 (array!39611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685556 (= res!451009 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685557 () Bool)

(assert (=> b!685557 (= e!390395 (not e!390389))))

(declare-fun res!451021 () Bool)

(assert (=> b!685557 (=> res!451021 e!390389)))

(assert (=> b!685557 (= res!451021 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!166 (List!13073 (_ BitVec 64)) List!13073)

(assert (=> b!685557 (= (-!166 lt!314717 k0!2843) acc!681)))

(assert (=> b!685557 (= lt!314717 ($colon$colon!365 acc!681 k0!2843))))

(declare-fun lt!314724 () Unit!24132)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13073) Unit!24132)

(assert (=> b!685557 (= lt!314724 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!685557 (subseq!201 acc!681 acc!681)))

(declare-fun lt!314718 () Unit!24132)

(assert (=> b!685557 (= lt!314718 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685557 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314716 () Unit!24132)

(assert (=> b!685557 (= lt!314716 e!390390)))

(declare-fun c!77636 () Bool)

(assert (=> b!685557 (= c!77636 (validKeyInArray!0 (select (arr!18979 a!3626) from!3004)))))

(declare-fun lt!314721 () Unit!24132)

(assert (=> b!685557 (= lt!314721 e!390392)))

(declare-fun c!77635 () Bool)

(assert (=> b!685557 (= c!77635 lt!314720)))

(assert (=> b!685557 (= lt!314720 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685557 (arrayContainsKey!0 (array!39612 (store (arr!18979 a!3626) i!1382 k0!2843) (size!19351 a!3626)) k0!2843 from!3004)))

(declare-fun b!685558 () Bool)

(declare-fun Unit!24135 () Unit!24132)

(assert (=> b!685558 (= e!390392 Unit!24135)))

(declare-fun b!685559 () Bool)

(declare-fun Unit!24136 () Unit!24132)

(assert (=> b!685559 (= e!390390 Unit!24136)))

(declare-fun b!685560 () Bool)

(declare-fun res!451019 () Bool)

(assert (=> b!685560 (=> res!451019 e!390389)))

(assert (=> b!685560 (= res!451019 (not (contains!3616 lt!314717 k0!2843)))))

(declare-fun b!685561 () Bool)

(declare-fun res!451012 () Bool)

(assert (=> b!685561 (=> (not res!451012) (not e!390395))))

(assert (=> b!685561 (= res!451012 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19351 a!3626))))))

(declare-fun b!685562 () Bool)

(assert (=> b!685562 (= e!390389 e!390393)))

(declare-fun res!451008 () Bool)

(assert (=> b!685562 (=> (not res!451008) (not e!390393))))

(assert (=> b!685562 (= res!451008 (not (contains!3616 lt!314717 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61196 res!451020) b!685539))

(assert (= (and b!685539 res!451016) b!685547))

(assert (= (and b!685547 res!451002) b!685540))

(assert (= (and b!685540 res!451014) b!685549))

(assert (= (and b!685549 res!451017) b!685552))

(assert (= (and b!685549 (not res!451004)) b!685546))

(assert (= (and b!685546 res!451013) b!685550))

(assert (= (and b!685549 res!451010) b!685543))

(assert (= (and b!685543 res!451022) b!685541))

(assert (= (and b!685541 res!451011) b!685561))

(assert (= (and b!685561 res!451012) b!685554))

(assert (= (and b!685554 res!451015) b!685556))

(assert (= (and b!685556 res!451009) b!685538))

(assert (= (and b!685538 res!451006) b!685557))

(assert (= (and b!685557 c!77635) b!685544))

(assert (= (and b!685557 (not c!77635)) b!685558))

(assert (= (and b!685557 c!77636) b!685545))

(assert (= (and b!685557 (not c!77636)) b!685559))

(assert (= (and b!685557 (not res!451021)) b!685542))

(assert (= (and b!685542 (not res!451018)) b!685548))

(assert (= (and b!685548 (not res!451003)) b!685555))

(assert (= (and b!685555 (not res!451007)) b!685551))

(assert (= (and b!685551 (not res!451005)) b!685560))

(assert (= (and b!685560 (not res!451019)) b!685562))

(assert (= (and b!685562 res!451008) b!685553))

(declare-fun m!649745 () Bool)

(assert (=> b!685552 m!649745))

(declare-fun m!649747 () Bool)

(assert (=> b!685554 m!649747))

(assert (=> b!685555 m!649745))

(declare-fun m!649749 () Bool)

(assert (=> b!685551 m!649749))

(declare-fun m!649751 () Bool)

(assert (=> b!685545 m!649751))

(declare-fun m!649753 () Bool)

(assert (=> b!685545 m!649753))

(declare-fun m!649755 () Bool)

(assert (=> b!685545 m!649755))

(declare-fun m!649757 () Bool)

(assert (=> b!685545 m!649757))

(assert (=> b!685545 m!649753))

(assert (=> b!685545 m!649755))

(declare-fun m!649759 () Bool)

(assert (=> b!685545 m!649759))

(declare-fun m!649761 () Bool)

(assert (=> b!685545 m!649761))

(declare-fun m!649763 () Bool)

(assert (=> b!685547 m!649763))

(declare-fun m!649765 () Bool)

(assert (=> start!61196 m!649765))

(declare-fun m!649767 () Bool)

(assert (=> b!685540 m!649767))

(declare-fun m!649769 () Bool)

(assert (=> b!685556 m!649769))

(assert (=> b!685550 m!649745))

(declare-fun m!649771 () Bool)

(assert (=> b!685560 m!649771))

(declare-fun m!649773 () Bool)

(assert (=> b!685562 m!649773))

(declare-fun m!649775 () Bool)

(assert (=> b!685544 m!649775))

(declare-fun m!649777 () Bool)

(assert (=> b!685541 m!649777))

(declare-fun m!649779 () Bool)

(assert (=> b!685553 m!649779))

(declare-fun m!649781 () Bool)

(assert (=> b!685543 m!649781))

(declare-fun m!649783 () Bool)

(assert (=> b!685542 m!649783))

(assert (=> b!685557 m!649751))

(assert (=> b!685557 m!649753))

(declare-fun m!649785 () Bool)

(assert (=> b!685557 m!649785))

(declare-fun m!649787 () Bool)

(assert (=> b!685557 m!649787))

(declare-fun m!649789 () Bool)

(assert (=> b!685557 m!649789))

(assert (=> b!685557 m!649759))

(declare-fun m!649791 () Bool)

(assert (=> b!685557 m!649791))

(declare-fun m!649793 () Bool)

(assert (=> b!685557 m!649793))

(assert (=> b!685557 m!649753))

(declare-fun m!649795 () Bool)

(assert (=> b!685557 m!649795))

(declare-fun m!649797 () Bool)

(assert (=> b!685557 m!649797))

(assert (=> b!685557 m!649761))

(declare-fun m!649799 () Bool)

(assert (=> b!685539 m!649799))

(check-sat (not b!685554) (not b!685562) (not b!685545) (not b!685542) (not b!685553) (not b!685547) (not b!685540) (not b!685550) (not b!685543) (not b!685556) (not b!685552) (not b!685544) (not b!685539) (not b!685555) (not start!61196) (not b!685560) (not b!685541) (not b!685551) (not b!685557))
(check-sat)
(get-model)

(declare-fun d!94479 () Bool)

(declare-fun e!390432 () Bool)

(assert (=> d!94479 e!390432))

(declare-fun res!451088 () Bool)

(assert (=> d!94479 (=> (not res!451088) (not e!390432))))

(declare-fun lt!314754 () List!13073)

(declare-fun size!19353 (List!13073) Int)

(assert (=> d!94479 (= res!451088 (<= (size!19353 lt!314754) (size!19353 lt!314717)))))

(declare-fun e!390433 () List!13073)

(assert (=> d!94479 (= lt!314754 e!390433)))

(declare-fun c!77648 () Bool)

(get-info :version)

(assert (=> d!94479 (= c!77648 ((_ is Cons!13069) lt!314717))))

(assert (=> d!94479 (= (-!166 lt!314717 k0!2843) lt!314754)))

(declare-fun b!685648 () Bool)

(declare-fun e!390434 () List!13073)

(assert (=> b!685648 (= e!390433 e!390434)))

(declare-fun c!77647 () Bool)

(assert (=> b!685648 (= c!77647 (= k0!2843 (h!14114 lt!314717)))))

(declare-fun b!685649 () Bool)

(declare-fun call!34076 () List!13073)

(assert (=> b!685649 (= e!390434 call!34076)))

(declare-fun bm!34073 () Bool)

(assert (=> bm!34073 (= call!34076 (-!166 (t!19333 lt!314717) k0!2843))))

(declare-fun b!685650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!292 (List!13073) (InoxSet (_ BitVec 64)))

(assert (=> b!685650 (= e!390432 (= (content!292 lt!314754) ((_ map and) (content!292 lt!314717) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun b!685651 () Bool)

(assert (=> b!685651 (= e!390434 (Cons!13069 (h!14114 lt!314717) call!34076))))

(declare-fun b!685652 () Bool)

(assert (=> b!685652 (= e!390433 Nil!13070)))

(assert (= (and d!94479 c!77648) b!685648))

(assert (= (and d!94479 (not c!77648)) b!685652))

(assert (= (and b!685648 c!77647) b!685649))

(assert (= (and b!685648 (not c!77647)) b!685651))

(assert (= (or b!685649 b!685651) bm!34073))

(assert (= (and d!94479 res!451088) b!685650))

(declare-fun m!649857 () Bool)

(assert (=> d!94479 m!649857))

(declare-fun m!649859 () Bool)

(assert (=> d!94479 m!649859))

(declare-fun m!649861 () Bool)

(assert (=> bm!34073 m!649861))

(declare-fun m!649863 () Bool)

(assert (=> b!685650 m!649863))

(declare-fun m!649865 () Bool)

(assert (=> b!685650 m!649865))

(declare-fun m!649867 () Bool)

(assert (=> b!685650 m!649867))

(assert (=> b!685557 d!94479))

(declare-fun b!685664 () Bool)

(declare-fun e!390445 () Bool)

(assert (=> b!685664 (= e!390445 (subseq!201 acc!681 (t!19333 acc!681)))))

(declare-fun d!94481 () Bool)

(declare-fun res!451097 () Bool)

(declare-fun e!390444 () Bool)

(assert (=> d!94481 (=> res!451097 e!390444)))

(assert (=> d!94481 (= res!451097 ((_ is Nil!13070) acc!681))))

(assert (=> d!94481 (= (subseq!201 acc!681 acc!681) e!390444)))

(declare-fun b!685662 () Bool)

(declare-fun e!390446 () Bool)

(assert (=> b!685662 (= e!390446 e!390445)))

(declare-fun res!451098 () Bool)

(assert (=> b!685662 (=> res!451098 e!390445)))

(declare-fun e!390443 () Bool)

(assert (=> b!685662 (= res!451098 e!390443)))

(declare-fun res!451099 () Bool)

(assert (=> b!685662 (=> (not res!451099) (not e!390443))))

(assert (=> b!685662 (= res!451099 (= (h!14114 acc!681) (h!14114 acc!681)))))

(declare-fun b!685663 () Bool)

(assert (=> b!685663 (= e!390443 (subseq!201 (t!19333 acc!681) (t!19333 acc!681)))))

(declare-fun b!685661 () Bool)

(assert (=> b!685661 (= e!390444 e!390446)))

(declare-fun res!451100 () Bool)

(assert (=> b!685661 (=> (not res!451100) (not e!390446))))

(assert (=> b!685661 (= res!451100 ((_ is Cons!13069) acc!681))))

(assert (= (and d!94481 (not res!451097)) b!685661))

(assert (= (and b!685661 res!451100) b!685662))

(assert (= (and b!685662 res!451099) b!685663))

(assert (= (and b!685662 (not res!451098)) b!685664))

(declare-fun m!649869 () Bool)

(assert (=> b!685664 m!649869))

(declare-fun m!649871 () Bool)

(assert (=> b!685663 m!649871))

(assert (=> b!685557 d!94481))

(declare-fun d!94483 () Bool)

(declare-fun res!451105 () Bool)

(declare-fun e!390451 () Bool)

(assert (=> d!94483 (=> res!451105 e!390451)))

(assert (=> d!94483 (= res!451105 (= (select (arr!18979 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!94483 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!390451)))

(declare-fun b!685669 () Bool)

(declare-fun e!390452 () Bool)

(assert (=> b!685669 (= e!390451 e!390452)))

(declare-fun res!451106 () Bool)

(assert (=> b!685669 (=> (not res!451106) (not e!390452))))

(assert (=> b!685669 (= res!451106 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19351 a!3626)))))

(declare-fun b!685670 () Bool)

(assert (=> b!685670 (= e!390452 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94483 (not res!451105)) b!685669))

(assert (= (and b!685669 res!451106) b!685670))

(declare-fun m!649873 () Bool)

(assert (=> d!94483 m!649873))

(declare-fun m!649875 () Bool)

(assert (=> b!685670 m!649875))

(assert (=> b!685557 d!94483))

(declare-fun d!94485 () Bool)

(assert (=> d!94485 (= (-!166 ($colon$colon!365 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!314757 () Unit!24132)

(declare-fun choose!16 ((_ BitVec 64) List!13073) Unit!24132)

(assert (=> d!94485 (= lt!314757 (choose!16 k0!2843 acc!681))))

(assert (=> d!94485 (not (contains!3616 acc!681 k0!2843))))

(assert (=> d!94485 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!314757)))

(declare-fun bs!20102 () Bool)

(assert (= bs!20102 d!94485))

(assert (=> bs!20102 m!649793))

(assert (=> bs!20102 m!649793))

(declare-fun m!649877 () Bool)

(assert (=> bs!20102 m!649877))

(declare-fun m!649879 () Bool)

(assert (=> bs!20102 m!649879))

(assert (=> bs!20102 m!649745))

(assert (=> b!685557 d!94485))

(declare-fun d!94487 () Bool)

(declare-fun res!451107 () Bool)

(declare-fun e!390453 () Bool)

(assert (=> d!94487 (=> res!451107 e!390453)))

(assert (=> d!94487 (= res!451107 (= (select (arr!18979 (array!39612 (store (arr!18979 a!3626) i!1382 k0!2843) (size!19351 a!3626))) from!3004) k0!2843))))

(assert (=> d!94487 (= (arrayContainsKey!0 (array!39612 (store (arr!18979 a!3626) i!1382 k0!2843) (size!19351 a!3626)) k0!2843 from!3004) e!390453)))

(declare-fun b!685671 () Bool)

(declare-fun e!390454 () Bool)

(assert (=> b!685671 (= e!390453 e!390454)))

(declare-fun res!451108 () Bool)

(assert (=> b!685671 (=> (not res!451108) (not e!390454))))

(assert (=> b!685671 (= res!451108 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19351 (array!39612 (store (arr!18979 a!3626) i!1382 k0!2843) (size!19351 a!3626)))))))

(declare-fun b!685672 () Bool)

(assert (=> b!685672 (= e!390454 (arrayContainsKey!0 (array!39612 (store (arr!18979 a!3626) i!1382 k0!2843) (size!19351 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94487 (not res!451107)) b!685671))

(assert (= (and b!685671 res!451108) b!685672))

(declare-fun m!649881 () Bool)

(assert (=> d!94487 m!649881))

(declare-fun m!649883 () Bool)

(assert (=> b!685672 m!649883))

(assert (=> b!685557 d!94487))

(declare-fun d!94489 () Bool)

(assert (=> d!94489 (subseq!201 acc!681 acc!681)))

(declare-fun lt!314760 () Unit!24132)

(declare-fun choose!36 (List!13073) Unit!24132)

(assert (=> d!94489 (= lt!314760 (choose!36 acc!681))))

(assert (=> d!94489 (= (lemmaListSubSeqRefl!0 acc!681) lt!314760)))

(declare-fun bs!20103 () Bool)

(assert (= bs!20103 d!94489))

(assert (=> bs!20103 m!649761))

(declare-fun m!649885 () Bool)

(assert (=> bs!20103 m!649885))

(assert (=> b!685557 d!94489))

(declare-fun d!94491 () Bool)

(assert (=> d!94491 (= (validKeyInArray!0 (select (arr!18979 a!3626) from!3004)) (and (not (= (select (arr!18979 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18979 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!685557 d!94491))

(declare-fun d!94493 () Bool)

(assert (=> d!94493 (= ($colon$colon!365 acc!681 k0!2843) (Cons!13069 k0!2843 acc!681))))

(assert (=> b!685557 d!94493))

(declare-fun b!685687 () Bool)

(declare-fun e!390469 () Bool)

(declare-fun e!390470 () Bool)

(assert (=> b!685687 (= e!390469 e!390470)))

(declare-fun res!451119 () Bool)

(assert (=> b!685687 (=> (not res!451119) (not e!390470))))

(declare-fun e!390467 () Bool)

(assert (=> b!685687 (= res!451119 (not e!390467))))

(declare-fun res!451120 () Bool)

(assert (=> b!685687 (=> (not res!451120) (not e!390467))))

(assert (=> b!685687 (= res!451120 (validKeyInArray!0 (select (arr!18979 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94495 () Bool)

(declare-fun res!451121 () Bool)

(assert (=> d!94495 (=> res!451121 e!390469)))

(assert (=> d!94495 (= res!451121 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19351 a!3626)))))

(assert (=> d!94495 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390469)))

(declare-fun b!685688 () Bool)

(assert (=> b!685688 (= e!390467 (contains!3616 acc!681 (select (arr!18979 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685689 () Bool)

(declare-fun e!390468 () Bool)

(declare-fun call!34079 () Bool)

(assert (=> b!685689 (= e!390468 call!34079)))

(declare-fun b!685690 () Bool)

(assert (=> b!685690 (= e!390468 call!34079)))

(declare-fun c!77651 () Bool)

(declare-fun bm!34076 () Bool)

(assert (=> bm!34076 (= call!34079 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77651 (Cons!13069 (select (arr!18979 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!685691 () Bool)

(assert (=> b!685691 (= e!390470 e!390468)))

(assert (=> b!685691 (= c!77651 (validKeyInArray!0 (select (arr!18979 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94495 (not res!451121)) b!685687))

(assert (= (and b!685687 res!451120) b!685688))

(assert (= (and b!685687 res!451119) b!685691))

(assert (= (and b!685691 c!77651) b!685689))

(assert (= (and b!685691 (not c!77651)) b!685690))

(assert (= (or b!685689 b!685690) bm!34076))

(assert (=> b!685687 m!649873))

(assert (=> b!685687 m!649873))

(declare-fun m!649891 () Bool)

(assert (=> b!685687 m!649891))

(assert (=> b!685688 m!649873))

(assert (=> b!685688 m!649873))

(declare-fun m!649895 () Bool)

(assert (=> b!685688 m!649895))

(assert (=> bm!34076 m!649873))

(declare-fun m!649897 () Bool)

(assert (=> bm!34076 m!649897))

(assert (=> b!685691 m!649873))

(assert (=> b!685691 m!649873))

(assert (=> b!685691 m!649891))

(assert (=> b!685557 d!94495))

(declare-fun d!94501 () Bool)

(declare-fun res!451126 () Bool)

(declare-fun e!390475 () Bool)

(assert (=> d!94501 (=> res!451126 e!390475)))

(assert (=> d!94501 (= res!451126 (= (select (arr!18979 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94501 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!390475)))

(declare-fun b!685696 () Bool)

(declare-fun e!390476 () Bool)

(assert (=> b!685696 (= e!390475 e!390476)))

(declare-fun res!451127 () Bool)

(assert (=> b!685696 (=> (not res!451127) (not e!390476))))

(assert (=> b!685696 (= res!451127 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19351 a!3626)))))

(declare-fun b!685697 () Bool)

(assert (=> b!685697 (= e!390476 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94501 (not res!451126)) b!685696))

(assert (= (and b!685696 res!451127) b!685697))

(declare-fun m!649905 () Bool)

(assert (=> d!94501 m!649905))

(declare-fun m!649907 () Bool)

(assert (=> b!685697 m!649907))

(assert (=> b!685556 d!94501))

(declare-fun d!94505 () Bool)

(assert (=> d!94505 (= (array_inv!14753 a!3626) (bvsge (size!19351 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61196 d!94505))

(declare-fun d!94507 () Bool)

(assert (=> d!94507 (= ($colon$colon!365 acc!681 (select (arr!18979 a!3626) from!3004)) (Cons!13069 (select (arr!18979 a!3626) from!3004) acc!681))))

(assert (=> b!685545 d!94507))

(assert (=> b!685545 d!94481))

(declare-fun d!94509 () Bool)

(assert (=> d!94509 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314768 () Unit!24132)

(declare-fun choose!80 (array!39611 List!13073 List!13073 (_ BitVec 32)) Unit!24132)

(assert (=> d!94509 (= lt!314768 (choose!80 a!3626 ($colon$colon!365 acc!681 (select (arr!18979 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94509 (bvslt (size!19351 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94509 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!365 acc!681 (select (arr!18979 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!314768)))

(declare-fun bs!20104 () Bool)

(assert (= bs!20104 d!94509))

(assert (=> bs!20104 m!649751))

(assert (=> bs!20104 m!649755))

(declare-fun m!649917 () Bool)

(assert (=> bs!20104 m!649917))

(assert (=> b!685545 d!94509))

(assert (=> b!685545 d!94489))

(assert (=> b!685545 d!94495))

(declare-fun d!94519 () Bool)

(declare-fun lt!314771 () Bool)

(assert (=> d!94519 (= lt!314771 (select (content!292 acc!681) k0!2843))))

(declare-fun e!390504 () Bool)

(assert (=> d!94519 (= lt!314771 e!390504)))

(declare-fun res!451154 () Bool)

(assert (=> d!94519 (=> (not res!451154) (not e!390504))))

(assert (=> d!94519 (= res!451154 ((_ is Cons!13069) acc!681))))

(assert (=> d!94519 (= (contains!3616 acc!681 k0!2843) lt!314771)))

(declare-fun b!685720 () Bool)

(declare-fun e!390503 () Bool)

(assert (=> b!685720 (= e!390504 e!390503)))

(declare-fun res!451155 () Bool)

(assert (=> b!685720 (=> res!451155 e!390503)))

(assert (=> b!685720 (= res!451155 (= (h!14114 acc!681) k0!2843))))

(declare-fun b!685721 () Bool)

(assert (=> b!685721 (= e!390503 (contains!3616 (t!19333 acc!681) k0!2843))))

(assert (= (and d!94519 res!451154) b!685720))

(assert (= (and b!685720 (not res!451155)) b!685721))

(declare-fun m!649923 () Bool)

(assert (=> d!94519 m!649923))

(declare-fun m!649925 () Bool)

(assert (=> d!94519 m!649925))

(declare-fun m!649927 () Bool)

(assert (=> b!685721 m!649927))

(assert (=> b!685555 d!94519))

(declare-fun d!94529 () Bool)

(assert (=> d!94529 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314774 () Unit!24132)

(declare-fun choose!13 (array!39611 (_ BitVec 64) (_ BitVec 32)) Unit!24132)

(assert (=> d!94529 (= lt!314774 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94529 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94529 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!314774)))

(declare-fun bs!20105 () Bool)

(assert (= bs!20105 d!94529))

(assert (=> bs!20105 m!649769))

(declare-fun m!649933 () Bool)

(assert (=> bs!20105 m!649933))

(assert (=> b!685544 d!94529))

(declare-fun d!94533 () Bool)

(assert (=> d!94533 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!685554 d!94533))

(declare-fun b!685738 () Bool)

(declare-fun e!390519 () Bool)

(declare-fun e!390520 () Bool)

(assert (=> b!685738 (= e!390519 e!390520)))

(declare-fun res!451168 () Bool)

(assert (=> b!685738 (=> (not res!451168) (not e!390520))))

(declare-fun e!390517 () Bool)

(assert (=> b!685738 (= res!451168 (not e!390517))))

(declare-fun res!451169 () Bool)

(assert (=> b!685738 (=> (not res!451169) (not e!390517))))

(assert (=> b!685738 (= res!451169 (validKeyInArray!0 (select (arr!18979 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94535 () Bool)

(declare-fun res!451170 () Bool)

(assert (=> d!94535 (=> res!451170 e!390519)))

(assert (=> d!94535 (= res!451170 (bvsge #b00000000000000000000000000000000 (size!19351 a!3626)))))

(assert (=> d!94535 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13070) e!390519)))

(declare-fun b!685739 () Bool)

(assert (=> b!685739 (= e!390517 (contains!3616 Nil!13070 (select (arr!18979 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685740 () Bool)

(declare-fun e!390518 () Bool)

(declare-fun call!34080 () Bool)

(assert (=> b!685740 (= e!390518 call!34080)))

(declare-fun b!685741 () Bool)

(assert (=> b!685741 (= e!390518 call!34080)))

(declare-fun bm!34077 () Bool)

(declare-fun c!77652 () Bool)

(assert (=> bm!34077 (= call!34080 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77652 (Cons!13069 (select (arr!18979 a!3626) #b00000000000000000000000000000000) Nil!13070) Nil!13070)))))

(declare-fun b!685742 () Bool)

(assert (=> b!685742 (= e!390520 e!390518)))

(assert (=> b!685742 (= c!77652 (validKeyInArray!0 (select (arr!18979 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94535 (not res!451170)) b!685738))

(assert (= (and b!685738 res!451169) b!685739))

(assert (= (and b!685738 res!451168) b!685742))

(assert (= (and b!685742 c!77652) b!685740))

(assert (= (and b!685742 (not c!77652)) b!685741))

(assert (= (or b!685740 b!685741) bm!34077))

(assert (=> b!685738 m!649905))

(assert (=> b!685738 m!649905))

(declare-fun m!649935 () Bool)

(assert (=> b!685738 m!649935))

(assert (=> b!685739 m!649905))

(assert (=> b!685739 m!649905))

(declare-fun m!649937 () Bool)

(assert (=> b!685739 m!649937))

(assert (=> bm!34077 m!649905))

(declare-fun m!649939 () Bool)

(assert (=> bm!34077 m!649939))

(assert (=> b!685742 m!649905))

(assert (=> b!685742 m!649905))

(assert (=> b!685742 m!649935))

(assert (=> b!685543 d!94535))

(declare-fun d!94538 () Bool)

(declare-fun lt!314775 () Bool)

(assert (=> d!94538 (= lt!314775 (select (content!292 lt!314717) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390526 () Bool)

(assert (=> d!94538 (= lt!314775 e!390526)))

(declare-fun res!451175 () Bool)

(assert (=> d!94538 (=> (not res!451175) (not e!390526))))

(assert (=> d!94538 (= res!451175 ((_ is Cons!13069) lt!314717))))

(assert (=> d!94538 (= (contains!3616 lt!314717 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314775)))

(declare-fun b!685747 () Bool)

(declare-fun e!390525 () Bool)

(assert (=> b!685747 (= e!390526 e!390525)))

(declare-fun res!451176 () Bool)

(assert (=> b!685747 (=> res!451176 e!390525)))

(assert (=> b!685747 (= res!451176 (= (h!14114 lt!314717) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685748 () Bool)

(assert (=> b!685748 (= e!390525 (contains!3616 (t!19333 lt!314717) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94538 res!451175) b!685747))

(assert (= (and b!685747 (not res!451176)) b!685748))

(assert (=> d!94538 m!649865))

(declare-fun m!649945 () Bool)

(assert (=> d!94538 m!649945))

(declare-fun m!649947 () Bool)

(assert (=> b!685748 m!649947))

(assert (=> b!685553 d!94538))

(declare-fun d!94541 () Bool)

(declare-fun res!451181 () Bool)

(declare-fun e!390531 () Bool)

(assert (=> d!94541 (=> res!451181 e!390531)))

(assert (=> d!94541 (= res!451181 ((_ is Nil!13070) lt!314717))))

(assert (=> d!94541 (= (noDuplicate!863 lt!314717) e!390531)))

(declare-fun b!685753 () Bool)

(declare-fun e!390532 () Bool)

(assert (=> b!685753 (= e!390531 e!390532)))

(declare-fun res!451182 () Bool)

(assert (=> b!685753 (=> (not res!451182) (not e!390532))))

(assert (=> b!685753 (= res!451182 (not (contains!3616 (t!19333 lt!314717) (h!14114 lt!314717))))))

(declare-fun b!685754 () Bool)

(assert (=> b!685754 (= e!390532 (noDuplicate!863 (t!19333 lt!314717)))))

(assert (= (and d!94541 (not res!451181)) b!685753))

(assert (= (and b!685753 res!451182) b!685754))

(declare-fun m!649955 () Bool)

(assert (=> b!685753 m!649955))

(declare-fun m!649957 () Bool)

(assert (=> b!685754 m!649957))

(assert (=> b!685542 d!94541))

(assert (=> b!685552 d!94519))

(declare-fun b!685755 () Bool)

(declare-fun e!390535 () Bool)

(declare-fun e!390536 () Bool)

(assert (=> b!685755 (= e!390535 e!390536)))

(declare-fun res!451183 () Bool)

(assert (=> b!685755 (=> (not res!451183) (not e!390536))))

(declare-fun e!390533 () Bool)

(assert (=> b!685755 (= res!451183 (not e!390533))))

(declare-fun res!451184 () Bool)

(assert (=> b!685755 (=> (not res!451184) (not e!390533))))

(assert (=> b!685755 (= res!451184 (validKeyInArray!0 (select (arr!18979 a!3626) from!3004)))))

(declare-fun d!94549 () Bool)

(declare-fun res!451185 () Bool)

(assert (=> d!94549 (=> res!451185 e!390535)))

(assert (=> d!94549 (= res!451185 (bvsge from!3004 (size!19351 a!3626)))))

(assert (=> d!94549 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!390535)))

(declare-fun b!685756 () Bool)

(assert (=> b!685756 (= e!390533 (contains!3616 acc!681 (select (arr!18979 a!3626) from!3004)))))

(declare-fun b!685757 () Bool)

(declare-fun e!390534 () Bool)

(declare-fun call!34081 () Bool)

(assert (=> b!685757 (= e!390534 call!34081)))

(declare-fun b!685758 () Bool)

(assert (=> b!685758 (= e!390534 call!34081)))

(declare-fun bm!34078 () Bool)

(declare-fun c!77653 () Bool)

(assert (=> bm!34078 (= call!34081 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77653 (Cons!13069 (select (arr!18979 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!685759 () Bool)

(assert (=> b!685759 (= e!390536 e!390534)))

(assert (=> b!685759 (= c!77653 (validKeyInArray!0 (select (arr!18979 a!3626) from!3004)))))

(assert (= (and d!94549 (not res!451185)) b!685755))

(assert (= (and b!685755 res!451184) b!685756))

(assert (= (and b!685755 res!451183) b!685759))

(assert (= (and b!685759 c!77653) b!685757))

(assert (= (and b!685759 (not c!77653)) b!685758))

(assert (= (or b!685757 b!685758) bm!34078))

(assert (=> b!685755 m!649753))

(assert (=> b!685755 m!649753))

(assert (=> b!685755 m!649795))

(assert (=> b!685756 m!649753))

(assert (=> b!685756 m!649753))

(declare-fun m!649959 () Bool)

(assert (=> b!685756 m!649959))

(assert (=> bm!34078 m!649753))

(declare-fun m!649961 () Bool)

(assert (=> bm!34078 m!649961))

(assert (=> b!685759 m!649753))

(assert (=> b!685759 m!649753))

(assert (=> b!685759 m!649795))

(assert (=> b!685541 d!94549))

(declare-fun d!94551 () Bool)

(declare-fun lt!314788 () Bool)

(assert (=> d!94551 (= lt!314788 (select (content!292 lt!314717) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390538 () Bool)

(assert (=> d!94551 (= lt!314788 e!390538)))

(declare-fun res!451186 () Bool)

(assert (=> d!94551 (=> (not res!451186) (not e!390538))))

(assert (=> d!94551 (= res!451186 ((_ is Cons!13069) lt!314717))))

(assert (=> d!94551 (= (contains!3616 lt!314717 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314788)))

(declare-fun b!685760 () Bool)

(declare-fun e!390537 () Bool)

(assert (=> b!685760 (= e!390538 e!390537)))

(declare-fun res!451187 () Bool)

(assert (=> b!685760 (=> res!451187 e!390537)))

(assert (=> b!685760 (= res!451187 (= (h!14114 lt!314717) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685761 () Bool)

(assert (=> b!685761 (= e!390537 (contains!3616 (t!19333 lt!314717) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94551 res!451186) b!685760))

(assert (= (and b!685760 (not res!451187)) b!685761))

(assert (=> d!94551 m!649865))

(declare-fun m!649965 () Bool)

(assert (=> d!94551 m!649965))

(declare-fun m!649967 () Bool)

(assert (=> b!685761 m!649967))

(assert (=> b!685562 d!94551))

(declare-fun b!685765 () Bool)

(declare-fun e!390541 () Bool)

(assert (=> b!685765 (= e!390541 (subseq!201 acc!681 (t!19333 lt!314717)))))

(declare-fun d!94555 () Bool)

(declare-fun res!451188 () Bool)

(declare-fun e!390540 () Bool)

(assert (=> d!94555 (=> res!451188 e!390540)))

(assert (=> d!94555 (= res!451188 ((_ is Nil!13070) acc!681))))

(assert (=> d!94555 (= (subseq!201 acc!681 lt!314717) e!390540)))

(declare-fun b!685763 () Bool)

(declare-fun e!390542 () Bool)

(assert (=> b!685763 (= e!390542 e!390541)))

(declare-fun res!451189 () Bool)

(assert (=> b!685763 (=> res!451189 e!390541)))

(declare-fun e!390539 () Bool)

(assert (=> b!685763 (= res!451189 e!390539)))

(declare-fun res!451190 () Bool)

(assert (=> b!685763 (=> (not res!451190) (not e!390539))))

(assert (=> b!685763 (= res!451190 (= (h!14114 acc!681) (h!14114 lt!314717)))))

(declare-fun b!685764 () Bool)

(assert (=> b!685764 (= e!390539 (subseq!201 (t!19333 acc!681) (t!19333 lt!314717)))))

(declare-fun b!685762 () Bool)

(assert (=> b!685762 (= e!390540 e!390542)))

(declare-fun res!451191 () Bool)

(assert (=> b!685762 (=> (not res!451191) (not e!390542))))

(assert (=> b!685762 (= res!451191 ((_ is Cons!13069) lt!314717))))

(assert (= (and d!94555 (not res!451188)) b!685762))

(assert (= (and b!685762 res!451191) b!685763))

(assert (= (and b!685763 res!451190) b!685764))

(assert (= (and b!685763 (not res!451189)) b!685765))

(declare-fun m!649969 () Bool)

(assert (=> b!685765 m!649969))

(declare-fun m!649971 () Bool)

(assert (=> b!685764 m!649971))

(assert (=> b!685551 d!94555))

(declare-fun d!94557 () Bool)

(declare-fun lt!314789 () Bool)

(assert (=> d!94557 (= lt!314789 (select (content!292 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390544 () Bool)

(assert (=> d!94557 (= lt!314789 e!390544)))

(declare-fun res!451192 () Bool)

(assert (=> d!94557 (=> (not res!451192) (not e!390544))))

(assert (=> d!94557 (= res!451192 ((_ is Cons!13069) acc!681))))

(assert (=> d!94557 (= (contains!3616 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314789)))

(declare-fun b!685766 () Bool)

(declare-fun e!390543 () Bool)

(assert (=> b!685766 (= e!390544 e!390543)))

(declare-fun res!451193 () Bool)

(assert (=> b!685766 (=> res!451193 e!390543)))

(assert (=> b!685766 (= res!451193 (= (h!14114 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685767 () Bool)

(assert (=> b!685767 (= e!390543 (contains!3616 (t!19333 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94557 res!451192) b!685766))

(assert (= (and b!685766 (not res!451193)) b!685767))

(assert (=> d!94557 m!649923))

(declare-fun m!649973 () Bool)

(assert (=> d!94557 m!649973))

(declare-fun m!649975 () Bool)

(assert (=> b!685767 m!649975))

(assert (=> b!685540 d!94557))

(assert (=> b!685550 d!94519))

(declare-fun d!94559 () Bool)

(declare-fun res!451194 () Bool)

(declare-fun e!390545 () Bool)

(assert (=> d!94559 (=> res!451194 e!390545)))

(assert (=> d!94559 (= res!451194 ((_ is Nil!13070) acc!681))))

(assert (=> d!94559 (= (noDuplicate!863 acc!681) e!390545)))

(declare-fun b!685768 () Bool)

(declare-fun e!390546 () Bool)

(assert (=> b!685768 (= e!390545 e!390546)))

(declare-fun res!451195 () Bool)

(assert (=> b!685768 (=> (not res!451195) (not e!390546))))

(assert (=> b!685768 (= res!451195 (not (contains!3616 (t!19333 acc!681) (h!14114 acc!681))))))

(declare-fun b!685769 () Bool)

(assert (=> b!685769 (= e!390546 (noDuplicate!863 (t!19333 acc!681)))))

(assert (= (and d!94559 (not res!451194)) b!685768))

(assert (= (and b!685768 res!451195) b!685769))

(declare-fun m!649977 () Bool)

(assert (=> b!685768 m!649977))

(declare-fun m!649979 () Bool)

(assert (=> b!685769 m!649979))

(assert (=> b!685539 d!94559))

(declare-fun d!94561 () Bool)

(declare-fun lt!314790 () Bool)

(assert (=> d!94561 (= lt!314790 (select (content!292 lt!314717) k0!2843))))

(declare-fun e!390550 () Bool)

(assert (=> d!94561 (= lt!314790 e!390550)))

(declare-fun res!451198 () Bool)

(assert (=> d!94561 (=> (not res!451198) (not e!390550))))

(assert (=> d!94561 (= res!451198 ((_ is Cons!13069) lt!314717))))

(assert (=> d!94561 (= (contains!3616 lt!314717 k0!2843) lt!314790)))

(declare-fun b!685772 () Bool)

(declare-fun e!390549 () Bool)

(assert (=> b!685772 (= e!390550 e!390549)))

(declare-fun res!451199 () Bool)

(assert (=> b!685772 (=> res!451199 e!390549)))

(assert (=> b!685772 (= res!451199 (= (h!14114 lt!314717) k0!2843))))

(declare-fun b!685773 () Bool)

(assert (=> b!685773 (= e!390549 (contains!3616 (t!19333 lt!314717) k0!2843))))

(assert (= (and d!94561 res!451198) b!685772))

(assert (= (and b!685772 (not res!451199)) b!685773))

(assert (=> d!94561 m!649865))

(declare-fun m!649981 () Bool)

(assert (=> d!94561 m!649981))

(declare-fun m!649983 () Bool)

(assert (=> b!685773 m!649983))

(assert (=> b!685560 d!94561))

(declare-fun d!94563 () Bool)

(declare-fun lt!314791 () Bool)

(assert (=> d!94563 (= lt!314791 (select (content!292 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390558 () Bool)

(assert (=> d!94563 (= lt!314791 e!390558)))

(declare-fun res!451204 () Bool)

(assert (=> d!94563 (=> (not res!451204) (not e!390558))))

(assert (=> d!94563 (= res!451204 ((_ is Cons!13069) acc!681))))

(assert (=> d!94563 (= (contains!3616 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314791)))

(declare-fun b!685782 () Bool)

(declare-fun e!390557 () Bool)

(assert (=> b!685782 (= e!390558 e!390557)))

(declare-fun res!451205 () Bool)

(assert (=> b!685782 (=> res!451205 e!390557)))

(assert (=> b!685782 (= res!451205 (= (h!14114 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685783 () Bool)

(assert (=> b!685783 (= e!390557 (contains!3616 (t!19333 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94563 res!451204) b!685782))

(assert (= (and b!685782 (not res!451205)) b!685783))

(assert (=> d!94563 m!649923))

(declare-fun m!649985 () Bool)

(assert (=> d!94563 m!649985))

(declare-fun m!649987 () Bool)

(assert (=> b!685783 m!649987))

(assert (=> b!685547 d!94563))

(check-sat (not b!685688) (not b!685773) (not d!94485) (not d!94519) (not b!685738) (not b!685756) (not b!685650) (not b!685768) (not b!685764) (not b!685754) (not d!94538) (not d!94529) (not bm!34076) (not b!685721) (not b!685769) (not bm!34077) (not b!685759) (not b!685691) (not b!685672) (not b!685742) (not d!94489) (not b!685687) (not bm!34078) (not d!94509) (not b!685670) (not d!94551) (not b!685697) (not b!685753) (not b!685663) (not d!94557) (not b!685767) (not bm!34073) (not b!685748) (not b!685755) (not d!94561) (not b!685664) (not b!685783) (not b!685739) (not d!94563) (not b!685761) (not d!94479) (not b!685765))
(check-sat)
