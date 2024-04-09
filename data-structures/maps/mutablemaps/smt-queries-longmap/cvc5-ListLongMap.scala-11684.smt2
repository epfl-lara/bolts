; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136698 () Bool)

(assert start!136698)

(declare-fun res!1078309 () Bool)

(declare-fun e!880263 () Bool)

(assert (=> start!136698 (=> (not res!1078309) (not e!880263))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136698 (= res!1078309 (validMask!0 mask!918))))

(assert (=> start!136698 e!880263))

(assert (=> start!136698 true))

(declare-datatypes ((array!105691 0))(
  ( (array!105692 (arr!50953 (Array (_ BitVec 32) (_ BitVec 64))) (size!51504 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105691)

(declare-fun array_inv!39598 (array!105691) Bool)

(assert (=> start!136698 (array_inv!39598 _keys!614)))

(declare-fun b!1578123 () Bool)

(declare-fun res!1078308 () Bool)

(assert (=> b!1578123 (=> (not res!1078308) (not e!880263))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578123 (= res!1078308 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51504 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50953 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578124 () Bool)

(declare-fun res!1078310 () Bool)

(assert (=> b!1578124 (=> (not res!1078310) (not e!880263))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578124 (= res!1078310 (validKeyInArray!0 k!772))))

(declare-fun b!1578125 () Bool)

(assert (=> b!1578125 (= e!880263 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50953 _keys!614) ee!18) k!772)) (= (select (arr!50953 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!10 (size!51504 _keys!614))))))

(assert (= (and start!136698 res!1078309) b!1578123))

(assert (= (and b!1578123 res!1078308) b!1578124))

(assert (= (and b!1578124 res!1078310) b!1578125))

(declare-fun m!1450265 () Bool)

(assert (=> start!136698 m!1450265))

(declare-fun m!1450267 () Bool)

(assert (=> start!136698 m!1450267))

(declare-fun m!1450269 () Bool)

(assert (=> b!1578123 m!1450269))

(declare-fun m!1450271 () Bool)

(assert (=> b!1578124 m!1450271))

(declare-fun m!1450273 () Bool)

(assert (=> b!1578125 m!1450273))

(push 1)

(assert (not b!1578124))

(assert (not start!136698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

