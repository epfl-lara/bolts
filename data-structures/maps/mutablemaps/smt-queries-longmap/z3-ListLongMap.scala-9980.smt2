; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117930 () Bool)

(assert start!117930)

(declare-fun res!923083 () Bool)

(declare-fun e!783058 () Bool)

(assert (=> start!117930 (=> (not res!923083) (not e!783058))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117930 (= res!923083 (validMask!0 mask!3034))))

(assert (=> start!117930 e!783058))

(assert (=> start!117930 true))

(declare-datatypes ((array!94237 0))(
  ( (array!94238 (arr!45497 (Array (_ BitVec 32) (_ BitVec 64))) (size!46048 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94237)

(declare-fun array_inv!34442 (array!94237) Bool)

(assert (=> start!117930 (array_inv!34442 a!2971)))

(declare-fun b!1381346 () Bool)

(declare-fun res!923084 () Bool)

(assert (=> b!1381346 (=> (not res!923084) (not e!783058))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381346 (= res!923084 (and (= (size!46048 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46048 a!2971))))))

(declare-fun b!1381347 () Bool)

(declare-fun res!923085 () Bool)

(assert (=> b!1381347 (=> (not res!923085) (not e!783058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381347 (= res!923085 (validKeyInArray!0 (select (arr!45497 a!2971) i!1094)))))

(declare-fun b!1381348 () Bool)

(assert (=> b!1381348 (= e!783058 false)))

(declare-fun lt!608140 () Bool)

(declare-datatypes ((List!32211 0))(
  ( (Nil!32208) (Cons!32207 (h!33416 (_ BitVec 64)) (t!46912 List!32211)) )
))
(declare-fun arrayNoDuplicates!0 (array!94237 (_ BitVec 32) List!32211) Bool)

(assert (=> b!1381348 (= lt!608140 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32208))))

(assert (= (and start!117930 res!923083) b!1381346))

(assert (= (and b!1381346 res!923084) b!1381347))

(assert (= (and b!1381347 res!923085) b!1381348))

(declare-fun m!1266589 () Bool)

(assert (=> start!117930 m!1266589))

(declare-fun m!1266591 () Bool)

(assert (=> start!117930 m!1266591))

(declare-fun m!1266593 () Bool)

(assert (=> b!1381347 m!1266593))

(assert (=> b!1381347 m!1266593))

(declare-fun m!1266595 () Bool)

(assert (=> b!1381347 m!1266595))

(declare-fun m!1266597 () Bool)

(assert (=> b!1381348 m!1266597))

(check-sat (not b!1381348) (not start!117930) (not b!1381347))
