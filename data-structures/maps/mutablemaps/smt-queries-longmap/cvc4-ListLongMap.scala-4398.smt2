; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60508 () Bool)

(assert start!60508)

(declare-fun b!679612 () Bool)

(declare-fun res!446115 () Bool)

(declare-fun e!387168 () Bool)

(assert (=> b!679612 (=> (not res!446115) (not e!387168))))

(declare-datatypes ((array!39445 0))(
  ( (array!39446 (arr!18908 (Array (_ BitVec 32) (_ BitVec 64))) (size!19272 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39445)

(declare-datatypes ((List!13002 0))(
  ( (Nil!12999) (Cons!12998 (h!14043 (_ BitVec 64)) (t!19238 List!13002)) )
))
(declare-fun arrayNoDuplicates!0 (array!39445 (_ BitVec 32) List!13002) Bool)

(assert (=> b!679612 (= res!446115 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12999))))

(declare-fun b!679613 () Bool)

(declare-fun e!387166 () Bool)

(declare-fun acc!681 () List!13002)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3545 (List!13002 (_ BitVec 64)) Bool)

(assert (=> b!679613 (= e!387166 (contains!3545 acc!681 k!2843))))

(declare-fun b!679614 () Bool)

(declare-fun res!446126 () Bool)

(assert (=> b!679614 (=> (not res!446126) (not e!387168))))

(assert (=> b!679614 (= res!446126 (not (contains!3545 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679615 () Bool)

(declare-fun res!446113 () Bool)

(assert (=> b!679615 (=> (not res!446113) (not e!387168))))

(assert (=> b!679615 (= res!446113 (not (contains!3545 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679616 () Bool)

(declare-fun res!446122 () Bool)

(assert (=> b!679616 (=> (not res!446122) (not e!387168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679616 (= res!446122 (validKeyInArray!0 k!2843))))

(declare-fun b!679617 () Bool)

(declare-fun res!446124 () Bool)

(assert (=> b!679617 (=> (not res!446124) (not e!387168))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679617 (= res!446124 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19272 a!3626))))))

(declare-fun b!679618 () Bool)

(declare-fun e!387171 () Bool)

(assert (=> b!679618 (= e!387171 (not (contains!3545 acc!681 k!2843)))))

(declare-fun b!679619 () Bool)

(declare-fun res!446120 () Bool)

(assert (=> b!679619 (=> (not res!446120) (not e!387168))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!679619 (= res!446120 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19272 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679620 () Bool)

(declare-fun res!446123 () Bool)

(assert (=> b!679620 (=> (not res!446123) (not e!387168))))

(declare-fun e!387167 () Bool)

(assert (=> b!679620 (= res!446123 e!387167)))

(declare-fun res!446121 () Bool)

(assert (=> b!679620 (=> res!446121 e!387167)))

(assert (=> b!679620 (= res!446121 e!387166)))

(declare-fun res!446117 () Bool)

(assert (=> b!679620 (=> (not res!446117) (not e!387166))))

(assert (=> b!679620 (= res!446117 (bvsgt from!3004 i!1382))))

(declare-fun b!679621 () Bool)

(declare-fun e!387169 () Bool)

(assert (=> b!679621 (= e!387168 (not e!387169))))

(declare-fun res!446125 () Bool)

(assert (=> b!679621 (=> res!446125 e!387169)))

(assert (=> b!679621 (= res!446125 (not (validKeyInArray!0 (select (arr!18908 a!3626) from!3004))))))

(declare-datatypes ((Unit!23802 0))(
  ( (Unit!23803) )
))
(declare-fun lt!312918 () Unit!23802)

(declare-fun e!387170 () Unit!23802)

(assert (=> b!679621 (= lt!312918 e!387170)))

(declare-fun c!77117 () Bool)

(declare-fun arrayContainsKey!0 (array!39445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679621 (= c!77117 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679621 (arrayContainsKey!0 (array!39446 (store (arr!18908 a!3626) i!1382 k!2843) (size!19272 a!3626)) k!2843 from!3004)))

(declare-fun b!679622 () Bool)

(assert (=> b!679622 (= e!387167 e!387171)))

(declare-fun res!446119 () Bool)

(assert (=> b!679622 (=> (not res!446119) (not e!387171))))

(assert (=> b!679622 (= res!446119 (bvsle from!3004 i!1382))))

(declare-fun b!679623 () Bool)

(declare-fun res!446118 () Bool)

(assert (=> b!679623 (=> (not res!446118) (not e!387168))))

(assert (=> b!679623 (= res!446118 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!446112 () Bool)

(assert (=> start!60508 (=> (not res!446112) (not e!387168))))

(assert (=> start!60508 (= res!446112 (and (bvslt (size!19272 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19272 a!3626))))))

(assert (=> start!60508 e!387168))

(assert (=> start!60508 true))

(declare-fun array_inv!14682 (array!39445) Bool)

(assert (=> start!60508 (array_inv!14682 a!3626)))

(declare-fun b!679624 () Bool)

(declare-fun res!446116 () Bool)

(assert (=> b!679624 (=> (not res!446116) (not e!387168))))

(declare-fun noDuplicate!792 (List!13002) Bool)

(assert (=> b!679624 (= res!446116 (noDuplicate!792 acc!681))))

(declare-fun b!679625 () Bool)

(declare-fun Unit!23804 () Unit!23802)

(assert (=> b!679625 (= e!387170 Unit!23804)))

(declare-fun lt!312916 () Unit!23802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39445 (_ BitVec 64) (_ BitVec 32)) Unit!23802)

(assert (=> b!679625 (= lt!312916 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679625 false))

(declare-fun b!679626 () Bool)

(declare-fun res!446114 () Bool)

(assert (=> b!679626 (=> (not res!446114) (not e!387168))))

(assert (=> b!679626 (= res!446114 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679627 () Bool)

(assert (=> b!679627 (= e!387169 true)))

(declare-fun subseq!130 (List!13002 List!13002) Bool)

(assert (=> b!679627 (subseq!130 acc!681 acc!681)))

(declare-fun lt!312917 () Unit!23802)

(declare-fun lemmaListSubSeqRefl!0 (List!13002) Unit!23802)

(assert (=> b!679627 (= lt!312917 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679628 () Bool)

(declare-fun Unit!23805 () Unit!23802)

(assert (=> b!679628 (= e!387170 Unit!23805)))

(assert (= (and start!60508 res!446112) b!679624))

(assert (= (and b!679624 res!446116) b!679615))

(assert (= (and b!679615 res!446113) b!679614))

(assert (= (and b!679614 res!446126) b!679620))

(assert (= (and b!679620 res!446117) b!679613))

(assert (= (and b!679620 (not res!446121)) b!679622))

(assert (= (and b!679622 res!446119) b!679618))

(assert (= (and b!679620 res!446123) b!679612))

(assert (= (and b!679612 res!446115) b!679623))

(assert (= (and b!679623 res!446118) b!679617))

(assert (= (and b!679617 res!446124) b!679616))

(assert (= (and b!679616 res!446122) b!679626))

(assert (= (and b!679626 res!446114) b!679619))

(assert (= (and b!679619 res!446120) b!679621))

(assert (= (and b!679621 c!77117) b!679625))

(assert (= (and b!679621 (not c!77117)) b!679628))

(assert (= (and b!679621 (not res!446125)) b!679627))

(declare-fun m!644939 () Bool)

(assert (=> b!679618 m!644939))

(declare-fun m!644941 () Bool)

(assert (=> b!679626 m!644941))

(declare-fun m!644943 () Bool)

(assert (=> b!679627 m!644943))

(declare-fun m!644945 () Bool)

(assert (=> b!679627 m!644945))

(declare-fun m!644947 () Bool)

(assert (=> b!679614 m!644947))

(assert (=> b!679613 m!644939))

(declare-fun m!644949 () Bool)

(assert (=> b!679623 m!644949))

(declare-fun m!644951 () Bool)

(assert (=> b!679615 m!644951))

(declare-fun m!644953 () Bool)

(assert (=> b!679616 m!644953))

(declare-fun m!644955 () Bool)

(assert (=> b!679624 m!644955))

(declare-fun m!644957 () Bool)

(assert (=> b!679612 m!644957))

(declare-fun m!644959 () Bool)

(assert (=> b!679625 m!644959))

(declare-fun m!644961 () Bool)

(assert (=> start!60508 m!644961))

(declare-fun m!644963 () Bool)

(assert (=> b!679621 m!644963))

(declare-fun m!644965 () Bool)

(assert (=> b!679621 m!644965))

(declare-fun m!644967 () Bool)

(assert (=> b!679621 m!644967))

(assert (=> b!679621 m!644963))

(declare-fun m!644969 () Bool)

(assert (=> b!679621 m!644969))

(declare-fun m!644971 () Bool)

(assert (=> b!679621 m!644971))

(push 1)

(assert (not b!679614))

(assert (not start!60508))

(assert (not b!679626))

(assert (not b!679616))

(assert (not b!679625))

(assert (not b!679623))

(assert (not b!679613))

(assert (not b!679615))

(assert (not b!679624))

(assert (not b!679612))

(assert (not b!679618))

(assert (not b!679621))

(assert (not b!679627))

(check-sat)

(pop 1)

