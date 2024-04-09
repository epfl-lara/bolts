; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115766 () Bool)

(assert start!115766)

(declare-fun b!1368477 () Bool)

(declare-fun res!912111 () Bool)

(declare-fun e!775344 () Bool)

(assert (=> b!1368477 (=> (not res!912111) (not e!775344))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368477 (= res!912111 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368478 () Bool)

(declare-fun res!912116 () Bool)

(declare-fun e!775345 () Bool)

(assert (=> b!1368478 (=> (not res!912116) (not e!775345))))

(declare-datatypes ((List!32108 0))(
  ( (Nil!32105) (Cons!32104 (h!33313 (_ BitVec 64)) (t!46809 List!32108)) )
))
(declare-fun acc!866 () List!32108)

(declare-fun noDuplicate!2525 (List!32108) Bool)

(assert (=> b!1368478 (= res!912116 (noDuplicate!2525 acc!866))))

(declare-fun res!912117 () Bool)

(assert (=> start!115766 (=> (not res!912117) (not e!775345))))

(declare-datatypes ((array!92881 0))(
  ( (array!92882 (arr!44860 (Array (_ BitVec 32) (_ BitVec 64))) (size!45411 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92881)

(assert (=> start!115766 (= res!912117 (and (bvslt (size!45411 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45411 a!3861))))))

(assert (=> start!115766 e!775345))

(declare-fun array_inv!33805 (array!92881) Bool)

(assert (=> start!115766 (array_inv!33805 a!3861)))

(assert (=> start!115766 true))

(declare-fun b!1368479 () Bool)

(declare-fun res!912115 () Bool)

(assert (=> b!1368479 (=> (not res!912115) (not e!775344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368479 (= res!912115 (not (validKeyInArray!0 (select (arr!44860 a!3861) from!3239))))))

(declare-fun b!1368480 () Bool)

(declare-fun res!912107 () Bool)

(assert (=> b!1368480 (=> (not res!912107) (not e!775345))))

(declare-fun newAcc!98 () List!32108)

(declare-fun contains!9646 (List!32108 (_ BitVec 64)) Bool)

(assert (=> b!1368480 (= res!912107 (not (contains!9646 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368481 () Bool)

(declare-fun res!912106 () Bool)

(assert (=> b!1368481 (=> (not res!912106) (not e!775345))))

(assert (=> b!1368481 (= res!912106 (not (contains!9646 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368482 () Bool)

(declare-fun res!912109 () Bool)

(assert (=> b!1368482 (=> (not res!912109) (not e!775344))))

(declare-fun arrayNoDuplicates!0 (array!92881 (_ BitVec 32) List!32108) Bool)

(assert (=> b!1368482 (= res!912109 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368483 () Bool)

(declare-fun res!912112 () Bool)

(assert (=> b!1368483 (=> (not res!912112) (not e!775345))))

(declare-fun subseq!1037 (List!32108 List!32108) Bool)

(assert (=> b!1368483 (= res!912112 (subseq!1037 newAcc!98 acc!866))))

(declare-fun b!1368484 () Bool)

(assert (=> b!1368484 (= e!775345 e!775344)))

(declare-fun res!912114 () Bool)

(assert (=> b!1368484 (=> (not res!912114) (not e!775344))))

(assert (=> b!1368484 (= res!912114 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45155 0))(
  ( (Unit!45156) )
))
(declare-fun lt!602023 () Unit!45155)

(declare-fun noDuplicateSubseq!224 (List!32108 List!32108) Unit!45155)

(assert (=> b!1368484 (= lt!602023 (noDuplicateSubseq!224 newAcc!98 acc!866))))

(declare-fun b!1368485 () Bool)

(declare-fun res!912108 () Bool)

(assert (=> b!1368485 (=> (not res!912108) (not e!775344))))

(assert (=> b!1368485 (= res!912108 (bvslt from!3239 (size!45411 a!3861)))))

(declare-fun b!1368486 () Bool)

(declare-fun res!912113 () Bool)

(assert (=> b!1368486 (=> (not res!912113) (not e!775345))))

(assert (=> b!1368486 (= res!912113 (not (contains!9646 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368487 () Bool)

(assert (=> b!1368487 (= e!775344 (not true))))

(assert (=> b!1368487 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602024 () Unit!45155)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92881 List!32108 List!32108 (_ BitVec 32)) Unit!45155)

(assert (=> b!1368487 (= lt!602024 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368488 () Bool)

(declare-fun res!912110 () Bool)

(assert (=> b!1368488 (=> (not res!912110) (not e!775345))))

(assert (=> b!1368488 (= res!912110 (not (contains!9646 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115766 res!912117) b!1368478))

(assert (= (and b!1368478 res!912116) b!1368486))

(assert (= (and b!1368486 res!912113) b!1368481))

(assert (= (and b!1368481 res!912106) b!1368480))

(assert (= (and b!1368480 res!912107) b!1368488))

(assert (= (and b!1368488 res!912110) b!1368483))

(assert (= (and b!1368483 res!912112) b!1368484))

(assert (= (and b!1368484 res!912114) b!1368485))

(assert (= (and b!1368485 res!912108) b!1368479))

(assert (= (and b!1368479 res!912115) b!1368477))

(assert (= (and b!1368477 res!912111) b!1368482))

(assert (= (and b!1368482 res!912109) b!1368487))

(declare-fun m!1252447 () Bool)

(assert (=> start!115766 m!1252447))

(declare-fun m!1252449 () Bool)

(assert (=> b!1368483 m!1252449))

(declare-fun m!1252451 () Bool)

(assert (=> b!1368488 m!1252451))

(declare-fun m!1252453 () Bool)

(assert (=> b!1368480 m!1252453))

(declare-fun m!1252455 () Bool)

(assert (=> b!1368484 m!1252455))

(declare-fun m!1252457 () Bool)

(assert (=> b!1368484 m!1252457))

(declare-fun m!1252459 () Bool)

(assert (=> b!1368478 m!1252459))

(declare-fun m!1252461 () Bool)

(assert (=> b!1368487 m!1252461))

(declare-fun m!1252463 () Bool)

(assert (=> b!1368487 m!1252463))

(declare-fun m!1252465 () Bool)

(assert (=> b!1368486 m!1252465))

(declare-fun m!1252467 () Bool)

(assert (=> b!1368479 m!1252467))

(assert (=> b!1368479 m!1252467))

(declare-fun m!1252469 () Bool)

(assert (=> b!1368479 m!1252469))

(declare-fun m!1252471 () Bool)

(assert (=> b!1368481 m!1252471))

(declare-fun m!1252473 () Bool)

(assert (=> b!1368482 m!1252473))

(push 1)

