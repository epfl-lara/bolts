; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136680 () Bool)

(assert start!136680)

(declare-fun res!1078227 () Bool)

(declare-fun e!880209 () Bool)

(assert (=> start!136680 (=> (not res!1078227) (not e!880209))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136680 (= res!1078227 (validMask!0 mask!918))))

(assert (=> start!136680 e!880209))

(assert (=> start!136680 true))

(declare-datatypes ((array!105673 0))(
  ( (array!105674 (arr!50944 (Array (_ BitVec 32) (_ BitVec 64))) (size!51495 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105673)

(declare-fun array_inv!39589 (array!105673) Bool)

(assert (=> start!136680 (array_inv!39589 _keys!614)))

(declare-fun b!1578042 () Bool)

(declare-fun res!1078229 () Bool)

(assert (=> b!1578042 (=> (not res!1078229) (not e!880209))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun x!466 () (_ BitVec 32))

(assert (=> b!1578042 (= res!1078229 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51495 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50944 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578043 () Bool)

(declare-fun res!1078228 () Bool)

(assert (=> b!1578043 (=> (not res!1078228) (not e!880209))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578043 (= res!1078228 (validKeyInArray!0 k!772))))

(declare-fun b!1578044 () Bool)

(assert (=> b!1578044 (= e!880209 (bvslt (bvsub #b01111111111111111111111111111111 x!466) #b00000000000000000000000000000000))))

(assert (= (and start!136680 res!1078227) b!1578042))

(assert (= (and b!1578042 res!1078229) b!1578043))

(assert (= (and b!1578043 res!1078228) b!1578044))

(declare-fun m!1450187 () Bool)

(assert (=> start!136680 m!1450187))

(declare-fun m!1450189 () Bool)

(assert (=> start!136680 m!1450189))

(declare-fun m!1450191 () Bool)

(assert (=> b!1578042 m!1450191))

(declare-fun m!1450193 () Bool)

(assert (=> b!1578043 m!1450193))

(push 1)

(assert (not b!1578043))

(assert (not start!136680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

