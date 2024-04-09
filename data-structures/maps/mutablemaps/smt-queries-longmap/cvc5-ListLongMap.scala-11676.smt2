; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136650 () Bool)

(assert start!136650)

(declare-fun x!466 () (_ BitVec 32))

(declare-fun lt!676096 () (_ BitVec 32))

(declare-fun b!1577894 () Bool)

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun e!880119 () Bool)

(assert (=> b!1577894 (= e!880119 (and (bvsge lt!676096 #b00000000000000000000000000000000) (bvslt lt!676096 (bvadd #b00000000000000000000000000000001 mask!918)) (bvslt (bvadd #b00000000000000000000000000000001 x!466) #b00000000000000000000000000000000)))))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577894 (= lt!676096 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun res!1078076 () Bool)

(assert (=> start!136650 (=> (not res!1078076) (not e!880119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136650 (= res!1078076 (validMask!0 mask!918))))

(assert (=> start!136650 e!880119))

(assert (=> start!136650 true))

(declare-datatypes ((array!105643 0))(
  ( (array!105644 (arr!50929 (Array (_ BitVec 32) (_ BitVec 64))) (size!51480 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105643)

(declare-fun array_inv!39574 (array!105643) Bool)

(assert (=> start!136650 (array_inv!39574 _keys!614)))

(declare-fun b!1577893 () Bool)

(declare-fun res!1078077 () Bool)

(assert (=> b!1577893 (=> (not res!1078077) (not e!880119))))

(declare-fun k!772 () (_ BitVec 64))

(assert (=> b!1577893 (= res!1078077 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50929 _keys!614) ee!18) k!772)) (not (= (select (arr!50929 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577891 () Bool)

(declare-fun res!1078079 () Bool)

(assert (=> b!1577891 (=> (not res!1078079) (not e!880119))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577891 (= res!1078079 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51480 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50929 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577892 () Bool)

(declare-fun res!1078078 () Bool)

(assert (=> b!1577892 (=> (not res!1078078) (not e!880119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577892 (= res!1078078 (validKeyInArray!0 k!772))))

(assert (= (and start!136650 res!1078076) b!1577891))

(assert (= (and b!1577891 res!1078079) b!1577892))

(assert (= (and b!1577892 res!1078078) b!1577893))

(assert (= (and b!1577893 res!1078077) b!1577894))

(declare-fun m!1450031 () Bool)

(assert (=> start!136650 m!1450031))

(declare-fun m!1450033 () Bool)

(assert (=> start!136650 m!1450033))

(declare-fun m!1450035 () Bool)

(assert (=> b!1577891 m!1450035))

(declare-fun m!1450037 () Bool)

(assert (=> b!1577894 m!1450037))

(declare-fun m!1450039 () Bool)

(assert (=> b!1577893 m!1450039))

(declare-fun m!1450041 () Bool)

(assert (=> b!1577892 m!1450041))

(push 1)

(assert (not b!1577892))

(assert (not b!1577894))

(assert (not start!136650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

