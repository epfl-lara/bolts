; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136658 () Bool)

(assert start!136658)

(declare-fun b!1577941 () Bool)

(declare-fun res!1078124 () Bool)

(declare-fun e!880142 () Bool)

(assert (=> b!1577941 (=> (not res!1078124) (not e!880142))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105651 0))(
  ( (array!105652 (arr!50933 (Array (_ BitVec 32) (_ BitVec 64))) (size!51484 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105651)

(assert (=> b!1577941 (= res!1078124 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50933 _keys!614) ee!18) k0!772)) (not (= (select (arr!50933 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577942 () Bool)

(assert (=> b!1577942 (= e!880142 false)))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun lt!676108 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577942 (= lt!676108 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577939 () Bool)

(declare-fun res!1078125 () Bool)

(assert (=> b!1577939 (=> (not res!1078125) (not e!880142))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1577939 (= res!1078125 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51484 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50933 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577940 () Bool)

(declare-fun res!1078126 () Bool)

(assert (=> b!1577940 (=> (not res!1078126) (not e!880142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577940 (= res!1078126 (validKeyInArray!0 k0!772))))

(declare-fun res!1078127 () Bool)

(assert (=> start!136658 (=> (not res!1078127) (not e!880142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136658 (= res!1078127 (validMask!0 mask!918))))

(assert (=> start!136658 e!880142))

(assert (=> start!136658 true))

(declare-fun array_inv!39578 (array!105651) Bool)

(assert (=> start!136658 (array_inv!39578 _keys!614)))

(assert (= (and start!136658 res!1078127) b!1577939))

(assert (= (and b!1577939 res!1078125) b!1577940))

(assert (= (and b!1577940 res!1078126) b!1577941))

(assert (= (and b!1577941 res!1078124) b!1577942))

(declare-fun m!1450079 () Bool)

(assert (=> b!1577942 m!1450079))

(declare-fun m!1450081 () Bool)

(assert (=> b!1577939 m!1450081))

(declare-fun m!1450083 () Bool)

(assert (=> b!1577941 m!1450083))

(declare-fun m!1450085 () Bool)

(assert (=> start!136658 m!1450085))

(declare-fun m!1450087 () Bool)

(assert (=> start!136658 m!1450087))

(declare-fun m!1450089 () Bool)

(assert (=> b!1577940 m!1450089))

(check-sat (not b!1577942) (not start!136658) (not b!1577940))
