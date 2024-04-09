; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115448 () Bool)

(assert start!115448)

(declare-fun b!1364676 () Bool)

(declare-fun res!908374 () Bool)

(declare-fun e!774016 () Bool)

(assert (=> b!1364676 (=> (not res!908374) (not e!774016))))

(declare-datatypes ((List!32018 0))(
  ( (Nil!32015) (Cons!32014 (h!33223 (_ BitVec 64)) (t!46719 List!32018)) )
))
(declare-fun newAcc!98 () List!32018)

(declare-fun contains!9556 (List!32018 (_ BitVec 64)) Bool)

(assert (=> b!1364676 (= res!908374 (not (contains!9556 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908372 () Bool)

(assert (=> start!115448 (=> (not res!908372) (not e!774016))))

(declare-datatypes ((array!92692 0))(
  ( (array!92693 (arr!44770 (Array (_ BitVec 32) (_ BitVec 64))) (size!45321 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92692)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115448 (= res!908372 (and (bvslt (size!45321 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45321 a!3861))))))

(assert (=> start!115448 e!774016))

(declare-fun array_inv!33715 (array!92692) Bool)

(assert (=> start!115448 (array_inv!33715 a!3861)))

(assert (=> start!115448 true))

(declare-fun b!1364677 () Bool)

(declare-fun res!908371 () Bool)

(assert (=> b!1364677 (=> (not res!908371) (not e!774016))))

(assert (=> b!1364677 (= res!908371 (not (contains!9556 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364678 () Bool)

(declare-fun res!908373 () Bool)

(assert (=> b!1364678 (=> (not res!908373) (not e!774016))))

(declare-fun acc!866 () List!32018)

(assert (=> b!1364678 (= res!908373 (not (contains!9556 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364679 () Bool)

(assert (=> b!1364679 (= e!774016 false)))

(declare-fun b!1364680 () Bool)

(declare-fun res!908375 () Bool)

(assert (=> b!1364680 (=> (not res!908375) (not e!774016))))

(declare-fun noDuplicate!2435 (List!32018) Bool)

(assert (=> b!1364680 (= res!908375 (noDuplicate!2435 acc!866))))

(declare-fun b!1364681 () Bool)

(declare-fun res!908376 () Bool)

(assert (=> b!1364681 (=> (not res!908376) (not e!774016))))

(assert (=> b!1364681 (= res!908376 (not (contains!9556 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115448 res!908372) b!1364680))

(assert (= (and b!1364680 res!908375) b!1364681))

(assert (= (and b!1364681 res!908376) b!1364678))

(assert (= (and b!1364678 res!908373) b!1364676))

(assert (= (and b!1364676 res!908374) b!1364677))

(assert (= (and b!1364677 res!908371) b!1364679))

(declare-fun m!1249453 () Bool)

(assert (=> b!1364678 m!1249453))

(declare-fun m!1249455 () Bool)

(assert (=> b!1364677 m!1249455))

(declare-fun m!1249457 () Bool)

(assert (=> b!1364681 m!1249457))

(declare-fun m!1249459 () Bool)

(assert (=> b!1364676 m!1249459))

(declare-fun m!1249461 () Bool)

(assert (=> b!1364680 m!1249461))

(declare-fun m!1249463 () Bool)

(assert (=> start!115448 m!1249463))

(push 1)

(assert (not b!1364680))

(assert (not start!115448))

(assert (not b!1364676))

(assert (not b!1364681))

(assert (not b!1364677))

(assert (not b!1364678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

