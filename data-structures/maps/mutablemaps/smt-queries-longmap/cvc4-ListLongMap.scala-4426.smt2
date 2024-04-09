; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61300 () Bool)

(assert start!61300)

(declare-fun b!686546 () Bool)

(declare-fun res!451790 () Bool)

(declare-fun e!390923 () Bool)

(assert (=> b!686546 (=> (not res!451790) (not e!390923))))

(declare-datatypes ((array!39640 0))(
  ( (array!39641 (arr!18992 (Array (_ BitVec 32) (_ BitVec 64))) (size!19365 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39640)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686546 (= res!451790 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686547 () Bool)

(declare-fun e!390922 () Bool)

(declare-datatypes ((List!13086 0))(
  ( (Nil!13083) (Cons!13082 (h!14127 (_ BitVec 64)) (t!19349 List!13086)) )
))
(declare-fun acc!681 () List!13086)

(declare-fun contains!3629 (List!13086 (_ BitVec 64)) Bool)

(assert (=> b!686547 (= e!390922 (contains!3629 acc!681 k!2843))))

(declare-fun b!686548 () Bool)

(declare-fun res!451789 () Bool)

(assert (=> b!686548 (=> (not res!451789) (not e!390923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686548 (= res!451789 (validKeyInArray!0 k!2843))))

(declare-fun b!686549 () Bool)

(declare-datatypes ((Unit!24197 0))(
  ( (Unit!24198) )
))
(declare-fun e!390919 () Unit!24197)

(declare-fun Unit!24199 () Unit!24197)

(assert (=> b!686549 (= e!390919 Unit!24199)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!315136 () Unit!24197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39640 (_ BitVec 64) (_ BitVec 32)) Unit!24197)

(assert (=> b!686549 (= lt!315136 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686549 false))

(declare-fun b!686550 () Bool)

(declare-fun e!390921 () Bool)

(declare-fun lt!315139 () List!13086)

(declare-fun noDuplicate!876 (List!13086) Bool)

(assert (=> b!686550 (= e!390921 (noDuplicate!876 lt!315139))))

(declare-fun b!686551 () Bool)

(declare-fun e!390924 () Bool)

(assert (=> b!686551 (= e!390924 (not (contains!3629 acc!681 k!2843)))))

(declare-fun b!686552 () Bool)

(assert (=> b!686552 (= e!390923 (not e!390921))))

(declare-fun res!451798 () Bool)

(assert (=> b!686552 (=> res!451798 e!390921)))

(assert (=> b!686552 (= res!451798 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39640 (_ BitVec 32) List!13086) Bool)

(assert (=> b!686552 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315139)))

(declare-fun lt!315142 () Unit!24197)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39640 (_ BitVec 64) (_ BitVec 32) List!13086 List!13086) Unit!24197)

(assert (=> b!686552 (= lt!315142 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315139))))

(declare-fun -!179 (List!13086 (_ BitVec 64)) List!13086)

(assert (=> b!686552 (= (-!179 lt!315139 k!2843) acc!681)))

(declare-fun $colon$colon!378 (List!13086 (_ BitVec 64)) List!13086)

(assert (=> b!686552 (= lt!315139 ($colon$colon!378 acc!681 k!2843))))

(declare-fun lt!315138 () Unit!24197)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13086) Unit!24197)

(assert (=> b!686552 (= lt!315138 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!214 (List!13086 List!13086) Bool)

(assert (=> b!686552 (subseq!214 acc!681 acc!681)))

(declare-fun lt!315144 () Unit!24197)

(declare-fun lemmaListSubSeqRefl!0 (List!13086) Unit!24197)

(assert (=> b!686552 (= lt!315144 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686552 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315141 () Unit!24197)

(declare-fun e!390925 () Unit!24197)

(assert (=> b!686552 (= lt!315141 e!390925)))

(declare-fun c!77746 () Bool)

(assert (=> b!686552 (= c!77746 (validKeyInArray!0 (select (arr!18992 a!3626) from!3004)))))

(declare-fun lt!315137 () Unit!24197)

(assert (=> b!686552 (= lt!315137 e!390919)))

(declare-fun c!77747 () Bool)

(assert (=> b!686552 (= c!77747 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686552 (arrayContainsKey!0 (array!39641 (store (arr!18992 a!3626) i!1382 k!2843) (size!19365 a!3626)) k!2843 from!3004)))

(declare-fun b!686553 () Bool)

(declare-fun res!451793 () Bool)

(assert (=> b!686553 (=> (not res!451793) (not e!390923))))

(assert (=> b!686553 (= res!451793 (not (contains!3629 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686554 () Bool)

(declare-fun e!390918 () Bool)

(assert (=> b!686554 (= e!390918 e!390924)))

(declare-fun res!451796 () Bool)

(assert (=> b!686554 (=> (not res!451796) (not e!390924))))

(assert (=> b!686554 (= res!451796 (bvsle from!3004 i!1382))))

(declare-fun b!686555 () Bool)

(declare-fun res!451792 () Bool)

(assert (=> b!686555 (=> (not res!451792) (not e!390923))))

(assert (=> b!686555 (= res!451792 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19365 a!3626))))))

(declare-fun b!686556 () Bool)

(declare-fun lt!315140 () Unit!24197)

(assert (=> b!686556 (= e!390925 lt!315140)))

(declare-fun lt!315143 () Unit!24197)

(assert (=> b!686556 (= lt!315143 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686556 (subseq!214 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39640 List!13086 List!13086 (_ BitVec 32)) Unit!24197)

(assert (=> b!686556 (= lt!315140 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!378 acc!681 (select (arr!18992 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686556 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686557 () Bool)

(declare-fun res!451802 () Bool)

(assert (=> b!686557 (=> (not res!451802) (not e!390923))))

(assert (=> b!686557 (= res!451802 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19365 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686558 () Bool)

(declare-fun res!451799 () Bool)

(assert (=> b!686558 (=> (not res!451799) (not e!390923))))

(assert (=> b!686558 (= res!451799 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13083))))

(declare-fun b!686559 () Bool)

(declare-fun Unit!24200 () Unit!24197)

(assert (=> b!686559 (= e!390925 Unit!24200)))

(declare-fun b!686560 () Bool)

(declare-fun res!451795 () Bool)

(assert (=> b!686560 (=> (not res!451795) (not e!390923))))

(assert (=> b!686560 (= res!451795 e!390918)))

(declare-fun res!451788 () Bool)

(assert (=> b!686560 (=> res!451788 e!390918)))

(assert (=> b!686560 (= res!451788 e!390922)))

(declare-fun res!451794 () Bool)

(assert (=> b!686560 (=> (not res!451794) (not e!390922))))

(assert (=> b!686560 (= res!451794 (bvsgt from!3004 i!1382))))

(declare-fun b!686561 () Bool)

(declare-fun res!451801 () Bool)

(assert (=> b!686561 (=> (not res!451801) (not e!390923))))

(assert (=> b!686561 (= res!451801 (not (contains!3629 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686562 () Bool)

(declare-fun res!451797 () Bool)

(assert (=> b!686562 (=> (not res!451797) (not e!390923))))

(assert (=> b!686562 (= res!451797 (noDuplicate!876 acc!681))))

(declare-fun b!686563 () Bool)

(declare-fun Unit!24201 () Unit!24197)

(assert (=> b!686563 (= e!390919 Unit!24201)))

(declare-fun b!686564 () Bool)

(declare-fun res!451791 () Bool)

(assert (=> b!686564 (=> (not res!451791) (not e!390923))))

(assert (=> b!686564 (= res!451791 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!451800 () Bool)

(assert (=> start!61300 (=> (not res!451800) (not e!390923))))

(assert (=> start!61300 (= res!451800 (and (bvslt (size!19365 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19365 a!3626))))))

(assert (=> start!61300 e!390923))

(assert (=> start!61300 true))

(declare-fun array_inv!14766 (array!39640) Bool)

(assert (=> start!61300 (array_inv!14766 a!3626)))

(assert (= (and start!61300 res!451800) b!686562))

(assert (= (and b!686562 res!451797) b!686553))

(assert (= (and b!686553 res!451793) b!686561))

(assert (= (and b!686561 res!451801) b!686560))

(assert (= (and b!686560 res!451794) b!686547))

(assert (= (and b!686560 (not res!451788)) b!686554))

(assert (= (and b!686554 res!451796) b!686551))

(assert (= (and b!686560 res!451795) b!686558))

(assert (= (and b!686558 res!451799) b!686564))

(assert (= (and b!686564 res!451791) b!686555))

(assert (= (and b!686555 res!451792) b!686548))

(assert (= (and b!686548 res!451789) b!686546))

(assert (= (and b!686546 res!451790) b!686557))

(assert (= (and b!686557 res!451802) b!686552))

(assert (= (and b!686552 c!77747) b!686549))

(assert (= (and b!686552 (not c!77747)) b!686563))

(assert (= (and b!686552 c!77746) b!686556))

(assert (= (and b!686552 (not c!77746)) b!686559))

(assert (= (and b!686552 (not res!451798)) b!686550))

(declare-fun m!650687 () Bool)

(assert (=> b!686564 m!650687))

(declare-fun m!650689 () Bool)

(assert (=> b!686556 m!650689))

(declare-fun m!650691 () Bool)

(assert (=> b!686556 m!650691))

(declare-fun m!650693 () Bool)

(assert (=> b!686556 m!650693))

(declare-fun m!650695 () Bool)

(assert (=> b!686556 m!650695))

(assert (=> b!686556 m!650691))

(assert (=> b!686556 m!650693))

(declare-fun m!650697 () Bool)

(assert (=> b!686556 m!650697))

(declare-fun m!650699 () Bool)

(assert (=> b!686556 m!650699))

(declare-fun m!650701 () Bool)

(assert (=> b!686550 m!650701))

(declare-fun m!650703 () Bool)

(assert (=> start!61300 m!650703))

(declare-fun m!650705 () Bool)

(assert (=> b!686562 m!650705))

(declare-fun m!650707 () Bool)

(assert (=> b!686546 m!650707))

(declare-fun m!650709 () Bool)

(assert (=> b!686561 m!650709))

(declare-fun m!650711 () Bool)

(assert (=> b!686551 m!650711))

(declare-fun m!650713 () Bool)

(assert (=> b!686549 m!650713))

(declare-fun m!650715 () Bool)

(assert (=> b!686558 m!650715))

(assert (=> b!686547 m!650711))

(declare-fun m!650717 () Bool)

(assert (=> b!686552 m!650717))

(assert (=> b!686552 m!650691))

(declare-fun m!650719 () Bool)

(assert (=> b!686552 m!650719))

(declare-fun m!650721 () Bool)

(assert (=> b!686552 m!650721))

(declare-fun m!650723 () Bool)

(assert (=> b!686552 m!650723))

(assert (=> b!686552 m!650697))

(declare-fun m!650725 () Bool)

(assert (=> b!686552 m!650725))

(declare-fun m!650727 () Bool)

(assert (=> b!686552 m!650727))

(assert (=> b!686552 m!650691))

(declare-fun m!650729 () Bool)

(assert (=> b!686552 m!650729))

(declare-fun m!650731 () Bool)

(assert (=> b!686552 m!650731))

(assert (=> b!686552 m!650689))

(declare-fun m!650733 () Bool)

(assert (=> b!686552 m!650733))

(assert (=> b!686552 m!650699))

(declare-fun m!650735 () Bool)

(assert (=> b!686548 m!650735))

(declare-fun m!650737 () Bool)

(assert (=> b!686553 m!650737))

(push 1)

(assert (not b!686556))

(assert (not b!686549))

(assert (not b!686564))

(assert (not b!686552))

(assert (not b!686548))

(assert (not b!686547))

(assert (not b!686550))

(assert (not b!686551))

(assert (not b!686553))

(assert (not b!686561))

(assert (not b!686562))

(assert (not b!686546))

(assert (not start!61300))

(assert (not b!686558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94649 () Bool)

(assert (=> d!94649 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!686548 d!94649))

(declare-fun d!94651 () Bool)

(declare-fun res!451819 () Bool)

(declare-fun e!390942 () Bool)

(assert (=> d!94651 (=> res!451819 e!390942)))

(assert (=> d!94651 (= res!451819 (is-Nil!13083 lt!315139))))

(assert (=> d!94651 (= (noDuplicate!876 lt!315139) e!390942)))

(declare-fun b!686581 () Bool)

(declare-fun e!390943 () Bool)

(assert (=> b!686581 (= e!390942 e!390943)))

(declare-fun res!451820 () Bool)

(assert (=> b!686581 (=> (not res!451820) (not e!390943))))

(assert (=> b!686581 (= res!451820 (not (contains!3629 (t!19349 lt!315139) (h!14127 lt!315139))))))

(declare-fun b!686582 () Bool)

(assert (=> b!686582 (= e!390943 (noDuplicate!876 (t!19349 lt!315139)))))

(assert (= (and d!94651 (not res!451819)) b!686581))

(assert (= (and b!686581 res!451820) b!686582))

(declare-fun m!650745 () Bool)

(assert (=> b!686581 m!650745))

(declare-fun m!650747 () Bool)

(assert (=> b!686582 m!650747))

(assert (=> b!686550 d!94651))

(declare-fun d!94655 () Bool)

(assert (=> d!94655 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315153 () Unit!24197)

(declare-fun choose!13 (array!39640 (_ BitVec 64) (_ BitVec 32)) Unit!24197)

(assert (=> d!94655 (= lt!315153 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94655 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94655 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!315153)))

(declare-fun bs!20128 () Bool)

(assert (= bs!20128 d!94655))

(assert (=> bs!20128 m!650707))

(declare-fun m!650751 () Bool)

(assert (=> bs!20128 m!650751))

(assert (=> b!686549 d!94655))

(declare-fun d!94659 () Bool)

(declare-fun res!451825 () Bool)

(declare-fun e!390948 () Bool)

(assert (=> d!94659 (=> res!451825 e!390948)))

(assert (=> d!94659 (= res!451825 (= (select (arr!18992 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94659 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!390948)))

(declare-fun b!686587 () Bool)

(declare-fun e!390949 () Bool)

(assert (=> b!686587 (= e!390948 e!390949)))

(declare-fun res!451826 () Bool)

(assert (=> b!686587 (=> (not res!451826) (not e!390949))))

(assert (=> b!686587 (= res!451826 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19365 a!3626)))))

(declare-fun b!686588 () Bool)

(assert (=> b!686588 (= e!390949 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94659 (not res!451825)) b!686587))

(assert (= (and b!686587 res!451826) b!686588))

(declare-fun m!650753 () Bool)

(assert (=> d!94659 m!650753))

(declare-fun m!650755 () Bool)

(assert (=> b!686588 m!650755))

(assert (=> b!686546 d!94659))

(declare-fun d!94661 () Bool)

(assert (=> d!94661 (= ($colon$colon!378 acc!681 (select (arr!18992 a!3626) from!3004)) (Cons!13082 (select (arr!18992 a!3626) from!3004) acc!681))))

(assert (=> b!686556 d!94661))

(declare-fun b!686608 () Bool)

(declare-fun e!390968 () Bool)

(declare-fun e!390966 () Bool)

(assert (=> b!686608 (= e!390968 e!390966)))

(declare-fun res!451844 () Bool)

(assert (=> b!686608 (=> res!451844 e!390966)))

(declare-fun e!390969 () Bool)

(assert (=> b!686608 (= res!451844 e!390969)))

(declare-fun res!451843 () Bool)

(assert (=> b!686608 (=> (not res!451843) (not e!390969))))

(assert (=> b!686608 (= res!451843 (= (h!14127 acc!681) (h!14127 acc!681)))))

(declare-fun b!686610 () Bool)

(assert (=> b!686610 (= e!390966 (subseq!214 acc!681 (t!19349 acc!681)))))

(declare-fun b!686607 () Bool)

(declare-fun e!390967 () Bool)

(assert (=> b!686607 (= e!390967 e!390968)))

(declare-fun res!451841 () Bool)

(assert (=> b!686607 (=> (not res!451841) (not e!390968))))

(assert (=> b!686607 (= res!451841 (is-Cons!13082 acc!681))))

(declare-fun d!94663 () Bool)

(declare-fun res!451842 () Bool)

(assert (=> d!94663 (=> res!451842 e!390967)))

(assert (=> d!94663 (= res!451842 (is-Nil!13083 acc!681))))

(assert (=> d!94663 (= (subseq!214 acc!681 acc!681) e!390967)))

(declare-fun b!686609 () Bool)

(assert (=> b!686609 (= e!390969 (subseq!214 (t!19349 acc!681) (t!19349 acc!681)))))

(assert (= (and d!94663 (not res!451842)) b!686607))

(assert (= (and b!686607 res!451841) b!686608))

(assert (= (and b!686608 res!451843) b!686609))

(assert (= (and b!686608 (not res!451844)) b!686610))

(declare-fun m!650757 () Bool)

(assert (=> b!686610 m!650757))

(declare-fun m!650759 () Bool)

(assert (=> b!686609 m!650759))

(assert (=> b!686556 d!94663))

(declare-fun d!94665 () Bool)

(assert (=> d!94665 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315156 () Unit!24197)

(declare-fun choose!80 (array!39640 List!13086 List!13086 (_ BitVec 32)) Unit!24197)

(assert (=> d!94665 (= lt!315156 (choose!80 a!3626 ($colon$colon!378 acc!681 (select (arr!18992 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94665 (bvslt (size!19365 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94665 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!378 acc!681 (select (arr!18992 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315156)))

(declare-fun bs!20129 () Bool)

(assert (= bs!20129 d!94665))

(assert (=> bs!20129 m!650689))

(assert (=> bs!20129 m!650693))

(declare-fun m!650761 () Bool)

(assert (=> bs!20129 m!650761))

(assert (=> b!686556 d!94665))

(declare-fun d!94667 () Bool)

(assert (=> d!94667 (subseq!214 acc!681 acc!681)))

(declare-fun lt!315159 () Unit!24197)

(declare-fun choose!36 (List!13086) Unit!24197)

(assert (=> d!94667 (= lt!315159 (choose!36 acc!681))))

(assert (=> d!94667 (= (lemmaListSubSeqRefl!0 acc!681) lt!315159)))

(declare-fun bs!20130 () Bool)

(assert (= bs!20130 d!94667))

(assert (=> bs!20130 m!650699))

(declare-fun m!650771 () Bool)

(assert (=> bs!20130 m!650771))

(assert (=> b!686556 d!94667))

(declare-fun b!686636 () Bool)

(declare-fun e!390995 () Bool)

(declare-fun call!34103 () Bool)

(assert (=> b!686636 (= e!390995 call!34103)))

(declare-fun d!94671 () Bool)

(declare-fun res!451866 () Bool)

(declare-fun e!390992 () Bool)

(assert (=> d!94671 (=> res!451866 e!390992)))

(assert (=> d!94671 (= res!451866 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19365 a!3626)))))

(assert (=> d!94671 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390992)))

(declare-fun b!686637 () Bool)

(declare-fun e!390994 () Bool)

(assert (=> b!686637 (= e!390994 e!390995)))

(declare-fun c!77753 () Bool)

(assert (=> b!686637 (= c!77753 (validKeyInArray!0 (select (arr!18992 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!686638 () Bool)

(assert (=> b!686638 (= e!390995 call!34103)))

(declare-fun b!686639 () Bool)

(assert (=> b!686639 (= e!390992 e!390994)))

(declare-fun res!451865 () Bool)

(assert (=> b!686639 (=> (not res!451865) (not e!390994))))

(declare-fun e!390993 () Bool)

(assert (=> b!686639 (= res!451865 (not e!390993))))

(declare-fun res!451864 () Bool)

(assert (=> b!686639 (=> (not res!451864) (not e!390993))))

(assert (=> b!686639 (= res!451864 (validKeyInArray!0 (select (arr!18992 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34100 () Bool)

(assert (=> bm!34100 (= call!34103 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77753 (Cons!13082 (select (arr!18992 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!686640 () Bool)

(assert (=> b!686640 (= e!390993 (contains!3629 acc!681 (select (arr!18992 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94671 (not res!451866)) b!686639))

(assert (= (and b!686639 res!451864) b!686640))

(assert (= (and b!686639 res!451865) b!686637))

(assert (= (and b!686637 c!77753) b!686638))

(assert (= (and b!686637 (not c!77753)) b!686636))

(assert (= (or b!686638 b!686636) bm!34100))

(declare-fun m!650777 () Bool)

(assert (=> b!686637 m!650777))

(assert (=> b!686637 m!650777))

(declare-fun m!650779 () Bool)

(assert (=> b!686637 m!650779))

(assert (=> b!686639 m!650777))

(assert (=> b!686639 m!650777))

(assert (=> b!686639 m!650779))

(assert (=> bm!34100 m!650777))

(declare-fun m!650781 () Bool)

(assert (=> bm!34100 m!650781))

(assert (=> b!686640 m!650777))

(assert (=> b!686640 m!650777))

(declare-fun m!650783 () Bool)

(assert (=> b!686640 m!650783))

(assert (=> b!686556 d!94671))

(declare-fun d!94675 () Bool)

(declare-fun lt!315166 () Bool)

(declare-fun content!297 (List!13086) (Set (_ BitVec 64)))

(assert (=> d!94675 (= lt!315166 (member k!2843 (content!297 acc!681)))))

(declare-fun e!391008 () Bool)

(assert (=> d!94675 (= lt!315166 e!391008)))

(declare-fun res!451880 () Bool)

(assert (=> d!94675 (=> (not res!451880) (not e!391008))))

(assert (=> d!94675 (= res!451880 (is-Cons!13082 acc!681))))

(assert (=> d!94675 (= (contains!3629 acc!681 k!2843) lt!315166)))

(declare-fun b!686653 () Bool)

(declare-fun e!391009 () Bool)

(assert (=> b!686653 (= e!391008 e!391009)))

(declare-fun res!451879 () Bool)

(assert (=> b!686653 (=> res!451879 e!391009)))

(assert (=> b!686653 (= res!451879 (= (h!14127 acc!681) k!2843))))

(declare-fun b!686654 () Bool)

(assert (=> b!686654 (= e!391009 (contains!3629 (t!19349 acc!681) k!2843))))

(assert (= (and d!94675 res!451880) b!686653))

(assert (= (and b!686653 (not res!451879)) b!686654))

(declare-fun m!650795 () Bool)

(assert (=> d!94675 m!650795))

(declare-fun m!650797 () Bool)

(assert (=> d!94675 m!650797))

(declare-fun m!650799 () Bool)

(assert (=> b!686654 m!650799))

(assert (=> b!686547 d!94675))

(declare-fun b!686655 () Bool)

(declare-fun e!391013 () Bool)

(declare-fun call!34104 () Bool)

(assert (=> b!686655 (= e!391013 call!34104)))

(declare-fun d!94687 () Bool)

(declare-fun res!451883 () Bool)

(declare-fun e!391010 () Bool)

(assert (=> d!94687 (=> res!451883 e!391010)))

(assert (=> d!94687 (= res!451883 (bvsge #b00000000000000000000000000000000 (size!19365 a!3626)))))

(assert (=> d!94687 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13083) e!391010)))

(declare-fun b!686656 () Bool)

(declare-fun e!391012 () Bool)

(assert (=> b!686656 (= e!391012 e!391013)))

(declare-fun c!77754 () Bool)

(assert (=> b!686656 (= c!77754 (validKeyInArray!0 (select (arr!18992 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!686657 () Bool)

(assert (=> b!686657 (= e!391013 call!34104)))

(declare-fun b!686658 () Bool)

(assert (=> b!686658 (= e!391010 e!391012)))

(declare-fun res!451882 () Bool)

(assert (=> b!686658 (=> (not res!451882) (not e!391012))))

(declare-fun e!391011 () Bool)

(assert (=> b!686658 (= res!451882 (not e!391011))))

(declare-fun res!451881 () Bool)

(assert (=> b!686658 (=> (not res!451881) (not e!391011))))

(assert (=> b!686658 (= res!451881 (validKeyInArray!0 (select (arr!18992 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34101 () Bool)

(assert (=> bm!34101 (= call!34104 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77754 (Cons!13082 (select (arr!18992 a!3626) #b00000000000000000000000000000000) Nil!13083) Nil!13083)))))

(declare-fun b!686659 () Bool)

(assert (=> b!686659 (= e!391011 (contains!3629 Nil!13083 (select (arr!18992 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94687 (not res!451883)) b!686658))

(assert (= (and b!686658 res!451881) b!686659))

(assert (= (and b!686658 res!451882) b!686656))

(assert (= (and b!686656 c!77754) b!686657))

(assert (= (and b!686656 (not c!77754)) b!686655))

(assert (= (or b!686657 b!686655) bm!34101))

(assert (=> b!686656 m!650753))

(assert (=> b!686656 m!650753))

(declare-fun m!650805 () Bool)

(assert (=> b!686656 m!650805))

(assert (=> b!686658 m!650753))

(assert (=> b!686658 m!650753))

(assert (=> b!686658 m!650805))

(assert (=> bm!34101 m!650753))

(declare-fun m!650807 () Bool)

(assert (=> bm!34101 m!650807))

(assert (=> b!686659 m!650753))

(assert (=> b!686659 m!650753))

(declare-fun m!650809 () Bool)

(assert (=> b!686659 m!650809))

(assert (=> b!686558 d!94687))

(declare-fun d!94691 () Bool)

(declare-fun lt!315167 () Bool)

(assert (=> d!94691 (= lt!315167 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!297 acc!681)))))

(declare-fun e!391019 () Bool)

(assert (=> d!94691 (= lt!315167 e!391019)))

(declare-fun res!451891 () Bool)

(assert (=> d!94691 (=> (not res!451891) (not e!391019))))

(assert (=> d!94691 (= res!451891 (is-Cons!13082 acc!681))))

(assert (=> d!94691 (= (contains!3629 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315167)))

(declare-fun b!686664 () Bool)

(declare-fun e!391021 () Bool)

(assert (=> b!686664 (= e!391019 e!391021)))

(declare-fun res!451889 () Bool)

(assert (=> b!686664 (=> res!451889 e!391021)))

(assert (=> b!686664 (= res!451889 (= (h!14127 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!686665 () Bool)

(assert (=> b!686665 (= e!391021 (contains!3629 (t!19349 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94691 res!451891) b!686664))

(assert (= (and b!686664 (not res!451889)) b!686665))

(assert (=> d!94691 m!650795))

(declare-fun m!650811 () Bool)

(assert (=> d!94691 m!650811))

(declare-fun m!650813 () Bool)

(assert (=> b!686665 m!650813))

(assert (=> b!686553 d!94691))

(declare-fun b!686668 () Bool)

(declare-fun e!391025 () Bool)

(declare-fun call!34105 () Bool)

(assert (=> b!686668 (= e!391025 call!34105)))

(declare-fun d!94693 () Bool)

(declare-fun res!451894 () Bool)

(declare-fun e!391022 () Bool)

(assert (=> d!94693 (=> res!451894 e!391022)))

(assert (=> d!94693 (= res!451894 (bvsge from!3004 (size!19365 a!3626)))))

(assert (=> d!94693 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391022)))

(declare-fun b!686669 () Bool)

(declare-fun e!391024 () Bool)

(assert (=> b!686669 (= e!391024 e!391025)))

(declare-fun c!77755 () Bool)

(assert (=> b!686669 (= c!77755 (validKeyInArray!0 (select (arr!18992 a!3626) from!3004)))))

(declare-fun b!686670 () Bool)

(assert (=> b!686670 (= e!391025 call!34105)))

(declare-fun b!686671 () Bool)

(assert (=> b!686671 (= e!391022 e!391024)))

(declare-fun res!451893 () Bool)

(assert (=> b!686671 (=> (not res!451893) (not e!391024))))

(declare-fun e!391023 () Bool)

(assert (=> b!686671 (= res!451893 (not e!391023))))

(declare-fun res!451892 () Bool)

(assert (=> b!686671 (=> (not res!451892) (not e!391023))))

(assert (=> b!686671 (= res!451892 (validKeyInArray!0 (select (arr!18992 a!3626) from!3004)))))

(declare-fun bm!34102 () Bool)

(assert (=> bm!34102 (= call!34105 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77755 (Cons!13082 (select (arr!18992 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!686672 () Bool)

(assert (=> b!686672 (= e!391023 (contains!3629 acc!681 (select (arr!18992 a!3626) from!3004)))))

(assert (= (and d!94693 (not res!451894)) b!686671))

(assert (= (and b!686671 res!451892) b!686672))

(assert (= (and b!686671 res!451893) b!686669))

(assert (= (and b!686669 c!77755) b!686670))

(assert (= (and b!686669 (not c!77755)) b!686668))

(assert (= (or b!686670 b!686668) bm!34102))

(assert (=> b!686669 m!650691))

(assert (=> b!686669 m!650691))

(assert (=> b!686669 m!650729))

(assert (=> b!686671 m!650691))

(assert (=> b!686671 m!650691))

(assert (=> b!686671 m!650729))

(assert (=> bm!34102 m!650691))

(declare-fun m!650815 () Bool)

(assert (=> bm!34102 m!650815))

(assert (=> b!686672 m!650691))

(assert (=> b!686672 m!650691))

(declare-fun m!650817 () Bool)

(assert (=> b!686672 m!650817))

(assert (=> b!686564 d!94693))

(declare-fun d!94695 () Bool)

(assert (=> d!94695 (= (array_inv!14766 a!3626) (bvsge (size!19365 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61300 d!94695))

(assert (=> b!686551 d!94675))

(declare-fun d!94699 () Bool)

(declare-fun res!451901 () Bool)

(declare-fun e!391032 () Bool)

(assert (=> d!94699 (=> res!451901 e!391032)))

(assert (=> d!94699 (= res!451901 (is-Nil!13083 acc!681))))

(assert (=> d!94699 (= (noDuplicate!876 acc!681) e!391032)))

(declare-fun b!686679 () Bool)

(declare-fun e!391033 () Bool)

(assert (=> b!686679 (= e!391032 e!391033)))

(declare-fun res!451902 () Bool)

(assert (=> b!686679 (=> (not res!451902) (not e!391033))))

(assert (=> b!686679 (= res!451902 (not (contains!3629 (t!19349 acc!681) (h!14127 acc!681))))))

(declare-fun b!686680 () Bool)

(assert (=> b!686680 (= e!391033 (noDuplicate!876 (t!19349 acc!681)))))

(assert (= (and d!94699 (not res!451901)) b!686679))

(assert (= (and b!686679 res!451902) b!686680))

(declare-fun m!650821 () Bool)

(assert (=> b!686679 m!650821))

(declare-fun m!650823 () Bool)

(assert (=> b!686680 m!650823))

(assert (=> b!686562 d!94699))

(declare-fun d!94701 () Bool)

(declare-fun lt!315170 () Bool)

(assert (=> d!94701 (= lt!315170 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!297 acc!681)))))

(declare-fun e!391034 () Bool)

(assert (=> d!94701 (= lt!315170 e!391034)))

(declare-fun res!451904 () Bool)

(assert (=> d!94701 (=> (not res!451904) (not e!391034))))

(assert (=> d!94701 (= res!451904 (is-Cons!13082 acc!681))))

(assert (=> d!94701 (= (contains!3629 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315170)))

(declare-fun b!686681 () Bool)

(declare-fun e!391035 () Bool)

(assert (=> b!686681 (= e!391034 e!391035)))

(declare-fun res!451903 () Bool)

(assert (=> b!686681 (=> res!451903 e!391035)))

(assert (=> b!686681 (= res!451903 (= (h!14127 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!686682 () Bool)

(assert (=> b!686682 (= e!391035 (contains!3629 (t!19349 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94701 res!451904) b!686681))

(assert (= (and b!686681 (not res!451903)) b!686682))

(assert (=> d!94701 m!650795))

(declare-fun m!650825 () Bool)

(assert (=> d!94701 m!650825))

(declare-fun m!650827 () Bool)

(assert (=> b!686682 m!650827))

(assert (=> b!686561 d!94701))

(assert (=> b!686552 d!94663))

(declare-fun d!94703 () Bool)

(declare-fun res!451905 () Bool)

(declare-fun e!391036 () Bool)

(assert (=> d!94703 (=> res!451905 e!391036)))

(assert (=> d!94703 (= res!451905 (= (select (arr!18992 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94703 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391036)))

(declare-fun b!686683 () Bool)

(declare-fun e!391037 () Bool)

(assert (=> b!686683 (= e!391036 e!391037)))

(declare-fun res!451906 () Bool)

(assert (=> b!686683 (=> (not res!451906) (not e!391037))))

(assert (=> b!686683 (= res!451906 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19365 a!3626)))))

(declare-fun b!686684 () Bool)

(assert (=> b!686684 (= e!391037 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94703 (not res!451905)) b!686683))

(assert (= (and b!686683 res!451906) b!686684))

(assert (=> d!94703 m!650777))

(declare-fun m!650829 () Bool)

(assert (=> b!686684 m!650829))

(assert (=> b!686552 d!94703))

(declare-fun d!94705 () Bool)

(assert (=> d!94705 (= (-!179 ($colon$colon!378 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315179 () Unit!24197)

(declare-fun choose!16 ((_ BitVec 64) List!13086) Unit!24197)

(assert (=> d!94705 (= lt!315179 (choose!16 k!2843 acc!681))))

(assert (=> d!94705 (not (contains!3629 acc!681 k!2843))))

(assert (=> d!94705 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315179)))

(declare-fun bs!20132 () Bool)

(assert (= bs!20132 d!94705))

(assert (=> bs!20132 m!650727))

(assert (=> bs!20132 m!650727))

(declare-fun m!650847 () Bool)

(assert (=> bs!20132 m!650847))

(declare-fun m!650849 () Bool)

(assert (=> bs!20132 m!650849))

(assert (=> bs!20132 m!650711))

(assert (=> b!686552 d!94705))

(declare-fun d!94715 () Bool)

(assert (=> d!94715 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315139)))

(declare-fun lt!315185 () Unit!24197)

(declare-fun choose!66 (array!39640 (_ BitVec 64) (_ BitVec 32) List!13086 List!13086) Unit!24197)

(assert (=> d!94715 (= lt!315185 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315139))))

(assert (=> d!94715 (bvslt (size!19365 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94715 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315139) lt!315185)))

(declare-fun bs!20134 () Bool)

(assert (= bs!20134 d!94715))

