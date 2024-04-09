; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136656 () Bool)

(assert start!136656)

(declare-fun b!1577929 () Bool)

(declare-fun res!1078115 () Bool)

(declare-fun e!880136 () Bool)

(assert (=> b!1577929 (=> (not res!1078115) (not e!880136))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105649 0))(
  ( (array!105650 (arr!50932 (Array (_ BitVec 32) (_ BitVec 64))) (size!51483 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105649)

(assert (=> b!1577929 (= res!1078115 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50932 _keys!614) ee!18) k!772)) (not (= (select (arr!50932 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577927 () Bool)

(declare-fun res!1078112 () Bool)

(assert (=> b!1577927 (=> (not res!1078112) (not e!880136))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577927 (= res!1078112 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51483 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50932 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577930 () Bool)

(assert (=> b!1577930 (= e!880136 false)))

(declare-fun lt!676105 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577930 (= lt!676105 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577928 () Bool)

(declare-fun res!1078113 () Bool)

(assert (=> b!1577928 (=> (not res!1078113) (not e!880136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577928 (= res!1078113 (validKeyInArray!0 k!772))))

(declare-fun res!1078114 () Bool)

(assert (=> start!136656 (=> (not res!1078114) (not e!880136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136656 (= res!1078114 (validMask!0 mask!918))))

(assert (=> start!136656 e!880136))

(assert (=> start!136656 true))

(declare-fun array_inv!39577 (array!105649) Bool)

(assert (=> start!136656 (array_inv!39577 _keys!614)))

(assert (= (and start!136656 res!1078114) b!1577927))

(assert (= (and b!1577927 res!1078112) b!1577928))

(assert (= (and b!1577928 res!1078113) b!1577929))

(assert (= (and b!1577929 res!1078115) b!1577930))

(declare-fun m!1450067 () Bool)

(assert (=> b!1577929 m!1450067))

(declare-fun m!1450069 () Bool)

(assert (=> start!136656 m!1450069))

(declare-fun m!1450071 () Bool)

(assert (=> start!136656 m!1450071))

(declare-fun m!1450073 () Bool)

(assert (=> b!1577927 m!1450073))

(declare-fun m!1450075 () Bool)

(assert (=> b!1577928 m!1450075))

(declare-fun m!1450077 () Bool)

(assert (=> b!1577930 m!1450077))

(push 1)

(assert (not b!1577930))

(assert (not start!136656))

(assert (not b!1577928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

