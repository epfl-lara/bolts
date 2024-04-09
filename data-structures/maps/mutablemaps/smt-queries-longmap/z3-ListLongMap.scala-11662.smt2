; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136424 () Bool)

(assert start!136424)

(declare-fun res!1077517 () Bool)

(declare-fun e!879693 () Bool)

(assert (=> start!136424 (=> (not res!1077517) (not e!879693))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136424 (= res!1077517 (validMask!0 mask!910))))

(assert (=> start!136424 e!879693))

(assert (=> start!136424 true))

(declare-datatypes ((array!105546 0))(
  ( (array!105547 (arr!50888 (Array (_ BitVec 32) (_ BitVec 64))) (size!51439 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105546)

(declare-fun array_inv!39533 (array!105546) Bool)

(assert (=> start!136424 (array_inv!39533 _keys!610)))

(declare-fun b!1577115 () Bool)

(declare-fun res!1077516 () Bool)

(assert (=> b!1577115 (=> (not res!1077516) (not e!879693))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577115 (= res!1077516 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51439 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577116 () Bool)

(declare-fun res!1077518 () Bool)

(assert (=> b!1577116 (=> (not res!1077518) (not e!879693))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577116 (= res!1077518 (validKeyInArray!0 k0!768))))

(declare-fun b!1577117 () Bool)

(assert (=> b!1577117 (= e!879693 (bvsge ee!12 (size!51439 _keys!610)))))

(assert (= (and start!136424 res!1077517) b!1577115))

(assert (= (and b!1577115 res!1077516) b!1577116))

(assert (= (and b!1577116 res!1077518) b!1577117))

(declare-fun m!1449461 () Bool)

(assert (=> start!136424 m!1449461))

(declare-fun m!1449463 () Bool)

(assert (=> start!136424 m!1449463))

(declare-fun m!1449465 () Bool)

(assert (=> b!1577116 m!1449465))

(check-sat (not b!1577116) (not start!136424))
(check-sat)
