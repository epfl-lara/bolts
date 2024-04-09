; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136682 () Bool)

(assert start!136682)

(declare-fun res!1078238 () Bool)

(declare-fun e!880215 () Bool)

(assert (=> start!136682 (=> (not res!1078238) (not e!880215))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136682 (= res!1078238 (validMask!0 mask!918))))

(assert (=> start!136682 e!880215))

(assert (=> start!136682 true))

(declare-datatypes ((array!105675 0))(
  ( (array!105676 (arr!50945 (Array (_ BitVec 32) (_ BitVec 64))) (size!51496 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105675)

(declare-fun array_inv!39590 (array!105675) Bool)

(assert (=> start!136682 (array_inv!39590 _keys!614)))

(declare-fun b!1578051 () Bool)

(declare-fun res!1078236 () Bool)

(assert (=> b!1578051 (=> (not res!1078236) (not e!880215))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578051 (= res!1078236 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51496 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50945 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578052 () Bool)

(declare-fun res!1078237 () Bool)

(assert (=> b!1578052 (=> (not res!1078237) (not e!880215))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578052 (= res!1078237 (validKeyInArray!0 k0!772))))

(declare-fun b!1578053 () Bool)

(assert (=> b!1578053 (= e!880215 (bvslt (bvsub #b01111111111111111111111111111111 x!466) #b00000000000000000000000000000000))))

(assert (= (and start!136682 res!1078238) b!1578051))

(assert (= (and b!1578051 res!1078236) b!1578052))

(assert (= (and b!1578052 res!1078237) b!1578053))

(declare-fun m!1450195 () Bool)

(assert (=> start!136682 m!1450195))

(declare-fun m!1450197 () Bool)

(assert (=> start!136682 m!1450197))

(declare-fun m!1450199 () Bool)

(assert (=> b!1578051 m!1450199))

(declare-fun m!1450201 () Bool)

(assert (=> b!1578052 m!1450201))

(check-sat (not b!1578052) (not start!136682))
(check-sat)
