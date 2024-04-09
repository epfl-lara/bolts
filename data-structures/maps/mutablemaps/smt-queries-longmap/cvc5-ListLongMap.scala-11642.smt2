; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135924 () Bool)

(assert start!135924)

(declare-fun res!1076512 () Bool)

(declare-fun e!878652 () Bool)

(assert (=> start!135924 (=> (not res!1076512) (not e!878652))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135924 (= res!1076512 (validMask!0 mask!898))))

(assert (=> start!135924 e!878652))

(assert (=> start!135924 true))

(declare-datatypes ((array!105388 0))(
  ( (array!105389 (arr!50827 (Array (_ BitVec 32) (_ BitVec 64))) (size!51378 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105388)

(declare-fun array_inv!39472 (array!105388) Bool)

(assert (=> start!135924 (array_inv!39472 _keys!605)))

(declare-fun b!1575333 () Bool)

(declare-fun res!1076513 () Bool)

(assert (=> b!1575333 (=> (not res!1076513) (not e!878652))))

(assert (=> b!1575333 (= res!1076513 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51378 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575334 () Bool)

(declare-fun res!1076511 () Bool)

(assert (=> b!1575334 (=> (not res!1076511) (not e!878652))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575334 (= res!1076511 (validKeyInArray!0 k!761))))

(declare-fun b!1575335 () Bool)

(assert (=> b!1575335 (= e!878652 false)))

(declare-datatypes ((SeekEntryResult!13708 0))(
  ( (MissingZero!13708 (index!57229 (_ BitVec 32))) (Found!13708 (index!57230 (_ BitVec 32))) (Intermediate!13708 (undefined!14520 Bool) (index!57231 (_ BitVec 32)) (x!142197 (_ BitVec 32))) (Undefined!13708) (MissingVacant!13708 (index!57232 (_ BitVec 32))) )
))
(declare-fun lt!675124 () SeekEntryResult!13708)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105388 (_ BitVec 32)) SeekEntryResult!13708)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575335 (= lt!675124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135924 res!1076512) b!1575333))

(assert (= (and b!1575333 res!1076513) b!1575334))

(assert (= (and b!1575334 res!1076511) b!1575335))

(declare-fun m!1448401 () Bool)

(assert (=> start!135924 m!1448401))

(declare-fun m!1448403 () Bool)

(assert (=> start!135924 m!1448403))

(declare-fun m!1448405 () Bool)

(assert (=> b!1575334 m!1448405))

(declare-fun m!1448407 () Bool)

(assert (=> b!1575335 m!1448407))

(assert (=> b!1575335 m!1448407))

(declare-fun m!1448409 () Bool)

(assert (=> b!1575335 m!1448409))

(push 1)

(assert (not b!1575335))

(assert (not start!135924))

(assert (not b!1575334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

