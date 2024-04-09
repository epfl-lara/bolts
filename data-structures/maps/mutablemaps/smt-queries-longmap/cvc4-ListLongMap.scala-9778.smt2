; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115914 () Bool)

(assert start!115914)

(declare-fun b!1369709 () Bool)

(declare-fun res!913294 () Bool)

(declare-fun e!775901 () Bool)

(assert (=> b!1369709 (=> (not res!913294) (not e!775901))))

(declare-datatypes ((List!32140 0))(
  ( (Nil!32137) (Cons!32136 (h!33345 (_ BitVec 64)) (t!46841 List!32140)) )
))
(declare-fun acc!866 () List!32140)

(declare-fun contains!9678 (List!32140 (_ BitVec 64)) Bool)

(assert (=> b!1369709 (= res!913294 (not (contains!9678 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369710 () Bool)

(declare-fun res!913298 () Bool)

(declare-fun e!775903 () Bool)

(assert (=> b!1369710 (=> (not res!913298) (not e!775903))))

(declare-datatypes ((array!92951 0))(
  ( (array!92952 (arr!44892 (Array (_ BitVec 32) (_ BitVec 64))) (size!45443 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92951)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369710 (= res!913298 (validKeyInArray!0 (select (arr!44892 a!3861) from!3239)))))

(declare-fun b!1369711 () Bool)

(assert (=> b!1369711 (= e!775901 e!775903)))

(declare-fun res!913290 () Bool)

(assert (=> b!1369711 (=> (not res!913290) (not e!775903))))

(declare-fun arrayNoDuplicates!0 (array!92951 (_ BitVec 32) List!32140) Bool)

(assert (=> b!1369711 (= res!913290 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45219 0))(
  ( (Unit!45220) )
))
(declare-fun lt!602278 () Unit!45219)

(declare-fun newAcc!98 () List!32140)

(declare-fun noDuplicateSubseq!256 (List!32140 List!32140) Unit!45219)

(assert (=> b!1369711 (= lt!602278 (noDuplicateSubseq!256 newAcc!98 acc!866))))

(declare-fun b!1369712 () Bool)

(declare-fun res!913291 () Bool)

(assert (=> b!1369712 (=> (not res!913291) (not e!775901))))

(declare-fun noDuplicate!2557 (List!32140) Bool)

(assert (=> b!1369712 (= res!913291 (noDuplicate!2557 acc!866))))

(declare-fun b!1369713 () Bool)

(declare-fun res!913295 () Bool)

(assert (=> b!1369713 (=> (not res!913295) (not e!775901))))

(assert (=> b!1369713 (= res!913295 (not (contains!9678 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369714 () Bool)

(declare-fun res!913296 () Bool)

(assert (=> b!1369714 (=> (not res!913296) (not e!775903))))

(assert (=> b!1369714 (= res!913296 (bvslt from!3239 (size!45443 a!3861)))))

(declare-fun b!1369715 () Bool)

(declare-fun res!913292 () Bool)

(assert (=> b!1369715 (=> (not res!913292) (not e!775901))))

(assert (=> b!1369715 (= res!913292 (not (contains!9678 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913293 () Bool)

(assert (=> start!115914 (=> (not res!913293) (not e!775901))))

(assert (=> start!115914 (= res!913293 (and (bvslt (size!45443 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45443 a!3861))))))

(assert (=> start!115914 e!775901))

(declare-fun array_inv!33837 (array!92951) Bool)

(assert (=> start!115914 (array_inv!33837 a!3861)))

(assert (=> start!115914 true))

(declare-fun b!1369716 () Bool)

(declare-fun res!913297 () Bool)

(assert (=> b!1369716 (=> (not res!913297) (not e!775901))))

(declare-fun subseq!1069 (List!32140 List!32140) Bool)

(assert (=> b!1369716 (= res!913297 (subseq!1069 newAcc!98 acc!866))))

(declare-fun b!1369717 () Bool)

(assert (=> b!1369717 (= e!775903 false)))

(declare-fun lt!602279 () Bool)

(assert (=> b!1369717 (= lt!602279 (contains!9678 acc!866 (select (arr!44892 a!3861) from!3239)))))

(declare-fun b!1369718 () Bool)

(declare-fun res!913299 () Bool)

(assert (=> b!1369718 (=> (not res!913299) (not e!775901))))

(assert (=> b!1369718 (= res!913299 (not (contains!9678 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115914 res!913293) b!1369712))

(assert (= (and b!1369712 res!913291) b!1369709))

(assert (= (and b!1369709 res!913294) b!1369718))

(assert (= (and b!1369718 res!913299) b!1369715))

(assert (= (and b!1369715 res!913292) b!1369713))

(assert (= (and b!1369713 res!913295) b!1369716))

(assert (= (and b!1369716 res!913297) b!1369711))

(assert (= (and b!1369711 res!913290) b!1369714))

(assert (= (and b!1369714 res!913296) b!1369710))

(assert (= (and b!1369710 res!913298) b!1369717))

(declare-fun m!1253461 () Bool)

(assert (=> b!1369716 m!1253461))

(declare-fun m!1253463 () Bool)

(assert (=> b!1369713 m!1253463))

(declare-fun m!1253465 () Bool)

(assert (=> start!115914 m!1253465))

(declare-fun m!1253467 () Bool)

(assert (=> b!1369710 m!1253467))

(assert (=> b!1369710 m!1253467))

(declare-fun m!1253469 () Bool)

(assert (=> b!1369710 m!1253469))

(declare-fun m!1253471 () Bool)

(assert (=> b!1369718 m!1253471))

(declare-fun m!1253473 () Bool)

(assert (=> b!1369715 m!1253473))

(declare-fun m!1253475 () Bool)

(assert (=> b!1369712 m!1253475))

(declare-fun m!1253477 () Bool)

(assert (=> b!1369709 m!1253477))

(assert (=> b!1369717 m!1253467))

(assert (=> b!1369717 m!1253467))

(declare-fun m!1253479 () Bool)

(assert (=> b!1369717 m!1253479))

(declare-fun m!1253481 () Bool)

(assert (=> b!1369711 m!1253481))

(declare-fun m!1253483 () Bool)

(assert (=> b!1369711 m!1253483))

(push 1)

(assert (not b!1369710))

(assert (not b!1369717))

