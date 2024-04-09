; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135922 () Bool)

(assert start!135922)

(declare-fun res!1076503 () Bool)

(declare-fun e!878645 () Bool)

(assert (=> start!135922 (=> (not res!1076503) (not e!878645))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135922 (= res!1076503 (validMask!0 mask!898))))

(assert (=> start!135922 e!878645))

(assert (=> start!135922 true))

(declare-datatypes ((array!105386 0))(
  ( (array!105387 (arr!50826 (Array (_ BitVec 32) (_ BitVec 64))) (size!51377 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105386)

(declare-fun array_inv!39471 (array!105386) Bool)

(assert (=> start!135922 (array_inv!39471 _keys!605)))

(declare-fun b!1575324 () Bool)

(declare-fun res!1076502 () Bool)

(assert (=> b!1575324 (=> (not res!1076502) (not e!878645))))

(assert (=> b!1575324 (= res!1076502 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51377 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575325 () Bool)

(declare-fun res!1076504 () Bool)

(assert (=> b!1575325 (=> (not res!1076504) (not e!878645))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575325 (= res!1076504 (validKeyInArray!0 k!761))))

(declare-fun b!1575326 () Bool)

(assert (=> b!1575326 (= e!878645 false)))

(declare-datatypes ((SeekEntryResult!13707 0))(
  ( (MissingZero!13707 (index!57225 (_ BitVec 32))) (Found!13707 (index!57226 (_ BitVec 32))) (Intermediate!13707 (undefined!14519 Bool) (index!57227 (_ BitVec 32)) (x!142188 (_ BitVec 32))) (Undefined!13707) (MissingVacant!13707 (index!57228 (_ BitVec 32))) )
))
(declare-fun lt!675121 () SeekEntryResult!13707)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105386 (_ BitVec 32)) SeekEntryResult!13707)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575326 (= lt!675121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135922 res!1076503) b!1575324))

(assert (= (and b!1575324 res!1076502) b!1575325))

(assert (= (and b!1575325 res!1076504) b!1575326))

(declare-fun m!1448391 () Bool)

(assert (=> start!135922 m!1448391))

(declare-fun m!1448393 () Bool)

(assert (=> start!135922 m!1448393))

(declare-fun m!1448395 () Bool)

(assert (=> b!1575325 m!1448395))

(declare-fun m!1448397 () Bool)

(assert (=> b!1575326 m!1448397))

(assert (=> b!1575326 m!1448397))

(declare-fun m!1448399 () Bool)

(assert (=> b!1575326 m!1448399))

(push 1)

(assert (not b!1575326))

(assert (not start!135922))

(assert (not b!1575325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

