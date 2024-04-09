; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134292 () Bool)

(assert start!134292)

(declare-fun b!1568046 () Bool)

(declare-fun res!1071872 () Bool)

(declare-fun e!874159 () Bool)

(assert (=> b!1568046 (=> (not res!1071872) (not e!874159))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104723 0))(
  ( (array!104724 (arr!50537 (Array (_ BitVec 32) (_ BitVec 64))) (size!51088 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104723)

(assert (=> b!1568046 (= res!1071872 (bvslt from!2856 (size!51088 a!3481)))))

(declare-fun e!874161 () Bool)

(declare-datatypes ((List!36848 0))(
  ( (Nil!36845) (Cons!36844 (h!38292 (_ BitVec 64)) (t!51763 List!36848)) )
))
(declare-fun acc!619 () List!36848)

(declare-fun b!1568047 () Bool)

(declare-fun contains!10407 (List!36848 (_ BitVec 64)) Bool)

(assert (=> b!1568047 (= e!874161 (not (contains!10407 acc!619 (select (arr!50537 a!3481) from!2856))))))

(declare-fun b!1568048 () Bool)

(declare-fun res!1071870 () Bool)

(assert (=> b!1568048 (=> (not res!1071870) (not e!874159))))

(assert (=> b!1568048 (= res!1071870 (not (contains!10407 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568049 () Bool)

(declare-fun res!1071873 () Bool)

(assert (=> b!1568049 (=> (not res!1071873) (not e!874159))))

(declare-fun noDuplicate!2698 (List!36848) Bool)

(assert (=> b!1568049 (= res!1071873 (noDuplicate!2698 acc!619))))

(declare-fun res!1071875 () Bool)

(assert (=> start!134292 (=> (not res!1071875) (not e!874159))))

(assert (=> start!134292 (= res!1071875 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51088 a!3481)) (bvslt (size!51088 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134292 e!874159))

(assert (=> start!134292 true))

(declare-fun array_inv!39182 (array!104723) Bool)

(assert (=> start!134292 (array_inv!39182 a!3481)))

(declare-fun b!1568050 () Bool)

(assert (=> b!1568050 (= e!874159 false)))

(declare-fun lt!673048 () Bool)

(assert (=> b!1568050 (= lt!673048 e!874161)))

(declare-fun res!1071874 () Bool)

(assert (=> b!1568050 (=> res!1071874 e!874161)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568050 (= res!1071874 (not (validKeyInArray!0 (select (arr!50537 a!3481) from!2856))))))

(declare-fun b!1568051 () Bool)

(declare-fun res!1071871 () Bool)

(assert (=> b!1568051 (=> (not res!1071871) (not e!874159))))

(assert (=> b!1568051 (= res!1071871 (not (contains!10407 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134292 res!1071875) b!1568049))

(assert (= (and b!1568049 res!1071873) b!1568051))

(assert (= (and b!1568051 res!1071871) b!1568048))

(assert (= (and b!1568048 res!1071870) b!1568046))

(assert (= (and b!1568046 res!1071872) b!1568050))

(assert (= (and b!1568050 (not res!1071874)) b!1568047))

(declare-fun m!1442811 () Bool)

(assert (=> b!1568048 m!1442811))

(declare-fun m!1442813 () Bool)

(assert (=> b!1568050 m!1442813))

(assert (=> b!1568050 m!1442813))

(declare-fun m!1442815 () Bool)

(assert (=> b!1568050 m!1442815))

(declare-fun m!1442817 () Bool)

(assert (=> start!134292 m!1442817))

(declare-fun m!1442819 () Bool)

(assert (=> b!1568051 m!1442819))

(assert (=> b!1568047 m!1442813))

(assert (=> b!1568047 m!1442813))

(declare-fun m!1442821 () Bool)

(assert (=> b!1568047 m!1442821))

(declare-fun m!1442823 () Bool)

(assert (=> b!1568049 m!1442823))

(check-sat (not b!1568047) (not b!1568049) (not b!1568050) (not b!1568048) (not b!1568051) (not start!134292))
