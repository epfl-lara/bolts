; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103148 () Bool)

(assert start!103148)

(declare-fun res!825875 () Bool)

(declare-fun e!701716 () Bool)

(assert (=> start!103148 (=> (not res!825875) (not e!701716))))

(declare-datatypes ((array!79783 0))(
  ( (array!79784 (arr!38491 (Array (_ BitVec 32) (_ BitVec 64))) (size!39028 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79783)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103148 (= res!825875 (and (bvslt (size!39028 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39028 a!3835))))))

(assert (=> start!103148 e!701716))

(declare-fun array_inv!29267 (array!79783) Bool)

(assert (=> start!103148 (array_inv!29267 a!3835)))

(assert (=> start!103148 true))

(declare-fun b!1238024 () Bool)

(declare-fun e!701717 () Bool)

(assert (=> b!1238024 (= e!701717 true)))

(declare-fun lt!561143 () Bool)

(declare-datatypes ((List!27442 0))(
  ( (Nil!27439) (Cons!27438 (h!28647 (_ BitVec 64)) (t!40912 List!27442)) )
))
(declare-fun lt!561144 () List!27442)

(declare-fun contains!7357 (List!27442 (_ BitVec 64)) Bool)

(assert (=> b!1238024 (= lt!561143 (contains!7357 lt!561144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238025 () Bool)

(declare-fun res!825878 () Bool)

(assert (=> b!1238025 (=> (not res!825878) (not e!701716))))

(assert (=> b!1238025 (= res!825878 (not (= from!3213 (bvsub (size!39028 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238026 () Bool)

(declare-fun res!825874 () Bool)

(assert (=> b!1238026 (=> (not res!825874) (not e!701716))))

(declare-fun acc!846 () List!27442)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238026 (= res!825874 (contains!7357 acc!846 k0!2925))))

(declare-fun b!1238027 () Bool)

(declare-fun res!825876 () Bool)

(assert (=> b!1238027 (=> res!825876 e!701717)))

(assert (=> b!1238027 (= res!825876 (contains!7357 lt!561144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238028 () Bool)

(declare-fun res!825873 () Bool)

(assert (=> b!1238028 (=> (not res!825873) (not e!701716))))

(declare-fun arrayNoDuplicates!0 (array!79783 (_ BitVec 32) List!27442) Bool)

(assert (=> b!1238028 (= res!825873 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238029 () Bool)

(declare-fun res!825883 () Bool)

(assert (=> b!1238029 (=> (not res!825883) (not e!701716))))

(declare-fun noDuplicate!1964 (List!27442) Bool)

(assert (=> b!1238029 (= res!825883 (noDuplicate!1964 acc!846))))

(declare-fun b!1238030 () Bool)

(assert (=> b!1238030 (= e!701716 (not e!701717))))

(declare-fun res!825882 () Bool)

(assert (=> b!1238030 (=> res!825882 e!701717)))

(assert (=> b!1238030 (= res!825882 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!594 (List!27442 List!27442) Bool)

(assert (=> b!1238030 (subseq!594 acc!846 lt!561144)))

(declare-datatypes ((Unit!41036 0))(
  ( (Unit!41037) )
))
(declare-fun lt!561145 () Unit!41036)

(declare-fun subseqTail!81 (List!27442 List!27442) Unit!41036)

(assert (=> b!1238030 (= lt!561145 (subseqTail!81 lt!561144 lt!561144))))

(assert (=> b!1238030 (subseq!594 lt!561144 lt!561144)))

(declare-fun lt!561142 () Unit!41036)

(declare-fun lemmaListSubSeqRefl!0 (List!27442) Unit!41036)

(assert (=> b!1238030 (= lt!561142 (lemmaListSubSeqRefl!0 lt!561144))))

(assert (=> b!1238030 (= lt!561144 (Cons!27438 (select (arr!38491 a!3835) from!3213) acc!846))))

(declare-fun b!1238031 () Bool)

(declare-fun res!825879 () Bool)

(assert (=> b!1238031 (=> (not res!825879) (not e!701716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238031 (= res!825879 (validKeyInArray!0 (select (arr!38491 a!3835) from!3213)))))

(declare-fun b!1238032 () Bool)

(declare-fun res!825881 () Bool)

(assert (=> b!1238032 (=> (not res!825881) (not e!701716))))

(assert (=> b!1238032 (= res!825881 (not (contains!7357 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238033 () Bool)

(declare-fun res!825877 () Bool)

(assert (=> b!1238033 (=> res!825877 e!701717)))

(assert (=> b!1238033 (= res!825877 (not (noDuplicate!1964 lt!561144)))))

(declare-fun b!1238034 () Bool)

(declare-fun res!825880 () Bool)

(assert (=> b!1238034 (=> (not res!825880) (not e!701716))))

(assert (=> b!1238034 (= res!825880 (not (contains!7357 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103148 res!825875) b!1238029))

(assert (= (and b!1238029 res!825883) b!1238034))

(assert (= (and b!1238034 res!825880) b!1238032))

(assert (= (and b!1238032 res!825881) b!1238028))

(assert (= (and b!1238028 res!825873) b!1238026))

(assert (= (and b!1238026 res!825874) b!1238025))

(assert (= (and b!1238025 res!825878) b!1238031))

(assert (= (and b!1238031 res!825879) b!1238030))

(assert (= (and b!1238030 (not res!825882)) b!1238033))

(assert (= (and b!1238033 (not res!825877)) b!1238027))

(assert (= (and b!1238027 (not res!825876)) b!1238024))

(declare-fun m!1141631 () Bool)

(assert (=> b!1238032 m!1141631))

(declare-fun m!1141633 () Bool)

(assert (=> b!1238034 m!1141633))

(declare-fun m!1141635 () Bool)

(assert (=> b!1238031 m!1141635))

(assert (=> b!1238031 m!1141635))

(declare-fun m!1141637 () Bool)

(assert (=> b!1238031 m!1141637))

(declare-fun m!1141639 () Bool)

(assert (=> start!103148 m!1141639))

(declare-fun m!1141641 () Bool)

(assert (=> b!1238030 m!1141641))

(declare-fun m!1141643 () Bool)

(assert (=> b!1238030 m!1141643))

(assert (=> b!1238030 m!1141635))

(declare-fun m!1141645 () Bool)

(assert (=> b!1238030 m!1141645))

(declare-fun m!1141647 () Bool)

(assert (=> b!1238030 m!1141647))

(declare-fun m!1141649 () Bool)

(assert (=> b!1238033 m!1141649))

(declare-fun m!1141651 () Bool)

(assert (=> b!1238024 m!1141651))

(declare-fun m!1141653 () Bool)

(assert (=> b!1238028 m!1141653))

(declare-fun m!1141655 () Bool)

(assert (=> b!1238029 m!1141655))

(declare-fun m!1141657 () Bool)

(assert (=> b!1238027 m!1141657))

(declare-fun m!1141659 () Bool)

(assert (=> b!1238026 m!1141659))

(check-sat (not b!1238030) (not b!1238026) (not b!1238027) (not b!1238028) (not b!1238029) (not b!1238034) (not b!1238031) (not b!1238032) (not b!1238033) (not b!1238024) (not start!103148))
(check-sat)
