; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115714 () Bool)

(assert start!115714)

(declare-fun b!1367617 () Bool)

(declare-fun res!911254 () Bool)

(declare-fun e!775109 () Bool)

(assert (=> b!1367617 (=> (not res!911254) (not e!775109))))

(declare-datatypes ((List!32082 0))(
  ( (Nil!32079) (Cons!32078 (h!33287 (_ BitVec 64)) (t!46783 List!32082)) )
))
(declare-fun acc!866 () List!32082)

(declare-fun contains!9620 (List!32082 (_ BitVec 64)) Bool)

(assert (=> b!1367617 (= res!911254 (not (contains!9620 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367618 () Bool)

(declare-fun res!911248 () Bool)

(declare-fun e!775110 () Bool)

(assert (=> b!1367618 (=> (not res!911248) (not e!775110))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92829 0))(
  ( (array!92830 (arr!44834 (Array (_ BitVec 32) (_ BitVec 64))) (size!45385 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92829)

(assert (=> b!1367618 (= res!911248 (bvslt from!3239 (size!45385 a!3861)))))

(declare-fun res!911252 () Bool)

(assert (=> start!115714 (=> (not res!911252) (not e!775109))))

(assert (=> start!115714 (= res!911252 (and (bvslt (size!45385 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45385 a!3861))))))

(assert (=> start!115714 e!775109))

(declare-fun array_inv!33779 (array!92829) Bool)

(assert (=> start!115714 (array_inv!33779 a!3861)))

(assert (=> start!115714 true))

(declare-fun b!1367619 () Bool)

(declare-fun res!911250 () Bool)

(assert (=> b!1367619 (=> (not res!911250) (not e!775110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367619 (= res!911250 (validKeyInArray!0 (select (arr!44834 a!3861) from!3239)))))

(declare-fun b!1367620 () Bool)

(declare-fun res!911253 () Bool)

(assert (=> b!1367620 (=> (not res!911253) (not e!775109))))

(declare-fun newAcc!98 () List!32082)

(assert (=> b!1367620 (= res!911253 (not (contains!9620 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367621 () Bool)

(declare-fun res!911247 () Bool)

(assert (=> b!1367621 (=> (not res!911247) (not e!775109))))

(assert (=> b!1367621 (= res!911247 (not (contains!9620 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367622 () Bool)

(declare-fun res!911246 () Bool)

(assert (=> b!1367622 (=> (not res!911246) (not e!775109))))

(assert (=> b!1367622 (= res!911246 (not (contains!9620 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367623 () Bool)

(declare-fun res!911255 () Bool)

(assert (=> b!1367623 (=> (not res!911255) (not e!775110))))

(assert (=> b!1367623 (= res!911255 (contains!9620 acc!866 (select (arr!44834 a!3861) from!3239)))))

(declare-fun b!1367624 () Bool)

(declare-fun res!911256 () Bool)

(assert (=> b!1367624 (=> (not res!911256) (not e!775109))))

(declare-fun subseq!1011 (List!32082 List!32082) Bool)

(assert (=> b!1367624 (= res!911256 (subseq!1011 newAcc!98 acc!866))))

(declare-fun b!1367625 () Bool)

(declare-fun res!911249 () Bool)

(assert (=> b!1367625 (=> (not res!911249) (not e!775109))))

(declare-fun noDuplicate!2499 (List!32082) Bool)

(assert (=> b!1367625 (= res!911249 (noDuplicate!2499 acc!866))))

(declare-fun b!1367626 () Bool)

(assert (=> b!1367626 (= e!775110 false)))

(declare-fun lt!601868 () Bool)

(assert (=> b!1367626 (= lt!601868 (noDuplicate!2499 newAcc!98))))

(declare-fun b!1367627 () Bool)

(assert (=> b!1367627 (= e!775109 e!775110)))

(declare-fun res!911251 () Bool)

(assert (=> b!1367627 (=> (not res!911251) (not e!775110))))

(declare-fun arrayNoDuplicates!0 (array!92829 (_ BitVec 32) List!32082) Bool)

(assert (=> b!1367627 (= res!911251 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45103 0))(
  ( (Unit!45104) )
))
(declare-fun lt!601867 () Unit!45103)

(declare-fun noDuplicateSubseq!198 (List!32082 List!32082) Unit!45103)

(assert (=> b!1367627 (= lt!601867 (noDuplicateSubseq!198 newAcc!98 acc!866))))

(assert (= (and start!115714 res!911252) b!1367625))

(assert (= (and b!1367625 res!911249) b!1367621))

(assert (= (and b!1367621 res!911247) b!1367617))

(assert (= (and b!1367617 res!911254) b!1367620))

(assert (= (and b!1367620 res!911253) b!1367622))

(assert (= (and b!1367622 res!911246) b!1367624))

(assert (= (and b!1367624 res!911256) b!1367627))

(assert (= (and b!1367627 res!911251) b!1367618))

(assert (= (and b!1367618 res!911248) b!1367619))

(assert (= (and b!1367619 res!911250) b!1367623))

(assert (= (and b!1367623 res!911255) b!1367626))

(declare-fun m!1251819 () Bool)

(assert (=> b!1367627 m!1251819))

(declare-fun m!1251821 () Bool)

(assert (=> b!1367627 m!1251821))

(declare-fun m!1251823 () Bool)

(assert (=> b!1367621 m!1251823))

(declare-fun m!1251825 () Bool)

(assert (=> b!1367622 m!1251825))

(declare-fun m!1251827 () Bool)

(assert (=> b!1367623 m!1251827))

(assert (=> b!1367623 m!1251827))

(declare-fun m!1251829 () Bool)

(assert (=> b!1367623 m!1251829))

(declare-fun m!1251831 () Bool)

(assert (=> b!1367625 m!1251831))

(declare-fun m!1251833 () Bool)

(assert (=> b!1367617 m!1251833))

(declare-fun m!1251835 () Bool)

(assert (=> b!1367620 m!1251835))

(declare-fun m!1251837 () Bool)

(assert (=> b!1367626 m!1251837))

(declare-fun m!1251839 () Bool)

(assert (=> start!115714 m!1251839))

(declare-fun m!1251841 () Bool)

(assert (=> b!1367624 m!1251841))

(assert (=> b!1367619 m!1251827))

(assert (=> b!1367619 m!1251827))

(declare-fun m!1251843 () Bool)

(assert (=> b!1367619 m!1251843))

(check-sat (not b!1367619) (not b!1367624) (not b!1367620) (not b!1367621) (not b!1367622) (not b!1367617) (not b!1367625) (not b!1367623) (not b!1367627) (not b!1367626) (not start!115714))
(check-sat)
