; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136678 () Bool)

(assert start!136678)

(declare-fun res!1078220 () Bool)

(declare-fun e!880202 () Bool)

(assert (=> start!136678 (=> (not res!1078220) (not e!880202))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136678 (= res!1078220 (validMask!0 mask!918))))

(assert (=> start!136678 e!880202))

(assert (=> start!136678 true))

(declare-datatypes ((array!105671 0))(
  ( (array!105672 (arr!50943 (Array (_ BitVec 32) (_ BitVec 64))) (size!51494 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105671)

(declare-fun array_inv!39588 (array!105671) Bool)

(assert (=> start!136678 (array_inv!39588 _keys!614)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun b!1578035 () Bool)

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578035 (= e!880202 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51494 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge vacantSpotIndex!10 (size!51494 _keys!614))))))

(assert (= (and start!136678 res!1078220) b!1578035))

(declare-fun m!1450183 () Bool)

(assert (=> start!136678 m!1450183))

(declare-fun m!1450185 () Bool)

(assert (=> start!136678 m!1450185))

(push 1)

(assert (not start!136678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

