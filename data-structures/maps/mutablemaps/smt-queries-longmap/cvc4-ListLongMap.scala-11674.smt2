; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136618 () Bool)

(assert start!136618)

(declare-fun b!1577844 () Bool)

(declare-fun res!1078030 () Bool)

(declare-fun e!880095 () Bool)

(assert (=> b!1577844 (=> (not res!1078030) (not e!880095))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577844 (= res!1078030 (validKeyInArray!0 k!772))))

(declare-fun b!1577843 () Bool)

(declare-fun res!1078028 () Bool)

(assert (=> b!1577843 (=> (not res!1078028) (not e!880095))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105632 0))(
  ( (array!105633 (arr!50925 (Array (_ BitVec 32) (_ BitVec 64))) (size!51476 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105632)

(assert (=> b!1577843 (= res!1078028 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51476 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50925 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078031 () Bool)

(assert (=> start!136618 (=> (not res!1078031) (not e!880095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136618 (= res!1078031 (validMask!0 mask!918))))

(assert (=> start!136618 e!880095))

(assert (=> start!136618 true))

(declare-fun array_inv!39570 (array!105632) Bool)

(assert (=> start!136618 (array_inv!39570 _keys!614)))

(declare-fun b!1577845 () Bool)

(declare-fun res!1078029 () Bool)

(assert (=> b!1577845 (=> (not res!1078029) (not e!880095))))

(assert (=> b!1577845 (= res!1078029 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50925 _keys!614) ee!18) k!772)) (not (= (select (arr!50925 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577846 () Bool)

(assert (=> b!1577846 (= e!880095 false)))

(declare-fun lt!676075 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577846 (= lt!676075 (nextIndex!0 ee!18 x!466 mask!918))))

(assert (= (and start!136618 res!1078031) b!1577843))

(assert (= (and b!1577843 res!1078028) b!1577844))

(assert (= (and b!1577844 res!1078030) b!1577845))

(assert (= (and b!1577845 res!1078029) b!1577846))

(declare-fun m!1449977 () Bool)

(assert (=> b!1577843 m!1449977))

(declare-fun m!1449979 () Bool)

(assert (=> start!136618 m!1449979))

(declare-fun m!1449981 () Bool)

(assert (=> start!136618 m!1449981))

(declare-fun m!1449983 () Bool)

(assert (=> b!1577845 m!1449983))

(declare-fun m!1449985 () Bool)

(assert (=> b!1577844 m!1449985))

(declare-fun m!1449987 () Bool)

(assert (=> b!1577846 m!1449987))

(push 1)

(assert (not b!1577846))

(assert (not start!136618))

(assert (not b!1577844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

