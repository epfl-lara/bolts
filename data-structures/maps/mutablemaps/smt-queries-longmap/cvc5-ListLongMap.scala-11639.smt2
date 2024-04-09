; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135906 () Bool)

(assert start!135906)

(declare-fun res!1076430 () Bool)

(declare-fun e!878598 () Bool)

(assert (=> start!135906 (=> (not res!1076430) (not e!878598))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135906 (= res!1076430 (validMask!0 mask!898))))

(assert (=> start!135906 e!878598))

(assert (=> start!135906 true))

(declare-datatypes ((array!105370 0))(
  ( (array!105371 (arr!50818 (Array (_ BitVec 32) (_ BitVec 64))) (size!51369 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105370)

(declare-fun array_inv!39463 (array!105370) Bool)

(assert (=> start!135906 (array_inv!39463 _keys!605)))

(declare-fun b!1575252 () Bool)

(declare-fun res!1076432 () Bool)

(assert (=> b!1575252 (=> (not res!1076432) (not e!878598))))

(assert (=> b!1575252 (= res!1076432 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51369 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575253 () Bool)

(declare-fun res!1076431 () Bool)

(assert (=> b!1575253 (=> (not res!1076431) (not e!878598))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575253 (= res!1076431 (validKeyInArray!0 k!761))))

(declare-fun b!1575254 () Bool)

(assert (=> b!1575254 (= e!878598 false)))

(declare-datatypes ((SeekEntryResult!13699 0))(
  ( (MissingZero!13699 (index!57193 (_ BitVec 32))) (Found!13699 (index!57194 (_ BitVec 32))) (Intermediate!13699 (undefined!14511 Bool) (index!57195 (_ BitVec 32)) (x!142164 (_ BitVec 32))) (Undefined!13699) (MissingVacant!13699 (index!57196 (_ BitVec 32))) )
))
(declare-fun lt!675097 () SeekEntryResult!13699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105370 (_ BitVec 32)) SeekEntryResult!13699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575254 (= lt!675097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135906 res!1076430) b!1575252))

(assert (= (and b!1575252 res!1076432) b!1575253))

(assert (= (and b!1575253 res!1076431) b!1575254))

(declare-fun m!1448311 () Bool)

(assert (=> start!135906 m!1448311))

(declare-fun m!1448313 () Bool)

(assert (=> start!135906 m!1448313))

(declare-fun m!1448315 () Bool)

(assert (=> b!1575253 m!1448315))

(declare-fun m!1448317 () Bool)

(assert (=> b!1575254 m!1448317))

(assert (=> b!1575254 m!1448317))

(declare-fun m!1448319 () Bool)

(assert (=> b!1575254 m!1448319))

(push 1)

(assert (not b!1575254))

(assert (not start!135906))

(assert (not b!1575253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

