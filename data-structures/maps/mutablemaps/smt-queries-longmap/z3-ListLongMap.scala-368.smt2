; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7062 () Bool)

(assert start!7062)

(declare-fun res!26626 () Bool)

(declare-fun e!28907 () Bool)

(assert (=> start!7062 (=> (not res!26626) (not e!28907))))

(declare-datatypes ((array!3033 0))(
  ( (array!3034 (arr!1457 (Array (_ BitVec 32) (_ BitVec 64))) (size!1679 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3033)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k0!2989 () (_ BitVec 64))

(assert (=> start!7062 (= res!26626 (and (bvslt (size!1679 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1679 a!4401)) (= (select (arr!1457 a!4401) i!1488) k0!2989)))))

(assert (=> start!7062 e!28907))

(declare-fun array_inv!821 (array!3033) Bool)

(assert (=> start!7062 (array_inv!821 a!4401)))

(assert (=> start!7062 true))

(declare-fun b!45462 () Bool)

(declare-fun res!26625 () Bool)

(assert (=> b!45462 (=> (not res!26625) (not e!28907))))

(declare-fun arrayContainsKey!0 (array!3033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45462 (= res!26625 (arrayContainsKey!0 a!4401 k0!2989 i!1488))))

(declare-fun b!45463 () Bool)

(assert (=> b!45463 (= e!28907 (not (bvslt #b00000000000000000000000000000000 (size!1679 a!4401))))))

(assert (=> b!45463 (arrayContainsKey!0 a!4401 k0!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1281 0))(
  ( (Unit!1282) )
))
(declare-fun lt!20153 () Unit!1281)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3033 (_ BitVec 64) (_ BitVec 32)) Unit!1281)

(assert (=> b!45463 (= lt!20153 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k0!2989 i!1488))))

(assert (= (and start!7062 res!26626) b!45462))

(assert (= (and b!45462 res!26625) b!45463))

(declare-fun m!40005 () Bool)

(assert (=> start!7062 m!40005))

(declare-fun m!40007 () Bool)

(assert (=> start!7062 m!40007))

(declare-fun m!40009 () Bool)

(assert (=> b!45462 m!40009))

(declare-fun m!40011 () Bool)

(assert (=> b!45463 m!40011))

(declare-fun m!40013 () Bool)

(assert (=> b!45463 m!40013))

(check-sat (not b!45462) (not b!45463) (not start!7062))
(check-sat)
