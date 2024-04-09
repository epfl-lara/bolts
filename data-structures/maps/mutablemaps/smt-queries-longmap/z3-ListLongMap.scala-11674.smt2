; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136616 () Bool)

(assert start!136616)

(declare-fun b!1577831 () Bool)

(declare-fun res!1078019 () Bool)

(declare-fun e!880089 () Bool)

(assert (=> b!1577831 (=> (not res!1078019) (not e!880089))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-datatypes ((array!105630 0))(
  ( (array!105631 (arr!50924 (Array (_ BitVec 32) (_ BitVec 64))) (size!51475 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105630)

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1577831 (= res!1078019 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51475 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50924 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577834 () Bool)

(assert (=> b!1577834 (= e!880089 false)))

(declare-fun lt!676072 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577834 (= lt!676072 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577832 () Bool)

(declare-fun res!1078016 () Bool)

(assert (=> b!1577832 (=> (not res!1078016) (not e!880089))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577832 (= res!1078016 (validKeyInArray!0 k0!772))))

(declare-fun res!1078017 () Bool)

(assert (=> start!136616 (=> (not res!1078017) (not e!880089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136616 (= res!1078017 (validMask!0 mask!918))))

(assert (=> start!136616 e!880089))

(assert (=> start!136616 true))

(declare-fun array_inv!39569 (array!105630) Bool)

(assert (=> start!136616 (array_inv!39569 _keys!614)))

(declare-fun b!1577833 () Bool)

(declare-fun res!1078018 () Bool)

(assert (=> b!1577833 (=> (not res!1078018) (not e!880089))))

(assert (=> b!1577833 (= res!1078018 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50924 _keys!614) ee!18) k0!772)) (not (= (select (arr!50924 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136616 res!1078017) b!1577831))

(assert (= (and b!1577831 res!1078019) b!1577832))

(assert (= (and b!1577832 res!1078016) b!1577833))

(assert (= (and b!1577833 res!1078018) b!1577834))

(declare-fun m!1449965 () Bool)

(assert (=> b!1577833 m!1449965))

(declare-fun m!1449967 () Bool)

(assert (=> b!1577832 m!1449967))

(declare-fun m!1449969 () Bool)

(assert (=> b!1577831 m!1449969))

(declare-fun m!1449971 () Bool)

(assert (=> b!1577834 m!1449971))

(declare-fun m!1449973 () Bool)

(assert (=> start!136616 m!1449973))

(declare-fun m!1449975 () Bool)

(assert (=> start!136616 m!1449975))

(check-sat (not b!1577834) (not start!136616) (not b!1577832))
