; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115466 () Bool)

(assert start!115466)

(declare-fun b!1364858 () Bool)

(declare-fun res!908558 () Bool)

(declare-fun e!774069 () Bool)

(assert (=> b!1364858 (=> (not res!908558) (not e!774069))))

(declare-datatypes ((List!32027 0))(
  ( (Nil!32024) (Cons!32023 (h!33232 (_ BitVec 64)) (t!46728 List!32027)) )
))
(declare-fun acc!866 () List!32027)

(declare-fun contains!9565 (List!32027 (_ BitVec 64)) Bool)

(assert (=> b!1364858 (= res!908558 (not (contains!9565 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364859 () Bool)

(assert (=> b!1364859 (= e!774069 false)))

(declare-datatypes ((Unit!44993 0))(
  ( (Unit!44994) )
))
(declare-fun lt!601100 () Unit!44993)

(declare-fun newAcc!98 () List!32027)

(declare-fun noDuplicateSubseq!143 (List!32027 List!32027) Unit!44993)

(assert (=> b!1364859 (= lt!601100 (noDuplicateSubseq!143 newAcc!98 acc!866))))

(declare-fun b!1364860 () Bool)

(declare-fun res!908557 () Bool)

(assert (=> b!1364860 (=> (not res!908557) (not e!774069))))

(assert (=> b!1364860 (= res!908557 (not (contains!9565 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364861 () Bool)

(declare-fun res!908554 () Bool)

(assert (=> b!1364861 (=> (not res!908554) (not e!774069))))

(assert (=> b!1364861 (= res!908554 (not (contains!9565 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364862 () Bool)

(declare-fun res!908556 () Bool)

(assert (=> b!1364862 (=> (not res!908556) (not e!774069))))

(declare-fun subseq!956 (List!32027 List!32027) Bool)

(assert (=> b!1364862 (= res!908556 (subseq!956 newAcc!98 acc!866))))

(declare-fun b!1364863 () Bool)

(declare-fun res!908559 () Bool)

(assert (=> b!1364863 (=> (not res!908559) (not e!774069))))

(declare-fun noDuplicate!2444 (List!32027) Bool)

(assert (=> b!1364863 (= res!908559 (noDuplicate!2444 acc!866))))

(declare-fun res!908553 () Bool)

(assert (=> start!115466 (=> (not res!908553) (not e!774069))))

(declare-datatypes ((array!92710 0))(
  ( (array!92711 (arr!44779 (Array (_ BitVec 32) (_ BitVec 64))) (size!45330 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92710)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115466 (= res!908553 (and (bvslt (size!45330 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45330 a!3861))))))

(assert (=> start!115466 e!774069))

(declare-fun array_inv!33724 (array!92710) Bool)

(assert (=> start!115466 (array_inv!33724 a!3861)))

(assert (=> start!115466 true))

(declare-fun b!1364864 () Bool)

(declare-fun res!908555 () Bool)

(assert (=> b!1364864 (=> (not res!908555) (not e!774069))))

(assert (=> b!1364864 (= res!908555 (not (contains!9565 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115466 res!908553) b!1364863))

(assert (= (and b!1364863 res!908559) b!1364864))

(assert (= (and b!1364864 res!908555) b!1364858))

(assert (= (and b!1364858 res!908558) b!1364861))

(assert (= (and b!1364861 res!908554) b!1364860))

(assert (= (and b!1364860 res!908557) b!1364862))

(assert (= (and b!1364862 res!908556) b!1364859))

(declare-fun m!1249585 () Bool)

(assert (=> start!115466 m!1249585))

(declare-fun m!1249587 () Bool)

(assert (=> b!1364863 m!1249587))

(declare-fun m!1249589 () Bool)

(assert (=> b!1364858 m!1249589))

(declare-fun m!1249591 () Bool)

(assert (=> b!1364859 m!1249591))

(declare-fun m!1249593 () Bool)

(assert (=> b!1364860 m!1249593))

(declare-fun m!1249595 () Bool)

(assert (=> b!1364861 m!1249595))

(declare-fun m!1249597 () Bool)

(assert (=> b!1364862 m!1249597))

(declare-fun m!1249599 () Bool)

(assert (=> b!1364864 m!1249599))

(push 1)

(assert (not b!1364864))

(assert (not b!1364863))

(assert (not start!115466))

(assert (not b!1364862))

(assert (not b!1364859))

(assert (not b!1364858))

(assert (not b!1364860))

(assert (not b!1364861))

(check-sat)

(pop 1)

