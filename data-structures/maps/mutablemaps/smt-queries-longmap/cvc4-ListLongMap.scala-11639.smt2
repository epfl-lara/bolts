; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135910 () Bool)

(assert start!135910)

(declare-fun res!1076449 () Bool)

(declare-fun e!878609 () Bool)

(assert (=> start!135910 (=> (not res!1076449) (not e!878609))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135910 (= res!1076449 (validMask!0 mask!898))))

(assert (=> start!135910 e!878609))

(assert (=> start!135910 true))

(declare-datatypes ((array!105374 0))(
  ( (array!105375 (arr!50820 (Array (_ BitVec 32) (_ BitVec 64))) (size!51371 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105374)

(declare-fun array_inv!39465 (array!105374) Bool)

(assert (=> start!135910 (array_inv!39465 _keys!605)))

(declare-fun b!1575270 () Bool)

(declare-fun res!1076448 () Bool)

(assert (=> b!1575270 (=> (not res!1076448) (not e!878609))))

(assert (=> b!1575270 (= res!1076448 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51371 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575271 () Bool)

(declare-fun res!1076450 () Bool)

(assert (=> b!1575271 (=> (not res!1076450) (not e!878609))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575271 (= res!1076450 (validKeyInArray!0 k!761))))

(declare-fun b!1575272 () Bool)

(assert (=> b!1575272 (= e!878609 false)))

(declare-datatypes ((SeekEntryResult!13701 0))(
  ( (MissingZero!13701 (index!57201 (_ BitVec 32))) (Found!13701 (index!57202 (_ BitVec 32))) (Intermediate!13701 (undefined!14513 Bool) (index!57203 (_ BitVec 32)) (x!142166 (_ BitVec 32))) (Undefined!13701) (MissingVacant!13701 (index!57204 (_ BitVec 32))) )
))
(declare-fun lt!675103 () SeekEntryResult!13701)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105374 (_ BitVec 32)) SeekEntryResult!13701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575272 (= lt!675103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135910 res!1076449) b!1575270))

(assert (= (and b!1575270 res!1076448) b!1575271))

(assert (= (and b!1575271 res!1076450) b!1575272))

(declare-fun m!1448331 () Bool)

(assert (=> start!135910 m!1448331))

(declare-fun m!1448333 () Bool)

(assert (=> start!135910 m!1448333))

(declare-fun m!1448335 () Bool)

(assert (=> b!1575271 m!1448335))

(declare-fun m!1448337 () Bool)

(assert (=> b!1575272 m!1448337))

(assert (=> b!1575272 m!1448337))

(declare-fun m!1448339 () Bool)

(assert (=> b!1575272 m!1448339))

(push 1)

(assert (not b!1575272))

(assert (not start!135910))

