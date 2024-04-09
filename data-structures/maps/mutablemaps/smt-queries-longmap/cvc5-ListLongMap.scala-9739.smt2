; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115454 () Bool)

(assert start!115454)

(declare-fun b!1364732 () Bool)

(declare-fun res!908431 () Bool)

(declare-fun e!774033 () Bool)

(assert (=> b!1364732 (=> (not res!908431) (not e!774033))))

(declare-datatypes ((List!32021 0))(
  ( (Nil!32018) (Cons!32017 (h!33226 (_ BitVec 64)) (t!46722 List!32021)) )
))
(declare-fun newAcc!98 () List!32021)

(declare-fun contains!9559 (List!32021 (_ BitVec 64)) Bool)

(assert (=> b!1364732 (= res!908431 (not (contains!9559 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364733 () Bool)

(declare-fun res!908428 () Bool)

(assert (=> b!1364733 (=> (not res!908428) (not e!774033))))

(declare-fun acc!866 () List!32021)

(declare-fun subseq!950 (List!32021 List!32021) Bool)

(assert (=> b!1364733 (= res!908428 (subseq!950 newAcc!98 acc!866))))

(declare-fun b!1364734 () Bool)

(declare-fun res!908427 () Bool)

(assert (=> b!1364734 (=> (not res!908427) (not e!774033))))

(assert (=> b!1364734 (= res!908427 (not (contains!9559 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364735 () Bool)

(declare-fun res!908432 () Bool)

(assert (=> b!1364735 (=> (not res!908432) (not e!774033))))

(assert (=> b!1364735 (= res!908432 (not (contains!9559 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364736 () Bool)

(declare-fun res!908429 () Bool)

(assert (=> b!1364736 (=> (not res!908429) (not e!774033))))

(assert (=> b!1364736 (= res!908429 (not (contains!9559 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364737 () Bool)

(declare-fun res!908433 () Bool)

(assert (=> b!1364737 (=> (not res!908433) (not e!774033))))

(declare-fun noDuplicate!2438 (List!32021) Bool)

(assert (=> b!1364737 (= res!908433 (noDuplicate!2438 acc!866))))

(declare-fun res!908430 () Bool)

(assert (=> start!115454 (=> (not res!908430) (not e!774033))))

(declare-datatypes ((array!92698 0))(
  ( (array!92699 (arr!44773 (Array (_ BitVec 32) (_ BitVec 64))) (size!45324 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92698)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115454 (= res!908430 (and (bvslt (size!45324 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45324 a!3861))))))

(assert (=> start!115454 e!774033))

(declare-fun array_inv!33718 (array!92698) Bool)

(assert (=> start!115454 (array_inv!33718 a!3861)))

(assert (=> start!115454 true))

(declare-fun b!1364738 () Bool)

(assert (=> b!1364738 (= e!774033 false)))

(declare-datatypes ((Unit!44981 0))(
  ( (Unit!44982) )
))
(declare-fun lt!601082 () Unit!44981)

(declare-fun noDuplicateSubseq!137 (List!32021 List!32021) Unit!44981)

(assert (=> b!1364738 (= lt!601082 (noDuplicateSubseq!137 newAcc!98 acc!866))))

(assert (= (and start!115454 res!908430) b!1364737))

(assert (= (and b!1364737 res!908433) b!1364735))

(assert (= (and b!1364735 res!908432) b!1364734))

(assert (= (and b!1364734 res!908427) b!1364736))

(assert (= (and b!1364736 res!908429) b!1364732))

(assert (= (and b!1364732 res!908431) b!1364733))

(assert (= (and b!1364733 res!908428) b!1364738))

(declare-fun m!1249489 () Bool)

(assert (=> b!1364733 m!1249489))

(declare-fun m!1249491 () Bool)

(assert (=> b!1364737 m!1249491))

(declare-fun m!1249493 () Bool)

(assert (=> b!1364735 m!1249493))

(declare-fun m!1249495 () Bool)

(assert (=> start!115454 m!1249495))

(declare-fun m!1249497 () Bool)

(assert (=> b!1364734 m!1249497))

(declare-fun m!1249499 () Bool)

(assert (=> b!1364738 m!1249499))

(declare-fun m!1249501 () Bool)

(assert (=> b!1364732 m!1249501))

(declare-fun m!1249503 () Bool)

(assert (=> b!1364736 m!1249503))

(push 1)

(assert (not b!1364735))

(assert (not b!1364732))

(assert (not b!1364736))

(assert (not b!1364738))

(assert (not b!1364737))

(assert (not b!1364733))

(assert (not b!1364734))

(assert (not start!115454))

(check-sat)

(pop 1)

