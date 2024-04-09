; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136666 () Bool)

(assert start!136666)

(declare-fun res!1078173 () Bool)

(declare-fun e!880167 () Bool)

(assert (=> start!136666 (=> (not res!1078173) (not e!880167))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136666 (= res!1078173 (validMask!0 mask!918))))

(assert (=> start!136666 e!880167))

(assert (=> start!136666 true))

(declare-datatypes ((array!105659 0))(
  ( (array!105660 (arr!50937 (Array (_ BitVec 32) (_ BitVec 64))) (size!51488 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105659)

(declare-fun array_inv!39582 (array!105659) Bool)

(assert (=> start!136666 (array_inv!39582 _keys!614)))

(declare-fun b!1577987 () Bool)

(declare-fun res!1078174 () Bool)

(assert (=> b!1577987 (=> (not res!1078174) (not e!880167))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun x!466 () (_ BitVec 32))

(assert (=> b!1577987 (= res!1078174 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51488 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50937 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577989 () Bool)

(declare-fun res!1078175 () Bool)

(assert (=> b!1577989 (=> (not res!1078175) (not e!880167))))

(declare-fun k!772 () (_ BitVec 64))

(assert (=> b!1577989 (= res!1078175 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50937 _keys!614) ee!18) k!772)) (not (= (select (arr!50937 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577990 () Bool)

(assert (=> b!1577990 (= e!880167 false)))

(declare-fun lt!676120 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577990 (= lt!676120 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577988 () Bool)

(declare-fun res!1078172 () Bool)

(assert (=> b!1577988 (=> (not res!1078172) (not e!880167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577988 (= res!1078172 (validKeyInArray!0 k!772))))

(assert (= (and start!136666 res!1078173) b!1577987))

(assert (= (and b!1577987 res!1078174) b!1577988))

(assert (= (and b!1577988 res!1078172) b!1577989))

(assert (= (and b!1577989 res!1078175) b!1577990))

(declare-fun m!1450127 () Bool)

(assert (=> b!1577989 m!1450127))

(declare-fun m!1450129 () Bool)

(assert (=> start!136666 m!1450129))

(declare-fun m!1450131 () Bool)

(assert (=> start!136666 m!1450131))

(declare-fun m!1450133 () Bool)

(assert (=> b!1577988 m!1450133))

(declare-fun m!1450135 () Bool)

(assert (=> b!1577987 m!1450135))

(declare-fun m!1450137 () Bool)

(assert (=> b!1577990 m!1450137))

(push 1)

(assert (not b!1577990))

(assert (not start!136666))

(assert (not b!1577988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

