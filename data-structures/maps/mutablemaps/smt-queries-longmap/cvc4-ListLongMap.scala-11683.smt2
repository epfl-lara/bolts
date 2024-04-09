; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136696 () Bool)

(assert start!136696)

(declare-fun res!1078301 () Bool)

(declare-fun e!880257 () Bool)

(assert (=> start!136696 (=> (not res!1078301) (not e!880257))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136696 (= res!1078301 (validMask!0 mask!918))))

(assert (=> start!136696 e!880257))

(assert (=> start!136696 true))

(declare-datatypes ((array!105689 0))(
  ( (array!105690 (arr!50952 (Array (_ BitVec 32) (_ BitVec 64))) (size!51503 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105689)

(declare-fun array_inv!39597 (array!105689) Bool)

(assert (=> start!136696 (array_inv!39597 _keys!614)))

(declare-fun b!1578114 () Bool)

(declare-fun res!1078299 () Bool)

(assert (=> b!1578114 (=> (not res!1078299) (not e!880257))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578114 (= res!1078299 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51503 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50952 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578115 () Bool)

(declare-fun res!1078300 () Bool)

(assert (=> b!1578115 (=> (not res!1078300) (not e!880257))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578115 (= res!1078300 (validKeyInArray!0 k!772))))

(declare-fun b!1578116 () Bool)

(assert (=> b!1578116 (= e!880257 (and (bvslt x!466 #b01111111111111111111111111111110) (= (select (arr!50952 _keys!614) ee!18) k!772) (bvsge ee!18 (size!51503 _keys!614))))))

(assert (= (and start!136696 res!1078301) b!1578114))

(assert (= (and b!1578114 res!1078299) b!1578115))

(assert (= (and b!1578115 res!1078300) b!1578116))

(declare-fun m!1450255 () Bool)

(assert (=> start!136696 m!1450255))

(declare-fun m!1450257 () Bool)

(assert (=> start!136696 m!1450257))

(declare-fun m!1450259 () Bool)

(assert (=> b!1578114 m!1450259))

(declare-fun m!1450261 () Bool)

(assert (=> b!1578115 m!1450261))

(declare-fun m!1450263 () Bool)

(assert (=> b!1578116 m!1450263))

(push 1)

(assert (not b!1578115))

(assert (not start!136696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

