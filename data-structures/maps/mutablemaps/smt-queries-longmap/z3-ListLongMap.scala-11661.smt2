; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136418 () Bool)

(assert start!136418)

(declare-fun b!1577087 () Bool)

(declare-fun e!879674 () Bool)

(assert (=> b!1577087 (= e!879674 false)))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun lt!675892 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577087 (= lt!675892 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577085 () Bool)

(declare-fun res!1077486 () Bool)

(assert (=> b!1577085 (=> (not res!1077486) (not e!879674))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577085 (= res!1077486 (validKeyInArray!0 k0!768))))

(declare-fun b!1577084 () Bool)

(declare-fun res!1077488 () Bool)

(assert (=> b!1577084 (=> (not res!1077488) (not e!879674))))

(declare-datatypes ((array!105540 0))(
  ( (array!105541 (arr!50885 (Array (_ BitVec 32) (_ BitVec 64))) (size!51436 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105540)

(assert (=> b!1577084 (= res!1077488 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51436 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun res!1077487 () Bool)

(assert (=> start!136418 (=> (not res!1077487) (not e!879674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136418 (= res!1077487 (validMask!0 mask!910))))

(assert (=> start!136418 e!879674))

(assert (=> start!136418 true))

(declare-fun array_inv!39530 (array!105540) Bool)

(assert (=> start!136418 (array_inv!39530 _keys!610)))

(declare-fun b!1577086 () Bool)

(declare-fun res!1077485 () Bool)

(assert (=> b!1577086 (=> (not res!1077485) (not e!879674))))

(assert (=> b!1577086 (= res!1077485 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50885 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50885 _keys!610) ee!12) (select (arr!50885 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136418 res!1077487) b!1577084))

(assert (= (and b!1577084 res!1077488) b!1577085))

(assert (= (and b!1577085 res!1077486) b!1577086))

(assert (= (and b!1577086 res!1077485) b!1577087))

(declare-fun m!1449435 () Bool)

(assert (=> b!1577087 m!1449435))

(declare-fun m!1449437 () Bool)

(assert (=> b!1577085 m!1449437))

(declare-fun m!1449439 () Bool)

(assert (=> start!136418 m!1449439))

(declare-fun m!1449441 () Bool)

(assert (=> start!136418 m!1449441))

(declare-fun m!1449443 () Bool)

(assert (=> b!1577086 m!1449443))

(check-sat (not start!136418) (not b!1577085) (not b!1577087))
