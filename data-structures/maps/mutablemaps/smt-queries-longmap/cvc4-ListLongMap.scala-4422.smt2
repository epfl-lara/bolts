; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61198 () Bool)

(assert start!61198)

(declare-fun b!685613 () Bool)

(declare-fun res!451083 () Bool)

(declare-fun e!390417 () Bool)

(assert (=> b!685613 (=> (not res!451083) (not e!390417))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39613 0))(
  ( (array!39614 (arr!18980 (Array (_ BitVec 32) (_ BitVec 64))) (size!19352 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39613)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!685613 (= res!451083 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19352 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685614 () Bool)

(declare-fun res!451069 () Bool)

(assert (=> b!685614 (=> (not res!451069) (not e!390417))))

(assert (=> b!685614 (= res!451069 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19352 a!3626))))))

(declare-fun b!685615 () Bool)

(declare-fun e!390422 () Bool)

(declare-fun e!390418 () Bool)

(assert (=> b!685615 (= e!390422 e!390418)))

(declare-fun res!451077 () Bool)

(assert (=> b!685615 (=> (not res!451077) (not e!390418))))

(declare-datatypes ((List!13074 0))(
  ( (Nil!13071) (Cons!13070 (h!14115 (_ BitVec 64)) (t!19334 List!13074)) )
))
(declare-fun lt!314749 () List!13074)

(declare-fun contains!3617 (List!13074 (_ BitVec 64)) Bool)

