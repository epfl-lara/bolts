; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136700 () Bool)

(assert start!136700)

(declare-fun res!1078318 () Bool)

(declare-fun e!880268 () Bool)

(assert (=> start!136700 (=> (not res!1078318) (not e!880268))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136700 (= res!1078318 (validMask!0 mask!918))))

(assert (=> start!136700 e!880268))

(assert (=> start!136700 true))

(declare-datatypes ((array!105693 0))(
  ( (array!105694 (arr!50954 (Array (_ BitVec 32) (_ BitVec 64))) (size!51505 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105693)

(declare-fun array_inv!39599 (array!105693) Bool)

(assert (=> start!136700 (array_inv!39599 _keys!614)))

(declare-fun b!1578132 () Bool)

(declare-fun res!1078319 () Bool)

(assert (=> b!1578132 (=> (not res!1078319) (not e!880268))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578132 (= res!1078319 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51505 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50954 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578133 () Bool)

(declare-fun res!1078317 () Bool)

(assert (=> b!1578133 (=> (not res!1078317) (not e!880268))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578133 (= res!1078317 (validKeyInArray!0 k0!772))))

(declare-fun b!1578134 () Bool)

(assert (=> b!1578134 (= e!880268 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50954 _keys!614) ee!18) k0!772)) (= (select (arr!50954 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!10 (size!51505 _keys!614))))))

(assert (= (and start!136700 res!1078318) b!1578132))

(assert (= (and b!1578132 res!1078319) b!1578133))

(assert (= (and b!1578133 res!1078317) b!1578134))

(declare-fun m!1450275 () Bool)

(assert (=> start!136700 m!1450275))

(declare-fun m!1450277 () Bool)

(assert (=> start!136700 m!1450277))

(declare-fun m!1450279 () Bool)

(assert (=> b!1578132 m!1450279))

(declare-fun m!1450281 () Bool)

(assert (=> b!1578133 m!1450281))

(declare-fun m!1450283 () Bool)

(assert (=> b!1578134 m!1450283))

(check-sat (not b!1578133) (not start!136700))
(check-sat)
