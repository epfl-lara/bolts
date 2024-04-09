; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118144 () Bool)

(assert start!118144)

(declare-fun res!924334 () Bool)

(declare-fun e!783674 () Bool)

(assert (=> start!118144 (=> (not res!924334) (not e!783674))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118144 (= res!924334 (validMask!0 mask!2987))))

(assert (=> start!118144 e!783674))

(assert (=> start!118144 true))

(declare-datatypes ((array!94424 0))(
  ( (array!94425 (arr!45589 (Array (_ BitVec 32) (_ BitVec 64))) (size!46140 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94424)

(declare-fun array_inv!34534 (array!94424) Bool)

(assert (=> start!118144 (array_inv!34534 a!2938)))

(declare-fun b!1382633 () Bool)

(declare-fun res!924336 () Bool)

(assert (=> b!1382633 (=> (not res!924336) (not e!783674))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382633 (= res!924336 (and (= (size!46140 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46140 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46140 a!2938))))))

(declare-fun b!1382634 () Bool)

(declare-fun res!924335 () Bool)

(assert (=> b!1382634 (=> (not res!924335) (not e!783674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382634 (= res!924335 (validKeyInArray!0 (select (arr!45589 a!2938) i!1065)))))

(declare-fun b!1382635 () Bool)

(assert (=> b!1382635 (= e!783674 (bvsgt #b00000000000000000000000000000000 (size!46140 a!2938)))))

(assert (= (and start!118144 res!924334) b!1382633))

(assert (= (and b!1382633 res!924336) b!1382634))

(assert (= (and b!1382634 res!924335) b!1382635))

(declare-fun m!1267827 () Bool)

(assert (=> start!118144 m!1267827))

(declare-fun m!1267829 () Bool)

(assert (=> start!118144 m!1267829))

(declare-fun m!1267831 () Bool)

(assert (=> b!1382634 m!1267831))

(assert (=> b!1382634 m!1267831))

(declare-fun m!1267833 () Bool)

(assert (=> b!1382634 m!1267833))

(push 1)

(assert (not b!1382634))

(assert (not start!118144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

