; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136704 () Bool)

(assert start!136704)

(declare-fun b!1578154 () Bool)

(declare-fun res!1078339 () Bool)

(declare-fun e!880280 () Bool)

(assert (=> b!1578154 (=> (not res!1078339) (not e!880280))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105697 0))(
  ( (array!105698 (arr!50956 (Array (_ BitVec 32) (_ BitVec 64))) (size!51507 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105697)

(assert (=> b!1578154 (= res!1078339 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50956 _keys!614) ee!18) k!772)) (not (= (select (arr!50956 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578153 () Bool)

(declare-fun res!1078338 () Bool)

(assert (=> b!1578153 (=> (not res!1078338) (not e!880280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578153 (= res!1078338 (validKeyInArray!0 k!772))))

(declare-fun b!1578152 () Bool)

(declare-fun res!1078340 () Bool)

(assert (=> b!1578152 (=> (not res!1078340) (not e!880280))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1578152 (= res!1078340 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51507 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50956 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578155 () Bool)

(assert (=> b!1578155 (= e!880280 (bvsge (bvsub #b01111111111111111111111111111111 (bvadd #b00000000000000000000000000000001 x!466)) (bvsub #b01111111111111111111111111111111 x!466)))))

(declare-fun lt!676132 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578155 (= lt!676132 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun res!1078337 () Bool)

(assert (=> start!136704 (=> (not res!1078337) (not e!880280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136704 (= res!1078337 (validMask!0 mask!918))))

(assert (=> start!136704 e!880280))

(assert (=> start!136704 true))

(declare-fun array_inv!39601 (array!105697) Bool)

(assert (=> start!136704 (array_inv!39601 _keys!614)))

(assert (= (and start!136704 res!1078337) b!1578152))

(assert (= (and b!1578152 res!1078340) b!1578153))

(assert (= (and b!1578153 res!1078338) b!1578154))

(assert (= (and b!1578154 res!1078339) b!1578155))

(declare-fun m!1450295 () Bool)

(assert (=> b!1578152 m!1450295))

(declare-fun m!1450297 () Bool)

(assert (=> b!1578154 m!1450297))

(declare-fun m!1450299 () Bool)

(assert (=> start!136704 m!1450299))

(declare-fun m!1450301 () Bool)

(assert (=> start!136704 m!1450301))

(declare-fun m!1450303 () Bool)

(assert (=> b!1578153 m!1450303))

(declare-fun m!1450305 () Bool)

(assert (=> b!1578155 m!1450305))

(push 1)

(assert (not b!1578155))

(assert (not b!1578153))

(assert (not start!136704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

