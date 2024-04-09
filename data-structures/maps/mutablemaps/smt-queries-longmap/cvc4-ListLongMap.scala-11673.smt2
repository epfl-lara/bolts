; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136612 () Bool)

(assert start!136612)

(declare-fun b!1577810 () Bool)

(declare-fun e!880076 () Bool)

(assert (=> b!1577810 (= e!880076 false)))

(declare-fun lt!676066 () (_ BitVec 32))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577810 (= lt!676066 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577807 () Bool)

(declare-fun res!1077994 () Bool)

(assert (=> b!1577807 (=> (not res!1077994) (not e!880076))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-datatypes ((array!105626 0))(
  ( (array!105627 (arr!50922 (Array (_ BitVec 32) (_ BitVec 64))) (size!51473 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105626)

(assert (=> b!1577807 (= res!1077994 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51473 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50922 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1077993 () Bool)

(assert (=> start!136612 (=> (not res!1077993) (not e!880076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136612 (= res!1077993 (validMask!0 mask!918))))

(assert (=> start!136612 e!880076))

(assert (=> start!136612 true))

(declare-fun array_inv!39567 (array!105626) Bool)

(assert (=> start!136612 (array_inv!39567 _keys!614)))

(declare-fun b!1577808 () Bool)

(declare-fun res!1077992 () Bool)

(assert (=> b!1577808 (=> (not res!1077992) (not e!880076))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577808 (= res!1077992 (validKeyInArray!0 k!772))))

(declare-fun b!1577809 () Bool)

(declare-fun res!1077995 () Bool)

(assert (=> b!1577809 (=> (not res!1077995) (not e!880076))))

(assert (=> b!1577809 (= res!1077995 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50922 _keys!614) ee!18) k!772)) (not (= (select (arr!50922 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136612 res!1077993) b!1577807))

(assert (= (and b!1577807 res!1077994) b!1577808))

(assert (= (and b!1577808 res!1077992) b!1577809))

(assert (= (and b!1577809 res!1077995) b!1577810))

(declare-fun m!1449941 () Bool)

(assert (=> b!1577807 m!1449941))

(declare-fun m!1449943 () Bool)

(assert (=> start!136612 m!1449943))

(declare-fun m!1449945 () Bool)

(assert (=> start!136612 m!1449945))

(declare-fun m!1449947 () Bool)

(assert (=> b!1577808 m!1449947))

(declare-fun m!1449949 () Bool)

(assert (=> b!1577809 m!1449949))

(declare-fun m!1449951 () Bool)

(assert (=> b!1577810 m!1449951))

(push 1)

(assert (not b!1577810))

(assert (not b!1577808))

(assert (not start!136612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

