; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116330 () Bool)

(assert start!116330)

(declare-fun b!1372820 () Bool)

(declare-fun res!916215 () Bool)

(declare-fun e!777703 () Bool)

(assert (=> b!1372820 (=> (not res!916215) (not e!777703))))

(declare-datatypes ((List!32189 0))(
  ( (Nil!32186) (Cons!32185 (h!33394 (_ BitVec 64)) (t!46890 List!32189)) )
))
(declare-fun newAcc!98 () List!32189)

(declare-fun contains!9727 (List!32189 (_ BitVec 64)) Bool)

(assert (=> b!1372820 (= res!916215 (not (contains!9727 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916210 () Bool)

(assert (=> start!116330 (=> (not res!916210) (not e!777703))))

(declare-datatypes ((array!93070 0))(
  ( (array!93071 (arr!44941 (Array (_ BitVec 32) (_ BitVec 64))) (size!45492 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93070)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116330 (= res!916210 (and (bvslt (size!45492 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45492 a!3861))))))

(assert (=> start!116330 e!777703))

(declare-fun array_inv!33886 (array!93070) Bool)

(assert (=> start!116330 (array_inv!33886 a!3861)))

(assert (=> start!116330 true))

(declare-fun b!1372821 () Bool)

(declare-fun res!916214 () Bool)

(assert (=> b!1372821 (=> (not res!916214) (not e!777703))))

(declare-fun acc!866 () List!32189)

(assert (=> b!1372821 (= res!916214 (not (contains!9727 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372822 () Bool)

(declare-fun res!916212 () Bool)

(assert (=> b!1372822 (=> (not res!916212) (not e!777703))))

(assert (=> b!1372822 (= res!916212 (not (contains!9727 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372823 () Bool)

(assert (=> b!1372823 (= e!777703 false)))

(declare-fun lt!602908 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93070 (_ BitVec 32) List!32189) Bool)

(assert (=> b!1372823 (= lt!602908 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45317 0))(
  ( (Unit!45318) )
))
(declare-fun lt!602909 () Unit!45317)

(declare-fun noDuplicateSubseq!305 (List!32189 List!32189) Unit!45317)

(assert (=> b!1372823 (= lt!602909 (noDuplicateSubseq!305 newAcc!98 acc!866))))

(declare-fun b!1372824 () Bool)

(declare-fun res!916209 () Bool)

(assert (=> b!1372824 (=> (not res!916209) (not e!777703))))

(declare-fun subseq!1118 (List!32189 List!32189) Bool)

(assert (=> b!1372824 (= res!916209 (subseq!1118 newAcc!98 acc!866))))

(declare-fun b!1372825 () Bool)

(declare-fun res!916213 () Bool)

(assert (=> b!1372825 (=> (not res!916213) (not e!777703))))

(assert (=> b!1372825 (= res!916213 (not (contains!9727 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372826 () Bool)

(declare-fun res!916211 () Bool)

(assert (=> b!1372826 (=> (not res!916211) (not e!777703))))

(declare-fun noDuplicate!2606 (List!32189) Bool)

(assert (=> b!1372826 (= res!916211 (noDuplicate!2606 acc!866))))

(assert (= (and start!116330 res!916210) b!1372826))

(assert (= (and b!1372826 res!916211) b!1372822))

(assert (= (and b!1372822 res!916212) b!1372821))

(assert (= (and b!1372821 res!916214) b!1372825))

(assert (= (and b!1372825 res!916213) b!1372820))

(assert (= (and b!1372820 res!916215) b!1372824))

(assert (= (and b!1372824 res!916209) b!1372823))

(declare-fun m!1256227 () Bool)

(assert (=> b!1372825 m!1256227))

(declare-fun m!1256229 () Bool)

(assert (=> b!1372823 m!1256229))

(declare-fun m!1256231 () Bool)

(assert (=> b!1372823 m!1256231))

(declare-fun m!1256233 () Bool)

(assert (=> b!1372821 m!1256233))

(declare-fun m!1256235 () Bool)

(assert (=> b!1372824 m!1256235))

(declare-fun m!1256237 () Bool)

(assert (=> b!1372820 m!1256237))

(declare-fun m!1256239 () Bool)

(assert (=> b!1372826 m!1256239))

(declare-fun m!1256241 () Bool)

(assert (=> start!116330 m!1256241))

(declare-fun m!1256243 () Bool)

(assert (=> b!1372822 m!1256243))

(push 1)

(assert (not b!1372824))

(assert (not b!1372825))

(assert (not b!1372823))

(assert (not b!1372822))

(assert (not start!116330))

(assert (not b!1372826))

(assert (not b!1372820))

(assert (not b!1372821))

(check-sat)

(pop 1)

