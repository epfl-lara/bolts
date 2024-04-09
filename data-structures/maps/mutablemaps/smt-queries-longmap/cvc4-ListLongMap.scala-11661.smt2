; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136420 () Bool)

(assert start!136420)

(declare-fun b!1577096 () Bool)

(declare-fun res!1077499 () Bool)

(declare-fun e!879681 () Bool)

(assert (=> b!1577096 (=> (not res!1077499) (not e!879681))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105542 0))(
  ( (array!105543 (arr!50886 (Array (_ BitVec 32) (_ BitVec 64))) (size!51437 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105542)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577096 (= res!1077499 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51437 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577099 () Bool)

(assert (=> b!1577099 (= e!879681 false)))

(declare-fun lt!675895 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577099 (= lt!675895 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577098 () Bool)

(declare-fun res!1077498 () Bool)

(assert (=> b!1577098 (=> (not res!1077498) (not e!879681))))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1577098 (= res!1077498 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50886 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50886 _keys!610) ee!12) (select (arr!50886 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577097 () Bool)

(declare-fun res!1077500 () Bool)

(assert (=> b!1577097 (=> (not res!1077500) (not e!879681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577097 (= res!1077500 (validKeyInArray!0 k!768))))

(declare-fun res!1077497 () Bool)

(assert (=> start!136420 (=> (not res!1077497) (not e!879681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136420 (= res!1077497 (validMask!0 mask!910))))

(assert (=> start!136420 e!879681))

(assert (=> start!136420 true))

(declare-fun array_inv!39531 (array!105542) Bool)

(assert (=> start!136420 (array_inv!39531 _keys!610)))

(assert (= (and start!136420 res!1077497) b!1577096))

(assert (= (and b!1577096 res!1077499) b!1577097))

(assert (= (and b!1577097 res!1077500) b!1577098))

(assert (= (and b!1577098 res!1077498) b!1577099))

(declare-fun m!1449445 () Bool)

(assert (=> b!1577099 m!1449445))

(declare-fun m!1449447 () Bool)

(assert (=> b!1577098 m!1449447))

(declare-fun m!1449449 () Bool)

(assert (=> b!1577097 m!1449449))

(declare-fun m!1449451 () Bool)

(assert (=> start!136420 m!1449451))

(declare-fun m!1449453 () Bool)

(assert (=> start!136420 m!1449453))

(push 1)

(assert (not b!1577099))

(assert (not b!1577097))

(assert (not start!136420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

