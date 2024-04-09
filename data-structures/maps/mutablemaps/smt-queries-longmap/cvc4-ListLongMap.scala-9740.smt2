; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115464 () Bool)

(assert start!115464)

(declare-fun b!1364837 () Bool)

(declare-fun res!908534 () Bool)

(declare-fun e!774064 () Bool)

(assert (=> b!1364837 (=> (not res!908534) (not e!774064))))

(declare-datatypes ((List!32026 0))(
  ( (Nil!32023) (Cons!32022 (h!33231 (_ BitVec 64)) (t!46727 List!32026)) )
))
(declare-fun newAcc!98 () List!32026)

(declare-fun contains!9564 (List!32026 (_ BitVec 64)) Bool)

(assert (=> b!1364837 (= res!908534 (not (contains!9564 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364838 () Bool)

(declare-fun res!908532 () Bool)

(assert (=> b!1364838 (=> (not res!908532) (not e!774064))))

(declare-fun acc!866 () List!32026)

(declare-fun subseq!955 (List!32026 List!32026) Bool)

(assert (=> b!1364838 (= res!908532 (subseq!955 newAcc!98 acc!866))))

(declare-fun b!1364839 () Bool)

(assert (=> b!1364839 (= e!774064 false)))

(declare-datatypes ((Unit!44991 0))(
  ( (Unit!44992) )
))
(declare-fun lt!601097 () Unit!44991)

(declare-fun noDuplicateSubseq!142 (List!32026 List!32026) Unit!44991)

(assert (=> b!1364839 (= lt!601097 (noDuplicateSubseq!142 newAcc!98 acc!866))))

(declare-fun b!1364840 () Bool)

(declare-fun res!908538 () Bool)

(assert (=> b!1364840 (=> (not res!908538) (not e!774064))))

(declare-fun noDuplicate!2443 (List!32026) Bool)

(assert (=> b!1364840 (= res!908538 (noDuplicate!2443 acc!866))))

(declare-fun b!1364841 () Bool)

(declare-fun res!908537 () Bool)

(assert (=> b!1364841 (=> (not res!908537) (not e!774064))))

(assert (=> b!1364841 (= res!908537 (not (contains!9564 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364842 () Bool)

(declare-fun res!908533 () Bool)

(assert (=> b!1364842 (=> (not res!908533) (not e!774064))))

(assert (=> b!1364842 (= res!908533 (not (contains!9564 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364843 () Bool)

(declare-fun res!908535 () Bool)

(assert (=> b!1364843 (=> (not res!908535) (not e!774064))))

(assert (=> b!1364843 (= res!908535 (not (contains!9564 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908536 () Bool)

(assert (=> start!115464 (=> (not res!908536) (not e!774064))))

(declare-datatypes ((array!92708 0))(
  ( (array!92709 (arr!44778 (Array (_ BitVec 32) (_ BitVec 64))) (size!45329 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92708)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115464 (= res!908536 (and (bvslt (size!45329 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45329 a!3861))))))

(assert (=> start!115464 e!774064))

(declare-fun array_inv!33723 (array!92708) Bool)

(assert (=> start!115464 (array_inv!33723 a!3861)))

(assert (=> start!115464 true))

(assert (= (and start!115464 res!908536) b!1364840))

(assert (= (and b!1364840 res!908538) b!1364841))

(assert (= (and b!1364841 res!908537) b!1364843))

(assert (= (and b!1364843 res!908535) b!1364837))

(assert (= (and b!1364837 res!908534) b!1364842))

(assert (= (and b!1364842 res!908533) b!1364838))

(assert (= (and b!1364838 res!908532) b!1364839))

(declare-fun m!1249569 () Bool)

(assert (=> start!115464 m!1249569))

(declare-fun m!1249571 () Bool)

(assert (=> b!1364841 m!1249571))

(declare-fun m!1249573 () Bool)

(assert (=> b!1364838 m!1249573))

(declare-fun m!1249575 () Bool)

(assert (=> b!1364839 m!1249575))

(declare-fun m!1249577 () Bool)

(assert (=> b!1364837 m!1249577))

(declare-fun m!1249579 () Bool)

(assert (=> b!1364843 m!1249579))

(declare-fun m!1249581 () Bool)

(assert (=> b!1364840 m!1249581))

(declare-fun m!1249583 () Bool)

(assert (=> b!1364842 m!1249583))

(push 1)

(assert (not b!1364842))

(assert (not b!1364839))

(assert (not b!1364843))

(assert (not b!1364838))

(assert (not b!1364841))

(assert (not b!1364837))

(assert (not start!115464))

(assert (not b!1364840))

(check-sat)

(pop 1)

(push 1)

