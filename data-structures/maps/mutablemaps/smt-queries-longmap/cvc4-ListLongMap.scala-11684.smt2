; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136702 () Bool)

(assert start!136702)

(declare-fun res!1078328 () Bool)

(declare-fun e!880275 () Bool)

(assert (=> start!136702 (=> (not res!1078328) (not e!880275))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136702 (= res!1078328 (validMask!0 mask!918))))

(assert (=> start!136702 e!880275))

(assert (=> start!136702 true))

(declare-datatypes ((array!105695 0))(
  ( (array!105696 (arr!50955 (Array (_ BitVec 32) (_ BitVec 64))) (size!51506 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105695)

(declare-fun array_inv!39600 (array!105695) Bool)

(assert (=> start!136702 (array_inv!39600 _keys!614)))

(declare-fun b!1578141 () Bool)

(declare-fun res!1078326 () Bool)

(assert (=> b!1578141 (=> (not res!1078326) (not e!880275))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578141 (= res!1078326 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51506 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50955 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578142 () Bool)

(declare-fun res!1078327 () Bool)

(assert (=> b!1578142 (=> (not res!1078327) (not e!880275))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578142 (= res!1078327 (validKeyInArray!0 k!772))))

(declare-fun b!1578143 () Bool)

(assert (=> b!1578143 (= e!880275 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50955 _keys!614) ee!18) k!772)) (= (select (arr!50955 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!10 (size!51506 _keys!614))))))

(assert (= (and start!136702 res!1078328) b!1578141))

(assert (= (and b!1578141 res!1078326) b!1578142))

(assert (= (and b!1578142 res!1078327) b!1578143))

(declare-fun m!1450285 () Bool)

(assert (=> start!136702 m!1450285))

(declare-fun m!1450287 () Bool)

(assert (=> start!136702 m!1450287))

(declare-fun m!1450289 () Bool)

(assert (=> b!1578141 m!1450289))

(declare-fun m!1450291 () Bool)

(assert (=> b!1578142 m!1450291))

(declare-fun m!1450293 () Bool)

(assert (=> b!1578143 m!1450293))

(push 1)

(assert (not start!136702))

(assert (not b!1578142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

