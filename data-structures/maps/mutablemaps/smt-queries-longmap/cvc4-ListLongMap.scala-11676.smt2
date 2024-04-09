; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136654 () Bool)

(assert start!136654)

(declare-fun lt!676102 () (_ BitVec 32))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun b!1577918 () Bool)

(declare-fun e!880131 () Bool)

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577918 (= e!880131 (and (bvsge lt!676102 #b00000000000000000000000000000000) (bvslt lt!676102 (bvadd #b00000000000000000000000000000001 mask!918)) (bvslt (bvadd #b00000000000000000000000000000001 x!466) #b00000000000000000000000000000000)))))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577918 (= lt!676102 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577917 () Bool)

(declare-fun res!1078103 () Bool)

(assert (=> b!1577917 (=> (not res!1078103) (not e!880131))))

(declare-fun k!772 () (_ BitVec 64))

(declare-datatypes ((array!105647 0))(
  ( (array!105648 (arr!50931 (Array (_ BitVec 32) (_ BitVec 64))) (size!51482 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105647)

(assert (=> b!1577917 (= res!1078103 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50931 _keys!614) ee!18) k!772)) (not (= (select (arr!50931 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577916 () Bool)

(declare-fun res!1078102 () Bool)

(assert (=> b!1577916 (=> (not res!1078102) (not e!880131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577916 (= res!1078102 (validKeyInArray!0 k!772))))

(declare-fun res!1078100 () Bool)

(assert (=> start!136654 (=> (not res!1078100) (not e!880131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136654 (= res!1078100 (validMask!0 mask!918))))

(assert (=> start!136654 e!880131))

(assert (=> start!136654 true))

(declare-fun array_inv!39576 (array!105647) Bool)

(assert (=> start!136654 (array_inv!39576 _keys!614)))

(declare-fun b!1577915 () Bool)

(declare-fun res!1078101 () Bool)

(assert (=> b!1577915 (=> (not res!1078101) (not e!880131))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577915 (= res!1078101 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51482 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50931 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136654 res!1078100) b!1577915))

(assert (= (and b!1577915 res!1078101) b!1577916))

(assert (= (and b!1577916 res!1078102) b!1577917))

(assert (= (and b!1577917 res!1078103) b!1577918))

(declare-fun m!1450055 () Bool)

(assert (=> start!136654 m!1450055))

(declare-fun m!1450057 () Bool)

(assert (=> start!136654 m!1450057))

(declare-fun m!1450059 () Bool)

(assert (=> b!1577916 m!1450059))

(declare-fun m!1450061 () Bool)

(assert (=> b!1577918 m!1450061))

(declare-fun m!1450063 () Bool)

(assert (=> b!1577915 m!1450063))

(declare-fun m!1450065 () Bool)

(assert (=> b!1577917 m!1450065))

(push 1)

(assert (not b!1577918))

(assert (not start!136654))

(assert (not b!1577916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

