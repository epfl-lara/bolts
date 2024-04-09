; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136660 () Bool)

(assert start!136660)

(declare-fun res!1078139 () Bool)

(declare-fun e!880148 () Bool)

(assert (=> start!136660 (=> (not res!1078139) (not e!880148))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136660 (= res!1078139 (validMask!0 mask!918))))

(assert (=> start!136660 e!880148))

(assert (=> start!136660 true))

(declare-datatypes ((array!105653 0))(
  ( (array!105654 (arr!50934 (Array (_ BitVec 32) (_ BitVec 64))) (size!51485 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105653)

(declare-fun array_inv!39579 (array!105653) Bool)

(assert (=> start!136660 (array_inv!39579 _keys!614)))

(declare-fun b!1577952 () Bool)

(declare-fun res!1078137 () Bool)

(assert (=> b!1577952 (=> (not res!1078137) (not e!880148))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577952 (= res!1078137 (validKeyInArray!0 k!772))))

(declare-fun b!1577951 () Bool)

(declare-fun res!1078136 () Bool)

(assert (=> b!1577951 (=> (not res!1078136) (not e!880148))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1577951 (= res!1078136 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51485 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50934 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577954 () Bool)

(assert (=> b!1577954 (= e!880148 false)))

(declare-fun lt!676111 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577954 (= lt!676111 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577953 () Bool)

(declare-fun res!1078138 () Bool)

(assert (=> b!1577953 (=> (not res!1078138) (not e!880148))))

(assert (=> b!1577953 (= res!1078138 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50934 _keys!614) ee!18) k!772)) (not (= (select (arr!50934 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136660 res!1078139) b!1577951))

(assert (= (and b!1577951 res!1078136) b!1577952))

(assert (= (and b!1577952 res!1078137) b!1577953))

(assert (= (and b!1577953 res!1078138) b!1577954))

(declare-fun m!1450091 () Bool)

(assert (=> b!1577952 m!1450091))

(declare-fun m!1450093 () Bool)

(assert (=> b!1577954 m!1450093))

(declare-fun m!1450095 () Bool)

(assert (=> b!1577953 m!1450095))

(declare-fun m!1450097 () Bool)

(assert (=> b!1577951 m!1450097))

(declare-fun m!1450099 () Bool)

(assert (=> start!136660 m!1450099))

(declare-fun m!1450101 () Bool)

(assert (=> start!136660 m!1450101))

(push 1)

(assert (not start!136660))

(assert (not b!1577952))

(assert (not b!1577954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

