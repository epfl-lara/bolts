; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134322 () Bool)

(assert start!134322)

(declare-fun b!1568235 () Bool)

(declare-fun res!1072059 () Bool)

(declare-fun e!874269 () Bool)

(assert (=> b!1568235 (=> (not res!1072059) (not e!874269))))

(declare-datatypes ((List!36863 0))(
  ( (Nil!36860) (Cons!36859 (h!38307 (_ BitVec 64)) (t!51778 List!36863)) )
))
(declare-fun acc!619 () List!36863)

(declare-fun contains!10422 (List!36863 (_ BitVec 64)) Bool)

(assert (=> b!1568235 (= res!1072059 (not (contains!10422 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568236 () Bool)

(declare-fun res!1072061 () Bool)

(assert (=> b!1568236 (=> (not res!1072061) (not e!874269))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104753 0))(
  ( (array!104754 (arr!50552 (Array (_ BitVec 32) (_ BitVec 64))) (size!51103 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104753)

(assert (=> b!1568236 (= res!1072061 (bvslt from!2856 (size!51103 a!3481)))))

(declare-fun res!1072063 () Bool)

(assert (=> start!134322 (=> (not res!1072063) (not e!874269))))

(assert (=> start!134322 (= res!1072063 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51103 a!3481)) (bvslt (size!51103 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134322 e!874269))

(assert (=> start!134322 true))

(declare-fun array_inv!39197 (array!104753) Bool)

(assert (=> start!134322 (array_inv!39197 a!3481)))

(declare-fun b!1568237 () Bool)

(declare-fun res!1072064 () Bool)

(assert (=> b!1568237 (=> (not res!1072064) (not e!874269))))

(declare-fun noDuplicate!2713 (List!36863) Bool)

(assert (=> b!1568237 (= res!1072064 (noDuplicate!2713 acc!619))))

(declare-fun b!1568238 () Bool)

(declare-fun res!1072062 () Bool)

(assert (=> b!1568238 (=> (not res!1072062) (not e!874269))))

(assert (=> b!1568238 (= res!1072062 (not (contains!10422 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!874268 () Bool)

(declare-fun b!1568239 () Bool)

(assert (=> b!1568239 (= e!874268 (not (contains!10422 acc!619 (select (arr!50552 a!3481) from!2856))))))

(declare-fun b!1568240 () Bool)

(assert (=> b!1568240 (= e!874269 false)))

(declare-fun lt!673093 () Bool)

(assert (=> b!1568240 (= lt!673093 e!874268)))

(declare-fun res!1072060 () Bool)

(assert (=> b!1568240 (=> res!1072060 e!874268)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568240 (= res!1072060 (not (validKeyInArray!0 (select (arr!50552 a!3481) from!2856))))))

(assert (= (and start!134322 res!1072063) b!1568237))

(assert (= (and b!1568237 res!1072064) b!1568235))

(assert (= (and b!1568235 res!1072059) b!1568238))

(assert (= (and b!1568238 res!1072062) b!1568236))

(assert (= (and b!1568236 res!1072061) b!1568240))

(assert (= (and b!1568240 (not res!1072060)) b!1568239))

(declare-fun m!1442967 () Bool)

(assert (=> b!1568237 m!1442967))

(declare-fun m!1442969 () Bool)

(assert (=> start!134322 m!1442969))

(declare-fun m!1442971 () Bool)

(assert (=> b!1568239 m!1442971))

(assert (=> b!1568239 m!1442971))

(declare-fun m!1442973 () Bool)

(assert (=> b!1568239 m!1442973))

(declare-fun m!1442975 () Bool)

(assert (=> b!1568235 m!1442975))

(assert (=> b!1568240 m!1442971))

(assert (=> b!1568240 m!1442971))

(declare-fun m!1442977 () Bool)

(assert (=> b!1568240 m!1442977))

(declare-fun m!1442979 () Bool)

(assert (=> b!1568238 m!1442979))

(check-sat (not b!1568240) (not b!1568238) (not start!134322) (not b!1568237) (not b!1568239) (not b!1568235))
(check-sat)
