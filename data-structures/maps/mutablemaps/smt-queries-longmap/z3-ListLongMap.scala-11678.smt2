; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136664 () Bool)

(assert start!136664)

(declare-fun b!1577976 () Bool)

(declare-fun res!1078160 () Bool)

(declare-fun e!880161 () Bool)

(assert (=> b!1577976 (=> (not res!1078160) (not e!880161))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577976 (= res!1078160 (validKeyInArray!0 k0!772))))

(declare-fun b!1577975 () Bool)

(declare-fun res!1078163 () Bool)

(assert (=> b!1577975 (=> (not res!1078163) (not e!880161))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105657 0))(
  ( (array!105658 (arr!50936 (Array (_ BitVec 32) (_ BitVec 64))) (size!51487 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105657)

(assert (=> b!1577975 (= res!1078163 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51487 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50936 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577978 () Bool)

(assert (=> b!1577978 (= e!880161 false)))

(declare-fun lt!676117 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577978 (= lt!676117 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577977 () Bool)

(declare-fun res!1078162 () Bool)

(assert (=> b!1577977 (=> (not res!1078162) (not e!880161))))

(assert (=> b!1577977 (= res!1078162 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50936 _keys!614) ee!18) k0!772)) (not (= (select (arr!50936 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1078161 () Bool)

(assert (=> start!136664 (=> (not res!1078161) (not e!880161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136664 (= res!1078161 (validMask!0 mask!918))))

(assert (=> start!136664 e!880161))

(assert (=> start!136664 true))

(declare-fun array_inv!39581 (array!105657) Bool)

(assert (=> start!136664 (array_inv!39581 _keys!614)))

(assert (= (and start!136664 res!1078161) b!1577975))

(assert (= (and b!1577975 res!1078163) b!1577976))

(assert (= (and b!1577976 res!1078160) b!1577977))

(assert (= (and b!1577977 res!1078162) b!1577978))

(declare-fun m!1450115 () Bool)

(assert (=> b!1577977 m!1450115))

(declare-fun m!1450117 () Bool)

(assert (=> b!1577976 m!1450117))

(declare-fun m!1450119 () Bool)

(assert (=> b!1577978 m!1450119))

(declare-fun m!1450121 () Bool)

(assert (=> start!136664 m!1450121))

(declare-fun m!1450123 () Bool)

(assert (=> start!136664 m!1450123))

(declare-fun m!1450125 () Bool)

(assert (=> b!1577975 m!1450125))

(check-sat (not b!1577978) (not start!136664) (not b!1577976))
