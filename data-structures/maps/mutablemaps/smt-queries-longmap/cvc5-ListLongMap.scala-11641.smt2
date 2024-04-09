; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135918 () Bool)

(assert start!135918)

(declare-fun res!1076486 () Bool)

(declare-fun e!878634 () Bool)

(assert (=> start!135918 (=> (not res!1076486) (not e!878634))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135918 (= res!1076486 (validMask!0 mask!898))))

(assert (=> start!135918 e!878634))

(assert (=> start!135918 true))

(declare-datatypes ((array!105382 0))(
  ( (array!105383 (arr!50824 (Array (_ BitVec 32) (_ BitVec 64))) (size!51375 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105382)

(declare-fun array_inv!39469 (array!105382) Bool)

(assert (=> start!135918 (array_inv!39469 _keys!605)))

(declare-fun b!1575306 () Bool)

(declare-fun res!1076485 () Bool)

(assert (=> b!1575306 (=> (not res!1076485) (not e!878634))))

(assert (=> b!1575306 (= res!1076485 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51375 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575307 () Bool)

(declare-fun res!1076484 () Bool)

(assert (=> b!1575307 (=> (not res!1076484) (not e!878634))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575307 (= res!1076484 (validKeyInArray!0 k!761))))

(declare-fun b!1575308 () Bool)

(assert (=> b!1575308 (= e!878634 false)))

(declare-datatypes ((SeekEntryResult!13705 0))(
  ( (MissingZero!13705 (index!57217 (_ BitVec 32))) (Found!13705 (index!57218 (_ BitVec 32))) (Intermediate!13705 (undefined!14517 Bool) (index!57219 (_ BitVec 32)) (x!142186 (_ BitVec 32))) (Undefined!13705) (MissingVacant!13705 (index!57220 (_ BitVec 32))) )
))
(declare-fun lt!675115 () SeekEntryResult!13705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105382 (_ BitVec 32)) SeekEntryResult!13705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575308 (= lt!675115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135918 res!1076486) b!1575306))

(assert (= (and b!1575306 res!1076485) b!1575307))

(assert (= (and b!1575307 res!1076484) b!1575308))

(declare-fun m!1448371 () Bool)

(assert (=> start!135918 m!1448371))

(declare-fun m!1448373 () Bool)

(assert (=> start!135918 m!1448373))

(declare-fun m!1448375 () Bool)

(assert (=> b!1575307 m!1448375))

(declare-fun m!1448377 () Bool)

(assert (=> b!1575308 m!1448377))

(assert (=> b!1575308 m!1448377))

(declare-fun m!1448379 () Bool)

(assert (=> b!1575308 m!1448379))

(push 1)

(assert (not b!1575308))

(assert (not start!135918))

(assert (not b!1575307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

