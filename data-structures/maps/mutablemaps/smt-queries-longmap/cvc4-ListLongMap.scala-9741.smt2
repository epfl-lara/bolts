; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115470 () Bool)

(assert start!115470)

(declare-fun b!1364900 () Bool)

(declare-fun res!908599 () Bool)

(declare-fun e!774081 () Bool)

(assert (=> b!1364900 (=> (not res!908599) (not e!774081))))

(declare-datatypes ((List!32029 0))(
  ( (Nil!32026) (Cons!32025 (h!33234 (_ BitVec 64)) (t!46730 List!32029)) )
))
(declare-fun acc!866 () List!32029)

(declare-fun contains!9567 (List!32029 (_ BitVec 64)) Bool)

(assert (=> b!1364900 (= res!908599 (not (contains!9567 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364901 () Bool)

(declare-fun res!908600 () Bool)

(assert (=> b!1364901 (=> (not res!908600) (not e!774081))))

(declare-fun newAcc!98 () List!32029)

(declare-fun subseq!958 (List!32029 List!32029) Bool)

(assert (=> b!1364901 (= res!908600 (subseq!958 newAcc!98 acc!866))))

(declare-fun b!1364902 () Bool)

(declare-fun res!908595 () Bool)

(assert (=> b!1364902 (=> (not res!908595) (not e!774081))))

(declare-fun noDuplicate!2446 (List!32029) Bool)

(assert (=> b!1364902 (= res!908595 (noDuplicate!2446 acc!866))))

(declare-fun b!1364903 () Bool)

(assert (=> b!1364903 (= e!774081 false)))

(declare-datatypes ((Unit!44997 0))(
  ( (Unit!44998) )
))
(declare-fun lt!601106 () Unit!44997)

(declare-fun noDuplicateSubseq!145 (List!32029 List!32029) Unit!44997)

(assert (=> b!1364903 (= lt!601106 (noDuplicateSubseq!145 newAcc!98 acc!866))))

(declare-fun b!1364904 () Bool)

(declare-fun res!908598 () Bool)

(assert (=> b!1364904 (=> (not res!908598) (not e!774081))))

(assert (=> b!1364904 (= res!908598 (not (contains!9567 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364906 () Bool)

(declare-fun res!908596 () Bool)

(assert (=> b!1364906 (=> (not res!908596) (not e!774081))))

(assert (=> b!1364906 (= res!908596 (not (contains!9567 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908601 () Bool)

(assert (=> start!115470 (=> (not res!908601) (not e!774081))))

(declare-datatypes ((array!92714 0))(
  ( (array!92715 (arr!44781 (Array (_ BitVec 32) (_ BitVec 64))) (size!45332 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92714)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115470 (= res!908601 (and (bvslt (size!45332 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45332 a!3861))))))

(assert (=> start!115470 e!774081))

(declare-fun array_inv!33726 (array!92714) Bool)

(assert (=> start!115470 (array_inv!33726 a!3861)))

(assert (=> start!115470 true))

(declare-fun b!1364905 () Bool)

(declare-fun res!908597 () Bool)

(assert (=> b!1364905 (=> (not res!908597) (not e!774081))))

(assert (=> b!1364905 (= res!908597 (not (contains!9567 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115470 res!908601) b!1364902))

(assert (= (and b!1364902 res!908595) b!1364900))

(assert (= (and b!1364900 res!908599) b!1364906))

(assert (= (and b!1364906 res!908596) b!1364905))

(assert (= (and b!1364905 res!908597) b!1364904))

(assert (= (and b!1364904 res!908598) b!1364901))

(assert (= (and b!1364901 res!908600) b!1364903))

(declare-fun m!1249617 () Bool)

(assert (=> b!1364903 m!1249617))

(declare-fun m!1249619 () Bool)

(assert (=> b!1364906 m!1249619))

(declare-fun m!1249621 () Bool)

(assert (=> b!1364905 m!1249621))

(declare-fun m!1249623 () Bool)

(assert (=> b!1364900 m!1249623))

(declare-fun m!1249625 () Bool)

(assert (=> b!1364904 m!1249625))

(declare-fun m!1249627 () Bool)

(assert (=> start!115470 m!1249627))

(declare-fun m!1249629 () Bool)

(assert (=> b!1364901 m!1249629))

(declare-fun m!1249631 () Bool)

(assert (=> b!1364902 m!1249631))

(push 1)

(assert (not b!1364902))

(assert (not b!1364904))

(assert (not b!1364905))

(assert (not start!115470))

(assert (not b!1364900))

(assert (not b!1364901))

(assert (not b!1364903))

(assert (not b!1364906))

(check-sat)

