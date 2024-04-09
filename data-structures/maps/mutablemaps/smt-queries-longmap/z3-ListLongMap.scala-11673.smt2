; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136610 () Bool)

(assert start!136610)

(declare-fun b!1577796 () Bool)

(declare-fun res!1077982 () Bool)

(declare-fun e!880070 () Bool)

(assert (=> b!1577796 (=> (not res!1077982) (not e!880070))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577796 (= res!1077982 (validKeyInArray!0 k0!772))))

(declare-fun b!1577797 () Bool)

(declare-fun res!1077981 () Bool)

(assert (=> b!1577797 (=> (not res!1077981) (not e!880070))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105624 0))(
  ( (array!105625 (arr!50921 (Array (_ BitVec 32) (_ BitVec 64))) (size!51472 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105624)

(assert (=> b!1577797 (= res!1077981 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50921 _keys!614) ee!18) k0!772)) (not (= (select (arr!50921 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577798 () Bool)

(assert (=> b!1577798 (= e!880070 false)))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun lt!676063 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577798 (= lt!676063 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577795 () Bool)

(declare-fun res!1077980 () Bool)

(assert (=> b!1577795 (=> (not res!1077980) (not e!880070))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577795 (= res!1077980 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51472 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50921 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1077983 () Bool)

(assert (=> start!136610 (=> (not res!1077983) (not e!880070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136610 (= res!1077983 (validMask!0 mask!918))))

(assert (=> start!136610 e!880070))

(assert (=> start!136610 true))

(declare-fun array_inv!39566 (array!105624) Bool)

(assert (=> start!136610 (array_inv!39566 _keys!614)))

(assert (= (and start!136610 res!1077983) b!1577795))

(assert (= (and b!1577795 res!1077980) b!1577796))

(assert (= (and b!1577796 res!1077982) b!1577797))

(assert (= (and b!1577797 res!1077981) b!1577798))

(declare-fun m!1449929 () Bool)

(assert (=> b!1577795 m!1449929))

(declare-fun m!1449931 () Bool)

(assert (=> b!1577797 m!1449931))

(declare-fun m!1449933 () Bool)

(assert (=> start!136610 m!1449933))

(declare-fun m!1449935 () Bool)

(assert (=> start!136610 m!1449935))

(declare-fun m!1449937 () Bool)

(assert (=> b!1577798 m!1449937))

(declare-fun m!1449939 () Bool)

(assert (=> b!1577796 m!1449939))

(check-sat (not b!1577796) (not start!136610) (not b!1577798))
