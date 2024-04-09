; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135502 () Bool)

(assert start!135502)

(declare-fun res!1075476 () Bool)

(declare-fun e!877836 () Bool)

(assert (=> start!135502 (=> (not res!1075476) (not e!877836))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135502 (= res!1075476 (validMask!0 mask!877))))

(assert (=> start!135502 e!877836))

(assert (=> start!135502 true))

(declare-datatypes ((array!105173 0))(
  ( (array!105174 (arr!50733 (Array (_ BitVec 32) (_ BitVec 64))) (size!51284 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105173)

(declare-fun array_inv!39378 (array!105173) Bool)

(assert (=> start!135502 (array_inv!39378 _keys!591)))

(declare-fun b!1574046 () Bool)

(declare-fun res!1075478 () Bool)

(assert (=> b!1574046 (=> (not res!1075478) (not e!877836))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574046 (= res!1075478 (and (= (size!51284 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51284 _keys!591)) (bvslt i!537 (size!51284 _keys!591))))))

(declare-fun b!1574047 () Bool)

(declare-fun res!1075477 () Bool)

(assert (=> b!1574047 (=> (not res!1075477) (not e!877836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574047 (= res!1075477 (not (validKeyInArray!0 (select (arr!50733 _keys!591) i!537))))))

(declare-fun b!1574048 () Bool)

(assert (=> b!1574048 (= e!877836 (bvslt (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(assert (= (and start!135502 res!1075476) b!1574046))

(assert (= (and b!1574046 res!1075478) b!1574047))

(assert (= (and b!1574047 res!1075477) b!1574048))

(declare-fun m!1447355 () Bool)

(assert (=> start!135502 m!1447355))

(declare-fun m!1447357 () Bool)

(assert (=> start!135502 m!1447357))

(declare-fun m!1447359 () Bool)

(assert (=> b!1574047 m!1447359))

(assert (=> b!1574047 m!1447359))

(declare-fun m!1447361 () Bool)

(assert (=> b!1574047 m!1447361))

(push 1)

(assert (not start!135502))

(assert (not b!1574047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

