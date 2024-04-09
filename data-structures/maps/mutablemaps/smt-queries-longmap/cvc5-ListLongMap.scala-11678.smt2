; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136662 () Bool)

(assert start!136662)

(declare-fun b!1577964 () Bool)

(declare-fun res!1078150 () Bool)

(declare-fun e!880154 () Bool)

(assert (=> b!1577964 (=> (not res!1078150) (not e!880154))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577964 (= res!1078150 (validKeyInArray!0 k!772))))

(declare-fun b!1577966 () Bool)

(assert (=> b!1577966 (= e!880154 false)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun lt!676114 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577966 (= lt!676114 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun res!1078151 () Bool)

(assert (=> start!136662 (=> (not res!1078151) (not e!880154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136662 (= res!1078151 (validMask!0 mask!918))))

(assert (=> start!136662 e!880154))

(assert (=> start!136662 true))

(declare-datatypes ((array!105655 0))(
  ( (array!105656 (arr!50935 (Array (_ BitVec 32) (_ BitVec 64))) (size!51486 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105655)

(declare-fun array_inv!39580 (array!105655) Bool)

(assert (=> start!136662 (array_inv!39580 _keys!614)))

(declare-fun b!1577965 () Bool)

(declare-fun res!1078149 () Bool)

(assert (=> b!1577965 (=> (not res!1078149) (not e!880154))))

(assert (=> b!1577965 (= res!1078149 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50935 _keys!614) ee!18) k!772)) (not (= (select (arr!50935 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577963 () Bool)

(declare-fun res!1078148 () Bool)

(assert (=> b!1577963 (=> (not res!1078148) (not e!880154))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577963 (= res!1078148 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51486 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50935 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136662 res!1078151) b!1577963))

(assert (= (and b!1577963 res!1078148) b!1577964))

(assert (= (and b!1577964 res!1078150) b!1577965))

(assert (= (and b!1577965 res!1078149) b!1577966))

(declare-fun m!1450103 () Bool)

(assert (=> b!1577964 m!1450103))

(declare-fun m!1450105 () Bool)

(assert (=> b!1577966 m!1450105))

(declare-fun m!1450107 () Bool)

(assert (=> start!136662 m!1450107))

(declare-fun m!1450109 () Bool)

(assert (=> start!136662 m!1450109))

(declare-fun m!1450111 () Bool)

(assert (=> b!1577965 m!1450111))

(declare-fun m!1450113 () Bool)

(assert (=> b!1577963 m!1450113))

(push 1)

(assert (not b!1577966))

(assert (not start!136662))

(assert (not b!1577964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

