; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135976 () Bool)

(assert start!135976)

(declare-fun res!1076642 () Bool)

(declare-fun e!878763 () Bool)

(assert (=> start!135976 (=> (not res!1076642) (not e!878763))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135976 (= res!1076642 (validMask!0 mask!898))))

(assert (=> start!135976 e!878763))

(assert (=> start!135976 true))

(declare-datatypes ((array!105413 0))(
  ( (array!105414 (arr!50838 (Array (_ BitVec 32) (_ BitVec 64))) (size!51389 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105413)

(declare-fun array_inv!39483 (array!105413) Bool)

(assert (=> start!135976 (array_inv!39483 _keys!605)))

(declare-fun b!1575513 () Bool)

(declare-fun res!1076641 () Bool)

(assert (=> b!1575513 (=> (not res!1076641) (not e!878763))))

(assert (=> b!1575513 (= res!1076641 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51389 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575514 () Bool)

(declare-fun res!1076640 () Bool)

(assert (=> b!1575514 (=> (not res!1076640) (not e!878763))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575514 (= res!1076640 (validKeyInArray!0 k!761))))

(declare-fun b!1575515 () Bool)

(assert (=> b!1575515 (= e!878763 false)))

(declare-datatypes ((SeekEntryResult!13719 0))(
  ( (MissingZero!13719 (index!57273 (_ BitVec 32))) (Found!13719 (index!57274 (_ BitVec 32))) (Intermediate!13719 (undefined!14531 Bool) (index!57275 (_ BitVec 32)) (x!142238 (_ BitVec 32))) (Undefined!13719) (MissingVacant!13719 (index!57276 (_ BitVec 32))) )
))
(declare-fun lt!675193 () SeekEntryResult!13719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105413 (_ BitVec 32)) SeekEntryResult!13719)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575515 (= lt!675193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135976 res!1076642) b!1575513))

(assert (= (and b!1575513 res!1076641) b!1575514))

(assert (= (and b!1575514 res!1076640) b!1575515))

(declare-fun m!1448541 () Bool)

(assert (=> start!135976 m!1448541))

(declare-fun m!1448543 () Bool)

(assert (=> start!135976 m!1448543))

(declare-fun m!1448545 () Bool)

(assert (=> b!1575514 m!1448545))

(declare-fun m!1448547 () Bool)

(assert (=> b!1575515 m!1448547))

(assert (=> b!1575515 m!1448547))

(declare-fun m!1448549 () Bool)

(assert (=> b!1575515 m!1448549))

(push 1)

(assert (not start!135976))

(assert (not b!1575515))

(assert (not b!1575514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

