; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136452 () Bool)

(assert start!136452)

(declare-fun res!1077645 () Bool)

(declare-fun e!879776 () Bool)

(assert (=> start!136452 (=> (not res!1077645) (not e!879776))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136452 (= res!1077645 (validMask!0 mask!910))))

(assert (=> start!136452 e!879776))

(assert (=> start!136452 true))

(declare-datatypes ((array!105574 0))(
  ( (array!105575 (arr!50902 (Array (_ BitVec 32) (_ BitVec 64))) (size!51453 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105574)

(declare-fun array_inv!39547 (array!105574) Bool)

(assert (=> start!136452 (array_inv!39547 _keys!610)))

(declare-fun b!1577243 () Bool)

(declare-fun res!1077647 () Bool)

(assert (=> b!1577243 (=> (not res!1077647) (not e!879776))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577243 (= res!1077647 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51453 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577246 () Bool)

(assert (=> b!1577246 (= e!879776 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!458)) (bvsub #b01111111111111111111111111111110 x!458)))))

(declare-fun lt!675898 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577246 (= lt!675898 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577245 () Bool)

(declare-fun res!1077644 () Bool)

(assert (=> b!1577245 (=> (not res!1077644) (not e!879776))))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1577245 (= res!1077644 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50902 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50902 _keys!610) ee!12) (select (arr!50902 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577244 () Bool)

(declare-fun res!1077646 () Bool)

(assert (=> b!1577244 (=> (not res!1077646) (not e!879776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577244 (= res!1077646 (validKeyInArray!0 k!768))))

(assert (= (and start!136452 res!1077645) b!1577243))

(assert (= (and b!1577243 res!1077647) b!1577244))

(assert (= (and b!1577244 res!1077646) b!1577245))

(assert (= (and b!1577245 res!1077644) b!1577246))

(declare-fun m!1449569 () Bool)

(assert (=> start!136452 m!1449569))

(declare-fun m!1449571 () Bool)

(assert (=> start!136452 m!1449571))

(declare-fun m!1449573 () Bool)

(assert (=> b!1577246 m!1449573))

(declare-fun m!1449575 () Bool)

(assert (=> b!1577245 m!1449575))

(declare-fun m!1449577 () Bool)

(assert (=> b!1577244 m!1449577))

(push 1)

(assert (not start!136452))

(assert (not b!1577246))

(assert (not b!1577244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

