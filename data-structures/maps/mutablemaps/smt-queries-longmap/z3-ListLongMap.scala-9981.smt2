; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117936 () Bool)

(assert start!117936)

(declare-fun res!923110 () Bool)

(declare-fun e!783077 () Bool)

(assert (=> start!117936 (=> (not res!923110) (not e!783077))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117936 (= res!923110 (validMask!0 mask!3034))))

(assert (=> start!117936 e!783077))

(assert (=> start!117936 true))

(declare-datatypes ((array!94243 0))(
  ( (array!94244 (arr!45500 (Array (_ BitVec 32) (_ BitVec 64))) (size!46051 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94243)

(declare-fun array_inv!34445 (array!94243) Bool)

(assert (=> start!117936 (array_inv!34445 a!2971)))

(declare-fun b!1381373 () Bool)

(declare-fun res!923112 () Bool)

(assert (=> b!1381373 (=> (not res!923112) (not e!783077))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381373 (= res!923112 (and (= (size!46051 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46051 a!2971))))))

(declare-fun b!1381374 () Bool)

(declare-fun res!923111 () Bool)

(assert (=> b!1381374 (=> (not res!923111) (not e!783077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381374 (= res!923111 (validKeyInArray!0 (select (arr!45500 a!2971) i!1094)))))

(declare-fun b!1381375 () Bool)

(assert (=> b!1381375 (= e!783077 false)))

(declare-fun lt!608149 () Bool)

(declare-datatypes ((List!32214 0))(
  ( (Nil!32211) (Cons!32210 (h!33419 (_ BitVec 64)) (t!46915 List!32214)) )
))
(declare-fun arrayNoDuplicates!0 (array!94243 (_ BitVec 32) List!32214) Bool)

(assert (=> b!1381375 (= lt!608149 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32211))))

(assert (= (and start!117936 res!923110) b!1381373))

(assert (= (and b!1381373 res!923112) b!1381374))

(assert (= (and b!1381374 res!923111) b!1381375))

(declare-fun m!1266619 () Bool)

(assert (=> start!117936 m!1266619))

(declare-fun m!1266621 () Bool)

(assert (=> start!117936 m!1266621))

(declare-fun m!1266623 () Bool)

(assert (=> b!1381374 m!1266623))

(assert (=> b!1381374 m!1266623))

(declare-fun m!1266625 () Bool)

(assert (=> b!1381374 m!1266625))

(declare-fun m!1266627 () Bool)

(assert (=> b!1381375 m!1266627))

(check-sat (not b!1381375) (not start!117936) (not b!1381374))
