; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115458 () Bool)

(assert start!115458)

(declare-fun b!1364774 () Bool)

(declare-fun res!908470 () Bool)

(declare-fun e!774045 () Bool)

(assert (=> b!1364774 (=> (not res!908470) (not e!774045))))

(declare-datatypes ((List!32023 0))(
  ( (Nil!32020) (Cons!32019 (h!33228 (_ BitVec 64)) (t!46724 List!32023)) )
))
(declare-fun newAcc!98 () List!32023)

(declare-fun contains!9561 (List!32023 (_ BitVec 64)) Bool)

(assert (=> b!1364774 (= res!908470 (not (contains!9561 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364775 () Bool)

(declare-fun res!908474 () Bool)

(assert (=> b!1364775 (=> (not res!908474) (not e!774045))))

(declare-fun acc!866 () List!32023)

(assert (=> b!1364775 (= res!908474 (not (contains!9561 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364776 () Bool)

(assert (=> b!1364776 (= e!774045 false)))

(declare-datatypes ((Unit!44985 0))(
  ( (Unit!44986) )
))
(declare-fun lt!601088 () Unit!44985)

(declare-fun noDuplicateSubseq!139 (List!32023 List!32023) Unit!44985)

(assert (=> b!1364776 (= lt!601088 (noDuplicateSubseq!139 newAcc!98 acc!866))))

(declare-fun b!1364777 () Bool)

(declare-fun res!908473 () Bool)

(assert (=> b!1364777 (=> (not res!908473) (not e!774045))))

(declare-fun noDuplicate!2440 (List!32023) Bool)

(assert (=> b!1364777 (= res!908473 (noDuplicate!2440 acc!866))))

(declare-fun b!1364778 () Bool)

(declare-fun res!908472 () Bool)

(assert (=> b!1364778 (=> (not res!908472) (not e!774045))))

(assert (=> b!1364778 (= res!908472 (not (contains!9561 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364779 () Bool)

(declare-fun res!908475 () Bool)

(assert (=> b!1364779 (=> (not res!908475) (not e!774045))))

(assert (=> b!1364779 (= res!908475 (not (contains!9561 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364780 () Bool)

(declare-fun res!908469 () Bool)

(assert (=> b!1364780 (=> (not res!908469) (not e!774045))))

(declare-fun subseq!952 (List!32023 List!32023) Bool)

(assert (=> b!1364780 (= res!908469 (subseq!952 newAcc!98 acc!866))))

(declare-fun res!908471 () Bool)

(assert (=> start!115458 (=> (not res!908471) (not e!774045))))

(declare-datatypes ((array!92702 0))(
  ( (array!92703 (arr!44775 (Array (_ BitVec 32) (_ BitVec 64))) (size!45326 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92702)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115458 (= res!908471 (and (bvslt (size!45326 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45326 a!3861))))))

(assert (=> start!115458 e!774045))

(declare-fun array_inv!33720 (array!92702) Bool)

(assert (=> start!115458 (array_inv!33720 a!3861)))

(assert (=> start!115458 true))

(assert (= (and start!115458 res!908471) b!1364777))

(assert (= (and b!1364777 res!908473) b!1364775))

(assert (= (and b!1364775 res!908474) b!1364779))

(assert (= (and b!1364779 res!908475) b!1364778))

(assert (= (and b!1364778 res!908472) b!1364774))

(assert (= (and b!1364774 res!908470) b!1364780))

(assert (= (and b!1364780 res!908469) b!1364776))

(declare-fun m!1249521 () Bool)

(assert (=> b!1364778 m!1249521))

(declare-fun m!1249523 () Bool)

(assert (=> b!1364775 m!1249523))

(declare-fun m!1249525 () Bool)

(assert (=> b!1364779 m!1249525))

(declare-fun m!1249527 () Bool)

(assert (=> start!115458 m!1249527))

(declare-fun m!1249529 () Bool)

(assert (=> b!1364777 m!1249529))

(declare-fun m!1249531 () Bool)

(assert (=> b!1364776 m!1249531))

(declare-fun m!1249533 () Bool)

(assert (=> b!1364780 m!1249533))

(declare-fun m!1249535 () Bool)

(assert (=> b!1364774 m!1249535))

(push 1)

(assert (not b!1364774))

(assert (not b!1364778))

(assert (not b!1364776))

(assert (not start!115458))

(assert (not b!1364775))

(assert (not b!1364777))

(assert (not b!1364779))

(assert (not b!1364780))

(check-sat)

