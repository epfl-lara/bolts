; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60082 () Bool)

(assert start!60082)

(declare-fun b!668834 () Bool)

(declare-datatypes ((Unit!23450 0))(
  ( (Unit!23451) )
))
(declare-fun e!382610 () Unit!23450)

(declare-fun Unit!23452 () Unit!23450)

(assert (=> b!668834 (= e!382610 Unit!23452)))

(declare-fun b!668835 () Bool)

(declare-fun e!382609 () Unit!23450)

(declare-fun Unit!23453 () Unit!23450)

(assert (=> b!668835 (= e!382609 Unit!23453)))

(declare-fun lt!311411 () Unit!23450)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39085 0))(
  ( (array!39086 (arr!18731 (Array (_ BitVec 32) (_ BitVec 64))) (size!19095 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39085 (_ BitVec 64) (_ BitVec 32)) Unit!23450)

(assert (=> b!668835 (= lt!311411 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668835 false))

(declare-fun b!668836 () Bool)

(declare-fun res!435969 () Bool)

(declare-fun e!382617 () Bool)

(assert (=> b!668836 (=> (not res!435969) (not e!382617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668836 (= res!435969 (validKeyInArray!0 k!2843))))

(declare-fun b!668837 () Bool)

(declare-fun res!435965 () Bool)

(assert (=> b!668837 (=> (not res!435965) (not e!382617))))

(declare-datatypes ((List!12825 0))(
  ( (Nil!12822) (Cons!12821 (h!13866 (_ BitVec 64)) (t!19061 List!12825)) )
))
(declare-fun arrayNoDuplicates!0 (array!39085 (_ BitVec 32) List!12825) Bool)

(assert (=> b!668837 (= res!435965 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12822))))

(declare-fun b!668838 () Bool)

(declare-fun res!435960 () Bool)

(declare-fun e!382608 () Bool)

(assert (=> b!668838 (=> res!435960 e!382608)))

(declare-fun lt!311404 () List!12825)

(declare-fun contains!3368 (List!12825 (_ BitVec 64)) Bool)

(assert (=> b!668838 (= res!435960 (contains!3368 lt!311404 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668839 () Bool)

(declare-fun res!435964 () Bool)

(assert (=> b!668839 (=> (not res!435964) (not e!382617))))

(declare-fun acc!681 () List!12825)

(assert (=> b!668839 (= res!435964 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668840 () Bool)

(declare-fun e!382618 () Bool)

(assert (=> b!668840 (= e!382618 (contains!3368 lt!311404 k!2843))))

(declare-fun b!668841 () Bool)

(declare-fun res!435975 () Bool)

(assert (=> b!668841 (=> (not res!435975) (not e!382617))))

(declare-fun e!382612 () Bool)

(assert (=> b!668841 (= res!435975 e!382612)))

(declare-fun res!435974 () Bool)

(assert (=> b!668841 (=> res!435974 e!382612)))

(declare-fun e!382613 () Bool)

(assert (=> b!668841 (= res!435974 e!382613)))

(declare-fun res!435977 () Bool)

(assert (=> b!668841 (=> (not res!435977) (not e!382613))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668841 (= res!435977 (bvsgt from!3004 i!1382))))

(declare-fun b!668842 () Bool)

(declare-fun res!435968 () Bool)

(assert (=> b!668842 (=> (not res!435968) (not e!382617))))

(assert (=> b!668842 (= res!435968 (not (contains!3368 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668843 () Bool)

(assert (=> b!668843 (= e!382608 true)))

(declare-fun lt!311409 () Bool)

(declare-fun e!382615 () Bool)

(assert (=> b!668843 (= lt!311409 e!382615)))

(declare-fun res!435972 () Bool)

(assert (=> b!668843 (=> res!435972 e!382615)))

(assert (=> b!668843 (= res!435972 e!382618)))

(declare-fun res!435966 () Bool)

(assert (=> b!668843 (=> (not res!435966) (not e!382618))))

(assert (=> b!668843 (= res!435966 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668844 () Bool)

(declare-fun res!435967 () Bool)

(assert (=> b!668844 (=> (not res!435967) (not e!382617))))

(assert (=> b!668844 (= res!435967 (not (contains!3368 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668845 () Bool)

(declare-fun res!435980 () Bool)

(assert (=> b!668845 (=> res!435980 e!382608)))

(declare-fun noDuplicate!615 (List!12825) Bool)

(assert (=> b!668845 (= res!435980 (not (noDuplicate!615 lt!311404)))))

(declare-fun b!668846 () Bool)

(assert (=> b!668846 (= e!382617 (not e!382608))))

(declare-fun res!435970 () Bool)

(assert (=> b!668846 (=> res!435970 e!382608)))

(assert (=> b!668846 (= res!435970 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668846 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311404)))

(declare-fun lt!311408 () Unit!23450)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39085 (_ BitVec 64) (_ BitVec 32) List!12825 List!12825) Unit!23450)

(assert (=> b!668846 (= lt!311408 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311404))))

(declare-fun -!104 (List!12825 (_ BitVec 64)) List!12825)

(assert (=> b!668846 (= (-!104 lt!311404 k!2843) acc!681)))

(declare-fun $colon$colon!237 (List!12825 (_ BitVec 64)) List!12825)

(assert (=> b!668846 (= lt!311404 ($colon$colon!237 acc!681 k!2843))))

(declare-fun lt!311405 () Unit!23450)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12825) Unit!23450)

(assert (=> b!668846 (= lt!311405 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!106 (List!12825 List!12825) Bool)

(assert (=> b!668846 (subseq!106 acc!681 acc!681)))

(declare-fun lt!311412 () Unit!23450)

(declare-fun lemmaListSubSeqRefl!0 (List!12825) Unit!23450)

(assert (=> b!668846 (= lt!311412 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668846 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311407 () Unit!23450)

(assert (=> b!668846 (= lt!311407 e!382610)))

(declare-fun c!76804 () Bool)

(assert (=> b!668846 (= c!76804 (validKeyInArray!0 (select (arr!18731 a!3626) from!3004)))))

(declare-fun lt!311406 () Unit!23450)

(assert (=> b!668846 (= lt!311406 e!382609)))

(declare-fun c!76805 () Bool)

(declare-fun arrayContainsKey!0 (array!39085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668846 (= c!76805 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668846 (arrayContainsKey!0 (array!39086 (store (arr!18731 a!3626) i!1382 k!2843) (size!19095 a!3626)) k!2843 from!3004)))

(declare-fun b!668847 () Bool)

(declare-fun res!435979 () Bool)

(assert (=> b!668847 (=> (not res!435979) (not e!382617))))

(assert (=> b!668847 (= res!435979 (noDuplicate!615 acc!681))))

(declare-fun b!668848 () Bool)

(declare-fun lt!311410 () Unit!23450)

(assert (=> b!668848 (= e!382610 lt!311410)))

(declare-fun lt!311403 () Unit!23450)

(assert (=> b!668848 (= lt!311403 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668848 (subseq!106 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39085 List!12825 List!12825 (_ BitVec 32)) Unit!23450)

(assert (=> b!668848 (= lt!311410 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!237 acc!681 (select (arr!18731 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668848 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668849 () Bool)

(declare-fun res!435962 () Bool)

(assert (=> b!668849 (=> (not res!435962) (not e!382617))))

(assert (=> b!668849 (= res!435962 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19095 a!3626))))))

(declare-fun b!668850 () Bool)

(declare-fun e!382611 () Bool)

(assert (=> b!668850 (= e!382611 (not (contains!3368 acc!681 k!2843)))))

(declare-fun b!668851 () Bool)

(assert (=> b!668851 (= e!382613 (contains!3368 acc!681 k!2843))))

(declare-fun b!668852 () Bool)

(assert (=> b!668852 (= e!382612 e!382611)))

(declare-fun res!435976 () Bool)

(assert (=> b!668852 (=> (not res!435976) (not e!382611))))

(assert (=> b!668852 (= res!435976 (bvsle from!3004 i!1382))))

(declare-fun b!668853 () Bool)

(declare-fun e!382616 () Bool)

(assert (=> b!668853 (= e!382616 (not (contains!3368 lt!311404 k!2843)))))

(declare-fun b!668854 () Bool)

(declare-fun res!435961 () Bool)

(assert (=> b!668854 (=> (not res!435961) (not e!382617))))

(assert (=> b!668854 (= res!435961 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19095 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!435978 () Bool)

(assert (=> start!60082 (=> (not res!435978) (not e!382617))))

(assert (=> start!60082 (= res!435978 (and (bvslt (size!19095 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19095 a!3626))))))

(assert (=> start!60082 e!382617))

(assert (=> start!60082 true))

(declare-fun array_inv!14505 (array!39085) Bool)

(assert (=> start!60082 (array_inv!14505 a!3626)))

(declare-fun b!668855 () Bool)

(declare-fun res!435971 () Bool)

(assert (=> b!668855 (=> res!435971 e!382608)))

(assert (=> b!668855 (= res!435971 (contains!3368 lt!311404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668856 () Bool)

(declare-fun res!435963 () Bool)

(assert (=> b!668856 (=> (not res!435963) (not e!382617))))

(assert (=> b!668856 (= res!435963 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668857 () Bool)

(declare-fun Unit!23454 () Unit!23450)

(assert (=> b!668857 (= e!382609 Unit!23454)))

(declare-fun b!668858 () Bool)

(assert (=> b!668858 (= e!382615 e!382616)))

(declare-fun res!435973 () Bool)

(assert (=> b!668858 (=> (not res!435973) (not e!382616))))

(assert (=> b!668858 (= res!435973 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60082 res!435978) b!668847))

(assert (= (and b!668847 res!435979) b!668842))

(assert (= (and b!668842 res!435968) b!668844))

(assert (= (and b!668844 res!435967) b!668841))

(assert (= (and b!668841 res!435977) b!668851))

(assert (= (and b!668841 (not res!435974)) b!668852))

(assert (= (and b!668852 res!435976) b!668850))

(assert (= (and b!668841 res!435975) b!668837))

(assert (= (and b!668837 res!435965) b!668839))

(assert (= (and b!668839 res!435964) b!668849))

(assert (= (and b!668849 res!435962) b!668836))

(assert (= (and b!668836 res!435969) b!668856))

(assert (= (and b!668856 res!435963) b!668854))

(assert (= (and b!668854 res!435961) b!668846))

(assert (= (and b!668846 c!76805) b!668835))

(assert (= (and b!668846 (not c!76805)) b!668857))

(assert (= (and b!668846 c!76804) b!668848))

(assert (= (and b!668846 (not c!76804)) b!668834))

(assert (= (and b!668846 (not res!435970)) b!668845))

(assert (= (and b!668845 (not res!435980)) b!668855))

(assert (= (and b!668855 (not res!435971)) b!668838))

(assert (= (and b!668838 (not res!435960)) b!668843))

(assert (= (and b!668843 res!435966) b!668840))

(assert (= (and b!668843 (not res!435972)) b!668858))

(assert (= (and b!668858 res!435973) b!668853))

(declare-fun m!639089 () Bool)

(assert (=> b!668844 m!639089))

(declare-fun m!639091 () Bool)

(assert (=> b!668838 m!639091))

(declare-fun m!639093 () Bool)

(assert (=> b!668846 m!639093))

(declare-fun m!639095 () Bool)

(assert (=> b!668846 m!639095))

(declare-fun m!639097 () Bool)

(assert (=> b!668846 m!639097))

(declare-fun m!639099 () Bool)

(assert (=> b!668846 m!639099))

(declare-fun m!639101 () Bool)

(assert (=> b!668846 m!639101))

(declare-fun m!639103 () Bool)

(assert (=> b!668846 m!639103))

(declare-fun m!639105 () Bool)

(assert (=> b!668846 m!639105))

(declare-fun m!639107 () Bool)

(assert (=> b!668846 m!639107))

(assert (=> b!668846 m!639097))

(declare-fun m!639109 () Bool)

(assert (=> b!668846 m!639109))

(declare-fun m!639111 () Bool)

(assert (=> b!668846 m!639111))

(declare-fun m!639113 () Bool)

(assert (=> b!668846 m!639113))

(declare-fun m!639115 () Bool)

(assert (=> b!668846 m!639115))

(declare-fun m!639117 () Bool)

(assert (=> b!668846 m!639117))

(declare-fun m!639119 () Bool)

(assert (=> b!668836 m!639119))

(declare-fun m!639121 () Bool)

(assert (=> b!668835 m!639121))

(declare-fun m!639123 () Bool)

(assert (=> b!668839 m!639123))

(declare-fun m!639125 () Bool)

(assert (=> b!668842 m!639125))

(declare-fun m!639127 () Bool)

(assert (=> b!668850 m!639127))

(declare-fun m!639129 () Bool)

(assert (=> b!668840 m!639129))

(declare-fun m!639131 () Bool)

(assert (=> b!668855 m!639131))

(assert (=> b!668848 m!639095))

(assert (=> b!668848 m!639097))

(declare-fun m!639133 () Bool)

(assert (=> b!668848 m!639133))

(declare-fun m!639135 () Bool)

(assert (=> b!668848 m!639135))

(assert (=> b!668848 m!639097))

(assert (=> b!668848 m!639133))

(assert (=> b!668848 m!639113))

(assert (=> b!668848 m!639117))

(declare-fun m!639137 () Bool)

(assert (=> b!668856 m!639137))

(assert (=> b!668851 m!639127))

(declare-fun m!639139 () Bool)

(assert (=> b!668845 m!639139))

(declare-fun m!639141 () Bool)

(assert (=> start!60082 m!639141))

(assert (=> b!668853 m!639129))

(declare-fun m!639143 () Bool)

(assert (=> b!668847 m!639143))

(declare-fun m!639145 () Bool)

(assert (=> b!668837 m!639145))

(push 1)

(assert (not b!668848))

(assert (not b!668837))

(assert (not b!668840))

(assert (not start!60082))

(assert (not b!668844))

(assert (not b!668835))

(assert (not b!668838))

(assert (not b!668851))

(assert (not b!668842))

(assert (not b!668839))

(assert (not b!668845))

(assert (not b!668856))

(assert (not b!668855))

(assert (not b!668853))

(assert (not b!668850))

(assert (not b!668847))

(assert (not b!668836))

(assert (not b!668846))

(check-sat)

