; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136652 () Bool)

(assert start!136652)

(declare-fun res!1078091 () Bool)

(declare-fun e!880125 () Bool)

(assert (=> start!136652 (=> (not res!1078091) (not e!880125))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136652 (= res!1078091 (validMask!0 mask!918))))

(assert (=> start!136652 e!880125))

(assert (=> start!136652 true))

(declare-datatypes ((array!105645 0))(
  ( (array!105646 (arr!50930 (Array (_ BitVec 32) (_ BitVec 64))) (size!51481 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105645)

(declare-fun array_inv!39575 (array!105645) Bool)

(assert (=> start!136652 (array_inv!39575 _keys!614)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun lt!676099 () (_ BitVec 32))

(declare-fun b!1577906 () Bool)

(assert (=> b!1577906 (= e!880125 (and (bvsge lt!676099 #b00000000000000000000000000000000) (bvslt lt!676099 (bvadd #b00000000000000000000000000000001 mask!918)) (bvslt (bvadd #b00000000000000000000000000000001 x!466) #b00000000000000000000000000000000)))))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577906 (= lt!676099 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577904 () Bool)

(declare-fun res!1078088 () Bool)

(assert (=> b!1577904 (=> (not res!1078088) (not e!880125))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577904 (= res!1078088 (validKeyInArray!0 k0!772))))

(declare-fun b!1577903 () Bool)

(declare-fun res!1078090 () Bool)

(assert (=> b!1577903 (=> (not res!1078090) (not e!880125))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577903 (= res!1078090 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51481 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50930 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577905 () Bool)

(declare-fun res!1078089 () Bool)

(assert (=> b!1577905 (=> (not res!1078089) (not e!880125))))

(assert (=> b!1577905 (= res!1078089 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50930 _keys!614) ee!18) k0!772)) (not (= (select (arr!50930 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136652 res!1078091) b!1577903))

(assert (= (and b!1577903 res!1078090) b!1577904))

(assert (= (and b!1577904 res!1078088) b!1577905))

(assert (= (and b!1577905 res!1078089) b!1577906))

(declare-fun m!1450043 () Bool)

(assert (=> b!1577903 m!1450043))

(declare-fun m!1450045 () Bool)

(assert (=> b!1577906 m!1450045))

(declare-fun m!1450047 () Bool)

(assert (=> start!136652 m!1450047))

(declare-fun m!1450049 () Bool)

(assert (=> start!136652 m!1450049))

(declare-fun m!1450051 () Bool)

(assert (=> b!1577905 m!1450051))

(declare-fun m!1450053 () Bool)

(assert (=> b!1577904 m!1450053))

(check-sat (not start!136652) (not b!1577904) (not b!1577906))
(check-sat)
