; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136672 () Bool)

(assert start!136672)

(declare-fun b!1578026 () Bool)

(declare-fun e!880185 () Bool)

(assert (=> b!1578026 (= e!880185 false)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun lt!676129 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578026 (= lt!676129 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1578025 () Bool)

(declare-fun res!1078211 () Bool)

(assert (=> b!1578025 (=> (not res!1078211) (not e!880185))))

(declare-fun k!772 () (_ BitVec 64))

(declare-datatypes ((array!105665 0))(
  ( (array!105666 (arr!50940 (Array (_ BitVec 32) (_ BitVec 64))) (size!51491 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105665)

(assert (=> b!1578025 (= res!1078211 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50940 _keys!614) ee!18) k!772)) (not (= (select (arr!50940 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1078209 () Bool)

(assert (=> start!136672 (=> (not res!1078209) (not e!880185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136672 (= res!1078209 (validMask!0 mask!918))))

(assert (=> start!136672 e!880185))

(assert (=> start!136672 true))

(declare-fun array_inv!39585 (array!105665) Bool)

(assert (=> start!136672 (array_inv!39585 _keys!614)))

(declare-fun b!1578024 () Bool)

(declare-fun res!1078210 () Bool)

(assert (=> b!1578024 (=> (not res!1078210) (not e!880185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578024 (= res!1078210 (validKeyInArray!0 k!772))))

(declare-fun b!1578023 () Bool)

(declare-fun res!1078208 () Bool)

(assert (=> b!1578023 (=> (not res!1078208) (not e!880185))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578023 (= res!1078208 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51491 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50940 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136672 res!1078209) b!1578023))

(assert (= (and b!1578023 res!1078208) b!1578024))

(assert (= (and b!1578024 res!1078210) b!1578025))

(assert (= (and b!1578025 res!1078211) b!1578026))

(declare-fun m!1450163 () Bool)

(assert (=> b!1578026 m!1450163))

(declare-fun m!1450165 () Bool)

(assert (=> b!1578023 m!1450165))

(declare-fun m!1450167 () Bool)

(assert (=> start!136672 m!1450167))

(declare-fun m!1450169 () Bool)

(assert (=> start!136672 m!1450169))

(declare-fun m!1450171 () Bool)

(assert (=> b!1578024 m!1450171))

(declare-fun m!1450173 () Bool)

(assert (=> b!1578025 m!1450173))

(push 1)

(assert (not b!1578026))

(assert (not start!136672))

(assert (not b!1578024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

