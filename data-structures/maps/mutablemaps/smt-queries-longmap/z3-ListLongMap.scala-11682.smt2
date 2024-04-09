; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136688 () Bool)

(assert start!136688)

(declare-fun res!1078263 () Bool)

(declare-fun e!880233 () Bool)

(assert (=> start!136688 (=> (not res!1078263) (not e!880233))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136688 (= res!1078263 (validMask!0 mask!918))))

(assert (=> start!136688 e!880233))

(assert (=> start!136688 true))

(declare-datatypes ((array!105681 0))(
  ( (array!105682 (arr!50948 (Array (_ BitVec 32) (_ BitVec 64))) (size!51499 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105681)

(declare-fun array_inv!39593 (array!105681) Bool)

(assert (=> start!136688 (array_inv!39593 _keys!614)))

(declare-fun b!1578078 () Bool)

(declare-fun res!1078264 () Bool)

(assert (=> b!1578078 (=> (not res!1078264) (not e!880233))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578078 (= res!1078264 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51499 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50948 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578079 () Bool)

(declare-fun res!1078265 () Bool)

(assert (=> b!1578079 (=> (not res!1078265) (not e!880233))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578079 (= res!1078265 (validKeyInArray!0 k0!772))))

(declare-fun b!1578080 () Bool)

(assert (=> b!1578080 (= e!880233 (bvsge ee!18 (size!51499 _keys!614)))))

(assert (= (and start!136688 res!1078263) b!1578078))

(assert (= (and b!1578078 res!1078264) b!1578079))

(assert (= (and b!1578079 res!1078265) b!1578080))

(declare-fun m!1450219 () Bool)

(assert (=> start!136688 m!1450219))

(declare-fun m!1450221 () Bool)

(assert (=> start!136688 m!1450221))

(declare-fun m!1450223 () Bool)

(assert (=> b!1578078 m!1450223))

(declare-fun m!1450225 () Bool)

(assert (=> b!1578079 m!1450225))

(check-sat (not b!1578079) (not start!136688))
(check-sat)
