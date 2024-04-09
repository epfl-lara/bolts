; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136606 () Bool)

(assert start!136606)

(declare-fun b!1577772 () Bool)

(declare-fun res!1077956 () Bool)

(declare-fun e!880058 () Bool)

(assert (=> b!1577772 (=> (not res!1077956) (not e!880058))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577772 (= res!1077956 (validKeyInArray!0 k!772))))

(declare-fun res!1077959 () Bool)

(assert (=> start!136606 (=> (not res!1077959) (not e!880058))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136606 (= res!1077959 (validMask!0 mask!918))))

(assert (=> start!136606 e!880058))

(assert (=> start!136606 true))

(declare-datatypes ((array!105620 0))(
  ( (array!105621 (arr!50919 (Array (_ BitVec 32) (_ BitVec 64))) (size!51470 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105620)

(declare-fun array_inv!39564 (array!105620) Bool)

(assert (=> start!136606 (array_inv!39564 _keys!614)))

(declare-fun b!1577773 () Bool)

(declare-fun res!1077957 () Bool)

(assert (=> b!1577773 (=> (not res!1077957) (not e!880058))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1577773 (= res!1077957 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50919 _keys!614) ee!18) k!772)) (not (= (select (arr!50919 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577771 () Bool)

(declare-fun res!1077958 () Bool)

(assert (=> b!1577771 (=> (not res!1077958) (not e!880058))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577771 (= res!1077958 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51470 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50919 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577774 () Bool)

(assert (=> b!1577774 (= e!880058 false)))

(declare-fun lt!676057 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577774 (= lt!676057 (nextIndex!0 ee!18 x!466 mask!918))))

(assert (= (and start!136606 res!1077959) b!1577771))

(assert (= (and b!1577771 res!1077958) b!1577772))

(assert (= (and b!1577772 res!1077956) b!1577773))

(assert (= (and b!1577773 res!1077957) b!1577774))

(declare-fun m!1449905 () Bool)

(assert (=> b!1577772 m!1449905))

(declare-fun m!1449907 () Bool)

(assert (=> start!136606 m!1449907))

(declare-fun m!1449909 () Bool)

(assert (=> start!136606 m!1449909))

(declare-fun m!1449911 () Bool)

(assert (=> b!1577773 m!1449911))

(declare-fun m!1449913 () Bool)

(assert (=> b!1577774 m!1449913))

(declare-fun m!1449915 () Bool)

(assert (=> b!1577771 m!1449915))

(push 1)

(assert (not b!1577772))

(assert (not start!136606))

(assert (not b!1577774))

(check-sat)

