; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136686 () Bool)

(assert start!136686)

(declare-fun res!1078256 () Bool)

(declare-fun e!880226 () Bool)

(assert (=> start!136686 (=> (not res!1078256) (not e!880226))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136686 (= res!1078256 (validMask!0 mask!918))))

(assert (=> start!136686 e!880226))

(assert (=> start!136686 true))

(declare-datatypes ((array!105679 0))(
  ( (array!105680 (arr!50947 (Array (_ BitVec 32) (_ BitVec 64))) (size!51498 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105679)

(declare-fun array_inv!39592 (array!105679) Bool)

(assert (=> start!136686 (array_inv!39592 _keys!614)))

(declare-fun b!1578069 () Bool)

(declare-fun res!1078254 () Bool)

(assert (=> b!1578069 (=> (not res!1078254) (not e!880226))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578069 (= res!1078254 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51498 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50947 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578070 () Bool)

(declare-fun res!1078255 () Bool)

(assert (=> b!1578070 (=> (not res!1078255) (not e!880226))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578070 (= res!1078255 (validKeyInArray!0 k!772))))

(declare-fun b!1578071 () Bool)

(assert (=> b!1578071 (= e!880226 (bvsge ee!18 (size!51498 _keys!614)))))

(assert (= (and start!136686 res!1078256) b!1578069))

(assert (= (and b!1578069 res!1078254) b!1578070))

(assert (= (and b!1578070 res!1078255) b!1578071))

(declare-fun m!1450211 () Bool)

(assert (=> start!136686 m!1450211))

(declare-fun m!1450213 () Bool)

(assert (=> start!136686 m!1450213))

(declare-fun m!1450215 () Bool)

(assert (=> b!1578069 m!1450215))

(declare-fun m!1450217 () Bool)

(assert (=> b!1578070 m!1450217))

(push 1)

(assert (not start!136686))

(assert (not b!1578070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

