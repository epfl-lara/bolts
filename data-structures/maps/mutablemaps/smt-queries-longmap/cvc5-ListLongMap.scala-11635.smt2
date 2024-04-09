; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135822 () Bool)

(assert start!135822)

(declare-fun res!1076263 () Bool)

(declare-fun e!878435 () Bool)

(assert (=> start!135822 (=> (not res!1076263) (not e!878435))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135822 (= res!1076263 (validMask!0 mask!898))))

(assert (=> start!135822 e!878435))

(assert (=> start!135822 true))

(declare-datatypes ((array!105340 0))(
  ( (array!105341 (arr!50806 (Array (_ BitVec 32) (_ BitVec 64))) (size!51357 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105340)

(declare-fun array_inv!39451 (array!105340) Bool)

(assert (=> start!135822 (array_inv!39451 _keys!605)))

(declare-fun b!1574982 () Bool)

(declare-fun res!1076262 () Bool)

(assert (=> b!1574982 (=> (not res!1076262) (not e!878435))))

(assert (=> b!1574982 (= res!1076262 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51357 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574983 () Bool)

(declare-fun res!1076264 () Bool)

(assert (=> b!1574983 (=> (not res!1076264) (not e!878435))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574983 (= res!1076264 (validKeyInArray!0 k!761))))

(declare-fun b!1574984 () Bool)

(assert (=> b!1574984 (= e!878435 false)))

(declare-datatypes ((SeekEntryResult!13687 0))(
  ( (MissingZero!13687 (index!57145 (_ BitVec 32))) (Found!13687 (index!57146 (_ BitVec 32))) (Intermediate!13687 (undefined!14499 Bool) (index!57147 (_ BitVec 32)) (x!142108 (_ BitVec 32))) (Undefined!13687) (MissingVacant!13687 (index!57148 (_ BitVec 32))) )
))
(declare-fun lt!674989 () SeekEntryResult!13687)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105340 (_ BitVec 32)) SeekEntryResult!13687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574984 (= lt!674989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135822 res!1076263) b!1574982))

(assert (= (and b!1574982 res!1076262) b!1574983))

(assert (= (and b!1574983 res!1076264) b!1574984))

(declare-fun m!1448137 () Bool)

(assert (=> start!135822 m!1448137))

(declare-fun m!1448139 () Bool)

(assert (=> start!135822 m!1448139))

(declare-fun m!1448141 () Bool)

(assert (=> b!1574983 m!1448141))

(declare-fun m!1448143 () Bool)

(assert (=> b!1574984 m!1448143))

(assert (=> b!1574984 m!1448143))

(declare-fun m!1448145 () Bool)

(assert (=> b!1574984 m!1448145))

(push 1)

(assert (not b!1574983))

(assert (not b!1574984))

(assert (not start!135822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

