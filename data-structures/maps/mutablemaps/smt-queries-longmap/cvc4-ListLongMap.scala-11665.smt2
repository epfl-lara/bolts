; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136444 () Bool)

(assert start!136444)

(declare-fun res!1077606 () Bool)

(declare-fun e!879753 () Bool)

(assert (=> start!136444 (=> (not res!1077606) (not e!879753))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136444 (= res!1077606 (validMask!0 mask!910))))

(assert (=> start!136444 e!879753))

(assert (=> start!136444 true))

(declare-datatypes ((array!105566 0))(
  ( (array!105567 (arr!50898 (Array (_ BitVec 32) (_ BitVec 64))) (size!51449 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105566)

(declare-fun array_inv!39543 (array!105566) Bool)

(assert (=> start!136444 (array_inv!39543 _keys!610)))

(declare-fun b!1577205 () Bool)

(declare-fun res!1077607 () Bool)

(assert (=> b!1577205 (=> (not res!1077607) (not e!879753))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577205 (= res!1077607 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51449 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577206 () Bool)

(declare-fun res!1077608 () Bool)

(assert (=> b!1577206 (=> (not res!1077608) (not e!879753))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577206 (= res!1077608 (validKeyInArray!0 k!768))))

(declare-fun b!1577207 () Bool)

(assert (=> b!1577207 (= e!879753 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50898 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50898 _keys!610) ee!12) (select (arr!50898 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50898 _keys!610) ee!12) k!768)) (not (= (select (arr!50898 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51449 _keys!610))))))

(assert (= (and start!136444 res!1077606) b!1577205))

(assert (= (and b!1577205 res!1077607) b!1577206))

(assert (= (and b!1577206 res!1077608) b!1577207))

(declare-fun m!1449537 () Bool)

(assert (=> start!136444 m!1449537))

(declare-fun m!1449539 () Bool)

(assert (=> start!136444 m!1449539))

(declare-fun m!1449541 () Bool)

(assert (=> b!1577206 m!1449541))

(declare-fun m!1449543 () Bool)

(assert (=> b!1577207 m!1449543))

(push 1)

(assert (not b!1577206))

(assert (not start!136444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

