; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7068 () Bool)

(assert start!7068)

(declare-fun res!26643 () Bool)

(declare-fun e!28924 () Bool)

(assert (=> start!7068 (=> (not res!26643) (not e!28924))))

(declare-datatypes ((array!3039 0))(
  ( (array!3040 (arr!1460 (Array (_ BitVec 32) (_ BitVec 64))) (size!1682 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3039)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k0!2989 () (_ BitVec 64))

(assert (=> start!7068 (= res!26643 (and (bvslt (size!1682 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1682 a!4401)) (= (select (arr!1460 a!4401) i!1488) k0!2989)))))

(assert (=> start!7068 e!28924))

(declare-fun array_inv!824 (array!3039) Bool)

(assert (=> start!7068 (array_inv!824 a!4401)))

(assert (=> start!7068 true))

(declare-fun b!45480 () Bool)

(declare-fun res!26644 () Bool)

(assert (=> b!45480 (=> (not res!26644) (not e!28924))))

(declare-fun arrayContainsKey!0 (array!3039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45480 (= res!26644 (arrayContainsKey!0 a!4401 k0!2989 i!1488))))

(declare-fun b!45481 () Bool)

(assert (=> b!45481 (= e!28924 (not true))))

(assert (=> b!45481 (arrayContainsKey!0 a!4401 k0!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1287 0))(
  ( (Unit!1288) )
))
(declare-fun lt!20162 () Unit!1287)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3039 (_ BitVec 64) (_ BitVec 32)) Unit!1287)

(assert (=> b!45481 (= lt!20162 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k0!2989 i!1488))))

(assert (= (and start!7068 res!26643) b!45480))

(assert (= (and b!45480 res!26644) b!45481))

(declare-fun m!40035 () Bool)

(assert (=> start!7068 m!40035))

(declare-fun m!40037 () Bool)

(assert (=> start!7068 m!40037))

(declare-fun m!40039 () Bool)

(assert (=> b!45480 m!40039))

(declare-fun m!40041 () Bool)

(assert (=> b!45481 m!40041))

(declare-fun m!40043 () Bool)

(assert (=> b!45481 m!40043))

(check-sat (not b!45481) (not start!7068) (not b!45480))
(check-sat)
