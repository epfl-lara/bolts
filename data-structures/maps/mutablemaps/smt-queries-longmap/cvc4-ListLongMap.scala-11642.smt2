; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135928 () Bool)

(assert start!135928)

(declare-fun res!1076531 () Bool)

(declare-fun e!878663 () Bool)

(assert (=> start!135928 (=> (not res!1076531) (not e!878663))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135928 (= res!1076531 (validMask!0 mask!898))))

(assert (=> start!135928 e!878663))

(assert (=> start!135928 true))

(declare-datatypes ((array!105392 0))(
  ( (array!105393 (arr!50829 (Array (_ BitVec 32) (_ BitVec 64))) (size!51380 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105392)

(declare-fun array_inv!39474 (array!105392) Bool)

(assert (=> start!135928 (array_inv!39474 _keys!605)))

(declare-fun b!1575351 () Bool)

(declare-fun res!1076529 () Bool)

(assert (=> b!1575351 (=> (not res!1076529) (not e!878663))))

(assert (=> b!1575351 (= res!1076529 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51380 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575352 () Bool)

(declare-fun res!1076530 () Bool)

(assert (=> b!1575352 (=> (not res!1076530) (not e!878663))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575352 (= res!1076530 (validKeyInArray!0 k!761))))

(declare-fun b!1575353 () Bool)

(assert (=> b!1575353 (= e!878663 false)))

(declare-datatypes ((SeekEntryResult!13710 0))(
  ( (MissingZero!13710 (index!57237 (_ BitVec 32))) (Found!13710 (index!57238 (_ BitVec 32))) (Intermediate!13710 (undefined!14522 Bool) (index!57239 (_ BitVec 32)) (x!142199 (_ BitVec 32))) (Undefined!13710) (MissingVacant!13710 (index!57240 (_ BitVec 32))) )
))
(declare-fun lt!675130 () SeekEntryResult!13710)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105392 (_ BitVec 32)) SeekEntryResult!13710)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575353 (= lt!675130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135928 res!1076531) b!1575351))

(assert (= (and b!1575351 res!1076529) b!1575352))

(assert (= (and b!1575352 res!1076530) b!1575353))

(declare-fun m!1448421 () Bool)

(assert (=> start!135928 m!1448421))

(declare-fun m!1448423 () Bool)

(assert (=> start!135928 m!1448423))

(declare-fun m!1448425 () Bool)

(assert (=> b!1575352 m!1448425))

(declare-fun m!1448427 () Bool)

(assert (=> b!1575353 m!1448427))

(assert (=> b!1575353 m!1448427))

(declare-fun m!1448429 () Bool)

(assert (=> b!1575353 m!1448429))

(push 1)

(assert (not b!1575353))

(assert (not start!135928))

(assert (not b!1575352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

