; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136428 () Bool)

(assert start!136428)

(declare-fun res!1077536 () Bool)

(declare-fun e!879704 () Bool)

(assert (=> start!136428 (=> (not res!1077536) (not e!879704))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136428 (= res!1077536 (validMask!0 mask!910))))

(assert (=> start!136428 e!879704))

(assert (=> start!136428 true))

(declare-datatypes ((array!105550 0))(
  ( (array!105551 (arr!50890 (Array (_ BitVec 32) (_ BitVec 64))) (size!51441 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105550)

(declare-fun array_inv!39535 (array!105550) Bool)

(assert (=> start!136428 (array_inv!39535 _keys!610)))

(declare-fun b!1577133 () Bool)

(declare-fun res!1077534 () Bool)

(assert (=> b!1577133 (=> (not res!1077534) (not e!879704))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577133 (= res!1077534 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51441 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577134 () Bool)

(declare-fun res!1077535 () Bool)

(assert (=> b!1577134 (=> (not res!1077535) (not e!879704))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577134 (= res!1077535 (validKeyInArray!0 k!768))))

(declare-fun b!1577135 () Bool)

(assert (=> b!1577135 (= e!879704 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50890 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50890 _keys!610) ee!12) (select (arr!50890 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51441 _keys!610))))))

(assert (= (and start!136428 res!1077536) b!1577133))

(assert (= (and b!1577133 res!1077534) b!1577134))

(assert (= (and b!1577134 res!1077535) b!1577135))

(declare-fun m!1449473 () Bool)

(assert (=> start!136428 m!1449473))

(declare-fun m!1449475 () Bool)

(assert (=> start!136428 m!1449475))

(declare-fun m!1449477 () Bool)

(assert (=> b!1577134 m!1449477))

(declare-fun m!1449479 () Bool)

(assert (=> b!1577135 m!1449479))

(push 1)

(assert (not b!1577134))

(assert (not start!136428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

