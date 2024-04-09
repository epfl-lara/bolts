; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136690 () Bool)

(assert start!136690)

(declare-fun res!1078272 () Bool)

(declare-fun e!880238 () Bool)

(assert (=> start!136690 (=> (not res!1078272) (not e!880238))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136690 (= res!1078272 (validMask!0 mask!918))))

(assert (=> start!136690 e!880238))

(assert (=> start!136690 true))

(declare-datatypes ((array!105683 0))(
  ( (array!105684 (arr!50949 (Array (_ BitVec 32) (_ BitVec 64))) (size!51500 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105683)

(declare-fun array_inv!39594 (array!105683) Bool)

(assert (=> start!136690 (array_inv!39594 _keys!614)))

(declare-fun b!1578087 () Bool)

(declare-fun res!1078273 () Bool)

(assert (=> b!1578087 (=> (not res!1078273) (not e!880238))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578087 (= res!1078273 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51500 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50949 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578088 () Bool)

(declare-fun res!1078274 () Bool)

(assert (=> b!1578088 (=> (not res!1078274) (not e!880238))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578088 (= res!1078274 (validKeyInArray!0 k!772))))

(declare-fun b!1578089 () Bool)

(assert (=> b!1578089 (= e!880238 (bvsge ee!18 (size!51500 _keys!614)))))

(assert (= (and start!136690 res!1078272) b!1578087))

(assert (= (and b!1578087 res!1078273) b!1578088))

(assert (= (and b!1578088 res!1078274) b!1578089))

(declare-fun m!1450227 () Bool)

(assert (=> start!136690 m!1450227))

(declare-fun m!1450229 () Bool)

(assert (=> start!136690 m!1450229))

(declare-fun m!1450231 () Bool)

(assert (=> b!1578087 m!1450231))

(declare-fun m!1450233 () Bool)

(assert (=> b!1578088 m!1450233))

(push 1)

(assert (not b!1578088))

(assert (not start!136690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

