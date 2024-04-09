; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115840 () Bool)

(assert start!115840)

(declare-fun b!1369100 () Bool)

(declare-fun res!912705 () Bool)

(declare-fun e!775621 () Bool)

(assert (=> b!1369100 (=> (not res!912705) (not e!775621))))

(declare-datatypes ((List!32121 0))(
  ( (Nil!32118) (Cons!32117 (h!33326 (_ BitVec 64)) (t!46822 List!32121)) )
))
(declare-fun acc!866 () List!32121)

(declare-fun contains!9659 (List!32121 (_ BitVec 64)) Bool)

(assert (=> b!1369100 (= res!912705 (not (contains!9659 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369101 () Bool)

(assert (=> b!1369101 (= e!775621 false)))

(declare-datatypes ((array!92910 0))(
  ( (array!92911 (arr!44873 (Array (_ BitVec 32) (_ BitVec 64))) (size!45424 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92910)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602146 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92910 (_ BitVec 32) List!32121) Bool)

(assert (=> b!1369101 (= lt!602146 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45181 0))(
  ( (Unit!45182) )
))
(declare-fun lt!602147 () Unit!45181)

(declare-fun newAcc!98 () List!32121)

(declare-fun noDuplicateSubseq!237 (List!32121 List!32121) Unit!45181)

(assert (=> b!1369101 (= lt!602147 (noDuplicateSubseq!237 newAcc!98 acc!866))))

(declare-fun b!1369103 () Bool)

(declare-fun res!912701 () Bool)

(assert (=> b!1369103 (=> (not res!912701) (not e!775621))))

(assert (=> b!1369103 (= res!912701 (not (contains!9659 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369104 () Bool)

(declare-fun res!912699 () Bool)

(assert (=> b!1369104 (=> (not res!912699) (not e!775621))))

(assert (=> b!1369104 (= res!912699 (not (contains!9659 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369105 () Bool)

(declare-fun res!912700 () Bool)

(assert (=> b!1369105 (=> (not res!912700) (not e!775621))))

(declare-fun subseq!1050 (List!32121 List!32121) Bool)

(assert (=> b!1369105 (= res!912700 (subseq!1050 newAcc!98 acc!866))))

(declare-fun b!1369106 () Bool)

(declare-fun res!912704 () Bool)

(assert (=> b!1369106 (=> (not res!912704) (not e!775621))))

(declare-fun noDuplicate!2538 (List!32121) Bool)

(assert (=> b!1369106 (= res!912704 (noDuplicate!2538 acc!866))))

(declare-fun res!912703 () Bool)

(assert (=> start!115840 (=> (not res!912703) (not e!775621))))

(assert (=> start!115840 (= res!912703 (and (bvslt (size!45424 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45424 a!3861))))))

(assert (=> start!115840 e!775621))

(declare-fun array_inv!33818 (array!92910) Bool)

(assert (=> start!115840 (array_inv!33818 a!3861)))

(assert (=> start!115840 true))

(declare-fun b!1369102 () Bool)

(declare-fun res!912702 () Bool)

(assert (=> b!1369102 (=> (not res!912702) (not e!775621))))

(assert (=> b!1369102 (= res!912702 (not (contains!9659 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115840 res!912703) b!1369106))

(assert (= (and b!1369106 res!912704) b!1369102))

(assert (= (and b!1369102 res!912702) b!1369100))

(assert (= (and b!1369100 res!912705) b!1369103))

(assert (= (and b!1369103 res!912701) b!1369104))

(assert (= (and b!1369104 res!912699) b!1369105))

(assert (= (and b!1369105 res!912700) b!1369101))

(declare-fun m!1252969 () Bool)

(assert (=> b!1369106 m!1252969))

(declare-fun m!1252971 () Bool)

(assert (=> b!1369104 m!1252971))

(declare-fun m!1252973 () Bool)

(assert (=> start!115840 m!1252973))

(declare-fun m!1252975 () Bool)

(assert (=> b!1369102 m!1252975))

(declare-fun m!1252977 () Bool)

(assert (=> b!1369101 m!1252977))

(declare-fun m!1252979 () Bool)

(assert (=> b!1369101 m!1252979))

(declare-fun m!1252981 () Bool)

(assert (=> b!1369105 m!1252981))

(declare-fun m!1252983 () Bool)

(assert (=> b!1369103 m!1252983))

(declare-fun m!1252985 () Bool)

(assert (=> b!1369100 m!1252985))

(check-sat (not b!1369105) (not b!1369102) (not b!1369104) (not start!115840) (not b!1369101) (not b!1369100) (not b!1369106) (not b!1369103))
(check-sat)
