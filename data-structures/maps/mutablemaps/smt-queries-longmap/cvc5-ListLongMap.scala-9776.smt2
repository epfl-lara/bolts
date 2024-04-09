; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115898 () Bool)

(assert start!115898)

(declare-fun b!1369517 () Bool)

(declare-fun res!913104 () Bool)

(declare-fun e!775846 () Bool)

(assert (=> b!1369517 (=> (not res!913104) (not e!775846))))

(declare-datatypes ((List!32132 0))(
  ( (Nil!32129) (Cons!32128 (h!33337 (_ BitVec 64)) (t!46833 List!32132)) )
))
(declare-fun newAcc!98 () List!32132)

(declare-fun acc!866 () List!32132)

(declare-fun subseq!1061 (List!32132 List!32132) Bool)

(assert (=> b!1369517 (= res!913104 (subseq!1061 newAcc!98 acc!866))))

(declare-fun b!1369519 () Bool)

(declare-fun res!913099 () Bool)

(assert (=> b!1369519 (=> (not res!913099) (not e!775846))))

(declare-fun noDuplicate!2549 (List!32132) Bool)

(assert (=> b!1369519 (= res!913099 (noDuplicate!2549 acc!866))))

(declare-fun b!1369520 () Bool)

(assert (=> b!1369520 (= e!775846 false)))

(declare-datatypes ((array!92935 0))(
  ( (array!92936 (arr!44884 (Array (_ BitVec 32) (_ BitVec 64))) (size!45435 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92935)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602230 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92935 (_ BitVec 32) List!32132) Bool)

(assert (=> b!1369520 (= lt!602230 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45203 0))(
  ( (Unit!45204) )
))
(declare-fun lt!602231 () Unit!45203)

(declare-fun noDuplicateSubseq!248 (List!32132 List!32132) Unit!45203)

(assert (=> b!1369520 (= lt!602231 (noDuplicateSubseq!248 newAcc!98 acc!866))))

(declare-fun b!1369521 () Bool)

(declare-fun res!913102 () Bool)

(assert (=> b!1369521 (=> (not res!913102) (not e!775846))))

(declare-fun contains!9670 (List!32132 (_ BitVec 64)) Bool)

(assert (=> b!1369521 (= res!913102 (not (contains!9670 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369522 () Bool)

(declare-fun res!913100 () Bool)

(assert (=> b!1369522 (=> (not res!913100) (not e!775846))))

(assert (=> b!1369522 (= res!913100 (not (contains!9670 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369523 () Bool)

(declare-fun res!913101 () Bool)

(assert (=> b!1369523 (=> (not res!913101) (not e!775846))))

(assert (=> b!1369523 (= res!913101 (not (contains!9670 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913098 () Bool)

(assert (=> start!115898 (=> (not res!913098) (not e!775846))))

(assert (=> start!115898 (= res!913098 (and (bvslt (size!45435 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45435 a!3861))))))

(assert (=> start!115898 e!775846))

(declare-fun array_inv!33829 (array!92935) Bool)

(assert (=> start!115898 (array_inv!33829 a!3861)))

(assert (=> start!115898 true))

(declare-fun b!1369518 () Bool)

(declare-fun res!913103 () Bool)

(assert (=> b!1369518 (=> (not res!913103) (not e!775846))))

(assert (=> b!1369518 (= res!913103 (not (contains!9670 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115898 res!913098) b!1369519))

(assert (= (and b!1369519 res!913099) b!1369521))

(assert (= (and b!1369521 res!913102) b!1369523))

(assert (= (and b!1369523 res!913101) b!1369522))

(assert (= (and b!1369522 res!913100) b!1369518))

(assert (= (and b!1369518 res!913103) b!1369517))

(assert (= (and b!1369517 res!913104) b!1369520))

(declare-fun m!1253305 () Bool)

(assert (=> b!1369517 m!1253305))

(declare-fun m!1253307 () Bool)

(assert (=> b!1369520 m!1253307))

(declare-fun m!1253309 () Bool)

(assert (=> b!1369520 m!1253309))

(declare-fun m!1253311 () Bool)

(assert (=> b!1369521 m!1253311))

(declare-fun m!1253313 () Bool)

(assert (=> b!1369519 m!1253313))

(declare-fun m!1253315 () Bool)

(assert (=> b!1369522 m!1253315))

(declare-fun m!1253317 () Bool)

(assert (=> b!1369518 m!1253317))

(declare-fun m!1253319 () Bool)

(assert (=> b!1369523 m!1253319))

(declare-fun m!1253321 () Bool)

(assert (=> start!115898 m!1253321))

(push 1)

(assert (not b!1369522))

(assert (not start!115898))

(assert (not b!1369521))

(assert (not b!1369520))

(assert (not b!1369519))

(assert (not b!1369523))

(assert (not b!1369517))

(assert (not b!1369518))

(check-sat)

(pop 1)

