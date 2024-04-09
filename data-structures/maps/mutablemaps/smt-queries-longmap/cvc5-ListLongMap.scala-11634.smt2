; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135816 () Bool)

(assert start!135816)

(declare-fun res!1076235 () Bool)

(declare-fun e!878418 () Bool)

(assert (=> start!135816 (=> (not res!1076235) (not e!878418))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135816 (= res!1076235 (validMask!0 mask!898))))

(assert (=> start!135816 e!878418))

(assert (=> start!135816 true))

(declare-datatypes ((array!105334 0))(
  ( (array!105335 (arr!50803 (Array (_ BitVec 32) (_ BitVec 64))) (size!51354 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105334)

(declare-fun array_inv!39448 (array!105334) Bool)

(assert (=> start!135816 (array_inv!39448 _keys!605)))

(declare-fun b!1574955 () Bool)

(declare-fun res!1076236 () Bool)

(assert (=> b!1574955 (=> (not res!1076236) (not e!878418))))

(assert (=> b!1574955 (= res!1076236 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51354 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574956 () Bool)

(declare-fun res!1076237 () Bool)

(assert (=> b!1574956 (=> (not res!1076237) (not e!878418))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574956 (= res!1076237 (validKeyInArray!0 k!761))))

(declare-fun b!1574957 () Bool)

(assert (=> b!1574957 (= e!878418 false)))

(declare-datatypes ((SeekEntryResult!13684 0))(
  ( (MissingZero!13684 (index!57133 (_ BitVec 32))) (Found!13684 (index!57134 (_ BitVec 32))) (Intermediate!13684 (undefined!14496 Bool) (index!57135 (_ BitVec 32)) (x!142097 (_ BitVec 32))) (Undefined!13684) (MissingVacant!13684 (index!57136 (_ BitVec 32))) )
))
(declare-fun lt!674980 () SeekEntryResult!13684)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105334 (_ BitVec 32)) SeekEntryResult!13684)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574957 (= lt!674980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135816 res!1076235) b!1574955))

(assert (= (and b!1574955 res!1076236) b!1574956))

(assert (= (and b!1574956 res!1076237) b!1574957))

(declare-fun m!1448107 () Bool)

(assert (=> start!135816 m!1448107))

(declare-fun m!1448109 () Bool)

(assert (=> start!135816 m!1448109))

(declare-fun m!1448111 () Bool)

(assert (=> b!1574956 m!1448111))

(declare-fun m!1448113 () Bool)

(assert (=> b!1574957 m!1448113))

(assert (=> b!1574957 m!1448113))

(declare-fun m!1448115 () Bool)

(assert (=> b!1574957 m!1448115))

(push 1)

(assert (not b!1574956))

(assert (not start!135816))

(assert (not b!1574957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

