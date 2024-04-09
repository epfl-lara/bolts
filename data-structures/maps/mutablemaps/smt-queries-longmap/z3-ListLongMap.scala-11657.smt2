; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136370 () Bool)

(assert start!136370)

(declare-fun b!1576942 () Bool)

(declare-fun res!1077341 () Bool)

(declare-fun e!879603 () Bool)

(assert (=> b!1576942 (=> (not res!1077341) (not e!879603))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun k0!768 () (_ BitVec 64))

(declare-datatypes ((array!105513 0))(
  ( (array!105514 (arr!50873 (Array (_ BitVec 32) (_ BitVec 64))) (size!51424 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105513)

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1576942 (= res!1077341 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50873 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50873 _keys!610) ee!12) (select (arr!50873 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576943 () Bool)

(assert (=> b!1576943 (= e!879603 false)))

(declare-fun lt!675847 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576943 (= lt!675847 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576941 () Bool)

(declare-fun res!1077342 () Bool)

(assert (=> b!1576941 (=> (not res!1077342) (not e!879603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576941 (= res!1077342 (validKeyInArray!0 k0!768))))

(declare-fun b!1576940 () Bool)

(declare-fun res!1077343 () Bool)

(assert (=> b!1576940 (=> (not res!1077343) (not e!879603))))

(assert (=> b!1576940 (= res!1077343 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51424 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun res!1077344 () Bool)

(assert (=> start!136370 (=> (not res!1077344) (not e!879603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136370 (= res!1077344 (validMask!0 mask!910))))

(assert (=> start!136370 e!879603))

(assert (=> start!136370 true))

(declare-fun array_inv!39518 (array!105513) Bool)

(assert (=> start!136370 (array_inv!39518 _keys!610)))

(assert (= (and start!136370 res!1077344) b!1576940))

(assert (= (and b!1576940 res!1077343) b!1576941))

(assert (= (and b!1576941 res!1077342) b!1576942))

(assert (= (and b!1576942 res!1077341) b!1576943))

(declare-fun m!1449309 () Bool)

(assert (=> b!1576942 m!1449309))

(declare-fun m!1449311 () Bool)

(assert (=> b!1576943 m!1449311))

(declare-fun m!1449313 () Bool)

(assert (=> b!1576941 m!1449313))

(declare-fun m!1449315 () Bool)

(assert (=> start!136370 m!1449315))

(declare-fun m!1449317 () Bool)

(assert (=> start!136370 m!1449317))

(check-sat (not b!1576943) (not start!136370) (not b!1576941))