(assert (=> b!685615 (= res!451077 (not (contains!3617 lt!314749 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685617 () Bool)

(declare-fun res!451078 () Bool)

(assert (=> b!685617 (=> (not res!451078) (not e!390417))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685617 (= res!451078 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685618 () Bool)

(declare-fun res!451075 () Bool)

(assert (=> b!685618 (=> res!451075 e!390422)))

(declare-fun acc!681 () List!13074)

(declare-fun subseq!202 (List!13074 List!13074) Bool)

(assert (=> b!685618 (= res!451075 (not (subseq!202 acc!681 lt!314749)))))

(declare-fun b!685619 () Bool)

(declare-fun res!451067 () Bool)

(assert (=> b!685619 (=> (not res!451067) (not e!390417))))

(declare-fun arrayNoDuplicates!0 (array!39613 (_ BitVec 32) List!13074) Bool)

(assert (=> b!685619 (= res!451067 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13071))))

(declare-fun b!685620 () Bool)

(declare-datatypes ((Unit!24137 0))(
  ( (Unit!24138) )
))
(declare-fun e!390419 () Unit!24137)

(declare-fun lt!314745 () Unit!24137)

(assert (=> b!685620 (= e!390419 lt!314745)))

(declare-fun lt!314743 () Unit!24137)

(declare-fun lemmaListSubSeqRefl!0 (List!13074) Unit!24137)

(assert (=> b!685620 (= lt!314743 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685620 (subseq!202 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39613 List!13074 List!13074 (_ BitVec 32)) Unit!24137)

(declare-fun $colon$colon!366 (List!13074 (_ BitVec 64)) List!13074)

(assert (=> b!685620 (= lt!314745 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!366 acc!681 (select (arr!18980 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685620 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685621 () Bool)

(declare-fun res!451079 () Bool)

(assert (=> b!685621 (=> (not res!451079) (not e!390417))))

(declare-fun noDuplicate!864 (List!13074) Bool)

(assert (=> b!685621 (= res!451079 (noDuplicate!864 acc!681))))

(declare-fun b!685622 () Bool)

(assert (=> b!685622 (= e!390418 (not (contains!3617 lt!314749 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685623 () Bool)

(assert (=> b!685623 (= e!390417 (not e!390422))))

(declare-fun res!451068 () Bool)

(assert (=> b!685623 (=> res!451068 e!390422)))

(assert (=> b!685623 (= res!451068 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!167 (List!13074 (_ BitVec 64)) List!13074)

(assert (=> b!685623 (= (-!167 lt!314749 k!2843) acc!681)))

(assert (=> b!685623 (= lt!314749 ($colon$colon!366 acc!681 k!2843))))

(declare-fun lt!314746 () Unit!24137)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13074) Unit!24137)

(assert (=> b!685623 (= lt!314746 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!685623 (subseq!202 acc!681 acc!681)))

(declare-fun lt!314751 () Unit!24137)

(assert (=> b!685623 (= lt!314751 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685623 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314748 () Unit!24137)

(assert (=> b!685623 (= lt!314748 e!390419)))

(declare-fun c!77641 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685623 (= c!77641 (validKeyInArray!0 (select (arr!18980 a!3626) from!3004)))))

(declare-fun lt!314744 () Unit!24137)

(declare-fun e!390421 () Unit!24137)

(assert (=> b!685623 (= lt!314744 e!390421)))

(declare-fun c!77642 () Bool)

(declare-fun lt!314750 () Bool)

(assert (=> b!685623 (= c!77642 lt!314750)))

(assert (=> b!685623 (= lt!314750 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685623 (arrayContainsKey!0 (array!39614 (store (arr!18980 a!3626) i!1382 k!2843) (size!19352 a!3626)) k!2843 from!3004)))

(declare-fun b!685616 () Bool)

(declare-fun e!390424 () Bool)

(declare-fun e!390423 () Bool)

(assert (=> b!685616 (= e!390424 e!390423)))

(declare-fun res!451081 () Bool)

(assert (=> b!685616 (=> (not res!451081) (not e!390423))))

(assert (=> b!685616 (= res!451081 (bvsle from!3004 i!1382))))

(declare-fun res!451085 () Bool)

(assert (=> start!61198 (=> (not res!451085) (not e!390417))))

(assert (=> start!61198 (= res!451085 (and (bvslt (size!19352 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19352 a!3626))))))

(assert (=> start!61198 e!390417))

(assert (=> start!61198 true))

(declare-fun array_inv!14754 (array!39613) Bool)

(assert (=> start!61198 (array_inv!14754 a!3626)))

(declare-fun b!685624 () Bool)

(declare-fun res!451070 () Bool)

(assert (=> b!685624 (=> (not res!451070) (not e!390417))))

(assert (=> b!685624 (= res!451070 e!390424)))

(declare-fun res!451066 () Bool)

(assert (=> b!685624 (=> res!451066 e!390424)))

(declare-fun e!390420 () Bool)

(assert (=> b!685624 (= res!451066 e!390420)))

(declare-fun res!451072 () Bool)

(assert (=> b!685624 (=> (not res!451072) (not e!390420))))

(assert (=> b!685624 (= res!451072 (bvsgt from!3004 i!1382))))

(declare-fun b!685625 () Bool)

(declare-fun Unit!24139 () Unit!24137)

(assert (=> b!685625 (= e!390421 Unit!24139)))

(declare-fun b!685626 () Bool)

(declare-fun res!451073 () Bool)

(assert (=> b!685626 (=> res!451073 e!390422)))

(assert (=> b!685626 (= res!451073 lt!314750)))

(declare-fun b!685627 () Bool)

(declare-fun res!451076 () Bool)

(assert (=> b!685627 (=> (not res!451076) (not e!390417))))

(assert (=> b!685627 (= res!451076 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685628 () Bool)

(assert (=> b!685628 (= e!390420 (contains!3617 acc!681 k!2843))))

(declare-fun b!685629 () Bool)

(declare-fun res!451084 () Bool)

(assert (=> b!685629 (=> res!451084 e!390422)))

(assert (=> b!685629 (= res!451084 (not (noDuplicate!864 lt!314749)))))

(declare-fun b!685630 () Bool)

(declare-fun res!451065 () Bool)

(assert (=> b!685630 (=> res!451065 e!390422)))

(assert (=> b!685630 (= res!451065 (not (contains!3617 lt!314749 k!2843)))))

(declare-fun b!685631 () Bool)

(declare-fun res!451082 () Bool)

(assert (=> b!685631 (=> (not res!451082) (not e!390417))))

(assert (=> b!685631 (= res!451082 (not (contains!3617 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685632 () Bool)

(declare-fun res!451071 () Bool)

(assert (=> b!685632 (=> res!451071 e!390422)))

(assert (=> b!685632 (= res!451071 (contains!3617 acc!681 k!2843))))

(declare-fun b!685633 () Bool)

(assert (=> b!685633 (= e!390423 (not (contains!3617 acc!681 k!2843)))))

(declare-fun b!685634 () Bool)

(declare-fun res!451080 () Bool)

(assert (=> b!685634 (=> (not res!451080) (not e!390417))))

(assert (=> b!685634 (= res!451080 (validKeyInArray!0 k!2843))))

(declare-fun b!685635 () Bool)

(declare-fun Unit!24140 () Unit!24137)

(assert (=> b!685635 (= e!390421 Unit!24140)))

(declare-fun lt!314747 () Unit!24137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39613 (_ BitVec 64) (_ BitVec 32)) Unit!24137)

(assert (=> b!685635 (= lt!314747 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!685635 false))

(declare-fun b!685636 () Bool)

(declare-fun res!451074 () Bool)

(assert (=> b!685636 (=> (not res!451074) (not e!390417))))

(assert (=> b!685636 (= res!451074 (not (contains!3617 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685637 () Bool)

(declare-fun Unit!24141 () Unit!24137)

(assert (=> b!685637 (= e!390419 Unit!24141)))

(assert (= (and start!61198 res!451085) b!685621))

(assert (= (and b!685621 res!451079) b!685636))

(assert (= (and b!685636 res!451074) b!685631))

(assert (= (and b!685631 res!451082) b!685624))

(assert (= (and b!685624 res!451072) b!685628))

(assert (= (and b!685624 (not res!451066)) b!685616))

(assert (= (and b!685616 res!451081) b!685633))

(assert (= (and b!685624 res!451070) b!685619))

(assert (= (and b!685619 res!451067) b!685627))

(assert (= (and b!685627 res!451076) b!685614))

(assert (= (and b!685614 res!451069) b!685634))

(assert (= (and b!685634 res!451080) b!685617))

(assert (= (and b!685617 res!451078) b!685613))

(assert (= (and b!685613 res!451083) b!685623))

(assert (= (and b!685623 c!77642) b!685635))

(assert (= (and b!685623 (not c!77642)) b!685625))

(assert (= (and b!685623 c!77641) b!685620))

(assert (= (and b!685623 (not c!77641)) b!685637))

(assert (= (and b!685623 (not res!451068)) b!685629))

(assert (= (and b!685629 (not res!451084)) b!685626))

(assert (= (and b!685626 (not res!451073)) b!685632))

(assert (= (and b!685632 (not res!451071)) b!685618))

(assert (= (and b!685618 (not res!451075)) b!685630))

(assert (= (and b!685630 (not res!451065)) b!685615))

(assert (= (and b!685615 res!451077) b!685622))

(declare-fun m!649801 () Bool)

(assert (=> b!685629 m!649801))

(declare-fun m!649803 () Bool)

(assert (=> b!685636 m!649803))

(declare-fun m!649805 () Bool)

(assert (=> b!685633 m!649805))

(assert (=> b!685632 m!649805))

(declare-fun m!649807 () Bool)

(assert (=> b!685623 m!649807))

(declare-fun m!649809 () Bool)

(assert (=> b!685623 m!649809))

(declare-fun m!649811 () Bool)

(assert (=> b!685623 m!649811))

(declare-fun m!649813 () Bool)

(assert (=> b!685623 m!649813))

(declare-fun m!649815 () Bool)

(assert (=> b!685623 m!649815))

(declare-fun m!649817 () Bool)

(assert (=> b!685623 m!649817))

(assert (=> b!685623 m!649807))

(declare-fun m!649819 () Bool)

(assert (=> b!685623 m!649819))

(declare-fun m!649821 () Bool)

(assert (=> b!685623 m!649821))

(declare-fun m!649823 () Bool)

(assert (=> b!685623 m!649823))

(declare-fun m!649825 () Bool)

(assert (=> b!685623 m!649825))

(declare-fun m!649827 () Bool)

(assert (=> b!685623 m!649827))

(declare-fun m!649829 () Bool)

(assert (=> start!61198 m!649829))

(declare-fun m!649831 () Bool)

(assert (=> b!685635 m!649831))

(declare-fun m!649833 () Bool)

(assert (=> b!685617 m!649833))

(declare-fun m!649835 () Bool)

(assert (=> b!685621 m!649835))

(declare-fun m!649837 () Bool)

(assert (=> b!685627 m!649837))

(declare-fun m!649839 () Bool)

(assert (=> b!685615 m!649839))

(declare-fun m!649841 () Bool)

(assert (=> b!685630 m!649841))

(assert (=> b!685620 m!649821))

(assert (=> b!685620 m!649807))

(declare-fun m!649843 () Bool)

(assert (=> b!685620 m!649843))

(declare-fun m!649845 () Bool)

(assert (=> b!685620 m!649845))

(assert (=> b!685620 m!649807))

(assert (=> b!685620 m!649843))

(assert (=> b!685620 m!649813))

(assert (=> b!685620 m!649827))

(declare-fun m!649847 () Bool)

(assert (=> b!685619 m!649847))

(declare-fun m!649849 () Bool)

(assert (=> b!685618 m!649849))

(assert (=> b!685628 m!649805))

(declare-fun m!649851 () Bool)

(assert (=> b!685634 m!649851))

(declare-fun m!649853 () Bool)

(assert (=> b!685622 m!649853))

(declare-fun m!649855 () Bool)

(assert (=> b!685631 m!649855))

(push 1)

(assert (not b!685627))

(assert (not b!685628))

(assert (not b!685621))

(assert (not b!685630))

(assert (not b!685635))

(assert (not b!685617))

(assert (not b!685618))

(assert (not b!685636))

(assert (not b!685615))

(assert (not start!61198))

(assert (not b!685623))

(assert (not b!685622))

(assert (not b!685629))

(assert (not b!685634))

(assert (not b!685632))

(assert (not b!685633))

(assert (not b!685631))

(assert (not b!685620))

(assert (not b!685619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94497 () Bool)

(declare-fun lt!314763 () Bool)

(declare-fun content!293 (List!13074) (Set (_ BitVec 64)))

(assert (=> d!94497 (= lt!314763 (member k!2843 (content!293 acc!681)))))

(declare-fun e!390472 () Bool)

(assert (=> d!94497 (= lt!314763 e!390472)))

(declare-fun res!451123 () Bool)

(assert (=> d!94497 (=> (not res!451123) (not e!390472))))

(assert (=> d!94497 (= res!451123 (is-Cons!13070 acc!681))))

(assert (=> d!94497 (= (contains!3617 acc!681 k!2843) lt!314763)))

(declare-fun b!685692 () Bool)

(declare-fun e!390471 () Bool)

(assert (=> b!685692 (= e!390472 e!390471)))

(declare-fun res!451122 () Bool)

(assert (=> b!685692 (=> res!451122 e!390471)))

(assert (=> b!685692 (= res!451122 (= (h!14115 acc!681) k!2843))))

(declare-fun b!685693 () Bool)

(assert (=> b!685693 (= e!390471 (contains!3617 (t!19334 acc!681) k!2843))))

(assert (= (and d!94497 res!451123) b!685692))

(assert (= (and b!685692 (not res!451122)) b!685693))

(declare-fun m!649887 () Bool)

(assert (=> d!94497 m!649887))

(declare-fun m!649889 () Bool)

(assert (=> d!94497 m!649889))

(declare-fun m!649893 () Bool)

(assert (=> b!685693 m!649893))

(assert (=> b!685633 d!94497))

(declare-fun d!94499 () Bool)

(declare-fun lt!314764 () Bool)

(assert (=> d!94499 (= lt!314764 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!293 lt!314749)))))

(declare-fun e!390474 () Bool)

(assert (=> d!94499 (= lt!314764 e!390474)))

(declare-fun res!451125 () Bool)

(assert (=> d!94499 (=> (not res!451125) (not e!390474))))

(assert (=> d!94499 (= res!451125 (is-Cons!13070 lt!314749))))

(assert (=> d!94499 (= (contains!3617 lt!314749 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314764)))

(declare-fun b!685694 () Bool)

(declare-fun e!390473 () Bool)

(assert (=> b!685694 (= e!390474 e!390473)))

(declare-fun res!451124 () Bool)

(assert (=> b!685694 (=> res!451124 e!390473)))

(assert (=> b!685694 (= res!451124 (= (h!14115 lt!314749) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685695 () Bool)

(assert (=> b!685695 (= e!390473 (contains!3617 (t!19334 lt!314749) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94499 res!451125) b!685694))

(assert (= (and b!685694 (not res!451124)) b!685695))

(declare-fun m!649899 () Bool)

(assert (=> d!94499 m!649899))

(declare-fun m!649901 () Bool)

(assert (=> d!94499 m!649901))

(declare-fun m!649903 () Bool)

(assert (=> b!685695 m!649903))

(assert (=> b!685622 d!94499))

(declare-fun d!94503 () Bool)

(declare-fun res!451132 () Bool)

(declare-fun e!390481 () Bool)

(assert (=> d!94503 (=> res!451132 e!390481)))

(assert (=> d!94503 (= res!451132 (is-Nil!13071 acc!681))))

(assert (=> d!94503 (= (noDuplicate!864 acc!681) e!390481)))

(declare-fun b!685702 () Bool)

(declare-fun e!390482 () Bool)

(assert (=> b!685702 (= e!390481 e!390482)))

(declare-fun res!451133 () Bool)

(assert (=> b!685702 (=> (not res!451133) (not e!390482))))

(assert (=> b!685702 (= res!451133 (not (contains!3617 (t!19334 acc!681) (h!14115 acc!681))))))

(declare-fun b!685703 () Bool)

(assert (=> b!685703 (= e!390482 (noDuplicate!864 (t!19334 acc!681)))))

(assert (= (and d!94503 (not res!451132)) b!685702))

(assert (= (and b!685702 res!451133) b!685703))

(declare-fun m!649909 () Bool)

(assert (=> b!685702 m!649909))

(declare-fun m!649911 () Bool)

(assert (=> b!685703 m!649911))

(assert (=> b!685621 d!94503))

(assert (=> b!685632 d!94497))

(declare-fun d!94513 () Bool)

(declare-fun lt!314765 () Bool)

(assert (=> d!94513 (= lt!314765 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!293 acc!681)))))

(declare-fun e!390484 () Bool)

(assert (=> d!94513 (= lt!314765 e!390484)))

(declare-fun res!451135 () Bool)

(assert (=> d!94513 (=> (not res!451135) (not e!390484))))

(assert (=> d!94513 (= res!451135 (is-Cons!13070 acc!681))))

(assert (=> d!94513 (= (contains!3617 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314765)))

(declare-fun b!685704 () Bool)

(declare-fun e!390483 () Bool)

(assert (=> b!685704 (= e!390484 e!390483)))

(declare-fun res!451134 () Bool)

(assert (=> b!685704 (=> res!451134 e!390483)))

(assert (=> b!685704 (= res!451134 (= (h!14115 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685705 () Bool)

(assert (=> b!685705 (= e!390483 (contains!3617 (t!19334 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94513 res!451135) b!685704))

(assert (= (and b!685704 (not res!451134)) b!685705))

(assert (=> d!94513 m!649887))

(declare-fun m!649913 () Bool)

(assert (=> d!94513 m!649913))

(declare-fun m!649915 () Bool)

(assert (=> b!685705 m!649915))

(assert (=> b!685631 d!94513))

(declare-fun d!94515 () Bool)

(assert (=> d!94515 (= (array_inv!14754 a!3626) (bvsge (size!19352 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61198 d!94515))

(declare-fun d!94517 () Bool)

(assert (=> d!94517 (= ($colon$colon!366 acc!681 (select (arr!18980 a!3626) from!3004)) (Cons!13070 (select (arr!18980 a!3626) from!3004) acc!681))))

(assert (=> b!685620 d!94517))

(declare-fun d!94521 () Bool)

(declare-fun res!451164 () Bool)

(declare-fun e!390515 () Bool)

(assert (=> d!94521 (=> res!451164 e!390515)))

(assert (=> d!94521 (= res!451164 (is-Nil!13071 acc!681))))

(assert (=> d!94521 (= (subseq!202 acc!681 acc!681) e!390515)))

(declare-fun b!685734 () Bool)

(declare-fun e!390513 () Bool)

(assert (=> b!685734 (= e!390513 (subseq!202 (t!19334 acc!681) (t!19334 acc!681)))))

(declare-fun b!685733 () Bool)

(declare-fun e!390516 () Bool)

(declare-fun e!390514 () Bool)

(assert (=> b!685733 (= e!390516 e!390514)))

(declare-fun res!451166 () Bool)

(assert (=> b!685733 (=> res!451166 e!390514)))

(assert (=> b!685733 (= res!451166 e!390513)))

(declare-fun res!451167 () Bool)

(assert (=> b!685733 (=> (not res!451167) (not e!390513))))

(assert (=> b!685733 (= res!451167 (= (h!14115 acc!681) (h!14115 acc!681)))))

(declare-fun b!685735 () Bool)

(assert (=> b!685735 (= e!390514 (subseq!202 acc!681 (t!19334 acc!681)))))

(declare-fun b!685732 () Bool)

(assert (=> b!685732 (= e!390515 e!390516)))

(declare-fun res!451165 () Bool)

(assert (=> b!685732 (=> (not res!451165) (not e!390516))))

(assert (=> b!685732 (= res!451165 (is-Cons!13070 acc!681))))

(assert (= (and d!94521 (not res!451164)) b!685732))

(assert (= (and b!685732 res!451165) b!685733))

(assert (= (and b!685733 res!451167) b!685734))

(assert (= (and b!685733 (not res!451166)) b!685735))

(declare-fun m!649929 () Bool)

(assert (=> b!685734 m!649929))

(declare-fun m!649931 () Bool)

(assert (=> b!685735 m!649931))

(assert (=> b!685620 d!94521))

(declare-fun d!94531 () Bool)

(assert (=> d!94531 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314778 () Unit!24137)

(declare-fun choose!80 (array!39613 List!13074 List!13074 (_ BitVec 32)) Unit!24137)

(assert (=> d!94531 (= lt!314778 (choose!80 a!3626 ($colon$colon!366 acc!681 (select (arr!18980 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94531 (bvslt (size!19352 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94531 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!366 acc!681 (select (arr!18980 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!314778)))

(declare-fun bs!20106 () Bool)

(assert (= bs!20106 d!94531))

(assert (=> bs!20106 m!649821))

(assert (=> bs!20106 m!649843))

(declare-fun m!649949 () Bool)

(assert (=> bs!20106 m!649949))

(assert (=> b!685620 d!94531))

(declare-fun d!94543 () Bool)

(assert (=> d!94543 (subseq!202 acc!681 acc!681)))

(declare-fun lt!314783 () Unit!24137)

(declare-fun choose!36 (List!13074) Unit!24137)

(assert (=> d!94543 (= lt!314783 (choose!36 acc!681))))

(assert (=> d!94543 (= (lemmaListSubSeqRefl!0 acc!681) lt!314783)))

(declare-fun bs!20107 () Bool)

(assert (= bs!20107 d!94543))

(assert (=> bs!20107 m!649827))

(declare-fun m!649951 () Bool)

(assert (=> bs!20107 m!649951))

(assert (=> b!685620 d!94543))

(declare-fun d!94545 () Bool)

(declare-fun res!451213 () Bool)

(declare-fun e!390569 () Bool)

(assert (=> d!94545 (=> res!451213 e!390569)))

(assert (=> d!94545 (= res!451213 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19352 a!3626)))))

(assert (=> d!94545 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390569)))

(declare-fun b!685794 () Bool)

(declare-fun e!390567 () Bool)

(declare-fun e!390568 () Bool)

(assert (=> b!685794 (= e!390567 e!390568)))

(declare-fun c!77658 () Bool)

(assert (=> b!685794 (= c!77658 (validKeyInArray!0 (select (arr!18980 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685795 () Bool)

(declare-fun call!34086 () Bool)

(assert (=> b!685795 (= e!390568 call!34086)))

(declare-fun b!685796 () Bool)

(assert (=> b!685796 (= e!390569 e!390567)))

(declare-fun res!451214 () Bool)

(assert (=> b!685796 (=> (not res!451214) (not e!390567))))

(declare-fun e!390570 () Bool)

(assert (=> b!685796 (= res!451214 (not e!390570))))

(declare-fun res!451212 () Bool)

(assert (=> b!685796 (=> (not res!451212) (not e!390570))))

(assert (=> b!685796 (= res!451212 (validKeyInArray!0 (select (arr!18980 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685797 () Bool)

(assert (=> b!685797 (= e!390570 (contains!3617 acc!681 (select (arr!18980 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34083 () Bool)

(assert (=> bm!34083 (= call!34086 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77658 (Cons!13070 (select (arr!18980 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!685798 () Bool)

(assert (=> b!685798 (= e!390568 call!34086)))

(assert (= (and d!94545 (not res!451213)) b!685796))

(assert (= (and b!685796 res!451212) b!685797))

(assert (= (and b!685796 res!451214) b!685794))

(assert (= (and b!685794 c!77658) b!685795))

(assert (= (and b!685794 (not c!77658)) b!685798))

(assert (= (or b!685795 b!685798) bm!34083))

(declare-fun m!649989 () Bool)

(assert (=> b!685794 m!649989))

(assert (=> b!685794 m!649989))

(declare-fun m!649991 () Bool)

(assert (=> b!685794 m!649991))

(assert (=> b!685796 m!649989))

(assert (=> b!685796 m!649989))

(assert (=> b!685796 m!649991))

(assert (=> b!685797 m!649989))

(assert (=> b!685797 m!649989))

(declare-fun m!649993 () Bool)

(assert (=> b!685797 m!649993))

(assert (=> bm!34083 m!649989))

(declare-fun m!649995 () Bool)

(assert (=> bm!34083 m!649995))

(assert (=> b!685620 d!94545))

(declare-fun d!94565 () Bool)

(declare-fun res!451216 () Bool)

(declare-fun e!390573 () Bool)

(assert (=> d!94565 (=> res!451216 e!390573)))

(assert (=> d!94565 (= res!451216 (bvsge #b00000000000000000000000000000000 (size!19352 a!3626)))))

(assert (=> d!94565 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13071) e!390573)))

(declare-fun b!685799 () Bool)

(declare-fun e!390571 () Bool)

(declare-fun e!390572 () Bool)

(assert (=> b!685799 (= e!390571 e!390572)))

(declare-fun c!77659 () Bool)

(assert (=> b!685799 (= c!77659 (validKeyInArray!0 (select (arr!18980 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685800 () Bool)

(declare-fun call!34087 () Bool)

(assert (=> b!685800 (= e!390572 call!34087)))

(declare-fun b!685801 () Bool)

(assert (=> b!685801 (= e!390573 e!390571)))

(declare-fun res!451217 () Bool)

(assert (=> b!685801 (=> (not res!451217) (not e!390571))))

(declare-fun e!390574 () Bool)

