; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102868 () Bool)

(assert start!102868)

(declare-fun b!1235859 () Bool)

(declare-fun res!824018 () Bool)

(declare-fun e!700646 () Bool)

(assert (=> b!1235859 (=> (not res!824018) (not e!700646))))

(declare-datatypes ((List!27382 0))(
  ( (Nil!27379) (Cons!27378 (h!28587 (_ BitVec 64)) (t!40852 List!27382)) )
))
(declare-fun acc!846 () List!27382)

(declare-fun contains!7297 (List!27382 (_ BitVec 64)) Bool)

(assert (=> b!1235859 (= res!824018 (not (contains!7297 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824021 () Bool)

(assert (=> start!102868 (=> (not res!824021) (not e!700646))))

(declare-datatypes ((array!79654 0))(
  ( (array!79655 (arr!38431 (Array (_ BitVec 32) (_ BitVec 64))) (size!38968 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79654)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102868 (= res!824021 (and (bvslt (size!38968 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38968 a!3835))))))

(assert (=> start!102868 e!700646))

(declare-fun array_inv!29207 (array!79654) Bool)

(assert (=> start!102868 (array_inv!29207 a!3835)))

(assert (=> start!102868 true))

(declare-fun b!1235860 () Bool)

(declare-fun res!824017 () Bool)

(assert (=> b!1235860 (=> (not res!824017) (not e!700646))))

(assert (=> b!1235860 (= res!824017 (not (= from!3213 (bvsub (size!38968 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235861 () Bool)

(declare-datatypes ((Unit!40925 0))(
  ( (Unit!40926) )
))
(declare-fun e!700648 () Unit!40925)

(declare-fun lt!560525 () Unit!40925)

(assert (=> b!1235861 (= e!700648 lt!560525)))

(declare-fun lt!560527 () List!27382)

(assert (=> b!1235861 (= lt!560527 (Cons!27378 (select (arr!38431 a!3835) from!3213) acc!846))))

(declare-fun lt!560523 () Unit!40925)

(declare-fun lemmaListSubSeqRefl!0 (List!27382) Unit!40925)

(assert (=> b!1235861 (= lt!560523 (lemmaListSubSeqRefl!0 lt!560527))))

(declare-fun subseq!552 (List!27382 List!27382) Bool)

(assert (=> b!1235861 (subseq!552 lt!560527 lt!560527)))

(declare-fun lt!560522 () Unit!40925)

(declare-fun subseqTail!45 (List!27382 List!27382) Unit!40925)

(assert (=> b!1235861 (= lt!560522 (subseqTail!45 lt!560527 lt!560527))))

(assert (=> b!1235861 (subseq!552 acc!846 lt!560527)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79654 List!27382 List!27382 (_ BitVec 32)) Unit!40925)

(assert (=> b!1235861 (= lt!560525 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560527 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79654 (_ BitVec 32) List!27382) Bool)

(assert (=> b!1235861 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235862 () Bool)

(declare-fun res!824014 () Bool)

(assert (=> b!1235862 (=> (not res!824014) (not e!700646))))

(assert (=> b!1235862 (= res!824014 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235863 () Bool)

(declare-fun e!700645 () Bool)

(assert (=> b!1235863 (= e!700645 false)))

(declare-fun lt!560526 () Bool)

(assert (=> b!1235863 (= lt!560526 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235864 () Bool)

(declare-fun res!824015 () Bool)

(assert (=> b!1235864 (=> (not res!824015) (not e!700646))))

(declare-fun noDuplicate!1904 (List!27382) Bool)

(assert (=> b!1235864 (= res!824015 (noDuplicate!1904 acc!846))))

(declare-fun b!1235865 () Bool)

(assert (=> b!1235865 (= e!700646 e!700645)))

(declare-fun res!824019 () Bool)

(assert (=> b!1235865 (=> (not res!824019) (not e!700645))))

(assert (=> b!1235865 (= res!824019 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38968 a!3835))))))

(declare-fun lt!560524 () Unit!40925)

(assert (=> b!1235865 (= lt!560524 e!700648)))

(declare-fun c!120785 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235865 (= c!120785 (validKeyInArray!0 (select (arr!38431 a!3835) from!3213)))))

(declare-fun b!1235866 () Bool)

(declare-fun res!824020 () Bool)

(assert (=> b!1235866 (=> (not res!824020) (not e!700646))))

(assert (=> b!1235866 (= res!824020 (not (contains!7297 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235867 () Bool)

(declare-fun res!824016 () Bool)

(assert (=> b!1235867 (=> (not res!824016) (not e!700646))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235867 (= res!824016 (contains!7297 acc!846 k0!2925))))

(declare-fun b!1235868 () Bool)

(declare-fun Unit!40927 () Unit!40925)

(assert (=> b!1235868 (= e!700648 Unit!40927)))

(assert (= (and start!102868 res!824021) b!1235864))

(assert (= (and b!1235864 res!824015) b!1235859))

(assert (= (and b!1235859 res!824018) b!1235866))

(assert (= (and b!1235866 res!824020) b!1235862))

(assert (= (and b!1235862 res!824014) b!1235867))

(assert (= (and b!1235867 res!824016) b!1235860))

(assert (= (and b!1235860 res!824017) b!1235865))

(assert (= (and b!1235865 c!120785) b!1235861))

(assert (= (and b!1235865 (not c!120785)) b!1235868))

(assert (= (and b!1235865 res!824019) b!1235863))

(declare-fun m!1139763 () Bool)

(assert (=> b!1235865 m!1139763))

(assert (=> b!1235865 m!1139763))

(declare-fun m!1139765 () Bool)

(assert (=> b!1235865 m!1139765))

(declare-fun m!1139767 () Bool)

(assert (=> b!1235867 m!1139767))

(declare-fun m!1139769 () Bool)

(assert (=> b!1235863 m!1139769))

(declare-fun m!1139771 () Bool)

(assert (=> b!1235859 m!1139771))

(declare-fun m!1139773 () Bool)

(assert (=> b!1235861 m!1139773))

(declare-fun m!1139775 () Bool)

(assert (=> b!1235861 m!1139775))

(declare-fun m!1139777 () Bool)

(assert (=> b!1235861 m!1139777))

(declare-fun m!1139779 () Bool)

(assert (=> b!1235861 m!1139779))

(assert (=> b!1235861 m!1139769))

(declare-fun m!1139781 () Bool)

(assert (=> b!1235861 m!1139781))

(assert (=> b!1235861 m!1139763))

(declare-fun m!1139783 () Bool)

(assert (=> b!1235862 m!1139783))

(declare-fun m!1139785 () Bool)

(assert (=> start!102868 m!1139785))

(declare-fun m!1139787 () Bool)

(assert (=> b!1235864 m!1139787))

(declare-fun m!1139789 () Bool)

(assert (=> b!1235866 m!1139789))

(check-sat (not b!1235862) (not b!1235863) (not b!1235861) (not b!1235859) (not b!1235866) (not b!1235867) (not b!1235865) (not start!102868) (not b!1235864))
(check-sat)
