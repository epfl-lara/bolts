; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136668 () Bool)

(assert start!136668)

(declare-fun b!1578002 () Bool)

(declare-fun e!880173 () Bool)

(assert (=> b!1578002 (= e!880173 false)))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun lt!676123 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578002 (= lt!676123 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577999 () Bool)

(declare-fun res!1078187 () Bool)

(assert (=> b!1577999 (=> (not res!1078187) (not e!880173))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-datatypes ((array!105661 0))(
  ( (array!105662 (arr!50938 (Array (_ BitVec 32) (_ BitVec 64))) (size!51489 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105661)

(assert (=> b!1577999 (= res!1078187 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51489 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50938 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578001 () Bool)

(declare-fun res!1078184 () Bool)

(assert (=> b!1578001 (=> (not res!1078184) (not e!880173))))

(declare-fun k!772 () (_ BitVec 64))

(assert (=> b!1578001 (= res!1078184 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50938 _keys!614) ee!18) k!772)) (not (= (select (arr!50938 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1078185 () Bool)

(assert (=> start!136668 (=> (not res!1078185) (not e!880173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136668 (= res!1078185 (validMask!0 mask!918))))

(assert (=> start!136668 e!880173))

(assert (=> start!136668 true))

(declare-fun array_inv!39583 (array!105661) Bool)

(assert (=> start!136668 (array_inv!39583 _keys!614)))

(declare-fun b!1578000 () Bool)

(declare-fun res!1078186 () Bool)

(assert (=> b!1578000 (=> (not res!1078186) (not e!880173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578000 (= res!1078186 (validKeyInArray!0 k!772))))

(assert (= (and start!136668 res!1078185) b!1577999))

(assert (= (and b!1577999 res!1078187) b!1578000))

(assert (= (and b!1578000 res!1078186) b!1578001))

(assert (= (and b!1578001 res!1078184) b!1578002))

(declare-fun m!1450139 () Bool)

(assert (=> b!1578000 m!1450139))

(declare-fun m!1450141 () Bool)

(assert (=> b!1578001 m!1450141))

(declare-fun m!1450143 () Bool)

(assert (=> b!1577999 m!1450143))

(declare-fun m!1450145 () Bool)

(assert (=> start!136668 m!1450145))

(declare-fun m!1450147 () Bool)

(assert (=> start!136668 m!1450147))

(declare-fun m!1450149 () Bool)

(assert (=> b!1578002 m!1450149))

(push 1)

(assert (not b!1578000))

(assert (not b!1578002))

(assert (not start!136668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

