; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115456 () Bool)

(assert start!115456)

(declare-fun b!1364753 () Bool)

(declare-fun e!774040 () Bool)

(assert (=> b!1364753 (= e!774040 false)))

(declare-datatypes ((Unit!44983 0))(
  ( (Unit!44984) )
))
(declare-fun lt!601085 () Unit!44983)

(declare-datatypes ((List!32022 0))(
  ( (Nil!32019) (Cons!32018 (h!33227 (_ BitVec 64)) (t!46723 List!32022)) )
))
(declare-fun newAcc!98 () List!32022)

(declare-fun acc!866 () List!32022)

(declare-fun noDuplicateSubseq!138 (List!32022 List!32022) Unit!44983)

(assert (=> b!1364753 (= lt!601085 (noDuplicateSubseq!138 newAcc!98 acc!866))))

(declare-fun b!1364754 () Bool)

(declare-fun res!908448 () Bool)

(assert (=> b!1364754 (=> (not res!908448) (not e!774040))))

(declare-fun contains!9560 (List!32022 (_ BitVec 64)) Bool)

(assert (=> b!1364754 (= res!908448 (not (contains!9560 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364755 () Bool)

(declare-fun res!908453 () Bool)

(assert (=> b!1364755 (=> (not res!908453) (not e!774040))))

(declare-fun noDuplicate!2439 (List!32022) Bool)

(assert (=> b!1364755 (= res!908453 (noDuplicate!2439 acc!866))))

(declare-fun b!1364756 () Bool)

(declare-fun res!908449 () Bool)

(assert (=> b!1364756 (=> (not res!908449) (not e!774040))))

(declare-fun subseq!951 (List!32022 List!32022) Bool)

(assert (=> b!1364756 (= res!908449 (subseq!951 newAcc!98 acc!866))))

(declare-fun b!1364757 () Bool)

(declare-fun res!908451 () Bool)

(assert (=> b!1364757 (=> (not res!908451) (not e!774040))))

(assert (=> b!1364757 (= res!908451 (not (contains!9560 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908450 () Bool)

(assert (=> start!115456 (=> (not res!908450) (not e!774040))))

(declare-datatypes ((array!92700 0))(
  ( (array!92701 (arr!44774 (Array (_ BitVec 32) (_ BitVec 64))) (size!45325 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92700)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115456 (= res!908450 (and (bvslt (size!45325 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45325 a!3861))))))

(assert (=> start!115456 e!774040))

(declare-fun array_inv!33719 (array!92700) Bool)

(assert (=> start!115456 (array_inv!33719 a!3861)))

(assert (=> start!115456 true))

(declare-fun b!1364758 () Bool)

(declare-fun res!908454 () Bool)

(assert (=> b!1364758 (=> (not res!908454) (not e!774040))))

(assert (=> b!1364758 (= res!908454 (not (contains!9560 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364759 () Bool)

(declare-fun res!908452 () Bool)

(assert (=> b!1364759 (=> (not res!908452) (not e!774040))))

(assert (=> b!1364759 (= res!908452 (not (contains!9560 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115456 res!908450) b!1364755))

(assert (= (and b!1364755 res!908453) b!1364754))

(assert (= (and b!1364754 res!908448) b!1364757))

(assert (= (and b!1364757 res!908451) b!1364759))

(assert (= (and b!1364759 res!908452) b!1364758))

(assert (= (and b!1364758 res!908454) b!1364756))

(assert (= (and b!1364756 res!908449) b!1364753))

(declare-fun m!1249505 () Bool)

(assert (=> b!1364754 m!1249505))

(declare-fun m!1249507 () Bool)

(assert (=> b!1364755 m!1249507))

(declare-fun m!1249509 () Bool)

(assert (=> start!115456 m!1249509))

(declare-fun m!1249511 () Bool)

(assert (=> b!1364759 m!1249511))

(declare-fun m!1249513 () Bool)

(assert (=> b!1364753 m!1249513))

(declare-fun m!1249515 () Bool)

(assert (=> b!1364756 m!1249515))

(declare-fun m!1249517 () Bool)

(assert (=> b!1364758 m!1249517))

(declare-fun m!1249519 () Bool)

(assert (=> b!1364757 m!1249519))

(check-sat (not b!1364753) (not b!1364758) (not b!1364756) (not start!115456) (not b!1364755) (not b!1364757) (not b!1364759) (not b!1364754))
(check-sat)
