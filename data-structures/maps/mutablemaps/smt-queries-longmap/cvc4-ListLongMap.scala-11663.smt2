; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136432 () Bool)

(assert start!136432)

(declare-fun res!1077554 () Bool)

(declare-fun e!879716 () Bool)

(assert (=> start!136432 (=> (not res!1077554) (not e!879716))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136432 (= res!1077554 (validMask!0 mask!910))))

(assert (=> start!136432 e!879716))

(assert (=> start!136432 true))

(declare-datatypes ((array!105554 0))(
  ( (array!105555 (arr!50892 (Array (_ BitVec 32) (_ BitVec 64))) (size!51443 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105554)

(declare-fun array_inv!39537 (array!105554) Bool)

(assert (=> start!136432 (array_inv!39537 _keys!610)))

(declare-fun b!1577151 () Bool)

(declare-fun res!1077553 () Bool)

(assert (=> b!1577151 (=> (not res!1077553) (not e!879716))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577151 (= res!1077553 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51443 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577152 () Bool)

(declare-fun res!1077552 () Bool)

(assert (=> b!1577152 (=> (not res!1077552) (not e!879716))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577152 (= res!1077552 (validKeyInArray!0 k!768))))

(declare-fun b!1577153 () Bool)

(assert (=> b!1577153 (= e!879716 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50892 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50892 _keys!610) ee!12) (select (arr!50892 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51443 _keys!610))))))

(assert (= (and start!136432 res!1077554) b!1577151))

(assert (= (and b!1577151 res!1077553) b!1577152))

(assert (= (and b!1577152 res!1077552) b!1577153))

(declare-fun m!1449489 () Bool)

(assert (=> start!136432 m!1449489))

(declare-fun m!1449491 () Bool)

(assert (=> start!136432 m!1449491))

(declare-fun m!1449493 () Bool)

(assert (=> b!1577152 m!1449493))

(declare-fun m!1449495 () Bool)

(assert (=> b!1577153 m!1449495))

(push 1)

(assert (not start!136432))

(assert (not b!1577152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

