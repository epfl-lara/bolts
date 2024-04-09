; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115770 () Bool)

(assert start!115770)

(declare-fun b!1368549 () Bool)

(declare-fun res!912187 () Bool)

(declare-fun e!775362 () Bool)

(assert (=> b!1368549 (=> (not res!912187) (not e!775362))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368549 (= res!912187 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368550 () Bool)

(declare-fun res!912184 () Bool)

(declare-fun e!775361 () Bool)

(assert (=> b!1368550 (=> (not res!912184) (not e!775361))))

(declare-datatypes ((List!32110 0))(
  ( (Nil!32107) (Cons!32106 (h!33315 (_ BitVec 64)) (t!46811 List!32110)) )
))
(declare-fun acc!866 () List!32110)

(declare-fun contains!9648 (List!32110 (_ BitVec 64)) Bool)

(assert (=> b!1368550 (= res!912184 (not (contains!9648 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368551 () Bool)

(declare-fun res!912182 () Bool)

(assert (=> b!1368551 (=> (not res!912182) (not e!775361))))

(declare-fun newAcc!98 () List!32110)

(assert (=> b!1368551 (= res!912182 (not (contains!9648 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368552 () Bool)

(declare-fun res!912186 () Bool)

(assert (=> b!1368552 (=> (not res!912186) (not e!775361))))

(declare-fun subseq!1039 (List!32110 List!32110) Bool)

(assert (=> b!1368552 (= res!912186 (subseq!1039 newAcc!98 acc!866))))

(declare-fun b!1368553 () Bool)

(assert (=> b!1368553 (= e!775361 e!775362)))

(declare-fun res!912185 () Bool)

(assert (=> b!1368553 (=> (not res!912185) (not e!775362))))

(declare-datatypes ((array!92885 0))(
  ( (array!92886 (arr!44862 (Array (_ BitVec 32) (_ BitVec 64))) (size!45413 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92885)

(declare-fun arrayNoDuplicates!0 (array!92885 (_ BitVec 32) List!32110) Bool)

(assert (=> b!1368553 (= res!912185 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45159 0))(
  ( (Unit!45160) )
))
(declare-fun lt!602035 () Unit!45159)

(declare-fun noDuplicateSubseq!226 (List!32110 List!32110) Unit!45159)

(assert (=> b!1368553 (= lt!602035 (noDuplicateSubseq!226 newAcc!98 acc!866))))

(declare-fun b!1368555 () Bool)

(declare-fun res!912188 () Bool)

(assert (=> b!1368555 (=> (not res!912188) (not e!775362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368555 (= res!912188 (not (validKeyInArray!0 (select (arr!44862 a!3861) from!3239))))))

(declare-fun b!1368556 () Bool)

(assert (=> b!1368556 (= e!775362 (not true))))

(assert (=> b!1368556 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602036 () Unit!45159)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92885 List!32110 List!32110 (_ BitVec 32)) Unit!45159)

(assert (=> b!1368556 (= lt!602036 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368557 () Bool)

(declare-fun res!912183 () Bool)

(assert (=> b!1368557 (=> (not res!912183) (not e!775362))))

(assert (=> b!1368557 (= res!912183 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368558 () Bool)

(declare-fun res!912179 () Bool)

(assert (=> b!1368558 (=> (not res!912179) (not e!775361))))

(declare-fun noDuplicate!2527 (List!32110) Bool)

(assert (=> b!1368558 (= res!912179 (noDuplicate!2527 acc!866))))

(declare-fun b!1368559 () Bool)

(declare-fun res!912178 () Bool)

(assert (=> b!1368559 (=> (not res!912178) (not e!775361))))

(assert (=> b!1368559 (= res!912178 (not (contains!9648 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368560 () Bool)

(declare-fun res!912180 () Bool)

(assert (=> b!1368560 (=> (not res!912180) (not e!775362))))

(assert (=> b!1368560 (= res!912180 (bvslt from!3239 (size!45413 a!3861)))))

(declare-fun res!912189 () Bool)

(assert (=> start!115770 (=> (not res!912189) (not e!775361))))

(assert (=> start!115770 (= res!912189 (and (bvslt (size!45413 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45413 a!3861))))))

(assert (=> start!115770 e!775361))

(declare-fun array_inv!33807 (array!92885) Bool)

(assert (=> start!115770 (array_inv!33807 a!3861)))

(assert (=> start!115770 true))

(declare-fun b!1368554 () Bool)

(declare-fun res!912181 () Bool)

(assert (=> b!1368554 (=> (not res!912181) (not e!775361))))

(assert (=> b!1368554 (= res!912181 (not (contains!9648 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115770 res!912189) b!1368558))

(assert (= (and b!1368558 res!912179) b!1368559))

(assert (= (and b!1368559 res!912178) b!1368550))

(assert (= (and b!1368550 res!912184) b!1368551))

(assert (= (and b!1368551 res!912182) b!1368554))

(assert (= (and b!1368554 res!912181) b!1368552))

(assert (= (and b!1368552 res!912186) b!1368553))

(assert (= (and b!1368553 res!912185) b!1368560))

(assert (= (and b!1368560 res!912180) b!1368555))

(assert (= (and b!1368555 res!912188) b!1368549))

(assert (= (and b!1368549 res!912187) b!1368557))

(assert (= (and b!1368557 res!912183) b!1368556))

(declare-fun m!1252503 () Bool)

(assert (=> b!1368557 m!1252503))

(declare-fun m!1252505 () Bool)

(assert (=> b!1368556 m!1252505))

(declare-fun m!1252507 () Bool)

(assert (=> b!1368556 m!1252507))

(declare-fun m!1252509 () Bool)

(assert (=> b!1368559 m!1252509))

(declare-fun m!1252511 () Bool)

(assert (=> b!1368552 m!1252511))

(declare-fun m!1252513 () Bool)

(assert (=> start!115770 m!1252513))

(declare-fun m!1252515 () Bool)

(assert (=> b!1368551 m!1252515))

(declare-fun m!1252517 () Bool)

(assert (=> b!1368554 m!1252517))

(declare-fun m!1252519 () Bool)

(assert (=> b!1368558 m!1252519))

(declare-fun m!1252521 () Bool)

(assert (=> b!1368555 m!1252521))

(assert (=> b!1368555 m!1252521))

(declare-fun m!1252523 () Bool)

(assert (=> b!1368555 m!1252523))

(declare-fun m!1252525 () Bool)

(assert (=> b!1368553 m!1252525))

(declare-fun m!1252527 () Bool)

(assert (=> b!1368553 m!1252527))

(declare-fun m!1252529 () Bool)

(assert (=> b!1368550 m!1252529))

(push 1)

