; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136454 () Bool)

(assert start!136454)

(declare-fun b!1577257 () Bool)

(declare-fun res!1077657 () Bool)

(declare-fun e!879783 () Bool)

(assert (=> b!1577257 (=> (not res!1077657) (not e!879783))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k0!768 () (_ BitVec 64))

(declare-datatypes ((array!105576 0))(
  ( (array!105577 (arr!50903 (Array (_ BitVec 32) (_ BitVec 64))) (size!51454 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105576)

(declare-fun x!458 () (_ BitVec 32))

(assert (=> b!1577257 (= res!1077657 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50903 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50903 _keys!610) ee!12) (select (arr!50903 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577258 () Bool)

(assert (=> b!1577258 (= e!879783 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!458)) (bvsub #b01111111111111111111111111111110 x!458)))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun lt!675901 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577258 (= lt!675901 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577255 () Bool)

(declare-fun res!1077659 () Bool)

(assert (=> b!1577255 (=> (not res!1077659) (not e!879783))))

(assert (=> b!1577255 (= res!1077659 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51454 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577256 () Bool)

(declare-fun res!1077656 () Bool)

(assert (=> b!1577256 (=> (not res!1077656) (not e!879783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577256 (= res!1077656 (validKeyInArray!0 k0!768))))

(declare-fun res!1077658 () Bool)

(assert (=> start!136454 (=> (not res!1077658) (not e!879783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136454 (= res!1077658 (validMask!0 mask!910))))

(assert (=> start!136454 e!879783))

(assert (=> start!136454 true))

(declare-fun array_inv!39548 (array!105576) Bool)

(assert (=> start!136454 (array_inv!39548 _keys!610)))

(assert (= (and start!136454 res!1077658) b!1577255))

(assert (= (and b!1577255 res!1077659) b!1577256))

(assert (= (and b!1577256 res!1077656) b!1577257))

(assert (= (and b!1577257 res!1077657) b!1577258))

(declare-fun m!1449579 () Bool)

(assert (=> b!1577257 m!1449579))

(declare-fun m!1449581 () Bool)

(assert (=> b!1577258 m!1449581))

(declare-fun m!1449583 () Bool)

(assert (=> b!1577256 m!1449583))

(declare-fun m!1449585 () Bool)

(assert (=> start!136454 m!1449585))

(declare-fun m!1449587 () Bool)

(assert (=> start!136454 m!1449587))

(check-sat (not start!136454) (not b!1577256) (not b!1577258))
(check-sat)
