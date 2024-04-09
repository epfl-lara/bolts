; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117846 () Bool)

(assert start!117846)

(declare-fun res!922917 () Bool)

(declare-fun e!782941 () Bool)

(assert (=> start!117846 (=> (not res!922917) (not e!782941))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117846 (= res!922917 (validMask!0 mask!3034))))

(assert (=> start!117846 e!782941))

(assert (=> start!117846 true))

(declare-datatypes ((array!94214 0))(
  ( (array!94215 (arr!45489 (Array (_ BitVec 32) (_ BitVec 64))) (size!46040 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94214)

(declare-fun array_inv!34434 (array!94214) Bool)

(assert (=> start!117846 (array_inv!34434 a!2971)))

(declare-fun b!1381178 () Bool)

(declare-fun res!922915 () Bool)

(assert (=> b!1381178 (=> (not res!922915) (not e!782941))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381178 (= res!922915 (and (= (size!46040 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46040 a!2971))))))

(declare-fun b!1381179 () Bool)

(declare-fun res!922916 () Bool)

(assert (=> b!1381179 (=> (not res!922916) (not e!782941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381179 (= res!922916 (validKeyInArray!0 (select (arr!45489 a!2971) i!1094)))))

(declare-fun b!1381180 () Bool)

(assert (=> b!1381180 (= e!782941 (and (bvsle #b00000000000000000000000000000000 (size!46040 a!2971)) (bvsge (size!46040 a!2971) #b01111111111111111111111111111111)))))

(assert (= (and start!117846 res!922917) b!1381178))

(assert (= (and b!1381178 res!922915) b!1381179))

(assert (= (and b!1381179 res!922916) b!1381180))

(declare-fun m!1266445 () Bool)

(assert (=> start!117846 m!1266445))

(declare-fun m!1266447 () Bool)

(assert (=> start!117846 m!1266447))

(declare-fun m!1266449 () Bool)

(assert (=> b!1381179 m!1266449))

(assert (=> b!1381179 m!1266449))

(declare-fun m!1266451 () Bool)

(assert (=> b!1381179 m!1266451))

(push 1)

(assert (not b!1381179))

(assert (not start!117846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

