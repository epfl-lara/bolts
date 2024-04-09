; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136438 () Bool)

(assert start!136438)

(declare-fun res!1077581 () Bool)

(declare-fun e!879734 () Bool)

(assert (=> start!136438 (=> (not res!1077581) (not e!879734))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136438 (= res!1077581 (validMask!0 mask!910))))

(assert (=> start!136438 e!879734))

(assert (=> start!136438 true))

(declare-datatypes ((array!105560 0))(
  ( (array!105561 (arr!50895 (Array (_ BitVec 32) (_ BitVec 64))) (size!51446 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105560)

(declare-fun array_inv!39540 (array!105560) Bool)

(assert (=> start!136438 (array_inv!39540 _keys!610)))

(declare-fun b!1577178 () Bool)

(declare-fun res!1077580 () Bool)

(assert (=> b!1577178 (=> (not res!1077580) (not e!879734))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577178 (= res!1077580 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51446 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577179 () Bool)

(declare-fun res!1077579 () Bool)

(assert (=> b!1577179 (=> (not res!1077579) (not e!879734))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577179 (= res!1077579 (validKeyInArray!0 k!768))))

(declare-fun b!1577180 () Bool)

(assert (=> b!1577180 (= e!879734 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50895 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50895 _keys!610) ee!12) (select (arr!50895 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50895 _keys!610) ee!12) k!768)) (bvsge ee!12 (size!51446 _keys!610))))))

(assert (= (and start!136438 res!1077581) b!1577178))

(assert (= (and b!1577178 res!1077580) b!1577179))

(assert (= (and b!1577179 res!1077579) b!1577180))

(declare-fun m!1449513 () Bool)

(assert (=> start!136438 m!1449513))

(declare-fun m!1449515 () Bool)

(assert (=> start!136438 m!1449515))

(declare-fun m!1449517 () Bool)

(assert (=> b!1577179 m!1449517))

(declare-fun m!1449519 () Bool)

(assert (=> b!1577180 m!1449519))

(push 1)

(assert (not start!136438))

(assert (not b!1577179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

