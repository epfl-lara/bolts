; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60040 () Bool)

(assert start!60040)

(declare-fun b!667259 () Bool)

(declare-fun e!381922 () Bool)

(declare-fun e!381921 () Bool)

(assert (=> b!667259 (= e!381922 e!381921)))

(declare-fun res!434639 () Bool)

(assert (=> b!667259 (=> (not res!434639) (not e!381921))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667259 (= res!434639 (bvsle from!3004 i!1382))))

(declare-fun b!667260 () Bool)

(declare-fun e!381924 () Bool)

(declare-datatypes ((List!12804 0))(
  ( (Nil!12801) (Cons!12800 (h!13845 (_ BitVec 64)) (t!19040 List!12804)) )
))
(declare-fun lt!310779 () List!12804)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3347 (List!12804 (_ BitVec 64)) Bool)

(assert (=> b!667260 (= e!381924 (contains!3347 lt!310779 k!2843))))

(declare-fun b!667261 () Bool)

(declare-fun res!434642 () Bool)

(declare-fun e!381918 () Bool)

(assert (=> b!667261 (=> (not res!434642) (not e!381918))))

(declare-datatypes ((array!39043 0))(
  ( (array!39044 (arr!18710 (Array (_ BitVec 32) (_ BitVec 64))) (size!19074 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39043)

(declare-fun arrayNoDuplicates!0 (array!39043 (_ BitVec 32) List!12804) Bool)

(assert (=> b!667261 (= res!434642 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12801))))

(declare-fun b!667262 () Bool)

(declare-datatypes ((Unit!23345 0))(
  ( (Unit!23346) )
))
(declare-fun e!381920 () Unit!23345)

(declare-fun Unit!23347 () Unit!23345)

(assert (=> b!667262 (= e!381920 Unit!23347)))

(declare-fun lt!310781 () Unit!23345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39043 (_ BitVec 64) (_ BitVec 32)) Unit!23345)

(assert (=> b!667262 (= lt!310781 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667262 false))

(declare-fun b!667263 () Bool)

(declare-fun e!381917 () Bool)

(assert (=> b!667263 (= e!381917 true)))

(declare-fun lt!310777 () Bool)

(declare-fun e!381923 () Bool)

(assert (=> b!667263 (= lt!310777 e!381923)))

(declare-fun res!434651 () Bool)

(assert (=> b!667263 (=> res!434651 e!381923)))

(assert (=> b!667263 (= res!434651 e!381924)))

(declare-fun res!434656 () Bool)

(assert (=> b!667263 (=> (not res!434656) (not e!381924))))

(assert (=> b!667263 (= res!434656 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667264 () Bool)

(declare-fun res!434644 () Bool)

(assert (=> b!667264 (=> res!434644 e!381917)))

(assert (=> b!667264 (= res!434644 (contains!3347 lt!310779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667265 () Bool)

(declare-fun e!381915 () Bool)

(assert (=> b!667265 (= e!381915 (not (contains!3347 lt!310779 k!2843)))))

(declare-fun b!667266 () Bool)

(declare-fun e!381925 () Unit!23345)

(declare-fun lt!310780 () Unit!23345)

(assert (=> b!667266 (= e!381925 lt!310780)))

(declare-fun lt!310773 () Unit!23345)

(declare-fun acc!681 () List!12804)

(declare-fun lemmaListSubSeqRefl!0 (List!12804) Unit!23345)

(assert (=> b!667266 (= lt!310773 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!85 (List!12804 List!12804) Bool)

(assert (=> b!667266 (subseq!85 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39043 List!12804 List!12804 (_ BitVec 32)) Unit!23345)

(declare-fun $colon$colon!216 (List!12804 (_ BitVec 64)) List!12804)

(assert (=> b!667266 (= lt!310780 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!216 acc!681 (select (arr!18710 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667266 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667267 () Bool)

(assert (=> b!667267 (= e!381921 (not (contains!3347 acc!681 k!2843)))))

(declare-fun res!434654 () Bool)

(assert (=> start!60040 (=> (not res!434654) (not e!381918))))

(assert (=> start!60040 (= res!434654 (and (bvslt (size!19074 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19074 a!3626))))))

(assert (=> start!60040 e!381918))

(assert (=> start!60040 true))

(declare-fun array_inv!14484 (array!39043) Bool)

(assert (=> start!60040 (array_inv!14484 a!3626)))

(declare-fun b!667268 () Bool)

(declare-fun res!434653 () Bool)

(assert (=> b!667268 (=> (not res!434653) (not e!381918))))

(assert (=> b!667268 (= res!434653 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19074 a!3626))))))

(declare-fun b!667269 () Bool)

(declare-fun res!434643 () Bool)

(assert (=> b!667269 (=> (not res!434643) (not e!381918))))

(assert (=> b!667269 (= res!434643 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667270 () Bool)

(declare-fun Unit!23348 () Unit!23345)

(assert (=> b!667270 (= e!381925 Unit!23348)))

(declare-fun b!667271 () Bool)

(declare-fun res!434646 () Bool)

(assert (=> b!667271 (=> res!434646 e!381917)))

(assert (=> b!667271 (= res!434646 (contains!3347 lt!310779 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667272 () Bool)

(assert (=> b!667272 (= e!381923 e!381915)))

(declare-fun res!434641 () Bool)

(assert (=> b!667272 (=> (not res!434641) (not e!381915))))

(assert (=> b!667272 (= res!434641 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667273 () Bool)

(declare-fun res!434655 () Bool)

(assert (=> b!667273 (=> (not res!434655) (not e!381918))))

(declare-fun arrayContainsKey!0 (array!39043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667273 (= res!434655 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667274 () Bool)

(declare-fun res!434652 () Bool)

(assert (=> b!667274 (=> res!434652 e!381917)))

(declare-fun noDuplicate!594 (List!12804) Bool)

(assert (=> b!667274 (= res!434652 (not (noDuplicate!594 lt!310779)))))

(declare-fun b!667275 () Bool)

(declare-fun res!434657 () Bool)

(assert (=> b!667275 (=> (not res!434657) (not e!381918))))

(assert (=> b!667275 (= res!434657 (noDuplicate!594 acc!681))))

(declare-fun b!667276 () Bool)

(declare-fun res!434649 () Bool)

(assert (=> b!667276 (=> (not res!434649) (not e!381918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667276 (= res!434649 (validKeyInArray!0 k!2843))))

(declare-fun b!667277 () Bool)

(declare-fun res!434647 () Bool)

(assert (=> b!667277 (=> (not res!434647) (not e!381918))))

(assert (=> b!667277 (= res!434647 (not (contains!3347 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667278 () Bool)

(declare-fun res!434645 () Bool)

(assert (=> b!667278 (=> (not res!434645) (not e!381918))))

(assert (=> b!667278 (= res!434645 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19074 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667279 () Bool)

(declare-fun e!381916 () Bool)

(assert (=> b!667279 (= e!381916 (contains!3347 acc!681 k!2843))))

(declare-fun b!667280 () Bool)

(declare-fun res!434640 () Bool)

(assert (=> b!667280 (=> (not res!434640) (not e!381918))))

(assert (=> b!667280 (= res!434640 e!381922)))

(declare-fun res!434650 () Bool)

(assert (=> b!667280 (=> res!434650 e!381922)))

(assert (=> b!667280 (= res!434650 e!381916)))

(declare-fun res!434637 () Bool)

(assert (=> b!667280 (=> (not res!434637) (not e!381916))))

(assert (=> b!667280 (= res!434637 (bvsgt from!3004 i!1382))))

(declare-fun b!667281 () Bool)

(declare-fun Unit!23349 () Unit!23345)

(assert (=> b!667281 (= e!381920 Unit!23349)))

(declare-fun b!667282 () Bool)

(declare-fun res!434648 () Bool)

(assert (=> b!667282 (=> (not res!434648) (not e!381918))))

(assert (=> b!667282 (= res!434648 (not (contains!3347 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667283 () Bool)

(assert (=> b!667283 (= e!381918 (not e!381917))))

(declare-fun res!434638 () Bool)

(assert (=> b!667283 (=> res!434638 e!381917)))

(assert (=> b!667283 (= res!434638 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667283 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310779)))

(declare-fun lt!310778 () Unit!23345)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39043 (_ BitVec 64) (_ BitVec 32) List!12804 List!12804) Unit!23345)

(assert (=> b!667283 (= lt!310778 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310779))))

(declare-fun -!83 (List!12804 (_ BitVec 64)) List!12804)

(assert (=> b!667283 (= (-!83 lt!310779 k!2843) acc!681)))

(assert (=> b!667283 (= lt!310779 ($colon$colon!216 acc!681 k!2843))))

(declare-fun lt!310782 () Unit!23345)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12804) Unit!23345)

(assert (=> b!667283 (= lt!310782 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!667283 (subseq!85 acc!681 acc!681)))

(declare-fun lt!310776 () Unit!23345)

(assert (=> b!667283 (= lt!310776 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667283 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310774 () Unit!23345)

(assert (=> b!667283 (= lt!310774 e!381925)))

(declare-fun c!76678 () Bool)

(assert (=> b!667283 (= c!76678 (validKeyInArray!0 (select (arr!18710 a!3626) from!3004)))))

(declare-fun lt!310775 () Unit!23345)

(assert (=> b!667283 (= lt!310775 e!381920)))

(declare-fun c!76679 () Bool)

(assert (=> b!667283 (= c!76679 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667283 (arrayContainsKey!0 (array!39044 (store (arr!18710 a!3626) i!1382 k!2843) (size!19074 a!3626)) k!2843 from!3004)))

(assert (= (and start!60040 res!434654) b!667275))

(assert (= (and b!667275 res!434657) b!667282))

(assert (= (and b!667282 res!434648) b!667277))

(assert (= (and b!667277 res!434647) b!667280))

(assert (= (and b!667280 res!434637) b!667279))

(assert (= (and b!667280 (not res!434650)) b!667259))

(assert (= (and b!667259 res!434639) b!667267))

(assert (= (and b!667280 res!434640) b!667261))

(assert (= (and b!667261 res!434642) b!667269))

(assert (= (and b!667269 res!434643) b!667268))

(assert (= (and b!667268 res!434653) b!667276))

(assert (= (and b!667276 res!434649) b!667273))

(assert (= (and b!667273 res!434655) b!667278))

(assert (= (and b!667278 res!434645) b!667283))

(assert (= (and b!667283 c!76679) b!667262))

(assert (= (and b!667283 (not c!76679)) b!667281))

(assert (= (and b!667283 c!76678) b!667266))

(assert (= (and b!667283 (not c!76678)) b!667270))

(assert (= (and b!667283 (not res!434638)) b!667274))

(assert (= (and b!667274 (not res!434652)) b!667264))

(assert (= (and b!667264 (not res!434644)) b!667271))

(assert (= (and b!667271 (not res!434646)) b!667263))

(assert (= (and b!667263 res!434656) b!667260))

(assert (= (and b!667263 (not res!434651)) b!667272))

(assert (= (and b!667272 res!434641) b!667265))

(declare-fun m!637871 () Bool)

(assert (=> b!667269 m!637871))

(declare-fun m!637873 () Bool)

(assert (=> b!667283 m!637873))

(declare-fun m!637875 () Bool)

(assert (=> b!667283 m!637875))

(declare-fun m!637877 () Bool)

(assert (=> b!667283 m!637877))

(declare-fun m!637879 () Bool)

(assert (=> b!667283 m!637879))

(declare-fun m!637881 () Bool)

(assert (=> b!667283 m!637881))

(declare-fun m!637883 () Bool)

(assert (=> b!667283 m!637883))

(declare-fun m!637885 () Bool)

(assert (=> b!667283 m!637885))

(declare-fun m!637887 () Bool)

(assert (=> b!667283 m!637887))

(declare-fun m!637889 () Bool)

(assert (=> b!667283 m!637889))

(declare-fun m!637891 () Bool)

(assert (=> b!667283 m!637891))

(assert (=> b!667283 m!637875))

(declare-fun m!637893 () Bool)

(assert (=> b!667283 m!637893))

(declare-fun m!637895 () Bool)

(assert (=> b!667283 m!637895))

(declare-fun m!637897 () Bool)

(assert (=> b!667283 m!637897))

(declare-fun m!637899 () Bool)

(assert (=> b!667277 m!637899))

(declare-fun m!637901 () Bool)

(assert (=> b!667265 m!637901))

(declare-fun m!637903 () Bool)

(assert (=> b!667279 m!637903))

(declare-fun m!637905 () Bool)

(assert (=> b!667261 m!637905))

(declare-fun m!637907 () Bool)

(assert (=> b!667273 m!637907))

(declare-fun m!637909 () Bool)

(assert (=> b!667264 m!637909))

(declare-fun m!637911 () Bool)

(assert (=> start!60040 m!637911))

(declare-fun m!637913 () Bool)

(assert (=> b!667275 m!637913))

(declare-fun m!637915 () Bool)

(assert (=> b!667262 m!637915))

(declare-fun m!637917 () Bool)

(assert (=> b!667274 m!637917))

(declare-fun m!637919 () Bool)

(assert (=> b!667276 m!637919))

(declare-fun m!637921 () Bool)

(assert (=> b!667282 m!637921))

(assert (=> b!667266 m!637873))

(assert (=> b!667266 m!637875))

(declare-fun m!637923 () Bool)

(assert (=> b!667266 m!637923))

(declare-fun m!637925 () Bool)

(assert (=> b!667266 m!637925))

(assert (=> b!667266 m!637875))

(assert (=> b!667266 m!637923))

(assert (=> b!667266 m!637881))

(assert (=> b!667266 m!637897))

(declare-fun m!637927 () Bool)

(assert (=> b!667271 m!637927))

(assert (=> b!667267 m!637903))

(assert (=> b!667260 m!637901))

(push 1)

(assert (not b!667262))

(assert (not b!667261))

(assert (not b!667271))

(assert (not b!667277))

(assert (not b!667273))

