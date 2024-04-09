; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115474 () Bool)

(assert start!115474)

(declare-fun b!1364942 () Bool)

(declare-fun res!908640 () Bool)

(declare-fun e!774093 () Bool)

(assert (=> b!1364942 (=> (not res!908640) (not e!774093))))

(declare-datatypes ((List!32031 0))(
  ( (Nil!32028) (Cons!32027 (h!33236 (_ BitVec 64)) (t!46732 List!32031)) )
))
(declare-fun acc!866 () List!32031)

(declare-fun noDuplicate!2448 (List!32031) Bool)

(assert (=> b!1364942 (= res!908640 (noDuplicate!2448 acc!866))))

(declare-fun b!1364943 () Bool)

(declare-fun res!908637 () Bool)

(assert (=> b!1364943 (=> (not res!908637) (not e!774093))))

(declare-fun newAcc!98 () List!32031)

(declare-fun subseq!960 (List!32031 List!32031) Bool)

(assert (=> b!1364943 (= res!908637 (subseq!960 newAcc!98 acc!866))))

(declare-fun b!1364944 () Bool)

(assert (=> b!1364944 (= e!774093 false)))

(declare-datatypes ((Unit!45001 0))(
  ( (Unit!45002) )
))
(declare-fun lt!601112 () Unit!45001)

(declare-fun noDuplicateSubseq!147 (List!32031 List!32031) Unit!45001)

(assert (=> b!1364944 (= lt!601112 (noDuplicateSubseq!147 newAcc!98 acc!866))))

(declare-fun b!1364945 () Bool)

(declare-fun res!908643 () Bool)

(assert (=> b!1364945 (=> (not res!908643) (not e!774093))))

(declare-fun contains!9569 (List!32031 (_ BitVec 64)) Bool)

(assert (=> b!1364945 (= res!908643 (not (contains!9569 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364946 () Bool)

(declare-fun res!908642 () Bool)

(assert (=> b!1364946 (=> (not res!908642) (not e!774093))))

(assert (=> b!1364946 (= res!908642 (not (contains!9569 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364947 () Bool)

(declare-fun res!908639 () Bool)

(assert (=> b!1364947 (=> (not res!908639) (not e!774093))))

(assert (=> b!1364947 (= res!908639 (not (contains!9569 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908641 () Bool)

(assert (=> start!115474 (=> (not res!908641) (not e!774093))))

(declare-datatypes ((array!92718 0))(
  ( (array!92719 (arr!44783 (Array (_ BitVec 32) (_ BitVec 64))) (size!45334 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92718)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115474 (= res!908641 (and (bvslt (size!45334 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45334 a!3861))))))

(assert (=> start!115474 e!774093))

(declare-fun array_inv!33728 (array!92718) Bool)

(assert (=> start!115474 (array_inv!33728 a!3861)))

(assert (=> start!115474 true))

(declare-fun b!1364948 () Bool)

(declare-fun res!908638 () Bool)

(assert (=> b!1364948 (=> (not res!908638) (not e!774093))))

(assert (=> b!1364948 (= res!908638 (not (contains!9569 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115474 res!908641) b!1364942))

(assert (= (and b!1364942 res!908640) b!1364948))

(assert (= (and b!1364948 res!908638) b!1364947))

(assert (= (and b!1364947 res!908639) b!1364946))

(assert (= (and b!1364946 res!908642) b!1364945))

(assert (= (and b!1364945 res!908643) b!1364943))

(assert (= (and b!1364943 res!908637) b!1364944))

(declare-fun m!1249649 () Bool)

(assert (=> b!1364942 m!1249649))

(declare-fun m!1249651 () Bool)

(assert (=> b!1364943 m!1249651))

(declare-fun m!1249653 () Bool)

(assert (=> start!115474 m!1249653))

(declare-fun m!1249655 () Bool)

(assert (=> b!1364948 m!1249655))

(declare-fun m!1249657 () Bool)

(assert (=> b!1364946 m!1249657))

(declare-fun m!1249659 () Bool)

(assert (=> b!1364944 m!1249659))

(declare-fun m!1249661 () Bool)

(assert (=> b!1364947 m!1249661))

(declare-fun m!1249663 () Bool)

(assert (=> b!1364945 m!1249663))

(check-sat (not b!1364943) (not b!1364947) (not start!115474) (not b!1364948) (not b!1364945) (not b!1364944) (not b!1364946) (not b!1364942))
(check-sat)
