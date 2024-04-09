; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115894 () Bool)

(assert start!115894)

(declare-fun b!1369467 () Bool)

(declare-fun res!913048 () Bool)

(declare-fun e!775829 () Bool)

(assert (=> b!1369467 (=> (not res!913048) (not e!775829))))

(declare-datatypes ((List!32130 0))(
  ( (Nil!32127) (Cons!32126 (h!33335 (_ BitVec 64)) (t!46831 List!32130)) )
))
(declare-fun newAcc!98 () List!32130)

(declare-fun acc!866 () List!32130)

(declare-fun subseq!1059 (List!32130 List!32130) Bool)

(assert (=> b!1369467 (= res!913048 (subseq!1059 newAcc!98 acc!866))))

(declare-fun b!1369468 () Bool)

(declare-fun res!913049 () Bool)

(assert (=> b!1369468 (=> (not res!913049) (not e!775829))))

(declare-fun contains!9668 (List!32130 (_ BitVec 64)) Bool)

(assert (=> b!1369468 (= res!913049 (not (contains!9668 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369469 () Bool)

(declare-fun res!913056 () Bool)

(declare-fun e!775830 () Bool)

(assert (=> b!1369469 (=> (not res!913056) (not e!775830))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92931 0))(
  ( (array!92932 (arr!44882 (Array (_ BitVec 32) (_ BitVec 64))) (size!45433 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92931)

(assert (=> b!1369469 (= res!913056 (bvsge from!3239 (size!45433 a!3861)))))

(declare-fun res!913053 () Bool)

(assert (=> start!115894 (=> (not res!913053) (not e!775829))))

(assert (=> start!115894 (= res!913053 (and (bvslt (size!45433 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45433 a!3861))))))

(assert (=> start!115894 e!775829))

(declare-fun array_inv!33827 (array!92931) Bool)

(assert (=> start!115894 (array_inv!33827 a!3861)))

(assert (=> start!115894 true))

(declare-fun b!1369470 () Bool)

(declare-fun res!913052 () Bool)

(assert (=> b!1369470 (=> (not res!913052) (not e!775829))))

(assert (=> b!1369470 (= res!913052 (not (contains!9668 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369471 () Bool)

(declare-fun res!913054 () Bool)

(assert (=> b!1369471 (=> (not res!913054) (not e!775829))))

(declare-fun noDuplicate!2547 (List!32130) Bool)

(assert (=> b!1369471 (= res!913054 (noDuplicate!2547 acc!866))))

(declare-fun b!1369472 () Bool)

(declare-fun res!913055 () Bool)

(assert (=> b!1369472 (=> (not res!913055) (not e!775829))))

(assert (=> b!1369472 (= res!913055 (not (contains!9668 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369473 () Bool)

(assert (=> b!1369473 (= e!775829 e!775830)))

(declare-fun res!913050 () Bool)

(assert (=> b!1369473 (=> (not res!913050) (not e!775830))))

(declare-fun arrayNoDuplicates!0 (array!92931 (_ BitVec 32) List!32130) Bool)

(assert (=> b!1369473 (= res!913050 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45199 0))(
  ( (Unit!45200) )
))
(declare-fun lt!602219 () Unit!45199)

(declare-fun noDuplicateSubseq!246 (List!32130 List!32130) Unit!45199)

(assert (=> b!1369473 (= lt!602219 (noDuplicateSubseq!246 newAcc!98 acc!866))))

(declare-fun b!1369474 () Bool)

(assert (=> b!1369474 (= e!775830 false)))

(declare-fun lt!602218 () Bool)

(assert (=> b!1369474 (= lt!602218 (noDuplicate!2547 newAcc!98))))

(declare-fun b!1369475 () Bool)

(declare-fun res!913051 () Bool)

(assert (=> b!1369475 (=> (not res!913051) (not e!775829))))

(assert (=> b!1369475 (= res!913051 (not (contains!9668 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115894 res!913053) b!1369471))

(assert (= (and b!1369471 res!913054) b!1369470))

(assert (= (and b!1369470 res!913052) b!1369475))

(assert (= (and b!1369475 res!913051) b!1369472))

(assert (= (and b!1369472 res!913055) b!1369468))

(assert (= (and b!1369468 res!913049) b!1369467))

(assert (= (and b!1369467 res!913048) b!1369473))

(assert (= (and b!1369473 res!913050) b!1369469))

(assert (= (and b!1369469 res!913056) b!1369474))

(declare-fun m!1253265 () Bool)

(assert (=> b!1369467 m!1253265))

(declare-fun m!1253267 () Bool)

(assert (=> start!115894 m!1253267))

(declare-fun m!1253269 () Bool)

(assert (=> b!1369470 m!1253269))

(declare-fun m!1253271 () Bool)

(assert (=> b!1369471 m!1253271))

(declare-fun m!1253273 () Bool)

(assert (=> b!1369474 m!1253273))

(declare-fun m!1253275 () Bool)

(assert (=> b!1369473 m!1253275))

(declare-fun m!1253277 () Bool)

(assert (=> b!1369473 m!1253277))

(declare-fun m!1253279 () Bool)

(assert (=> b!1369475 m!1253279))

(declare-fun m!1253281 () Bool)

(assert (=> b!1369472 m!1253281))

(declare-fun m!1253283 () Bool)

(assert (=> b!1369468 m!1253283))

(check-sat (not start!115894) (not b!1369468) (not b!1369475) (not b!1369471) (not b!1369473) (not b!1369474) (not b!1369472) (not b!1369467) (not b!1369470))
(check-sat)
