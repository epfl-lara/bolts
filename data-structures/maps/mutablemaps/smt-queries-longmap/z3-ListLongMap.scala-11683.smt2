; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136694 () Bool)

(assert start!136694)

(declare-fun res!1078291 () Bool)

(declare-fun e!880251 () Bool)

(assert (=> start!136694 (=> (not res!1078291) (not e!880251))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136694 (= res!1078291 (validMask!0 mask!918))))

(assert (=> start!136694 e!880251))

(assert (=> start!136694 true))

(declare-datatypes ((array!105687 0))(
  ( (array!105688 (arr!50951 (Array (_ BitVec 32) (_ BitVec 64))) (size!51502 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105687)

(declare-fun array_inv!39596 (array!105687) Bool)

(assert (=> start!136694 (array_inv!39596 _keys!614)))

(declare-fun b!1578105 () Bool)

(declare-fun res!1078292 () Bool)

(assert (=> b!1578105 (=> (not res!1078292) (not e!880251))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578105 (= res!1078292 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51502 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50951 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578106 () Bool)

(declare-fun res!1078290 () Bool)

(assert (=> b!1578106 (=> (not res!1078290) (not e!880251))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578106 (= res!1078290 (validKeyInArray!0 k0!772))))

(declare-fun b!1578107 () Bool)

(assert (=> b!1578107 (= e!880251 (and (bvslt x!466 #b01111111111111111111111111111110) (= (select (arr!50951 _keys!614) ee!18) k0!772) (bvsge ee!18 (size!51502 _keys!614))))))

(assert (= (and start!136694 res!1078291) b!1578105))

(assert (= (and b!1578105 res!1078292) b!1578106))

(assert (= (and b!1578106 res!1078290) b!1578107))

(declare-fun m!1450245 () Bool)

(assert (=> start!136694 m!1450245))

(declare-fun m!1450247 () Bool)

(assert (=> start!136694 m!1450247))

(declare-fun m!1450249 () Bool)

(assert (=> b!1578105 m!1450249))

(declare-fun m!1450251 () Bool)

(assert (=> b!1578106 m!1450251))

(declare-fun m!1450253 () Bool)

(assert (=> b!1578107 m!1450253))

(check-sat (not b!1578106) (not start!136694))
(check-sat)
