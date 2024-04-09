; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135916 () Bool)

(assert start!135916)

(declare-fun res!1076475 () Bool)

(declare-fun e!878628 () Bool)

(assert (=> start!135916 (=> (not res!1076475) (not e!878628))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135916 (= res!1076475 (validMask!0 mask!898))))

(assert (=> start!135916 e!878628))

(assert (=> start!135916 true))

(declare-datatypes ((array!105380 0))(
  ( (array!105381 (arr!50823 (Array (_ BitVec 32) (_ BitVec 64))) (size!51374 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105380)

(declare-fun array_inv!39468 (array!105380) Bool)

(assert (=> start!135916 (array_inv!39468 _keys!605)))

(declare-fun b!1575297 () Bool)

(declare-fun res!1076476 () Bool)

(assert (=> b!1575297 (=> (not res!1076476) (not e!878628))))

(assert (=> b!1575297 (= res!1076476 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51374 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575298 () Bool)

(declare-fun res!1076477 () Bool)

(assert (=> b!1575298 (=> (not res!1076477) (not e!878628))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575298 (= res!1076477 (validKeyInArray!0 k!761))))

(declare-fun b!1575299 () Bool)

(assert (=> b!1575299 (= e!878628 false)))

(declare-datatypes ((SeekEntryResult!13704 0))(
  ( (MissingZero!13704 (index!57213 (_ BitVec 32))) (Found!13704 (index!57214 (_ BitVec 32))) (Intermediate!13704 (undefined!14516 Bool) (index!57215 (_ BitVec 32)) (x!142177 (_ BitVec 32))) (Undefined!13704) (MissingVacant!13704 (index!57216 (_ BitVec 32))) )
))
(declare-fun lt!675112 () SeekEntryResult!13704)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105380 (_ BitVec 32)) SeekEntryResult!13704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575299 (= lt!675112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135916 res!1076475) b!1575297))

(assert (= (and b!1575297 res!1076476) b!1575298))

(assert (= (and b!1575298 res!1076477) b!1575299))

(declare-fun m!1448361 () Bool)

(assert (=> start!135916 m!1448361))

(declare-fun m!1448363 () Bool)

(assert (=> start!135916 m!1448363))

(declare-fun m!1448365 () Bool)

(assert (=> b!1575298 m!1448365))

(declare-fun m!1448367 () Bool)

(assert (=> b!1575299 m!1448367))

(assert (=> b!1575299 m!1448367))

(declare-fun m!1448369 () Bool)

(assert (=> b!1575299 m!1448369))

(push 1)

(assert (not b!1575299))

(assert (not start!135916))

(assert (not b!1575298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

