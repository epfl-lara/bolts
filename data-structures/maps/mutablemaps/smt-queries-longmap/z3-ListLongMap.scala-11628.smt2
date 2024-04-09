; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135722 () Bool)

(assert start!135722)

(declare-fun res!1076022 () Bool)

(declare-fun e!878225 () Bool)

(assert (=> start!135722 (=> (not res!1076022) (not e!878225))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135722 (= res!1076022 (validMask!0 mask!898))))

(assert (=> start!135722 e!878225))

(assert (=> start!135722 true))

(declare-datatypes ((array!105294 0))(
  ( (array!105295 (arr!50786 (Array (_ BitVec 32) (_ BitVec 64))) (size!51337 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105294)

(declare-fun array_inv!39431 (array!105294) Bool)

(assert (=> start!135722 (array_inv!39431 _keys!605)))

(declare-fun b!1574640 () Bool)

(declare-fun res!1076023 () Bool)

(assert (=> b!1574640 (=> (not res!1076023) (not e!878225))))

(assert (=> b!1574640 (= res!1076023 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51337 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574641 () Bool)

(declare-fun res!1076024 () Bool)

(assert (=> b!1574641 (=> (not res!1076024) (not e!878225))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574641 (= res!1076024 (validKeyInArray!0 k0!761))))

(declare-fun b!1574642 () Bool)

(assert (=> b!1574642 (= e!878225 false)))

(declare-datatypes ((SeekEntryResult!13667 0))(
  ( (MissingZero!13667 (index!57065 (_ BitVec 32))) (Found!13667 (index!57066 (_ BitVec 32))) (Intermediate!13667 (undefined!14479 Bool) (index!57067 (_ BitVec 32)) (x!142020 (_ BitVec 32))) (Undefined!13667) (MissingVacant!13667 (index!57068 (_ BitVec 32))) )
))
(declare-fun lt!674857 () SeekEntryResult!13667)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105294 (_ BitVec 32)) SeekEntryResult!13667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574642 (= lt!674857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135722 res!1076022) b!1574640))

(assert (= (and b!1574640 res!1076023) b!1574641))

(assert (= (and b!1574641 res!1076024) b!1574642))

(declare-fun m!1447877 () Bool)

(assert (=> start!135722 m!1447877))

(declare-fun m!1447879 () Bool)

(assert (=> start!135722 m!1447879))

(declare-fun m!1447881 () Bool)

(assert (=> b!1574641 m!1447881))

(declare-fun m!1447883 () Bool)

(assert (=> b!1574642 m!1447883))

(assert (=> b!1574642 m!1447883))

(declare-fun m!1447885 () Bool)

(assert (=> b!1574642 m!1447885))

(check-sat (not b!1574641) (not start!135722) (not b!1574642))
(check-sat)
