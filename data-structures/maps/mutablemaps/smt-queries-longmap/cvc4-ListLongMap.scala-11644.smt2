; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135970 () Bool)

(assert start!135970)

(declare-fun res!1076614 () Bool)

(declare-fun e!878744 () Bool)

(assert (=> start!135970 (=> (not res!1076614) (not e!878744))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135970 (= res!1076614 (validMask!0 mask!898))))

(assert (=> start!135970 e!878744))

(assert (=> start!135970 true))

(declare-datatypes ((array!105407 0))(
  ( (array!105408 (arr!50835 (Array (_ BitVec 32) (_ BitVec 64))) (size!51386 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105407)

(declare-fun array_inv!39480 (array!105407) Bool)

(assert (=> start!135970 (array_inv!39480 _keys!605)))

(declare-fun b!1575486 () Bool)

(declare-fun res!1076613 () Bool)

(assert (=> b!1575486 (=> (not res!1076613) (not e!878744))))

(assert (=> b!1575486 (= res!1076613 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51386 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575487 () Bool)

(declare-fun res!1076615 () Bool)

(assert (=> b!1575487 (=> (not res!1076615) (not e!878744))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575487 (= res!1076615 (validKeyInArray!0 k!761))))

(declare-fun b!1575488 () Bool)

(assert (=> b!1575488 (= e!878744 false)))

(declare-datatypes ((SeekEntryResult!13716 0))(
  ( (MissingZero!13716 (index!57261 (_ BitVec 32))) (Found!13716 (index!57262 (_ BitVec 32))) (Intermediate!13716 (undefined!14528 Bool) (index!57263 (_ BitVec 32)) (x!142227 (_ BitVec 32))) (Undefined!13716) (MissingVacant!13716 (index!57264 (_ BitVec 32))) )
))
(declare-fun lt!675184 () SeekEntryResult!13716)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105407 (_ BitVec 32)) SeekEntryResult!13716)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575488 (= lt!675184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135970 res!1076614) b!1575486))

(assert (= (and b!1575486 res!1076613) b!1575487))

(assert (= (and b!1575487 res!1076615) b!1575488))

(declare-fun m!1448511 () Bool)

(assert (=> start!135970 m!1448511))

(declare-fun m!1448513 () Bool)

(assert (=> start!135970 m!1448513))

(declare-fun m!1448515 () Bool)

(assert (=> b!1575487 m!1448515))

(declare-fun m!1448517 () Bool)

(assert (=> b!1575488 m!1448517))

(assert (=> b!1575488 m!1448517))

(declare-fun m!1448519 () Bool)

(assert (=> b!1575488 m!1448519))

(push 1)

(assert (not b!1575488))

(assert (not start!135970))

(assert (not b!1575487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

