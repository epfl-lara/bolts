; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61600 () Bool)

(assert start!61600)

(declare-fun b!689107 () Bool)

(declare-fun res!453855 () Bool)

(declare-fun e!392380 () Bool)

(assert (=> b!689107 (=> (not res!453855) (not e!392380))))

(declare-datatypes ((List!13110 0))(
  ( (Nil!13107) (Cons!13106 (h!14151 (_ BitVec 64)) (t!19382 List!13110)) )
))
(declare-fun acc!681 () List!13110)

(declare-fun contains!3653 (List!13110 (_ BitVec 64)) Bool)

(assert (=> b!689107 (= res!453855 (not (contains!3653 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689108 () Bool)

(declare-fun res!453863 () Bool)

(assert (=> b!689108 (=> (not res!453863) (not e!392380))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39697 0))(
  ( (array!39698 (arr!19016 (Array (_ BitVec 32) (_ BitVec 64))) (size!19397 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39697)

(assert (=> b!689108 (= res!453863 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19397 a!3626))))))

(declare-fun b!689109 () Bool)

(declare-fun res!453854 () Bool)

(assert (=> b!689109 (=> (not res!453854) (not e!392380))))

(declare-fun arrayNoDuplicates!0 (array!39697 (_ BitVec 32) List!13110) Bool)

(assert (=> b!689109 (= res!453854 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13107))))

(declare-fun res!453862 () Bool)

(assert (=> start!61600 (=> (not res!453862) (not e!392380))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61600 (= res!453862 (and (bvslt (size!19397 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19397 a!3626))))))

(assert (=> start!61600 e!392380))

(assert (=> start!61600 true))

(declare-fun array_inv!14790 (array!39697) Bool)

(assert (=> start!61600 (array_inv!14790 a!3626)))

(declare-fun b!689110 () Bool)

(declare-fun res!453845 () Bool)

(declare-fun e!392382 () Bool)

(assert (=> b!689110 (=> res!453845 e!392382)))

(declare-fun lt!316057 () List!13110)

(assert (=> b!689110 (= res!453845 (contains!3653 lt!316057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689111 () Bool)

(declare-fun e!392376 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!689111 (= e!392376 (not (contains!3653 lt!316057 k!2843)))))

(declare-fun b!689112 () Bool)

(declare-datatypes ((Unit!24317 0))(
  ( (Unit!24318) )
))
(declare-fun e!392381 () Unit!24317)

(declare-fun Unit!24319 () Unit!24317)

(assert (=> b!689112 (= e!392381 Unit!24319)))

(declare-fun lt!316054 () Unit!24317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39697 (_ BitVec 64) (_ BitVec 32)) Unit!24317)

(assert (=> b!689112 (= lt!316054 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!689112 false))

(declare-fun b!689113 () Bool)

(declare-fun res!453853 () Bool)

(assert (=> b!689113 (=> (not res!453853) (not e!392380))))

(assert (=> b!689113 (= res!453853 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19397 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689114 () Bool)

(declare-fun res!453856 () Bool)

(assert (=> b!689114 (=> res!453856 e!392382)))

(declare-fun e!392378 () Bool)

(assert (=> b!689114 (= res!453856 e!392378)))

(declare-fun res!453848 () Bool)

(assert (=> b!689114 (=> (not res!453848) (not e!392378))))

(assert (=> b!689114 (= res!453848 e!392376)))

(declare-fun res!453849 () Bool)

(assert (=> b!689114 (=> res!453849 e!392376)))

(assert (=> b!689114 (= res!453849 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689115 () Bool)

(declare-fun res!453865 () Bool)

(assert (=> b!689115 (=> (not res!453865) (not e!392380))))

(declare-fun arrayContainsKey!0 (array!39697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689115 (= res!453865 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689116 () Bool)

(declare-fun e!392384 () Bool)

(assert (=> b!689116 (= e!392384 (not (contains!3653 acc!681 k!2843)))))

(declare-fun b!689117 () Bool)

(declare-fun res!453846 () Bool)

(assert (=> b!689117 (=> (not res!453846) (not e!392380))))

(assert (=> b!689117 (= res!453846 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689118 () Bool)

(declare-fun res!453850 () Bool)

(assert (=> b!689118 (=> (not res!453850) (not e!392380))))

(assert (=> b!689118 (= res!453850 (not (contains!3653 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689119 () Bool)

(assert (=> b!689119 (= e!392380 (not e!392382))))

(declare-fun res!453858 () Bool)

(assert (=> b!689119 (=> res!453858 e!392382)))

(assert (=> b!689119 (= res!453858 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689119 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316057)))

(declare-fun lt!316056 () Unit!24317)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39697 (_ BitVec 64) (_ BitVec 32) List!13110 List!13110) Unit!24317)

(assert (=> b!689119 (= lt!316056 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316057))))

(declare-fun -!203 (List!13110 (_ BitVec 64)) List!13110)

(assert (=> b!689119 (= (-!203 lt!316057 k!2843) acc!681)))

(declare-fun $colon$colon!402 (List!13110 (_ BitVec 64)) List!13110)

(assert (=> b!689119 (= lt!316057 ($colon$colon!402 acc!681 k!2843))))

(declare-fun lt!316053 () Unit!24317)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13110) Unit!24317)

(assert (=> b!689119 (= lt!316053 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!238 (List!13110 List!13110) Bool)

(assert (=> b!689119 (subseq!238 acc!681 acc!681)))

(declare-fun lt!316058 () Unit!24317)

(declare-fun lemmaListSubSeqRefl!0 (List!13110) Unit!24317)

(assert (=> b!689119 (= lt!316058 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689119 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316051 () Unit!24317)

(declare-fun e!392379 () Unit!24317)

(assert (=> b!689119 (= lt!316051 e!392379)))

(declare-fun c!77999 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689119 (= c!77999 (validKeyInArray!0 (select (arr!19016 a!3626) from!3004)))))

(declare-fun lt!316059 () Unit!24317)

(assert (=> b!689119 (= lt!316059 e!392381)))

(declare-fun c!77998 () Bool)

(assert (=> b!689119 (= c!77998 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689119 (arrayContainsKey!0 (array!39698 (store (arr!19016 a!3626) i!1382 k!2843) (size!19397 a!3626)) k!2843 from!3004)))

(declare-fun b!689120 () Bool)

(declare-fun Unit!24320 () Unit!24317)

(assert (=> b!689120 (= e!392381 Unit!24320)))

(declare-fun b!689121 () Bool)

(declare-fun e!392377 () Bool)

(assert (=> b!689121 (= e!392377 (contains!3653 lt!316057 k!2843))))

(declare-fun b!689122 () Bool)

(declare-fun res!453866 () Bool)

(assert (=> b!689122 (=> res!453866 e!392382)))

(assert (=> b!689122 (= res!453866 (contains!3653 lt!316057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689123 () Bool)

(declare-fun lt!316055 () Unit!24317)

(assert (=> b!689123 (= e!392379 lt!316055)))

(declare-fun lt!316052 () Unit!24317)

(assert (=> b!689123 (= lt!316052 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689123 (subseq!238 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39697 List!13110 List!13110 (_ BitVec 32)) Unit!24317)

(assert (=> b!689123 (= lt!316055 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!402 acc!681 (select (arr!19016 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689123 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689124 () Bool)

(declare-fun e!392383 () Bool)

(assert (=> b!689124 (= e!392383 e!392384)))

(declare-fun res!453860 () Bool)

(assert (=> b!689124 (=> (not res!453860) (not e!392384))))

(assert (=> b!689124 (= res!453860 (bvsle from!3004 i!1382))))

(declare-fun b!689125 () Bool)

(declare-fun e!392385 () Bool)

(assert (=> b!689125 (= e!392385 (contains!3653 acc!681 k!2843))))

(declare-fun b!689126 () Bool)

(assert (=> b!689126 (= e!392382 (bvslt (bvsub (size!19397 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19397 a!3626) from!3004)))))

(declare-fun b!689127 () Bool)

(assert (=> b!689127 (= e!392378 e!392377)))

(declare-fun res!453852 () Bool)

(assert (=> b!689127 (=> res!453852 e!392377)))

(assert (=> b!689127 (= res!453852 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689128 () Bool)

(declare-fun res!453851 () Bool)

(assert (=> b!689128 (=> res!453851 e!392382)))

(declare-fun noDuplicate!900 (List!13110) Bool)

(assert (=> b!689128 (= res!453851 (not (noDuplicate!900 lt!316057)))))

(declare-fun b!689129 () Bool)

(declare-fun res!453859 () Bool)

(assert (=> b!689129 (=> (not res!453859) (not e!392380))))

(assert (=> b!689129 (= res!453859 (noDuplicate!900 acc!681))))

(declare-fun b!689130 () Bool)

(declare-fun Unit!24321 () Unit!24317)

(assert (=> b!689130 (= e!392379 Unit!24321)))

(declare-fun b!689131 () Bool)

(declare-fun res!453857 () Bool)

(assert (=> b!689131 (=> (not res!453857) (not e!392380))))

(assert (=> b!689131 (= res!453857 e!392383)))

(declare-fun res!453847 () Bool)

(assert (=> b!689131 (=> res!453847 e!392383)))

(assert (=> b!689131 (= res!453847 e!392385)))

(declare-fun res!453864 () Bool)

(assert (=> b!689131 (=> (not res!453864) (not e!392385))))

(assert (=> b!689131 (= res!453864 (bvsgt from!3004 i!1382))))

(declare-fun b!689132 () Bool)

(declare-fun res!453861 () Bool)

(assert (=> b!689132 (=> (not res!453861) (not e!392380))))

(assert (=> b!689132 (= res!453861 (validKeyInArray!0 k!2843))))

(assert (= (and start!61600 res!453862) b!689129))

(assert (= (and b!689129 res!453859) b!689107))

(assert (= (and b!689107 res!453855) b!689118))

(assert (= (and b!689118 res!453850) b!689131))

(assert (= (and b!689131 res!453864) b!689125))

(assert (= (and b!689131 (not res!453847)) b!689124))

(assert (= (and b!689124 res!453860) b!689116))

(assert (= (and b!689131 res!453857) b!689109))

(assert (= (and b!689109 res!453854) b!689117))

(assert (= (and b!689117 res!453846) b!689108))

(assert (= (and b!689108 res!453863) b!689132))

(assert (= (and b!689132 res!453861) b!689115))

(assert (= (and b!689115 res!453865) b!689113))

(assert (= (and b!689113 res!453853) b!689119))

(assert (= (and b!689119 c!77998) b!689112))

(assert (= (and b!689119 (not c!77998)) b!689120))

(assert (= (and b!689119 c!77999) b!689123))

(assert (= (and b!689119 (not c!77999)) b!689130))

(assert (= (and b!689119 (not res!453858)) b!689128))

(assert (= (and b!689128 (not res!453851)) b!689110))

(assert (= (and b!689110 (not res!453845)) b!689122))

(assert (= (and b!689122 (not res!453866)) b!689114))

(assert (= (and b!689114 (not res!453849)) b!689111))

(assert (= (and b!689114 res!453848) b!689127))

(assert (= (and b!689127 (not res!453852)) b!689121))

(assert (= (and b!689114 (not res!453856)) b!689126))

(declare-fun m!652865 () Bool)

(assert (=> b!689122 m!652865))

(declare-fun m!652867 () Bool)

(assert (=> b!689119 m!652867))

(declare-fun m!652869 () Bool)

(assert (=> b!689119 m!652869))

(declare-fun m!652871 () Bool)

(assert (=> b!689119 m!652871))

(declare-fun m!652873 () Bool)

(assert (=> b!689119 m!652873))

(declare-fun m!652875 () Bool)

(assert (=> b!689119 m!652875))

(declare-fun m!652877 () Bool)

(assert (=> b!689119 m!652877))

(declare-fun m!652879 () Bool)

(assert (=> b!689119 m!652879))

(assert (=> b!689119 m!652871))

(declare-fun m!652881 () Bool)

(assert (=> b!689119 m!652881))

(declare-fun m!652883 () Bool)

(assert (=> b!689119 m!652883))

(declare-fun m!652885 () Bool)

(assert (=> b!689119 m!652885))

(declare-fun m!652887 () Bool)

(assert (=> b!689119 m!652887))

(declare-fun m!652889 () Bool)

(assert (=> b!689119 m!652889))

(declare-fun m!652891 () Bool)

(assert (=> b!689119 m!652891))

(declare-fun m!652893 () Bool)

(assert (=> b!689118 m!652893))

(declare-fun m!652895 () Bool)

(assert (=> b!689107 m!652895))

(declare-fun m!652897 () Bool)

(assert (=> b!689117 m!652897))

(assert (=> b!689123 m!652869))

(assert (=> b!689123 m!652871))

(declare-fun m!652899 () Bool)

(assert (=> b!689123 m!652899))

(declare-fun m!652901 () Bool)

(assert (=> b!689123 m!652901))

(assert (=> b!689123 m!652871))

(assert (=> b!689123 m!652899))

(assert (=> b!689123 m!652875))

(assert (=> b!689123 m!652891))

(declare-fun m!652903 () Bool)

(assert (=> start!61600 m!652903))

(declare-fun m!652905 () Bool)

(assert (=> b!689129 m!652905))

(declare-fun m!652907 () Bool)

(assert (=> b!689132 m!652907))

(declare-fun m!652909 () Bool)

(assert (=> b!689115 m!652909))

(declare-fun m!652911 () Bool)

(assert (=> b!689109 m!652911))

(declare-fun m!652913 () Bool)

(assert (=> b!689112 m!652913))

(declare-fun m!652915 () Bool)

(assert (=> b!689121 m!652915))

(declare-fun m!652917 () Bool)

(assert (=> b!689128 m!652917))

(declare-fun m!652919 () Bool)

(assert (=> b!689116 m!652919))

(assert (=> b!689111 m!652915))

(assert (=> b!689125 m!652919))

(declare-fun m!652921 () Bool)

(assert (=> b!689110 m!652921))

(push 1)

(assert (not b!689116))

(assert (not b!689109))

(assert (not b!689107))

(assert (not b!689128))

(assert (not b!689123))

(assert (not b!689118))

(assert (not b!689111))

(assert (not b!689115))

(assert (not b!689132))

(assert (not start!61600))

(assert (not b!689125))

(assert (not b!689112))

(assert (not b!689119))

(assert (not b!689110))

(assert (not b!689117))

(assert (not b!689122))

(assert (not b!689121))

(assert (not b!689129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

