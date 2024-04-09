; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136602 () Bool)

(assert start!136602)

(declare-fun res!1077933 () Bool)

(declare-fun e!880047 () Bool)

(assert (=> start!136602 (=> (not res!1077933) (not e!880047))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136602 (= res!1077933 (validMask!0 mask!918))))

(assert (=> start!136602 e!880047))

(assert (=> start!136602 true))

(declare-datatypes ((array!105616 0))(
  ( (array!105617 (arr!50917 (Array (_ BitVec 32) (_ BitVec 64))) (size!51468 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105616)

(declare-fun array_inv!39562 (array!105616) Bool)

(assert (=> start!136602 (array_inv!39562 _keys!614)))

(declare-fun b!1577748 () Bool)

(declare-fun res!1077932 () Bool)

(assert (=> b!1577748 (=> (not res!1077932) (not e!880047))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577748 (= res!1077932 (validKeyInArray!0 k!772))))

(declare-fun b!1577749 () Bool)

(declare-fun res!1077935 () Bool)

(assert (=> b!1577749 (=> (not res!1077935) (not e!880047))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1577749 (= res!1077935 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50917 _keys!614) ee!18) k!772)) (not (= (select (arr!50917 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577747 () Bool)

(declare-fun res!1077934 () Bool)

(assert (=> b!1577747 (=> (not res!1077934) (not e!880047))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577747 (= res!1077934 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51468 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50917 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577750 () Bool)

(assert (=> b!1577750 (= e!880047 false)))

(declare-fun lt!676051 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577750 (= lt!676051 (nextIndex!0 ee!18 x!466 mask!918))))

(assert (= (and start!136602 res!1077933) b!1577747))

(assert (= (and b!1577747 res!1077934) b!1577748))

(assert (= (and b!1577748 res!1077932) b!1577749))

(assert (= (and b!1577749 res!1077935) b!1577750))

(declare-fun m!1449881 () Bool)

(assert (=> b!1577750 m!1449881))

(declare-fun m!1449883 () Bool)

(assert (=> b!1577747 m!1449883))

(declare-fun m!1449885 () Bool)

(assert (=> b!1577749 m!1449885))

(declare-fun m!1449887 () Bool)

(assert (=> start!136602 m!1449887))

(declare-fun m!1449889 () Bool)

(assert (=> start!136602 m!1449889))

(declare-fun m!1449891 () Bool)

(assert (=> b!1577748 m!1449891))

(push 1)

(assert (not start!136602))

(assert (not b!1577750))

(assert (not b!1577748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

