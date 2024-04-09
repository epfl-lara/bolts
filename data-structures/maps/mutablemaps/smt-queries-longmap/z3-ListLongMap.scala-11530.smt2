; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134298 () Bool)

(assert start!134298)

(declare-datatypes ((array!104729 0))(
  ( (array!104730 (arr!50540 (Array (_ BitVec 32) (_ BitVec 64))) (size!51091 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104729)

(declare-fun b!1568100 () Bool)

(declare-datatypes ((List!36851 0))(
  ( (Nil!36848) (Cons!36847 (h!38295 (_ BitVec 64)) (t!51766 List!36851)) )
))
(declare-fun acc!619 () List!36851)

(declare-fun e!874188 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun contains!10410 (List!36851 (_ BitVec 64)) Bool)

(assert (=> b!1568100 (= e!874188 (not (contains!10410 acc!619 (select (arr!50540 a!3481) from!2856))))))

(declare-fun b!1568101 () Bool)

(declare-fun res!1071925 () Bool)

(declare-fun e!874186 () Bool)

(assert (=> b!1568101 (=> (not res!1071925) (not e!874186))))

(assert (=> b!1568101 (= res!1071925 (not (contains!10410 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568102 () Bool)

(assert (=> b!1568102 (= e!874186 false)))

(declare-fun lt!673057 () Bool)

(assert (=> b!1568102 (= lt!673057 e!874188)))

(declare-fun res!1071928 () Bool)

(assert (=> b!1568102 (=> res!1071928 e!874188)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568102 (= res!1071928 (not (validKeyInArray!0 (select (arr!50540 a!3481) from!2856))))))

(declare-fun b!1568104 () Bool)

(declare-fun res!1071926 () Bool)

(assert (=> b!1568104 (=> (not res!1071926) (not e!874186))))

(assert (=> b!1568104 (= res!1071926 (bvslt from!2856 (size!51091 a!3481)))))

(declare-fun b!1568105 () Bool)

(declare-fun res!1071929 () Bool)

(assert (=> b!1568105 (=> (not res!1071929) (not e!874186))))

(assert (=> b!1568105 (= res!1071929 (not (contains!10410 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071924 () Bool)

(assert (=> start!134298 (=> (not res!1071924) (not e!874186))))

(assert (=> start!134298 (= res!1071924 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51091 a!3481)) (bvslt (size!51091 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134298 e!874186))

(assert (=> start!134298 true))

(declare-fun array_inv!39185 (array!104729) Bool)

(assert (=> start!134298 (array_inv!39185 a!3481)))

(declare-fun b!1568103 () Bool)

(declare-fun res!1071927 () Bool)

(assert (=> b!1568103 (=> (not res!1071927) (not e!874186))))

(declare-fun noDuplicate!2701 (List!36851) Bool)

(assert (=> b!1568103 (= res!1071927 (noDuplicate!2701 acc!619))))

(assert (= (and start!134298 res!1071924) b!1568103))

(assert (= (and b!1568103 res!1071927) b!1568101))

(assert (= (and b!1568101 res!1071925) b!1568105))

(assert (= (and b!1568105 res!1071929) b!1568104))

(assert (= (and b!1568104 res!1071926) b!1568102))

(assert (= (and b!1568102 (not res!1071928)) b!1568100))

(declare-fun m!1442853 () Bool)

(assert (=> start!134298 m!1442853))

(declare-fun m!1442855 () Bool)

(assert (=> b!1568105 m!1442855))

(declare-fun m!1442857 () Bool)

(assert (=> b!1568103 m!1442857))

(declare-fun m!1442859 () Bool)

(assert (=> b!1568102 m!1442859))

(assert (=> b!1568102 m!1442859))

(declare-fun m!1442861 () Bool)

(assert (=> b!1568102 m!1442861))

(assert (=> b!1568100 m!1442859))

(assert (=> b!1568100 m!1442859))

(declare-fun m!1442863 () Bool)

(assert (=> b!1568100 m!1442863))

(declare-fun m!1442865 () Bool)

(assert (=> b!1568101 m!1442865))

(check-sat (not b!1568103) (not b!1568102) (not b!1568105) (not b!1568101) (not start!134298) (not b!1568100))
