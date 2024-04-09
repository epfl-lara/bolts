; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135912 () Bool)

(assert start!135912)

(declare-fun res!1076457 () Bool)

(declare-fun e!878616 () Bool)

(assert (=> start!135912 (=> (not res!1076457) (not e!878616))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135912 (= res!1076457 (validMask!0 mask!898))))

(assert (=> start!135912 e!878616))

(assert (=> start!135912 true))

(declare-datatypes ((array!105376 0))(
  ( (array!105377 (arr!50821 (Array (_ BitVec 32) (_ BitVec 64))) (size!51372 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105376)

(declare-fun array_inv!39466 (array!105376) Bool)

(assert (=> start!135912 (array_inv!39466 _keys!605)))

(declare-fun b!1575279 () Bool)

(declare-fun res!1076459 () Bool)

(assert (=> b!1575279 (=> (not res!1076459) (not e!878616))))

(assert (=> b!1575279 (= res!1076459 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51372 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575280 () Bool)

(declare-fun res!1076458 () Bool)

(assert (=> b!1575280 (=> (not res!1076458) (not e!878616))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575280 (= res!1076458 (validKeyInArray!0 k!761))))

(declare-fun b!1575281 () Bool)

(assert (=> b!1575281 (= e!878616 false)))

(declare-datatypes ((SeekEntryResult!13702 0))(
  ( (MissingZero!13702 (index!57205 (_ BitVec 32))) (Found!13702 (index!57206 (_ BitVec 32))) (Intermediate!13702 (undefined!14514 Bool) (index!57207 (_ BitVec 32)) (x!142175 (_ BitVec 32))) (Undefined!13702) (MissingVacant!13702 (index!57208 (_ BitVec 32))) )
))
(declare-fun lt!675106 () SeekEntryResult!13702)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105376 (_ BitVec 32)) SeekEntryResult!13702)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575281 (= lt!675106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135912 res!1076457) b!1575279))

(assert (= (and b!1575279 res!1076459) b!1575280))

(assert (= (and b!1575280 res!1076458) b!1575281))

(declare-fun m!1448341 () Bool)

(assert (=> start!135912 m!1448341))

(declare-fun m!1448343 () Bool)

(assert (=> start!135912 m!1448343))

(declare-fun m!1448345 () Bool)

(assert (=> b!1575280 m!1448345))

(declare-fun m!1448347 () Bool)

(assert (=> b!1575281 m!1448347))

(assert (=> b!1575281 m!1448347))

(declare-fun m!1448349 () Bool)

(assert (=> b!1575281 m!1448349))

(push 1)

(assert (not b!1575281))

(assert (not start!135912))

(assert (not b!1575280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

