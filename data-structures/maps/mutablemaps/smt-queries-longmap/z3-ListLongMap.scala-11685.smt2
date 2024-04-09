; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136706 () Bool)

(assert start!136706)

(declare-fun res!1078352 () Bool)

(declare-fun e!880286 () Bool)

(assert (=> start!136706 (=> (not res!1078352) (not e!880286))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136706 (= res!1078352 (validMask!0 mask!918))))

(assert (=> start!136706 e!880286))

(assert (=> start!136706 true))

(declare-datatypes ((array!105699 0))(
  ( (array!105700 (arr!50957 (Array (_ BitVec 32) (_ BitVec 64))) (size!51508 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105699)

(declare-fun array_inv!39602 (array!105699) Bool)

(assert (=> start!136706 (array_inv!39602 _keys!614)))

(declare-fun b!1578165 () Bool)

(declare-fun res!1078351 () Bool)

(assert (=> b!1578165 (=> (not res!1078351) (not e!880286))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578165 (= res!1078351 (validKeyInArray!0 k0!772))))

(declare-fun b!1578167 () Bool)

(declare-fun x!466 () (_ BitVec 32))

(assert (=> b!1578167 (= e!880286 (bvsge (bvsub #b01111111111111111111111111111111 (bvadd #b00000000000000000000000000000001 x!466)) (bvsub #b01111111111111111111111111111111 x!466)))))

(declare-fun lt!676135 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578167 (= lt!676135 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1578166 () Bool)

(declare-fun res!1078350 () Bool)

(assert (=> b!1578166 (=> (not res!1078350) (not e!880286))))

(assert (=> b!1578166 (= res!1078350 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50957 _keys!614) ee!18) k0!772)) (not (= (select (arr!50957 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578164 () Bool)

(declare-fun res!1078349 () Bool)

(assert (=> b!1578164 (=> (not res!1078349) (not e!880286))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578164 (= res!1078349 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51508 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50957 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136706 res!1078352) b!1578164))

(assert (= (and b!1578164 res!1078349) b!1578165))

(assert (= (and b!1578165 res!1078351) b!1578166))

(assert (= (and b!1578166 res!1078350) b!1578167))

(declare-fun m!1450307 () Bool)

(assert (=> start!136706 m!1450307))

(declare-fun m!1450309 () Bool)

(assert (=> start!136706 m!1450309))

(declare-fun m!1450311 () Bool)

(assert (=> b!1578164 m!1450311))

(declare-fun m!1450313 () Bool)

(assert (=> b!1578167 m!1450313))

(declare-fun m!1450315 () Bool)

(assert (=> b!1578165 m!1450315))

(declare-fun m!1450317 () Bool)

(assert (=> b!1578166 m!1450317))

(check-sat (not b!1578167) (not b!1578165) (not start!136706))
(check-sat)
