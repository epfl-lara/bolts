; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135814 () Bool)

(assert start!135814)

(declare-fun res!1076226 () Bool)

(declare-fun e!878411 () Bool)

(assert (=> start!135814 (=> (not res!1076226) (not e!878411))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135814 (= res!1076226 (validMask!0 mask!898))))

(assert (=> start!135814 e!878411))

(assert (=> start!135814 true))

(declare-datatypes ((array!105332 0))(
  ( (array!105333 (arr!50802 (Array (_ BitVec 32) (_ BitVec 64))) (size!51353 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105332)

(declare-fun array_inv!39447 (array!105332) Bool)

(assert (=> start!135814 (array_inv!39447 _keys!605)))

(declare-fun b!1574946 () Bool)

(declare-fun res!1076227 () Bool)

(assert (=> b!1574946 (=> (not res!1076227) (not e!878411))))

(assert (=> b!1574946 (= res!1076227 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51353 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574947 () Bool)

(declare-fun res!1076228 () Bool)

(assert (=> b!1574947 (=> (not res!1076228) (not e!878411))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574947 (= res!1076228 (validKeyInArray!0 k!761))))

(declare-fun b!1574948 () Bool)

(assert (=> b!1574948 (= e!878411 false)))

(declare-datatypes ((SeekEntryResult!13683 0))(
  ( (MissingZero!13683 (index!57129 (_ BitVec 32))) (Found!13683 (index!57130 (_ BitVec 32))) (Intermediate!13683 (undefined!14495 Bool) (index!57131 (_ BitVec 32)) (x!142088 (_ BitVec 32))) (Undefined!13683) (MissingVacant!13683 (index!57132 (_ BitVec 32))) )
))
(declare-fun lt!674977 () SeekEntryResult!13683)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105332 (_ BitVec 32)) SeekEntryResult!13683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574948 (= lt!674977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135814 res!1076226) b!1574946))

(assert (= (and b!1574946 res!1076227) b!1574947))

(assert (= (and b!1574947 res!1076228) b!1574948))

(declare-fun m!1448097 () Bool)

(assert (=> start!135814 m!1448097))

(declare-fun m!1448099 () Bool)

(assert (=> start!135814 m!1448099))

(declare-fun m!1448101 () Bool)

(assert (=> b!1574947 m!1448101))

(declare-fun m!1448103 () Bool)

(assert (=> b!1574948 m!1448103))

(assert (=> b!1574948 m!1448103))

(declare-fun m!1448105 () Bool)

(assert (=> b!1574948 m!1448105))

(push 1)

(assert (not b!1574947))

(assert (not b!1574948))

(assert (not start!135814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

