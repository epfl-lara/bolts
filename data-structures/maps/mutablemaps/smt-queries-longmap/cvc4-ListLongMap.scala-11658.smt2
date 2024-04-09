; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136378 () Bool)

(assert start!136378)

(declare-fun b!1576990 () Bool)

(declare-fun res!1077390 () Bool)

(declare-fun e!879626 () Bool)

(assert (=> b!1576990 (=> (not res!1077390) (not e!879626))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105521 0))(
  ( (array!105522 (arr!50877 (Array (_ BitVec 32) (_ BitVec 64))) (size!51428 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105521)

(assert (=> b!1576990 (= res!1077390 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50877 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50877 _keys!610) ee!12) (select (arr!50877 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576988 () Bool)

(declare-fun res!1077392 () Bool)

(assert (=> b!1576988 (=> (not res!1077392) (not e!879626))))

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1576988 (= res!1077392 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51428 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576991 () Bool)

(assert (=> b!1576991 (= e!879626 false)))

(declare-fun lt!675859 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576991 (= lt!675859 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun res!1077389 () Bool)

(assert (=> start!136378 (=> (not res!1077389) (not e!879626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136378 (= res!1077389 (validMask!0 mask!910))))

(assert (=> start!136378 e!879626))

(assert (=> start!136378 true))

(declare-fun array_inv!39522 (array!105521) Bool)

(assert (=> start!136378 (array_inv!39522 _keys!610)))

(declare-fun b!1576989 () Bool)

(declare-fun res!1077391 () Bool)

(assert (=> b!1576989 (=> (not res!1077391) (not e!879626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576989 (= res!1077391 (validKeyInArray!0 k!768))))

(assert (= (and start!136378 res!1077389) b!1576988))

(assert (= (and b!1576988 res!1077392) b!1576989))

(assert (= (and b!1576989 res!1077391) b!1576990))

(assert (= (and b!1576990 res!1077390) b!1576991))

(declare-fun m!1449349 () Bool)

(assert (=> b!1576990 m!1449349))

(declare-fun m!1449351 () Bool)

(assert (=> b!1576991 m!1449351))

(declare-fun m!1449353 () Bool)

(assert (=> start!136378 m!1449353))

(declare-fun m!1449355 () Bool)

(assert (=> start!136378 m!1449355))

(declare-fun m!1449357 () Bool)

(assert (=> b!1576989 m!1449357))

(push 1)

(assert (not start!136378))

(assert (not b!1576989))

(assert (not b!1576991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

