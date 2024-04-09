; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136450 () Bool)

(assert start!136450)

(declare-fun res!1077634 () Bool)

(declare-fun e!879770 () Bool)

(assert (=> start!136450 (=> (not res!1077634) (not e!879770))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136450 (= res!1077634 (validMask!0 mask!910))))

(assert (=> start!136450 e!879770))

(assert (=> start!136450 true))

(declare-datatypes ((array!105572 0))(
  ( (array!105573 (arr!50901 (Array (_ BitVec 32) (_ BitVec 64))) (size!51452 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105572)

(declare-fun array_inv!39546 (array!105572) Bool)

(assert (=> start!136450 (array_inv!39546 _keys!610)))

(declare-fun b!1577232 () Bool)

(declare-fun res!1077635 () Bool)

(assert (=> b!1577232 (=> (not res!1077635) (not e!879770))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577232 (= res!1077635 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51452 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577233 () Bool)

(declare-fun res!1077633 () Bool)

(assert (=> b!1577233 (=> (not res!1077633) (not e!879770))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577233 (= res!1077633 (validKeyInArray!0 k!768))))

(declare-fun b!1577234 () Bool)

(assert (=> b!1577234 (= e!879770 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50901 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50901 _keys!610) ee!12) (select (arr!50901 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50901 _keys!610) ee!12) k!768)) (not (= (select (arr!50901 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50901 _keys!610) ee!12) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136450 res!1077634) b!1577232))

(assert (= (and b!1577232 res!1077635) b!1577233))

(assert (= (and b!1577233 res!1077633) b!1577234))

(declare-fun m!1449561 () Bool)

(assert (=> start!136450 m!1449561))

(declare-fun m!1449563 () Bool)

(assert (=> start!136450 m!1449563))

(declare-fun m!1449565 () Bool)

(assert (=> b!1577233 m!1449565))

(declare-fun m!1449567 () Bool)

(assert (=> b!1577234 m!1449567))

(push 1)

(assert (not b!1577233))

(assert (not start!136450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

