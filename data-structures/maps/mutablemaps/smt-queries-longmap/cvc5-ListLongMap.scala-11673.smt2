; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136608 () Bool)

(assert start!136608)

(declare-fun b!1577785 () Bool)

(declare-fun res!1077971 () Bool)

(declare-fun e!880065 () Bool)

(assert (=> b!1577785 (=> (not res!1077971) (not e!880065))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105622 0))(
  ( (array!105623 (arr!50920 (Array (_ BitVec 32) (_ BitVec 64))) (size!51471 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105622)

(declare-fun k!772 () (_ BitVec 64))

(assert (=> b!1577785 (= res!1077971 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50920 _keys!614) ee!18) k!772)) (not (= (select (arr!50920 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577783 () Bool)

(declare-fun res!1077970 () Bool)

(assert (=> b!1577783 (=> (not res!1077970) (not e!880065))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577783 (= res!1077970 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51471 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50920 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577784 () Bool)

(declare-fun res!1077968 () Bool)

(assert (=> b!1577784 (=> (not res!1077968) (not e!880065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577784 (= res!1077968 (validKeyInArray!0 k!772))))

(declare-fun b!1577786 () Bool)

(assert (=> b!1577786 (= e!880065 false)))

(declare-fun lt!676060 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577786 (= lt!676060 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun res!1077969 () Bool)

(assert (=> start!136608 (=> (not res!1077969) (not e!880065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136608 (= res!1077969 (validMask!0 mask!918))))

(assert (=> start!136608 e!880065))

(assert (=> start!136608 true))

(declare-fun array_inv!39565 (array!105622) Bool)

(assert (=> start!136608 (array_inv!39565 _keys!614)))

(assert (= (and start!136608 res!1077969) b!1577783))

(assert (= (and b!1577783 res!1077970) b!1577784))

(assert (= (and b!1577784 res!1077968) b!1577785))

(assert (= (and b!1577785 res!1077971) b!1577786))

(declare-fun m!1449917 () Bool)

(assert (=> b!1577784 m!1449917))

(declare-fun m!1449919 () Bool)

(assert (=> b!1577783 m!1449919))

(declare-fun m!1449921 () Bool)

(assert (=> start!136608 m!1449921))

(declare-fun m!1449923 () Bool)

(assert (=> start!136608 m!1449923))

(declare-fun m!1449925 () Bool)

(assert (=> b!1577786 m!1449925))

(declare-fun m!1449927 () Bool)

(assert (=> b!1577785 m!1449927))

(push 1)

(assert (not b!1577784))

(assert (not start!136608))

(assert (not b!1577786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

