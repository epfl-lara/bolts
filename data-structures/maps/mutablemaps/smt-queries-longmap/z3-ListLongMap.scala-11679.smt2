; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136670 () Bool)

(assert start!136670)

(declare-fun b!1578013 () Bool)

(declare-fun res!1078198 () Bool)

(declare-fun e!880179 () Bool)

(assert (=> b!1578013 (=> (not res!1078198) (not e!880179))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105663 0))(
  ( (array!105664 (arr!50939 (Array (_ BitVec 32) (_ BitVec 64))) (size!51490 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105663)

(assert (=> b!1578013 (= res!1078198 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50939 _keys!614) ee!18) k0!772)) (not (= (select (arr!50939 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578011 () Bool)

(declare-fun res!1078197 () Bool)

(assert (=> b!1578011 (=> (not res!1078197) (not e!880179))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1578011 (= res!1078197 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51490 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50939 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078199 () Bool)

(assert (=> start!136670 (=> (not res!1078199) (not e!880179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136670 (= res!1078199 (validMask!0 mask!918))))

(assert (=> start!136670 e!880179))

(assert (=> start!136670 true))

(declare-fun array_inv!39584 (array!105663) Bool)

(assert (=> start!136670 (array_inv!39584 _keys!614)))

(declare-fun b!1578014 () Bool)

(assert (=> b!1578014 (= e!880179 false)))

(declare-fun lt!676126 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578014 (= lt!676126 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1578012 () Bool)

(declare-fun res!1078196 () Bool)

(assert (=> b!1578012 (=> (not res!1078196) (not e!880179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578012 (= res!1078196 (validKeyInArray!0 k0!772))))

(assert (= (and start!136670 res!1078199) b!1578011))

(assert (= (and b!1578011 res!1078197) b!1578012))

(assert (= (and b!1578012 res!1078196) b!1578013))

(assert (= (and b!1578013 res!1078198) b!1578014))

(declare-fun m!1450151 () Bool)

(assert (=> b!1578013 m!1450151))

(declare-fun m!1450153 () Bool)

(assert (=> start!136670 m!1450153))

(declare-fun m!1450155 () Bool)

(assert (=> start!136670 m!1450155))

(declare-fun m!1450157 () Bool)

(assert (=> b!1578014 m!1450157))

(declare-fun m!1450159 () Bool)

(assert (=> b!1578012 m!1450159))

(declare-fun m!1450161 () Bool)

(assert (=> b!1578011 m!1450161))

(check-sat (not start!136670) (not b!1578012) (not b!1578014))
