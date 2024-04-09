; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135968 () Bool)

(assert start!135968)

(declare-fun res!1076606 () Bool)

(declare-fun e!878739 () Bool)

(assert (=> start!135968 (=> (not res!1076606) (not e!878739))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135968 (= res!1076606 (validMask!0 mask!898))))

(assert (=> start!135968 e!878739))

(assert (=> start!135968 true))

(declare-datatypes ((array!105405 0))(
  ( (array!105406 (arr!50834 (Array (_ BitVec 32) (_ BitVec 64))) (size!51385 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105405)

(declare-fun array_inv!39479 (array!105405) Bool)

(assert (=> start!135968 (array_inv!39479 _keys!605)))

(declare-fun b!1575477 () Bool)

(declare-fun res!1076604 () Bool)

(assert (=> b!1575477 (=> (not res!1076604) (not e!878739))))

(assert (=> b!1575477 (= res!1076604 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51385 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575478 () Bool)

(declare-fun res!1076605 () Bool)

(assert (=> b!1575478 (=> (not res!1076605) (not e!878739))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575478 (= res!1076605 (validKeyInArray!0 k0!761))))

(declare-fun b!1575479 () Bool)

(assert (=> b!1575479 (= e!878739 false)))

(declare-datatypes ((SeekEntryResult!13715 0))(
  ( (MissingZero!13715 (index!57257 (_ BitVec 32))) (Found!13715 (index!57258 (_ BitVec 32))) (Intermediate!13715 (undefined!14527 Bool) (index!57259 (_ BitVec 32)) (x!142226 (_ BitVec 32))) (Undefined!13715) (MissingVacant!13715 (index!57260 (_ BitVec 32))) )
))
(declare-fun lt!675181 () SeekEntryResult!13715)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105405 (_ BitVec 32)) SeekEntryResult!13715)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575479 (= lt!675181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135968 res!1076606) b!1575477))

(assert (= (and b!1575477 res!1076604) b!1575478))

(assert (= (and b!1575478 res!1076605) b!1575479))

(declare-fun m!1448501 () Bool)

(assert (=> start!135968 m!1448501))

(declare-fun m!1448503 () Bool)

(assert (=> start!135968 m!1448503))

(declare-fun m!1448505 () Bool)

(assert (=> b!1575478 m!1448505))

(declare-fun m!1448507 () Bool)

(assert (=> b!1575479 m!1448507))

(assert (=> b!1575479 m!1448507))

(declare-fun m!1448509 () Bool)

(assert (=> b!1575479 m!1448509))

(check-sat (not b!1575479) (not start!135968) (not b!1575478))
