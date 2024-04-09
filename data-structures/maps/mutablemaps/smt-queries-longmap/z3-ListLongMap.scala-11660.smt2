; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136412 () Bool)

(assert start!136412)

(declare-fun x!458 () (_ BitVec 32))

(declare-fun b!1577051 () Bool)

(declare-fun lt!675883 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun e!879657 () Bool)

(assert (=> b!1577051 (= e!879657 (and (bvsge lt!675883 #b00000000000000000000000000000000) (bvslt lt!675883 (bvadd #b00000000000000000000000000000001 mask!910)) (bvslt (bvadd #b00000000000000000000000000000001 x!458) #b00000000000000000000000000000000)))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577051 (= lt!675883 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577048 () Bool)

(declare-fun res!1077449 () Bool)

(assert (=> b!1577048 (=> (not res!1077449) (not e!879657))))

(declare-datatypes ((array!105534 0))(
  ( (array!105535 (arr!50882 (Array (_ BitVec 32) (_ BitVec 64))) (size!51433 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105534)

(assert (=> b!1577048 (= res!1077449 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51433 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577050 () Bool)

(declare-fun res!1077451 () Bool)

(assert (=> b!1577050 (=> (not res!1077451) (not e!879657))))

(declare-fun k0!768 () (_ BitVec 64))

(assert (=> b!1577050 (= res!1077451 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50882 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50882 _keys!610) ee!12) (select (arr!50882 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577049 () Bool)

(declare-fun res!1077450 () Bool)

(assert (=> b!1577049 (=> (not res!1077450) (not e!879657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577049 (= res!1077450 (validKeyInArray!0 k0!768))))

(declare-fun res!1077452 () Bool)

(assert (=> start!136412 (=> (not res!1077452) (not e!879657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136412 (= res!1077452 (validMask!0 mask!910))))

(assert (=> start!136412 e!879657))

(assert (=> start!136412 true))

(declare-fun array_inv!39527 (array!105534) Bool)

(assert (=> start!136412 (array_inv!39527 _keys!610)))

(assert (= (and start!136412 res!1077452) b!1577048))

(assert (= (and b!1577048 res!1077449) b!1577049))

(assert (= (and b!1577049 res!1077450) b!1577050))

(assert (= (and b!1577050 res!1077451) b!1577051))

(declare-fun m!1449405 () Bool)

(assert (=> b!1577051 m!1449405))

(declare-fun m!1449407 () Bool)

(assert (=> b!1577050 m!1449407))

(declare-fun m!1449409 () Bool)

(assert (=> b!1577049 m!1449409))

(declare-fun m!1449411 () Bool)

(assert (=> start!136412 m!1449411))

(declare-fun m!1449413 () Bool)

(assert (=> start!136412 m!1449413))

(check-sat (not b!1577051) (not start!136412) (not b!1577049))
(check-sat)
