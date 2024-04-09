; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59748 () Bool)

(assert start!59748)

(declare-fun b!659680 () Bool)

(declare-fun e!379057 () Bool)

(declare-datatypes ((List!12667 0))(
  ( (Nil!12664) (Cons!12663 (h!13708 (_ BitVec 64)) (t!18903 List!12667)) )
))
(declare-fun contains!3210 (List!12667 (_ BitVec 64)) Bool)

(assert (=> b!659680 (= e!379057 (contains!3210 Nil!12664 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659681 () Bool)

(declare-fun res!427928 () Bool)

(declare-fun e!379056 () Bool)

(assert (=> b!659681 (=> (not res!427928) (not e!379056))))

(declare-datatypes ((array!38766 0))(
  ( (array!38767 (arr!18573 (Array (_ BitVec 32) (_ BitVec 64))) (size!18937 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38766)

(assert (=> b!659681 (= res!427928 (bvsle #b00000000000000000000000000000000 (size!18937 a!3626)))))

(declare-fun b!659682 () Bool)

(declare-fun e!379055 () Bool)

(declare-fun acc!681 () List!12667)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659682 (= e!379055 (contains!3210 acc!681 k!2843))))

(declare-fun b!659683 () Bool)

(declare-fun res!427922 () Bool)

(assert (=> b!659683 (=> (not res!427922) (not e!379056))))

(declare-fun e!379058 () Bool)

(assert (=> b!659683 (= res!427922 e!379058)))

(declare-fun res!427926 () Bool)

(assert (=> b!659683 (=> res!427926 e!379058)))

(assert (=> b!659683 (= res!427926 e!379055)))

(declare-fun res!427923 () Bool)

(assert (=> b!659683 (=> (not res!427923) (not e!379055))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659683 (= res!427923 (bvsgt from!3004 i!1382))))

(declare-fun b!659684 () Bool)

(assert (=> b!659684 (= e!379056 e!379057)))

(declare-fun res!427920 () Bool)

(assert (=> b!659684 (=> res!427920 e!379057)))

(assert (=> b!659684 (= res!427920 (contains!3210 Nil!12664 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659685 () Bool)

(declare-fun res!427927 () Bool)

(assert (=> b!659685 (=> (not res!427927) (not e!379056))))

(assert (=> b!659685 (= res!427927 (not (contains!3210 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659686 () Bool)

(declare-fun res!427921 () Bool)

(assert (=> b!659686 (=> (not res!427921) (not e!379056))))

(assert (=> b!659686 (= res!427921 (not (contains!3210 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659688 () Bool)

(declare-fun e!379060 () Bool)

(assert (=> b!659688 (= e!379060 (not (contains!3210 acc!681 k!2843)))))

(declare-fun b!659689 () Bool)

(declare-fun res!427925 () Bool)

(assert (=> b!659689 (=> (not res!427925) (not e!379056))))

(declare-fun noDuplicate!457 (List!12667) Bool)

(assert (=> b!659689 (= res!427925 (noDuplicate!457 acc!681))))

(declare-fun b!659690 () Bool)

(declare-fun res!427918 () Bool)

(assert (=> b!659690 (=> (not res!427918) (not e!379056))))

(assert (=> b!659690 (= res!427918 (noDuplicate!457 Nil!12664))))

(declare-fun b!659687 () Bool)

(assert (=> b!659687 (= e!379058 e!379060)))

(declare-fun res!427924 () Bool)

(assert (=> b!659687 (=> (not res!427924) (not e!379060))))

(assert (=> b!659687 (= res!427924 (bvsle from!3004 i!1382))))

(declare-fun res!427919 () Bool)

(assert (=> start!59748 (=> (not res!427919) (not e!379056))))

(assert (=> start!59748 (= res!427919 (and (bvslt (size!18937 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18937 a!3626))))))

(assert (=> start!59748 e!379056))

(assert (=> start!59748 true))

(declare-fun array_inv!14347 (array!38766) Bool)

(assert (=> start!59748 (array_inv!14347 a!3626)))

(assert (= (and start!59748 res!427919) b!659689))

(assert (= (and b!659689 res!427925) b!659686))

(assert (= (and b!659686 res!427921) b!659685))

(assert (= (and b!659685 res!427927) b!659683))

(assert (= (and b!659683 res!427923) b!659682))

(assert (= (and b!659683 (not res!427926)) b!659687))

(assert (= (and b!659687 res!427924) b!659688))

(assert (= (and b!659683 res!427922) b!659681))

(assert (= (and b!659681 res!427928) b!659690))

(assert (= (and b!659690 res!427918) b!659684))

(assert (= (and b!659684 (not res!427920)) b!659680))

(declare-fun m!632643 () Bool)

(assert (=> b!659686 m!632643))

(declare-fun m!632645 () Bool)

(assert (=> b!659688 m!632645))

(declare-fun m!632647 () Bool)

(assert (=> b!659680 m!632647))

(declare-fun m!632649 () Bool)

(assert (=> b!659684 m!632649))

(assert (=> b!659682 m!632645))

(declare-fun m!632651 () Bool)

(assert (=> b!659690 m!632651))

(declare-fun m!632653 () Bool)

(assert (=> b!659689 m!632653))

(declare-fun m!632655 () Bool)

(assert (=> b!659685 m!632655))

(declare-fun m!632657 () Bool)

(assert (=> start!59748 m!632657))

(push 1)

(assert (not b!659689))

(assert (not b!659685))

(assert (not b!659680))

(assert (not b!659684))

(assert (not b!659682))

(assert (not b!659690))

(assert (not start!59748))

(assert (not b!659688))

(assert (not b!659686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93047 () Bool)

(declare-fun lt!308672 () Bool)

(declare-fun content!260 (List!12667) (Set (_ BitVec 64)))

(assert (=> d!93047 (= lt!308672 (set.member k!2843 (content!260 acc!681)))))

(declare-fun e!379117 () Bool)

(assert (=> d!93047 (= lt!308672 e!379117)))

(declare-fun res!428016 () Bool)

(assert (=> d!93047 (=> (not res!428016) (not e!379117))))

(assert (=> d!93047 (= res!428016 (is-Cons!12663 acc!681))))

(assert (=> d!93047 (= (contains!3210 acc!681 k!2843) lt!308672)))

(declare-fun b!659777 () Bool)

(declare-fun e!379118 () Bool)

(assert (=> b!659777 (= e!379117 e!379118)))

(declare-fun res!428015 () Bool)

(assert (=> b!659777 (=> res!428015 e!379118)))

(assert (=> b!659777 (= res!428015 (= (h!13708 acc!681) k!2843))))

(declare-fun b!659778 () Bool)

(assert (=> b!659778 (= e!379118 (contains!3210 (t!18903 acc!681) k!2843))))

(assert (= (and d!93047 res!428016) b!659777))

(assert (= (and b!659777 (not res!428015)) b!659778))

(declare-fun m!632711 () Bool)

(assert (=> d!93047 m!632711))

(declare-fun m!632713 () Bool)

(assert (=> d!93047 m!632713))

(declare-fun m!632715 () Bool)

(assert (=> b!659778 m!632715))

(assert (=> b!659688 d!93047))

(declare-fun d!93055 () Bool)

(declare-fun res!428035 () Bool)

(declare-fun e!379137 () Bool)

(assert (=> d!93055 (=> res!428035 e!379137)))

(assert (=> d!93055 (= res!428035 (is-Nil!12664 acc!681))))

(assert (=> d!93055 (= (noDuplicate!457 acc!681) e!379137)))

(declare-fun b!659797 () Bool)

(declare-fun e!379138 () Bool)

(assert (=> b!659797 (= e!379137 e!379138)))

(declare-fun res!428036 () Bool)

(assert (=> b!659797 (=> (not res!428036) (not e!379138))))

(assert (=> b!659797 (= res!428036 (not (contains!3210 (t!18903 acc!681) (h!13708 acc!681))))))

(declare-fun b!659798 () Bool)

(assert (=> b!659798 (= e!379138 (noDuplicate!457 (t!18903 acc!681)))))

(assert (= (and d!93055 (not res!428035)) b!659797))

(assert (= (and b!659797 res!428036) b!659798))

(declare-fun m!632741 () Bool)

(assert (=> b!659797 m!632741))

(declare-fun m!632743 () Bool)

(assert (=> b!659798 m!632743))

(assert (=> b!659689 d!93055))

(declare-fun d!93065 () Bool)

(declare-fun lt!308679 () Bool)

(assert (=> d!93065 (= lt!308679 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!260 Nil!12664)))))

(declare-fun e!379139 () Bool)

(assert (=> d!93065 (= lt!308679 e!379139)))

(declare-fun res!428038 () Bool)

(assert (=> d!93065 (=> (not res!428038) (not e!379139))))

(assert (=> d!93065 (= res!428038 (is-Cons!12663 Nil!12664))))

(assert (=> d!93065 (= (contains!3210 Nil!12664 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308679)))

(declare-fun b!659799 () Bool)

(declare-fun e!379140 () Bool)

(assert (=> b!659799 (= e!379139 e!379140)))

(declare-fun res!428037 () Bool)

(assert (=> b!659799 (=> res!428037 e!379140)))

(assert (=> b!659799 (= res!428037 (= (h!13708 Nil!12664) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659800 () Bool)

(assert (=> b!659800 (= e!379140 (contains!3210 (t!18903 Nil!12664) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93065 res!428038) b!659799))

(assert (= (and b!659799 (not res!428037)) b!659800))

(declare-fun m!632745 () Bool)

(assert (=> d!93065 m!632745))

(declare-fun m!632747 () Bool)

(assert (=> d!93065 m!632747))

(declare-fun m!632749 () Bool)

(assert (=> b!659800 m!632749))

(assert (=> b!659684 d!93065))

(declare-fun d!93067 () Bool)

(declare-fun lt!308680 () Bool)

(assert (=> d!93067 (= lt!308680 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!260 acc!681)))))

(declare-fun e!379141 () Bool)

(assert (=> d!93067 (= lt!308680 e!379141)))

(declare-fun res!428040 () Bool)

(assert (=> d!93067 (=> (not res!428040) (not e!379141))))

(assert (=> d!93067 (= res!428040 (is-Cons!12663 acc!681))))

(assert (=> d!93067 (= (contains!3210 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308680)))

(declare-fun b!659801 () Bool)

(declare-fun e!379142 () Bool)

(assert (=> b!659801 (= e!379141 e!379142)))

(declare-fun res!428039 () Bool)

(assert (=> b!659801 (=> res!428039 e!379142)))

(assert (=> b!659801 (= res!428039 (= (h!13708 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659802 () Bool)

(assert (=> b!659802 (= e!379142 (contains!3210 (t!18903 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93067 res!428040) b!659801))

(assert (= (and b!659801 (not res!428039)) b!659802))

(assert (=> d!93067 m!632711))

(declare-fun m!632751 () Bool)

(assert (=> d!93067 m!632751))

(declare-fun m!632753 () Bool)

(assert (=> b!659802 m!632753))

(assert (=> b!659685 d!93067))

(declare-fun d!93069 () Bool)

(declare-fun res!428045 () Bool)

(declare-fun e!379147 () Bool)

(assert (=> d!93069 (=> res!428045 e!379147)))

(assert (=> d!93069 (= res!428045 (is-Nil!12664 Nil!12664))))

(assert (=> d!93069 (= (noDuplicate!457 Nil!12664) e!379147)))

(declare-fun b!659805 () Bool)

(declare-fun e!379148 () Bool)

(assert (=> b!659805 (= e!379147 e!379148)))

(declare-fun res!428046 () Bool)

(assert (=> b!659805 (=> (not res!428046) (not e!379148))))

(assert (=> b!659805 (= res!428046 (not (contains!3210 (t!18903 Nil!12664) (h!13708 Nil!12664))))))

(declare-fun b!659806 () Bool)

(assert (=> b!659806 (= e!379148 (noDuplicate!457 (t!18903 Nil!12664)))))

(assert (= (and d!93069 (not res!428045)) b!659805))

(assert (= (and b!659805 res!428046) b!659806))

(declare-fun m!632755 () Bool)

(assert (=> b!659805 m!632755))

(declare-fun m!632757 () Bool)

(assert (=> b!659806 m!632757))

(assert (=> b!659690 d!93069))

(declare-fun d!93071 () Bool)

(declare-fun lt!308681 () Bool)

(assert (=> d!93071 (= lt!308681 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!260 Nil!12664)))))

(declare-fun e!379149 () Bool)

(assert (=> d!93071 (= lt!308681 e!379149)))

(declare-fun res!428048 () Bool)

(assert (=> d!93071 (=> (not res!428048) (not e!379149))))

(assert (=> d!93071 (= res!428048 (is-Cons!12663 Nil!12664))))

(assert (=> d!93071 (= (contains!3210 Nil!12664 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308681)))

(declare-fun b!659809 () Bool)

(declare-fun e!379150 () Bool)

(assert (=> b!659809 (= e!379149 e!379150)))

(declare-fun res!428047 () Bool)

(assert (=> b!659809 (=> res!428047 e!379150)))

(assert (=> b!659809 (= res!428047 (= (h!13708 Nil!12664) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659810 () Bool)

(assert (=> b!659810 (= e!379150 (contains!3210 (t!18903 Nil!12664) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93071 res!428048) b!659809))

(assert (= (and b!659809 (not res!428047)) b!659810))

(assert (=> d!93071 m!632745))

(declare-fun m!632759 () Bool)

(assert (=> d!93071 m!632759))

(declare-fun m!632761 () Bool)

(assert (=> b!659810 m!632761))

(assert (=> b!659680 d!93071))

(declare-fun d!93073 () Bool)

(declare-fun lt!308682 () Bool)

(assert (=> d!93073 (= lt!308682 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!260 acc!681)))))

(declare-fun e!379151 () Bool)

(assert (=> d!93073 (= lt!308682 e!379151)))

(declare-fun res!428050 () Bool)

(assert (=> d!93073 (=> (not res!428050) (not e!379151))))

(assert (=> d!93073 (= res!428050 (is-Cons!12663 acc!681))))

(assert (=> d!93073 (= (contains!3210 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308682)))

(declare-fun b!659811 () Bool)

(declare-fun e!379152 () Bool)

(assert (=> b!659811 (= e!379151 e!379152)))

(declare-fun res!428049 () Bool)

(assert (=> b!659811 (=> res!428049 e!379152)))

(assert (=> b!659811 (= res!428049 (= (h!13708 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659812 () Bool)

(assert (=> b!659812 (= e!379152 (contains!3210 (t!18903 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93073 res!428050) b!659811))

(assert (= (and b!659811 (not res!428049)) b!659812))

(assert (=> d!93073 m!632711))

(declare-fun m!632763 () Bool)

(assert (=> d!93073 m!632763))

(declare-fun m!632765 () Bool)

