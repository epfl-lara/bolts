; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135974 () Bool)

(assert start!135974)

(declare-fun res!1076633 () Bool)

(declare-fun e!878757 () Bool)

(assert (=> start!135974 (=> (not res!1076633) (not e!878757))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135974 (= res!1076633 (validMask!0 mask!898))))

(assert (=> start!135974 e!878757))

(assert (=> start!135974 true))

(declare-datatypes ((array!105411 0))(
  ( (array!105412 (arr!50837 (Array (_ BitVec 32) (_ BitVec 64))) (size!51388 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105411)

(declare-fun array_inv!39482 (array!105411) Bool)

(assert (=> start!135974 (array_inv!39482 _keys!605)))

(declare-fun b!1575504 () Bool)

(declare-fun res!1076631 () Bool)

(assert (=> b!1575504 (=> (not res!1076631) (not e!878757))))

(assert (=> b!1575504 (= res!1076631 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51388 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575505 () Bool)

(declare-fun res!1076632 () Bool)

(assert (=> b!1575505 (=> (not res!1076632) (not e!878757))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575505 (= res!1076632 (validKeyInArray!0 k0!761))))

(declare-fun b!1575506 () Bool)

(assert (=> b!1575506 (= e!878757 false)))

(declare-datatypes ((SeekEntryResult!13718 0))(
  ( (MissingZero!13718 (index!57269 (_ BitVec 32))) (Found!13718 (index!57270 (_ BitVec 32))) (Intermediate!13718 (undefined!14530 Bool) (index!57271 (_ BitVec 32)) (x!142237 (_ BitVec 32))) (Undefined!13718) (MissingVacant!13718 (index!57272 (_ BitVec 32))) )
))
(declare-fun lt!675190 () SeekEntryResult!13718)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105411 (_ BitVec 32)) SeekEntryResult!13718)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575506 (= lt!675190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135974 res!1076633) b!1575504))

(assert (= (and b!1575504 res!1076631) b!1575505))

(assert (= (and b!1575505 res!1076632) b!1575506))

(declare-fun m!1448531 () Bool)

(assert (=> start!135974 m!1448531))

(declare-fun m!1448533 () Bool)

(assert (=> start!135974 m!1448533))

(declare-fun m!1448535 () Bool)

(assert (=> b!1575505 m!1448535))

(declare-fun m!1448537 () Bool)

(assert (=> b!1575506 m!1448537))

(assert (=> b!1575506 m!1448537))

(declare-fun m!1448539 () Bool)

(assert (=> b!1575506 m!1448539))

(check-sat (not start!135974) (not b!1575506) (not b!1575505))
