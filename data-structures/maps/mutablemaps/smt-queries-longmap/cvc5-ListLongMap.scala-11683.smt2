; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136692 () Bool)

(assert start!136692)

(declare-fun res!1078281 () Bool)

(declare-fun e!880245 () Bool)

(assert (=> start!136692 (=> (not res!1078281) (not e!880245))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136692 (= res!1078281 (validMask!0 mask!918))))

(assert (=> start!136692 e!880245))

(assert (=> start!136692 true))

(declare-datatypes ((array!105685 0))(
  ( (array!105686 (arr!50950 (Array (_ BitVec 32) (_ BitVec 64))) (size!51501 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105685)

(declare-fun array_inv!39595 (array!105685) Bool)

(assert (=> start!136692 (array_inv!39595 _keys!614)))

(declare-fun b!1578096 () Bool)

(declare-fun res!1078283 () Bool)

(assert (=> b!1578096 (=> (not res!1078283) (not e!880245))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578096 (= res!1078283 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51501 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50950 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578097 () Bool)

(declare-fun res!1078282 () Bool)

(assert (=> b!1578097 (=> (not res!1078282) (not e!880245))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578097 (= res!1078282 (validKeyInArray!0 k!772))))

(declare-fun b!1578098 () Bool)

(assert (=> b!1578098 (= e!880245 (and (bvslt x!466 #b01111111111111111111111111111110) (= (select (arr!50950 _keys!614) ee!18) k!772) (bvsge ee!18 (size!51501 _keys!614))))))

(assert (= (and start!136692 res!1078281) b!1578096))

(assert (= (and b!1578096 res!1078283) b!1578097))

(assert (= (and b!1578097 res!1078282) b!1578098))

(declare-fun m!1450235 () Bool)

(assert (=> start!136692 m!1450235))

(declare-fun m!1450237 () Bool)

(assert (=> start!136692 m!1450237))

(declare-fun m!1450239 () Bool)

(assert (=> b!1578096 m!1450239))

(declare-fun m!1450241 () Bool)

(assert (=> b!1578097 m!1450241))

(declare-fun m!1450243 () Bool)

(assert (=> b!1578098 m!1450243))

(push 1)

(assert (not b!1578097))

(assert (not start!136692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

