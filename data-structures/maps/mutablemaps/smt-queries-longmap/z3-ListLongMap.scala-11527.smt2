; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134280 () Bool)

(assert start!134280)

(declare-fun b!1567934 () Bool)

(declare-fun res!1071761 () Bool)

(declare-fun e!874104 () Bool)

(assert (=> b!1567934 (=> (not res!1071761) (not e!874104))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104711 0))(
  ( (array!104712 (arr!50531 (Array (_ BitVec 32) (_ BitVec 64))) (size!51082 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104711)

(assert (=> b!1567934 (= res!1071761 (bvslt from!2856 (size!51082 a!3481)))))

(declare-fun b!1567935 () Bool)

(declare-fun e!874102 () Bool)

(declare-fun lt!673030 () Bool)

(assert (=> b!1567935 (= e!874102 (and (not lt!673030) (bvslt (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!36842 0))(
  ( (Nil!36839) (Cons!36838 (h!38286 (_ BitVec 64)) (t!51757 List!36842)) )
))
(declare-fun acc!619 () List!36842)

(declare-fun e!874103 () Bool)

(declare-fun b!1567936 () Bool)

(declare-fun contains!10401 (List!36842 (_ BitVec 64)) Bool)

(assert (=> b!1567936 (= e!874103 (not (contains!10401 acc!619 (select (arr!50531 a!3481) from!2856))))))

(declare-fun b!1567937 () Bool)

(declare-fun res!1071760 () Bool)

(assert (=> b!1567937 (=> (not res!1071760) (not e!874104))))

(declare-fun noDuplicate!2692 (List!36842) Bool)

(assert (=> b!1567937 (= res!1071760 (noDuplicate!2692 acc!619))))

(declare-fun b!1567938 () Bool)

(declare-fun res!1071764 () Bool)

(assert (=> b!1567938 (=> (not res!1071764) (not e!874104))))

(assert (=> b!1567938 (= res!1071764 (not (contains!10401 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567939 () Bool)

(assert (=> b!1567939 (= e!874104 e!874102)))

(declare-fun res!1071762 () Bool)

(assert (=> b!1567939 (=> (not res!1071762) (not e!874102))))

(assert (=> b!1567939 (= res!1071762 e!874103)))

(declare-fun res!1071763 () Bool)

(assert (=> b!1567939 (=> res!1071763 e!874103)))

(assert (=> b!1567939 (= res!1071763 (not lt!673030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567939 (= lt!673030 (validKeyInArray!0 (select (arr!50531 a!3481) from!2856)))))

(declare-fun res!1071759 () Bool)

(assert (=> start!134280 (=> (not res!1071759) (not e!874104))))

(assert (=> start!134280 (= res!1071759 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51082 a!3481)) (bvslt (size!51082 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134280 e!874104))

(assert (=> start!134280 true))

(declare-fun array_inv!39176 (array!104711) Bool)

(assert (=> start!134280 (array_inv!39176 a!3481)))

(declare-fun b!1567940 () Bool)

(declare-fun res!1071758 () Bool)

(assert (=> b!1567940 (=> (not res!1071758) (not e!874104))))

(assert (=> b!1567940 (= res!1071758 (not (contains!10401 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134280 res!1071759) b!1567937))

(assert (= (and b!1567937 res!1071760) b!1567938))

(assert (= (and b!1567938 res!1071764) b!1567940))

(assert (= (and b!1567940 res!1071758) b!1567934))

(assert (= (and b!1567934 res!1071761) b!1567939))

(assert (= (and b!1567939 (not res!1071763)) b!1567936))

(assert (= (and b!1567939 res!1071762) b!1567935))

(declare-fun m!1442727 () Bool)

(assert (=> b!1567939 m!1442727))

(assert (=> b!1567939 m!1442727))

(declare-fun m!1442729 () Bool)

(assert (=> b!1567939 m!1442729))

(declare-fun m!1442731 () Bool)

(assert (=> b!1567938 m!1442731))

(declare-fun m!1442733 () Bool)

(assert (=> b!1567937 m!1442733))

(declare-fun m!1442735 () Bool)

(assert (=> start!134280 m!1442735))

(assert (=> b!1567936 m!1442727))

(assert (=> b!1567936 m!1442727))

(declare-fun m!1442737 () Bool)

(assert (=> b!1567936 m!1442737))

(declare-fun m!1442739 () Bool)

(assert (=> b!1567940 m!1442739))

(check-sat (not b!1567937) (not b!1567936) (not b!1567938) (not start!134280) (not b!1567939) (not b!1567940))
(check-sat)
