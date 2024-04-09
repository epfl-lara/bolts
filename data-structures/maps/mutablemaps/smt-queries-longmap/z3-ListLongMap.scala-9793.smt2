; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116320 () Bool)

(assert start!116320)

(declare-fun b!1372715 () Bool)

(declare-fun e!777673 () Bool)

(assert (=> b!1372715 (= e!777673 false)))

(declare-datatypes ((array!93060 0))(
  ( (array!93061 (arr!44936 (Array (_ BitVec 32) (_ BitVec 64))) (size!45487 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93060)

(declare-fun lt!602878 () Bool)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32184 0))(
  ( (Nil!32181) (Cons!32180 (h!33389 (_ BitVec 64)) (t!46885 List!32184)) )
))
(declare-fun acc!866 () List!32184)

(declare-fun arrayNoDuplicates!0 (array!93060 (_ BitVec 32) List!32184) Bool)

(assert (=> b!1372715 (= lt!602878 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45307 0))(
  ( (Unit!45308) )
))
(declare-fun lt!602879 () Unit!45307)

(declare-fun newAcc!98 () List!32184)

(declare-fun noDuplicateSubseq!300 (List!32184 List!32184) Unit!45307)

(assert (=> b!1372715 (= lt!602879 (noDuplicateSubseq!300 newAcc!98 acc!866))))

(declare-fun b!1372716 () Bool)

(declare-fun res!916105 () Bool)

(assert (=> b!1372716 (=> (not res!916105) (not e!777673))))

(declare-fun noDuplicate!2601 (List!32184) Bool)

(assert (=> b!1372716 (= res!916105 (noDuplicate!2601 acc!866))))

(declare-fun b!1372717 () Bool)

(declare-fun res!916110 () Bool)

(assert (=> b!1372717 (=> (not res!916110) (not e!777673))))

(declare-fun contains!9722 (List!32184 (_ BitVec 64)) Bool)

(assert (=> b!1372717 (= res!916110 (not (contains!9722 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372718 () Bool)

(declare-fun res!916104 () Bool)

(assert (=> b!1372718 (=> (not res!916104) (not e!777673))))

(assert (=> b!1372718 (= res!916104 (not (contains!9722 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372719 () Bool)

(declare-fun res!916109 () Bool)

(assert (=> b!1372719 (=> (not res!916109) (not e!777673))))

(declare-fun subseq!1113 (List!32184 List!32184) Bool)

(assert (=> b!1372719 (= res!916109 (subseq!1113 newAcc!98 acc!866))))

(declare-fun res!916106 () Bool)

(assert (=> start!116320 (=> (not res!916106) (not e!777673))))

(assert (=> start!116320 (= res!916106 (and (bvslt (size!45487 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45487 a!3861))))))

(assert (=> start!116320 e!777673))

(declare-fun array_inv!33881 (array!93060) Bool)

(assert (=> start!116320 (array_inv!33881 a!3861)))

(assert (=> start!116320 true))

(declare-fun b!1372720 () Bool)

(declare-fun res!916108 () Bool)

(assert (=> b!1372720 (=> (not res!916108) (not e!777673))))

(assert (=> b!1372720 (= res!916108 (not (contains!9722 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372721 () Bool)

(declare-fun res!916107 () Bool)

(assert (=> b!1372721 (=> (not res!916107) (not e!777673))))

(assert (=> b!1372721 (= res!916107 (not (contains!9722 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116320 res!916106) b!1372716))

(assert (= (and b!1372716 res!916105) b!1372718))

(assert (= (and b!1372718 res!916104) b!1372721))

(assert (= (and b!1372721 res!916107) b!1372720))

(assert (= (and b!1372720 res!916108) b!1372717))

(assert (= (and b!1372717 res!916110) b!1372719))

(assert (= (and b!1372719 res!916109) b!1372715))

(declare-fun m!1256137 () Bool)

(assert (=> b!1372716 m!1256137))

(declare-fun m!1256139 () Bool)

(assert (=> b!1372717 m!1256139))

(declare-fun m!1256141 () Bool)

(assert (=> b!1372718 m!1256141))

(declare-fun m!1256143 () Bool)

(assert (=> b!1372720 m!1256143))

(declare-fun m!1256145 () Bool)

(assert (=> b!1372719 m!1256145))

(declare-fun m!1256147 () Bool)

(assert (=> start!116320 m!1256147))

(declare-fun m!1256149 () Bool)

(assert (=> b!1372721 m!1256149))

(declare-fun m!1256151 () Bool)

(assert (=> b!1372715 m!1256151))

(declare-fun m!1256153 () Bool)

(assert (=> b!1372715 m!1256153))

(check-sat (not b!1372717) (not b!1372721) (not b!1372719) (not b!1372718) (not b!1372715) (not start!116320) (not b!1372716) (not b!1372720))
(check-sat)
