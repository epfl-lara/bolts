; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136436 () Bool)

(assert start!136436)

(declare-fun res!1077572 () Bool)

(declare-fun e!879728 () Bool)

(assert (=> start!136436 (=> (not res!1077572) (not e!879728))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136436 (= res!1077572 (validMask!0 mask!910))))

(assert (=> start!136436 e!879728))

(assert (=> start!136436 true))

(declare-datatypes ((array!105558 0))(
  ( (array!105559 (arr!50894 (Array (_ BitVec 32) (_ BitVec 64))) (size!51445 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105558)

(declare-fun array_inv!39539 (array!105558) Bool)

(assert (=> start!136436 (array_inv!39539 _keys!610)))

(declare-fun b!1577169 () Bool)

(declare-fun res!1077571 () Bool)

(assert (=> b!1577169 (=> (not res!1077571) (not e!879728))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577169 (= res!1077571 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51445 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577170 () Bool)

(declare-fun res!1077570 () Bool)

(assert (=> b!1577170 (=> (not res!1077570) (not e!879728))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577170 (= res!1077570 (validKeyInArray!0 k0!768))))

(declare-fun b!1577171 () Bool)

(assert (=> b!1577171 (= e!879728 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50894 _keys!610) ee!12) k0!768) (= (bvadd (select (arr!50894 _keys!610) ee!12) (select (arr!50894 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50894 _keys!610) ee!12) k0!768)) (bvsge ee!12 (size!51445 _keys!610))))))

(assert (= (and start!136436 res!1077572) b!1577169))

(assert (= (and b!1577169 res!1077571) b!1577170))

(assert (= (and b!1577170 res!1077570) b!1577171))

(declare-fun m!1449505 () Bool)

(assert (=> start!136436 m!1449505))

(declare-fun m!1449507 () Bool)

(assert (=> start!136436 m!1449507))

(declare-fun m!1449509 () Bool)

(assert (=> b!1577170 m!1449509))

(declare-fun m!1449511 () Bool)

(assert (=> b!1577171 m!1449511))

(check-sat (not b!1577170) (not start!136436))
(check-sat)
