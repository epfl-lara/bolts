; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136364 () Bool)

(assert start!136364)

(declare-fun b!1576906 () Bool)

(declare-fun res!1077305 () Bool)

(declare-fun e!879584 () Bool)

(assert (=> b!1576906 (=> (not res!1077305) (not e!879584))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k0!768 () (_ BitVec 64))

(declare-datatypes ((array!105507 0))(
  ( (array!105508 (arr!50870 (Array (_ BitVec 32) (_ BitVec 64))) (size!51421 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105507)

(assert (=> b!1576906 (= res!1077305 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50870 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50870 _keys!610) ee!12) (select (arr!50870 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576905 () Bool)

(declare-fun res!1077307 () Bool)

(assert (=> b!1576905 (=> (not res!1077307) (not e!879584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576905 (= res!1077307 (validKeyInArray!0 k0!768))))

(declare-fun b!1576904 () Bool)

(declare-fun res!1077308 () Bool)

(assert (=> b!1576904 (=> (not res!1077308) (not e!879584))))

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1576904 (= res!1077308 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51421 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576907 () Bool)

(assert (=> b!1576907 (= e!879584 false)))

(declare-fun lt!675838 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576907 (= lt!675838 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun res!1077306 () Bool)

(assert (=> start!136364 (=> (not res!1077306) (not e!879584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136364 (= res!1077306 (validMask!0 mask!910))))

(assert (=> start!136364 e!879584))

(assert (=> start!136364 true))

(declare-fun array_inv!39515 (array!105507) Bool)

(assert (=> start!136364 (array_inv!39515 _keys!610)))

(assert (= (and start!136364 res!1077306) b!1576904))

(assert (= (and b!1576904 res!1077308) b!1576905))

(assert (= (and b!1576905 res!1077307) b!1576906))

(assert (= (and b!1576906 res!1077305) b!1576907))

(declare-fun m!1449279 () Bool)

(assert (=> b!1576906 m!1449279))

(declare-fun m!1449281 () Bool)

(assert (=> b!1576905 m!1449281))

(declare-fun m!1449283 () Bool)

(assert (=> b!1576907 m!1449283))

(declare-fun m!1449285 () Bool)

(assert (=> start!136364 m!1449285))

(declare-fun m!1449287 () Bool)

(assert (=> start!136364 m!1449287))

(check-sat (not b!1576905) (not b!1576907) (not start!136364))
