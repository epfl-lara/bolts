; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136676 () Bool)

(assert start!136676)

(declare-fun res!1078217 () Bool)

(declare-fun e!880196 () Bool)

(assert (=> start!136676 (=> (not res!1078217) (not e!880196))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136676 (= res!1078217 (validMask!0 mask!918))))

(assert (=> start!136676 e!880196))

(assert (=> start!136676 true))

(declare-datatypes ((array!105669 0))(
  ( (array!105670 (arr!50942 (Array (_ BitVec 32) (_ BitVec 64))) (size!51493 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105669)

(declare-fun array_inv!39587 (array!105669) Bool)

(assert (=> start!136676 (array_inv!39587 _keys!614)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun b!1578032 () Bool)

(assert (=> b!1578032 (= e!880196 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51493 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge vacantSpotIndex!10 (size!51493 _keys!614))))))

(assert (= (and start!136676 res!1078217) b!1578032))

(declare-fun m!1450179 () Bool)

(assert (=> start!136676 m!1450179))

(declare-fun m!1450181 () Bool)

(assert (=> start!136676 m!1450181))

(check-sat (not start!136676))
(check-sat)
