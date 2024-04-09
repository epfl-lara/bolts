; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136674 () Bool)

(assert start!136674)

(declare-fun res!1078214 () Bool)

(declare-fun e!880190 () Bool)

(assert (=> start!136674 (=> (not res!1078214) (not e!880190))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136674 (= res!1078214 (validMask!0 mask!918))))

(assert (=> start!136674 e!880190))

(assert (=> start!136674 true))

(declare-datatypes ((array!105667 0))(
  ( (array!105668 (arr!50941 (Array (_ BitVec 32) (_ BitVec 64))) (size!51492 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105667)

(declare-fun array_inv!39586 (array!105667) Bool)

(assert (=> start!136674 (array_inv!39586 _keys!614)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun b!1578029 () Bool)

(assert (=> b!1578029 (= e!880190 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51492 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge vacantSpotIndex!10 (size!51492 _keys!614))))))

(assert (= (and start!136674 res!1078214) b!1578029))

(declare-fun m!1450175 () Bool)

(assert (=> start!136674 m!1450175))

(declare-fun m!1450177 () Bool)

(assert (=> start!136674 m!1450177))

(push 1)

(assert (not start!136674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

