; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135826 () Bool)

(assert start!135826)

(declare-fun res!1076282 () Bool)

(declare-fun e!878448 () Bool)

(assert (=> start!135826 (=> (not res!1076282) (not e!878448))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135826 (= res!1076282 (validMask!0 mask!898))))

(assert (=> start!135826 e!878448))

(assert (=> start!135826 true))

(declare-datatypes ((array!105344 0))(
  ( (array!105345 (arr!50808 (Array (_ BitVec 32) (_ BitVec 64))) (size!51359 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105344)

(declare-fun array_inv!39453 (array!105344) Bool)

(assert (=> start!135826 (array_inv!39453 _keys!605)))

(declare-fun b!1575000 () Bool)

(declare-fun res!1076281 () Bool)

(assert (=> b!1575000 (=> (not res!1076281) (not e!878448))))

(assert (=> b!1575000 (= res!1076281 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51359 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575001 () Bool)

(declare-fun res!1076280 () Bool)

(assert (=> b!1575001 (=> (not res!1076280) (not e!878448))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575001 (= res!1076280 (validKeyInArray!0 k!761))))

(declare-fun b!1575002 () Bool)

(assert (=> b!1575002 (= e!878448 false)))

(declare-datatypes ((SeekEntryResult!13689 0))(
  ( (MissingZero!13689 (index!57153 (_ BitVec 32))) (Found!13689 (index!57154 (_ BitVec 32))) (Intermediate!13689 (undefined!14501 Bool) (index!57155 (_ BitVec 32)) (x!142110 (_ BitVec 32))) (Undefined!13689) (MissingVacant!13689 (index!57156 (_ BitVec 32))) )
))
(declare-fun lt!674995 () SeekEntryResult!13689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105344 (_ BitVec 32)) SeekEntryResult!13689)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575002 (= lt!674995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135826 res!1076282) b!1575000))

(assert (= (and b!1575000 res!1076281) b!1575001))

(assert (= (and b!1575001 res!1076280) b!1575002))

(declare-fun m!1448157 () Bool)

(assert (=> start!135826 m!1448157))

(declare-fun m!1448159 () Bool)

(assert (=> start!135826 m!1448159))

(declare-fun m!1448161 () Bool)

(assert (=> b!1575001 m!1448161))

(declare-fun m!1448163 () Bool)

(assert (=> b!1575002 m!1448163))

(assert (=> b!1575002 m!1448163))

(declare-fun m!1448165 () Bool)

(assert (=> b!1575002 m!1448165))

(push 1)

(assert (not b!1575001))

(assert (not b!1575002))

(assert (not start!135826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

