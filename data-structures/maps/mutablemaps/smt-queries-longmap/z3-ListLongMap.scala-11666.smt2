; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136448 () Bool)

(assert start!136448)

(declare-fun res!1077625 () Bool)

(declare-fun e!879765 () Bool)

(assert (=> start!136448 (=> (not res!1077625) (not e!879765))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136448 (= res!1077625 (validMask!0 mask!910))))

(assert (=> start!136448 e!879765))

(assert (=> start!136448 true))

(declare-datatypes ((array!105570 0))(
  ( (array!105571 (arr!50900 (Array (_ BitVec 32) (_ BitVec 64))) (size!51451 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105570)

(declare-fun array_inv!39545 (array!105570) Bool)

(assert (=> start!136448 (array_inv!39545 _keys!610)))

(declare-fun b!1577223 () Bool)

(declare-fun res!1077626 () Bool)

(assert (=> b!1577223 (=> (not res!1077626) (not e!879765))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577223 (= res!1077626 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51451 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577224 () Bool)

(declare-fun res!1077624 () Bool)

(assert (=> b!1577224 (=> (not res!1077624) (not e!879765))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577224 (= res!1077624 (validKeyInArray!0 k0!768))))

(declare-fun b!1577225 () Bool)

(assert (=> b!1577225 (= e!879765 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50900 _keys!610) ee!12) k0!768) (= (bvadd (select (arr!50900 _keys!610) ee!12) (select (arr!50900 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50900 _keys!610) ee!12) k0!768)) (not (= (select (arr!50900 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50900 _keys!610) ee!12) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136448 res!1077625) b!1577223))

(assert (= (and b!1577223 res!1077626) b!1577224))

(assert (= (and b!1577224 res!1077624) b!1577225))

(declare-fun m!1449553 () Bool)

(assert (=> start!136448 m!1449553))

(declare-fun m!1449555 () Bool)

(assert (=> start!136448 m!1449555))

(declare-fun m!1449557 () Bool)

(assert (=> b!1577224 m!1449557))

(declare-fun m!1449559 () Bool)

(assert (=> b!1577225 m!1449559))

(check-sat (not start!136448) (not b!1577224))
(check-sat)
