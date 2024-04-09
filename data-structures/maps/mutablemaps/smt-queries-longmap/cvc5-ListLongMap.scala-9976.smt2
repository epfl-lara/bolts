; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117836 () Bool)

(assert start!117836)

(declare-fun res!922872 () Bool)

(declare-fun e!782912 () Bool)

(assert (=> start!117836 (=> (not res!922872) (not e!782912))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117836 (= res!922872 (validMask!0 mask!3034))))

(assert (=> start!117836 e!782912))

(assert (=> start!117836 true))

(declare-datatypes ((array!94204 0))(
  ( (array!94205 (arr!45484 (Array (_ BitVec 32) (_ BitVec 64))) (size!46035 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94204)

(declare-fun array_inv!34429 (array!94204) Bool)

(assert (=> start!117836 (array_inv!34429 a!2971)))

(declare-fun b!1381133 () Bool)

(declare-fun res!922871 () Bool)

(assert (=> b!1381133 (=> (not res!922871) (not e!782912))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381133 (= res!922871 (and (= (size!46035 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46035 a!2971))))))

(declare-fun b!1381134 () Bool)

(declare-fun res!922870 () Bool)

(assert (=> b!1381134 (=> (not res!922870) (not e!782912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381134 (= res!922870 (validKeyInArray!0 (select (arr!45484 a!2971) i!1094)))))

(declare-fun b!1381135 () Bool)

(assert (=> b!1381135 (= e!782912 (bvsgt #b00000000000000000000000000000000 (size!46035 a!2971)))))

(assert (= (and start!117836 res!922872) b!1381133))

(assert (= (and b!1381133 res!922871) b!1381134))

(assert (= (and b!1381134 res!922870) b!1381135))

(declare-fun m!1266405 () Bool)

(assert (=> start!117836 m!1266405))

(declare-fun m!1266407 () Bool)

(assert (=> start!117836 m!1266407))

(declare-fun m!1266409 () Bool)

(assert (=> b!1381134 m!1266409))

(assert (=> b!1381134 m!1266409))

(declare-fun m!1266411 () Bool)

(assert (=> b!1381134 m!1266411))

(push 1)

(assert (not b!1381134))

(assert (not start!117836))

(check-sat)

(pop 1)

