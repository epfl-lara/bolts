; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117944 () Bool)

(assert start!117944)

(declare-fun res!923147 () Bool)

(declare-fun e!783100 () Bool)

(assert (=> start!117944 (=> (not res!923147) (not e!783100))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117944 (= res!923147 (validMask!0 mask!3034))))

(assert (=> start!117944 e!783100))

(assert (=> start!117944 true))

(declare-datatypes ((array!94251 0))(
  ( (array!94252 (arr!45504 (Array (_ BitVec 32) (_ BitVec 64))) (size!46055 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94251)

(declare-fun array_inv!34449 (array!94251) Bool)

(assert (=> start!117944 (array_inv!34449 a!2971)))

(declare-fun b!1381409 () Bool)

(declare-fun res!923146 () Bool)

(assert (=> b!1381409 (=> (not res!923146) (not e!783100))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381409 (= res!923146 (and (= (size!46055 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46055 a!2971))))))

(declare-fun b!1381410 () Bool)

(declare-fun res!923148 () Bool)

(assert (=> b!1381410 (=> (not res!923148) (not e!783100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381410 (= res!923148 (validKeyInArray!0 (select (arr!45504 a!2971) i!1094)))))

(declare-fun b!1381411 () Bool)

(assert (=> b!1381411 (= e!783100 false)))

(declare-fun lt!608161 () Bool)

(declare-datatypes ((List!32218 0))(
  ( (Nil!32215) (Cons!32214 (h!33423 (_ BitVec 64)) (t!46919 List!32218)) )
))
(declare-fun arrayNoDuplicates!0 (array!94251 (_ BitVec 32) List!32218) Bool)

(assert (=> b!1381411 (= lt!608161 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32215))))

(assert (= (and start!117944 res!923147) b!1381409))

(assert (= (and b!1381409 res!923146) b!1381410))

(assert (= (and b!1381410 res!923148) b!1381411))

(declare-fun m!1266659 () Bool)

(assert (=> start!117944 m!1266659))

(declare-fun m!1266661 () Bool)

(assert (=> start!117944 m!1266661))

(declare-fun m!1266663 () Bool)

(assert (=> b!1381410 m!1266663))

(assert (=> b!1381410 m!1266663))

(declare-fun m!1266665 () Bool)

(assert (=> b!1381410 m!1266665))

(declare-fun m!1266667 () Bool)

(assert (=> b!1381411 m!1266667))

(push 1)

(assert (not b!1381410))

(assert (not b!1381411))

(assert (not start!117944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

