; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136442 () Bool)

(assert start!136442)

(declare-fun res!1077599 () Bool)

(declare-fun e!879746 () Bool)

(assert (=> start!136442 (=> (not res!1077599) (not e!879746))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136442 (= res!1077599 (validMask!0 mask!910))))

(assert (=> start!136442 e!879746))

(assert (=> start!136442 true))

(declare-datatypes ((array!105564 0))(
  ( (array!105565 (arr!50897 (Array (_ BitVec 32) (_ BitVec 64))) (size!51448 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105564)

(declare-fun array_inv!39542 (array!105564) Bool)

(assert (=> start!136442 (array_inv!39542 _keys!610)))

(declare-fun b!1577196 () Bool)

(declare-fun res!1077597 () Bool)

(assert (=> b!1577196 (=> (not res!1077597) (not e!879746))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577196 (= res!1077597 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51448 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577197 () Bool)

(declare-fun res!1077598 () Bool)

(assert (=> b!1577197 (=> (not res!1077598) (not e!879746))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577197 (= res!1077598 (validKeyInArray!0 k0!768))))

(declare-fun b!1577198 () Bool)

(assert (=> b!1577198 (= e!879746 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50897 _keys!610) ee!12) k0!768) (= (bvadd (select (arr!50897 _keys!610) ee!12) (select (arr!50897 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50897 _keys!610) ee!12) k0!768)) (not (= (select (arr!50897 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51448 _keys!610))))))

(assert (= (and start!136442 res!1077599) b!1577196))

(assert (= (and b!1577196 res!1077597) b!1577197))

(assert (= (and b!1577197 res!1077598) b!1577198))

(declare-fun m!1449529 () Bool)

(assert (=> start!136442 m!1449529))

(declare-fun m!1449531 () Bool)

(assert (=> start!136442 m!1449531))

(declare-fun m!1449533 () Bool)

(assert (=> b!1577197 m!1449533))

(declare-fun m!1449535 () Bool)

(assert (=> b!1577198 m!1449535))

(check-sat (not start!136442) (not b!1577197))
(check-sat)
