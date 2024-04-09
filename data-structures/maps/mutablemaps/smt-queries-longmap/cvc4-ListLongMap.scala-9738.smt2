; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115452 () Bool)

(assert start!115452)

(declare-fun b!1364712 () Bool)

(declare-fun res!908409 () Bool)

(declare-fun e!774027 () Bool)

(assert (=> b!1364712 (=> (not res!908409) (not e!774027))))

(declare-datatypes ((List!32020 0))(
  ( (Nil!32017) (Cons!32016 (h!33225 (_ BitVec 64)) (t!46721 List!32020)) )
))
(declare-fun acc!866 () List!32020)

(declare-fun contains!9558 (List!32020 (_ BitVec 64)) Bool)

(assert (=> b!1364712 (= res!908409 (not (contains!9558 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364713 () Bool)

(declare-fun res!908407 () Bool)

(assert (=> b!1364713 (=> (not res!908407) (not e!774027))))

(declare-fun newAcc!98 () List!32020)

(assert (=> b!1364713 (= res!908407 (not (contains!9558 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908408 () Bool)

(assert (=> start!115452 (=> (not res!908408) (not e!774027))))

(declare-datatypes ((array!92696 0))(
  ( (array!92697 (arr!44772 (Array (_ BitVec 32) (_ BitVec 64))) (size!45323 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92696)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115452 (= res!908408 (and (bvslt (size!45323 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45323 a!3861))))))

(assert (=> start!115452 e!774027))

(declare-fun array_inv!33717 (array!92696) Bool)

(assert (=> start!115452 (array_inv!33717 a!3861)))

(assert (=> start!115452 true))

(declare-fun b!1364714 () Bool)

(declare-fun res!908411 () Bool)

(assert (=> b!1364714 (=> (not res!908411) (not e!774027))))

(declare-fun noDuplicate!2437 (List!32020) Bool)

(assert (=> b!1364714 (= res!908411 (noDuplicate!2437 acc!866))))

(declare-fun b!1364715 () Bool)

(assert (=> b!1364715 (= e!774027 false)))

(declare-fun b!1364716 () Bool)

(declare-fun res!908412 () Bool)

(assert (=> b!1364716 (=> (not res!908412) (not e!774027))))

(assert (=> b!1364716 (= res!908412 (not (contains!9558 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364717 () Bool)

(declare-fun res!908410 () Bool)

(assert (=> b!1364717 (=> (not res!908410) (not e!774027))))

(assert (=> b!1364717 (= res!908410 (not (contains!9558 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115452 res!908408) b!1364714))

(assert (= (and b!1364714 res!908411) b!1364717))

(assert (= (and b!1364717 res!908410) b!1364712))

(assert (= (and b!1364712 res!908409) b!1364716))

(assert (= (and b!1364716 res!908412) b!1364713))

(assert (= (and b!1364713 res!908407) b!1364715))

(declare-fun m!1249477 () Bool)

(assert (=> start!115452 m!1249477))

(declare-fun m!1249479 () Bool)

(assert (=> b!1364714 m!1249479))

(declare-fun m!1249481 () Bool)

(assert (=> b!1364717 m!1249481))

(declare-fun m!1249483 () Bool)

(assert (=> b!1364712 m!1249483))

(declare-fun m!1249485 () Bool)

(assert (=> b!1364713 m!1249485))

(declare-fun m!1249487 () Bool)

(assert (=> b!1364716 m!1249487))

(push 1)

(assert (not b!1364714))

(assert (not b!1364716))

(assert (not b!1364717))

(assert (not b!1364712))

(assert (not b!1364713))

(assert (not start!115452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

