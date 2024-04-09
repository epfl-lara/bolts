; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60038 () Bool)

(assert start!60038)

(declare-fun b!667184 () Bool)

(declare-datatypes ((Unit!23340 0))(
  ( (Unit!23341) )
))
(declare-fun e!381891 () Unit!23340)

(declare-fun Unit!23342 () Unit!23340)

(assert (=> b!667184 (= e!381891 Unit!23342)))

(declare-fun b!667185 () Bool)

(declare-fun e!381882 () Unit!23340)

(declare-fun lt!310752 () Unit!23340)

(assert (=> b!667185 (= e!381882 lt!310752)))

(declare-fun lt!310748 () Unit!23340)

(declare-datatypes ((List!12803 0))(
  ( (Nil!12800) (Cons!12799 (h!13844 (_ BitVec 64)) (t!19039 List!12803)) )
))
(declare-fun acc!681 () List!12803)

(declare-fun lemmaListSubSeqRefl!0 (List!12803) Unit!23340)

(assert (=> b!667185 (= lt!310748 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!84 (List!12803 List!12803) Bool)

(assert (=> b!667185 (subseq!84 acc!681 acc!681)))

(declare-datatypes ((array!39041 0))(
  ( (array!39042 (arr!18709 (Array (_ BitVec 32) (_ BitVec 64))) (size!19073 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39041)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39041 List!12803 List!12803 (_ BitVec 32)) Unit!23340)

(declare-fun $colon$colon!215 (List!12803 (_ BitVec 64)) List!12803)

(assert (=> b!667185 (= lt!310752 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!215 acc!681 (select (arr!18709 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39041 (_ BitVec 32) List!12803) Bool)

(assert (=> b!667185 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667187 () Bool)

(declare-fun res!434575 () Bool)

(declare-fun e!381892 () Bool)

(assert (=> b!667187 (=> (not res!434575) (not e!381892))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667187 (= res!434575 (validKeyInArray!0 k0!2843))))

(declare-fun b!667188 () Bool)

(declare-fun e!381888 () Bool)

(assert (=> b!667188 (= e!381888 true)))

(declare-fun lt!310744 () Bool)

(declare-fun e!381887 () Bool)

(assert (=> b!667188 (= lt!310744 e!381887)))

(declare-fun res!434587 () Bool)

(assert (=> b!667188 (=> res!434587 e!381887)))

(declare-fun e!381885 () Bool)

(assert (=> b!667188 (= res!434587 e!381885)))

(declare-fun res!434585 () Bool)

(assert (=> b!667188 (=> (not res!434585) (not e!381885))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667188 (= res!434585 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667189 () Bool)

(declare-fun res!434578 () Bool)

(assert (=> b!667189 (=> (not res!434578) (not e!381892))))

(declare-fun contains!3346 (List!12803 (_ BitVec 64)) Bool)

(assert (=> b!667189 (= res!434578 (not (contains!3346 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667190 () Bool)

(declare-fun e!381884 () Bool)

(assert (=> b!667190 (= e!381884 (contains!3346 acc!681 k0!2843))))

(declare-fun b!667191 () Bool)

(declare-fun Unit!23343 () Unit!23340)

(assert (=> b!667191 (= e!381882 Unit!23343)))

(declare-fun b!667192 () Bool)

(declare-fun res!434582 () Bool)

(assert (=> b!667192 (=> (not res!434582) (not e!381892))))

(assert (=> b!667192 (= res!434582 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667193 () Bool)

(declare-fun res!434594 () Bool)

(assert (=> b!667193 (=> res!434594 e!381888)))

(declare-fun lt!310746 () List!12803)

(assert (=> b!667193 (= res!434594 (contains!3346 lt!310746 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667194 () Bool)

(declare-fun res!434588 () Bool)

(assert (=> b!667194 (=> (not res!434588) (not e!381892))))

(assert (=> b!667194 (= res!434588 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19073 a!3626))))))

(declare-fun b!667195 () Bool)

(declare-fun Unit!23344 () Unit!23340)

(assert (=> b!667195 (= e!381891 Unit!23344)))

(declare-fun lt!310749 () Unit!23340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39041 (_ BitVec 64) (_ BitVec 32)) Unit!23340)

(assert (=> b!667195 (= lt!310749 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!667195 false))

(declare-fun b!667196 () Bool)

(assert (=> b!667196 (= e!381885 (contains!3346 lt!310746 k0!2843))))

(declare-fun b!667197 () Bool)

(declare-fun e!381886 () Bool)

(assert (=> b!667197 (= e!381887 e!381886)))

(declare-fun res!434583 () Bool)

(assert (=> b!667197 (=> (not res!434583) (not e!381886))))

(assert (=> b!667197 (= res!434583 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667198 () Bool)

(declare-fun res!434581 () Bool)

(assert (=> b!667198 (=> (not res!434581) (not e!381892))))

(assert (=> b!667198 (= res!434581 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19073 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667199 () Bool)

(declare-fun e!381889 () Bool)

(assert (=> b!667199 (= e!381889 (not (contains!3346 acc!681 k0!2843)))))

(declare-fun b!667200 () Bool)

(declare-fun res!434590 () Bool)

(assert (=> b!667200 (=> res!434590 e!381888)))

(assert (=> b!667200 (= res!434590 (contains!3346 lt!310746 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!434592 () Bool)

(assert (=> start!60038 (=> (not res!434592) (not e!381892))))

(assert (=> start!60038 (= res!434592 (and (bvslt (size!19073 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19073 a!3626))))))

(assert (=> start!60038 e!381892))

(assert (=> start!60038 true))

(declare-fun array_inv!14483 (array!39041) Bool)

(assert (=> start!60038 (array_inv!14483 a!3626)))

(declare-fun b!667186 () Bool)

(declare-fun res!434579 () Bool)

(assert (=> b!667186 (=> (not res!434579) (not e!381892))))

(assert (=> b!667186 (= res!434579 (not (contains!3346 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667201 () Bool)

(declare-fun res!434577 () Bool)

(assert (=> b!667201 (=> (not res!434577) (not e!381892))))

(declare-fun e!381883 () Bool)

(assert (=> b!667201 (= res!434577 e!381883)))

(declare-fun res!434593 () Bool)

(assert (=> b!667201 (=> res!434593 e!381883)))

(assert (=> b!667201 (= res!434593 e!381884)))

(declare-fun res!434580 () Bool)

(assert (=> b!667201 (=> (not res!434580) (not e!381884))))

(assert (=> b!667201 (= res!434580 (bvsgt from!3004 i!1382))))

(declare-fun b!667202 () Bool)

(declare-fun res!434586 () Bool)

(assert (=> b!667202 (=> (not res!434586) (not e!381892))))

(declare-fun arrayContainsKey!0 (array!39041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667202 (= res!434586 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667203 () Bool)

(declare-fun res!434589 () Bool)

(assert (=> b!667203 (=> res!434589 e!381888)))

(declare-fun noDuplicate!593 (List!12803) Bool)

(assert (=> b!667203 (= res!434589 (not (noDuplicate!593 lt!310746)))))

(declare-fun b!667204 () Bool)

(assert (=> b!667204 (= e!381883 e!381889)))

(declare-fun res!434576 () Bool)

(assert (=> b!667204 (=> (not res!434576) (not e!381889))))

(assert (=> b!667204 (= res!434576 (bvsle from!3004 i!1382))))

(declare-fun b!667205 () Bool)

(declare-fun res!434591 () Bool)

(assert (=> b!667205 (=> (not res!434591) (not e!381892))))

(assert (=> b!667205 (= res!434591 (noDuplicate!593 acc!681))))

(declare-fun b!667206 () Bool)

(assert (=> b!667206 (= e!381892 (not e!381888))))

(declare-fun res!434574 () Bool)

(assert (=> b!667206 (=> res!434574 e!381888)))

(assert (=> b!667206 (= res!434574 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667206 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310746)))

(declare-fun lt!310751 () Unit!23340)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39041 (_ BitVec 64) (_ BitVec 32) List!12803 List!12803) Unit!23340)

(assert (=> b!667206 (= lt!310751 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310746))))

(declare-fun -!82 (List!12803 (_ BitVec 64)) List!12803)

(assert (=> b!667206 (= (-!82 lt!310746 k0!2843) acc!681)))

(assert (=> b!667206 (= lt!310746 ($colon$colon!215 acc!681 k0!2843))))

(declare-fun lt!310747 () Unit!23340)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12803) Unit!23340)

(assert (=> b!667206 (= lt!310747 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!667206 (subseq!84 acc!681 acc!681)))

(declare-fun lt!310745 () Unit!23340)

(assert (=> b!667206 (= lt!310745 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667206 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310743 () Unit!23340)

(assert (=> b!667206 (= lt!310743 e!381882)))

(declare-fun c!76672 () Bool)

(assert (=> b!667206 (= c!76672 (validKeyInArray!0 (select (arr!18709 a!3626) from!3004)))))

(declare-fun lt!310750 () Unit!23340)

(assert (=> b!667206 (= lt!310750 e!381891)))

(declare-fun c!76673 () Bool)

(assert (=> b!667206 (= c!76673 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667206 (arrayContainsKey!0 (array!39042 (store (arr!18709 a!3626) i!1382 k0!2843) (size!19073 a!3626)) k0!2843 from!3004)))

(declare-fun b!667207 () Bool)

(assert (=> b!667207 (= e!381886 (not (contains!3346 lt!310746 k0!2843)))))

(declare-fun b!667208 () Bool)

(declare-fun res!434584 () Bool)

(assert (=> b!667208 (=> (not res!434584) (not e!381892))))

(assert (=> b!667208 (= res!434584 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12800))))

(assert (= (and start!60038 res!434592) b!667205))

(assert (= (and b!667205 res!434591) b!667186))

(assert (= (and b!667186 res!434579) b!667189))

(assert (= (and b!667189 res!434578) b!667201))

(assert (= (and b!667201 res!434580) b!667190))

(assert (= (and b!667201 (not res!434593)) b!667204))

(assert (= (and b!667204 res!434576) b!667199))

(assert (= (and b!667201 res!434577) b!667208))

(assert (= (and b!667208 res!434584) b!667192))

(assert (= (and b!667192 res!434582) b!667194))

(assert (= (and b!667194 res!434588) b!667187))

(assert (= (and b!667187 res!434575) b!667202))

(assert (= (and b!667202 res!434586) b!667198))

(assert (= (and b!667198 res!434581) b!667206))

(assert (= (and b!667206 c!76673) b!667195))

(assert (= (and b!667206 (not c!76673)) b!667184))

(assert (= (and b!667206 c!76672) b!667185))

(assert (= (and b!667206 (not c!76672)) b!667191))

(assert (= (and b!667206 (not res!434574)) b!667203))

(assert (= (and b!667203 (not res!434589)) b!667200))

(assert (= (and b!667200 (not res!434590)) b!667193))

(assert (= (and b!667193 (not res!434594)) b!667188))

(assert (= (and b!667188 res!434585) b!667196))

(assert (= (and b!667188 (not res!434587)) b!667197))

(assert (= (and b!667197 res!434583) b!667207))

(declare-fun m!637813 () Bool)

(assert (=> b!667203 m!637813))

(declare-fun m!637815 () Bool)

(assert (=> b!667193 m!637815))

(declare-fun m!637817 () Bool)

(assert (=> b!667190 m!637817))

(declare-fun m!637819 () Bool)

(assert (=> b!667186 m!637819))

(declare-fun m!637821 () Bool)

(assert (=> b!667185 m!637821))

(declare-fun m!637823 () Bool)

(assert (=> b!667185 m!637823))

(declare-fun m!637825 () Bool)

(assert (=> b!667185 m!637825))

(declare-fun m!637827 () Bool)

(assert (=> b!667185 m!637827))

(assert (=> b!667185 m!637823))

(assert (=> b!667185 m!637825))

(declare-fun m!637829 () Bool)

(assert (=> b!667185 m!637829))

(declare-fun m!637831 () Bool)

(assert (=> b!667185 m!637831))

(declare-fun m!637833 () Bool)

(assert (=> b!667200 m!637833))

(declare-fun m!637835 () Bool)

(assert (=> b!667196 m!637835))

(declare-fun m!637837 () Bool)

(assert (=> b!667192 m!637837))

(declare-fun m!637839 () Bool)

(assert (=> b!667195 m!637839))

(declare-fun m!637841 () Bool)

(assert (=> b!667208 m!637841))

(declare-fun m!637843 () Bool)

(assert (=> b!667202 m!637843))

(declare-fun m!637845 () Bool)

(assert (=> b!667205 m!637845))

(assert (=> b!667199 m!637817))

(assert (=> b!667206 m!637821))

(declare-fun m!637847 () Bool)

(assert (=> b!667206 m!637847))

(assert (=> b!667206 m!637823))

(declare-fun m!637849 () Bool)

(assert (=> b!667206 m!637849))

(declare-fun m!637851 () Bool)

(assert (=> b!667206 m!637851))

(assert (=> b!667206 m!637829))

(declare-fun m!637853 () Bool)

(assert (=> b!667206 m!637853))

(assert (=> b!667206 m!637823))

(declare-fun m!637855 () Bool)

(assert (=> b!667206 m!637855))

(declare-fun m!637857 () Bool)

(assert (=> b!667206 m!637857))

(declare-fun m!637859 () Bool)

(assert (=> b!667206 m!637859))

(declare-fun m!637861 () Bool)

(assert (=> b!667206 m!637861))

(declare-fun m!637863 () Bool)

(assert (=> b!667206 m!637863))

(assert (=> b!667206 m!637831))

(assert (=> b!667207 m!637835))

(declare-fun m!637865 () Bool)

(assert (=> b!667187 m!637865))

(declare-fun m!637867 () Bool)

(assert (=> start!60038 m!637867))

(declare-fun m!637869 () Bool)

(assert (=> b!667189 m!637869))

(check-sat (not b!667202) (not b!667206) (not b!667208) (not b!667203) (not start!60038) (not b!667205) (not b!667190) (not b!667192) (not b!667193) (not b!667199) (not b!667195) (not b!667200) (not b!667196) (not b!667186) (not b!667187) (not b!667207) (not b!667185) (not b!667189))
