; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136614 () Bool)

(assert start!136614)

(declare-fun b!1577821 () Bool)

(declare-fun res!1078004 () Bool)

(declare-fun e!880082 () Bool)

(assert (=> b!1577821 (=> (not res!1078004) (not e!880082))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105628 0))(
  ( (array!105629 (arr!50923 (Array (_ BitVec 32) (_ BitVec 64))) (size!51474 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105628)

(assert (=> b!1577821 (= res!1078004 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50923 _keys!614) ee!18) k!772)) (not (= (select (arr!50923 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577819 () Bool)

(declare-fun res!1078006 () Bool)

(assert (=> b!1577819 (=> (not res!1078006) (not e!880082))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577819 (= res!1078006 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51474 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50923 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078005 () Bool)

(assert (=> start!136614 (=> (not res!1078005) (not e!880082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136614 (= res!1078005 (validMask!0 mask!918))))

(assert (=> start!136614 e!880082))

(assert (=> start!136614 true))

(declare-fun array_inv!39568 (array!105628) Bool)

(assert (=> start!136614 (array_inv!39568 _keys!614)))

(declare-fun b!1577820 () Bool)

(declare-fun res!1078007 () Bool)

(assert (=> b!1577820 (=> (not res!1078007) (not e!880082))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577820 (= res!1078007 (validKeyInArray!0 k!772))))

(declare-fun b!1577822 () Bool)

(assert (=> b!1577822 (= e!880082 false)))

(declare-fun lt!676069 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577822 (= lt!676069 (nextIndex!0 ee!18 x!466 mask!918))))

(assert (= (and start!136614 res!1078005) b!1577819))

(assert (= (and b!1577819 res!1078006) b!1577820))

(assert (= (and b!1577820 res!1078007) b!1577821))

(assert (= (and b!1577821 res!1078004) b!1577822))

(declare-fun m!1449953 () Bool)

(assert (=> b!1577821 m!1449953))

(declare-fun m!1449955 () Bool)

(assert (=> b!1577819 m!1449955))

(declare-fun m!1449957 () Bool)

(assert (=> b!1577820 m!1449957))

(declare-fun m!1449959 () Bool)

(assert (=> start!136614 m!1449959))

(declare-fun m!1449961 () Bool)

(assert (=> start!136614 m!1449961))

(declare-fun m!1449963 () Bool)

(assert (=> b!1577822 m!1449963))

(push 1)

(assert (not b!1577820))

(assert (not start!136614))

(assert (not b!1577822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

