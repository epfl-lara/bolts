; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115906 () Bool)

(assert start!115906)

(declare-fun b!1369601 () Bool)

(declare-fun res!913185 () Bool)

(declare-fun e!775869 () Bool)

(assert (=> b!1369601 (=> (not res!913185) (not e!775869))))

(declare-datatypes ((List!32136 0))(
  ( (Nil!32133) (Cons!32132 (h!33341 (_ BitVec 64)) (t!46837 List!32136)) )
))
(declare-fun acc!866 () List!32136)

(declare-fun contains!9674 (List!32136 (_ BitVec 64)) Bool)

(assert (=> b!1369601 (= res!913185 (not (contains!9674 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369602 () Bool)

(declare-fun res!913182 () Bool)

(assert (=> b!1369602 (=> (not res!913182) (not e!775869))))

(declare-fun newAcc!98 () List!32136)

(assert (=> b!1369602 (= res!913182 (not (contains!9674 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369603 () Bool)

(declare-fun res!913184 () Bool)

(assert (=> b!1369603 (=> (not res!913184) (not e!775869))))

(assert (=> b!1369603 (= res!913184 (not (contains!9674 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369604 () Bool)

(declare-fun res!913187 () Bool)

(assert (=> b!1369604 (=> (not res!913187) (not e!775869))))

(declare-fun noDuplicate!2553 (List!32136) Bool)

(assert (=> b!1369604 (= res!913187 (noDuplicate!2553 acc!866))))

(declare-fun b!1369605 () Bool)

(declare-fun res!913186 () Bool)

(assert (=> b!1369605 (=> (not res!913186) (not e!775869))))

(declare-fun subseq!1065 (List!32136 List!32136) Bool)

(assert (=> b!1369605 (= res!913186 (subseq!1065 newAcc!98 acc!866))))

(declare-fun res!913188 () Bool)

(assert (=> start!115906 (=> (not res!913188) (not e!775869))))

(declare-datatypes ((array!92943 0))(
  ( (array!92944 (arr!44888 (Array (_ BitVec 32) (_ BitVec 64))) (size!45439 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92943)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115906 (= res!913188 (and (bvslt (size!45439 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45439 a!3861))))))

(assert (=> start!115906 e!775869))

(declare-fun array_inv!33833 (array!92943) Bool)

(assert (=> start!115906 (array_inv!33833 a!3861)))

(assert (=> start!115906 true))

(declare-fun b!1369606 () Bool)

(declare-fun res!913183 () Bool)

(assert (=> b!1369606 (=> (not res!913183) (not e!775869))))

(assert (=> b!1369606 (= res!913183 (not (contains!9674 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369607 () Bool)

(assert (=> b!1369607 (= e!775869 false)))

(declare-fun lt!602255 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92943 (_ BitVec 32) List!32136) Bool)

(assert (=> b!1369607 (= lt!602255 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45211 0))(
  ( (Unit!45212) )
))
(declare-fun lt!602254 () Unit!45211)

(declare-fun noDuplicateSubseq!252 (List!32136 List!32136) Unit!45211)

(assert (=> b!1369607 (= lt!602254 (noDuplicateSubseq!252 newAcc!98 acc!866))))

(assert (= (and start!115906 res!913188) b!1369604))

(assert (= (and b!1369604 res!913187) b!1369606))

(assert (= (and b!1369606 res!913183) b!1369601))

(assert (= (and b!1369601 res!913185) b!1369602))

(assert (= (and b!1369602 res!913182) b!1369603))

(assert (= (and b!1369603 res!913184) b!1369605))

(assert (= (and b!1369605 res!913186) b!1369607))

(declare-fun m!1253377 () Bool)

(assert (=> b!1369606 m!1253377))

(declare-fun m!1253379 () Bool)

(assert (=> b!1369604 m!1253379))

(declare-fun m!1253381 () Bool)

(assert (=> b!1369602 m!1253381))

(declare-fun m!1253383 () Bool)

(assert (=> b!1369605 m!1253383))

(declare-fun m!1253385 () Bool)

(assert (=> b!1369601 m!1253385))

(declare-fun m!1253387 () Bool)

(assert (=> b!1369603 m!1253387))

(declare-fun m!1253389 () Bool)

(assert (=> start!115906 m!1253389))

(declare-fun m!1253391 () Bool)

(assert (=> b!1369607 m!1253391))

(declare-fun m!1253393 () Bool)

(assert (=> b!1369607 m!1253393))

(check-sat (not b!1369604) (not b!1369605) (not b!1369602) (not start!115906) (not b!1369603) (not b!1369601) (not b!1369606) (not b!1369607))
(check-sat)
