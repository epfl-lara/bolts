; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135824 () Bool)

(assert start!135824)

(declare-fun res!1076273 () Bool)

(declare-fun e!878442 () Bool)

(assert (=> start!135824 (=> (not res!1076273) (not e!878442))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135824 (= res!1076273 (validMask!0 mask!898))))

(assert (=> start!135824 e!878442))

(assert (=> start!135824 true))

(declare-datatypes ((array!105342 0))(
  ( (array!105343 (arr!50807 (Array (_ BitVec 32) (_ BitVec 64))) (size!51358 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105342)

(declare-fun array_inv!39452 (array!105342) Bool)

(assert (=> start!135824 (array_inv!39452 _keys!605)))

(declare-fun b!1574991 () Bool)

(declare-fun res!1076272 () Bool)

(assert (=> b!1574991 (=> (not res!1076272) (not e!878442))))

(assert (=> b!1574991 (= res!1076272 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51358 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574992 () Bool)

(declare-fun res!1076271 () Bool)

(assert (=> b!1574992 (=> (not res!1076271) (not e!878442))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574992 (= res!1076271 (validKeyInArray!0 k0!761))))

(declare-fun b!1574993 () Bool)

(assert (=> b!1574993 (= e!878442 false)))

(declare-datatypes ((SeekEntryResult!13688 0))(
  ( (MissingZero!13688 (index!57149 (_ BitVec 32))) (Found!13688 (index!57150 (_ BitVec 32))) (Intermediate!13688 (undefined!14500 Bool) (index!57151 (_ BitVec 32)) (x!142109 (_ BitVec 32))) (Undefined!13688) (MissingVacant!13688 (index!57152 (_ BitVec 32))) )
))
(declare-fun lt!674992 () SeekEntryResult!13688)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105342 (_ BitVec 32)) SeekEntryResult!13688)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574993 (= lt!674992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135824 res!1076273) b!1574991))

(assert (= (and b!1574991 res!1076272) b!1574992))

(assert (= (and b!1574992 res!1076271) b!1574993))

(declare-fun m!1448147 () Bool)

(assert (=> start!135824 m!1448147))

(declare-fun m!1448149 () Bool)

(assert (=> start!135824 m!1448149))

(declare-fun m!1448151 () Bool)

(assert (=> b!1574992 m!1448151))

(declare-fun m!1448153 () Bool)

(assert (=> b!1574993 m!1448153))

(assert (=> b!1574993 m!1448153))

(declare-fun m!1448155 () Bool)

(assert (=> b!1574993 m!1448155))

(check-sat (not b!1574992) (not b!1574993) (not start!135824))
(check-sat)
