; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136430 () Bool)

(assert start!136430)

(declare-fun res!1077545 () Bool)

(declare-fun e!879711 () Bool)

(assert (=> start!136430 (=> (not res!1077545) (not e!879711))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136430 (= res!1077545 (validMask!0 mask!910))))

(assert (=> start!136430 e!879711))

(assert (=> start!136430 true))

(declare-datatypes ((array!105552 0))(
  ( (array!105553 (arr!50891 (Array (_ BitVec 32) (_ BitVec 64))) (size!51442 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105552)

(declare-fun array_inv!39536 (array!105552) Bool)

(assert (=> start!136430 (array_inv!39536 _keys!610)))

(declare-fun b!1577142 () Bool)

(declare-fun res!1077543 () Bool)

(assert (=> b!1577142 (=> (not res!1077543) (not e!879711))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577142 (= res!1077543 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51442 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577143 () Bool)

(declare-fun res!1077544 () Bool)

(assert (=> b!1577143 (=> (not res!1077544) (not e!879711))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577143 (= res!1077544 (validKeyInArray!0 k0!768))))

(declare-fun b!1577144 () Bool)

(assert (=> b!1577144 (= e!879711 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50891 _keys!610) ee!12) k0!768) (= (bvadd (select (arr!50891 _keys!610) ee!12) (select (arr!50891 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51442 _keys!610))))))

(assert (= (and start!136430 res!1077545) b!1577142))

(assert (= (and b!1577142 res!1077543) b!1577143))

(assert (= (and b!1577143 res!1077544) b!1577144))

(declare-fun m!1449481 () Bool)

(assert (=> start!136430 m!1449481))

(declare-fun m!1449483 () Bool)

(assert (=> start!136430 m!1449483))

(declare-fun m!1449485 () Bool)

(assert (=> b!1577143 m!1449485))

(declare-fun m!1449487 () Bool)

(assert (=> b!1577144 m!1449487))

(check-sat (not b!1577143) (not start!136430))
(check-sat)
