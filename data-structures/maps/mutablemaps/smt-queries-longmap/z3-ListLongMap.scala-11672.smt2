; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136604 () Bool)

(assert start!136604)

(declare-fun b!1577761 () Bool)

(declare-fun res!1077947 () Bool)

(declare-fun e!880053 () Bool)

(assert (=> b!1577761 (=> (not res!1077947) (not e!880053))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105618 0))(
  ( (array!105619 (arr!50918 (Array (_ BitVec 32) (_ BitVec 64))) (size!51469 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105618)

(assert (=> b!1577761 (= res!1077947 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50918 _keys!614) ee!18) k0!772)) (not (= (select (arr!50918 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577759 () Bool)

(declare-fun res!1077944 () Bool)

(assert (=> b!1577759 (=> (not res!1077944) (not e!880053))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577759 (= res!1077944 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51469 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50918 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577760 () Bool)

(declare-fun res!1077945 () Bool)

(assert (=> b!1577760 (=> (not res!1077945) (not e!880053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577760 (= res!1077945 (validKeyInArray!0 k0!772))))

(declare-fun b!1577762 () Bool)

(assert (=> b!1577762 (= e!880053 false)))

(declare-fun lt!676054 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577762 (= lt!676054 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun res!1077946 () Bool)

(assert (=> start!136604 (=> (not res!1077946) (not e!880053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136604 (= res!1077946 (validMask!0 mask!918))))

(assert (=> start!136604 e!880053))

(assert (=> start!136604 true))

(declare-fun array_inv!39563 (array!105618) Bool)

(assert (=> start!136604 (array_inv!39563 _keys!614)))

(assert (= (and start!136604 res!1077946) b!1577759))

(assert (= (and b!1577759 res!1077944) b!1577760))

(assert (= (and b!1577760 res!1077945) b!1577761))

(assert (= (and b!1577761 res!1077947) b!1577762))

(declare-fun m!1449893 () Bool)

(assert (=> b!1577762 m!1449893))

(declare-fun m!1449895 () Bool)

(assert (=> start!136604 m!1449895))

(declare-fun m!1449897 () Bool)

(assert (=> start!136604 m!1449897))

(declare-fun m!1449899 () Bool)

(assert (=> b!1577760 m!1449899))

(declare-fun m!1449901 () Bool)

(assert (=> b!1577759 m!1449901))

(declare-fun m!1449903 () Bool)

(assert (=> b!1577761 m!1449903))

(check-sat (not b!1577762) (not b!1577760) (not start!136604))
