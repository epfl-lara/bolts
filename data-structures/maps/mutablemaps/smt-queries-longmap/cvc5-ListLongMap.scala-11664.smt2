; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136434 () Bool)

(assert start!136434)

(declare-fun res!1077563 () Bool)

(declare-fun e!879722 () Bool)

(assert (=> start!136434 (=> (not res!1077563) (not e!879722))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136434 (= res!1077563 (validMask!0 mask!910))))

(assert (=> start!136434 e!879722))

(assert (=> start!136434 true))

(declare-datatypes ((array!105556 0))(
  ( (array!105557 (arr!50893 (Array (_ BitVec 32) (_ BitVec 64))) (size!51444 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105556)

(declare-fun array_inv!39538 (array!105556) Bool)

(assert (=> start!136434 (array_inv!39538 _keys!610)))

(declare-fun b!1577160 () Bool)

(declare-fun res!1077562 () Bool)

(assert (=> b!1577160 (=> (not res!1077562) (not e!879722))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577160 (= res!1077562 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51444 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577161 () Bool)

(declare-fun res!1077561 () Bool)

(assert (=> b!1577161 (=> (not res!1077561) (not e!879722))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577161 (= res!1077561 (validKeyInArray!0 k!768))))

(declare-fun b!1577162 () Bool)

(assert (=> b!1577162 (= e!879722 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50893 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50893 _keys!610) ee!12) (select (arr!50893 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50893 _keys!610) ee!12) k!768)) (bvsge ee!12 (size!51444 _keys!610))))))

(assert (= (and start!136434 res!1077563) b!1577160))

(assert (= (and b!1577160 res!1077562) b!1577161))

(assert (= (and b!1577161 res!1077561) b!1577162))

(declare-fun m!1449497 () Bool)

(assert (=> start!136434 m!1449497))

(declare-fun m!1449499 () Bool)

(assert (=> start!136434 m!1449499))

(declare-fun m!1449501 () Bool)

(assert (=> b!1577161 m!1449501))

(declare-fun m!1449503 () Bool)

(assert (=> b!1577162 m!1449503))

(push 1)

(assert (not start!136434))

(assert (not b!1577161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

