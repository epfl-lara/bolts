; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136376 () Bool)

(assert start!136376)

(declare-fun res!1077380 () Bool)

(declare-fun e!879621 () Bool)

(assert (=> start!136376 (=> (not res!1077380) (not e!879621))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136376 (= res!1077380 (validMask!0 mask!910))))

(assert (=> start!136376 e!879621))

(assert (=> start!136376 true))

(declare-datatypes ((array!105519 0))(
  ( (array!105520 (arr!50876 (Array (_ BitVec 32) (_ BitVec 64))) (size!51427 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105519)

(declare-fun array_inv!39521 (array!105519) Bool)

(assert (=> start!136376 (array_inv!39521 _keys!610)))

(declare-fun b!1576979 () Bool)

(assert (=> b!1576979 (= e!879621 false)))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun lt!675856 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576979 (= lt!675856 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576977 () Bool)

(declare-fun res!1077378 () Bool)

(assert (=> b!1576977 (=> (not res!1077378) (not e!879621))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576977 (= res!1077378 (validKeyInArray!0 k0!768))))

(declare-fun b!1576976 () Bool)

(declare-fun res!1077377 () Bool)

(assert (=> b!1576976 (=> (not res!1077377) (not e!879621))))

(assert (=> b!1576976 (= res!1077377 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51427 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576978 () Bool)

(declare-fun res!1077379 () Bool)

(assert (=> b!1576978 (=> (not res!1077379) (not e!879621))))

(assert (=> b!1576978 (= res!1077379 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50876 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50876 _keys!610) ee!12) (select (arr!50876 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136376 res!1077380) b!1576976))

(assert (= (and b!1576976 res!1077377) b!1576977))

(assert (= (and b!1576977 res!1077378) b!1576978))

(assert (= (and b!1576978 res!1077379) b!1576979))

(declare-fun m!1449339 () Bool)

(assert (=> start!136376 m!1449339))

(declare-fun m!1449341 () Bool)

(assert (=> start!136376 m!1449341))

(declare-fun m!1449343 () Bool)

(assert (=> b!1576979 m!1449343))

(declare-fun m!1449345 () Bool)

(assert (=> b!1576977 m!1449345))

(declare-fun m!1449347 () Bool)

(assert (=> b!1576978 m!1449347))

(check-sat (not start!136376) (not b!1576979) (not b!1576977))
