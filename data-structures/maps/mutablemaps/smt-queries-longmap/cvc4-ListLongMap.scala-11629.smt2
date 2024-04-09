; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135730 () Bool)

(assert start!135730)

(declare-fun res!1076059 () Bool)

(declare-fun e!878249 () Bool)

(assert (=> start!135730 (=> (not res!1076059) (not e!878249))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135730 (= res!1076059 (validMask!0 mask!898))))

(assert (=> start!135730 e!878249))

(assert (=> start!135730 true))

(declare-datatypes ((array!105302 0))(
  ( (array!105303 (arr!50790 (Array (_ BitVec 32) (_ BitVec 64))) (size!51341 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105302)

(declare-fun array_inv!39435 (array!105302) Bool)

(assert (=> start!135730 (array_inv!39435 _keys!605)))

(declare-fun b!1574676 () Bool)

(declare-fun res!1076060 () Bool)

(assert (=> b!1574676 (=> (not res!1076060) (not e!878249))))

(assert (=> b!1574676 (= res!1076060 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51341 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574677 () Bool)

(declare-fun res!1076058 () Bool)

(assert (=> b!1574677 (=> (not res!1076058) (not e!878249))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574677 (= res!1076058 (validKeyInArray!0 k!761))))

(declare-fun b!1574678 () Bool)

(assert (=> b!1574678 (= e!878249 false)))

(declare-datatypes ((SeekEntryResult!13671 0))(
  ( (MissingZero!13671 (index!57081 (_ BitVec 32))) (Found!13671 (index!57082 (_ BitVec 32))) (Intermediate!13671 (undefined!14483 Bool) (index!57083 (_ BitVec 32)) (x!142032 (_ BitVec 32))) (Undefined!13671) (MissingVacant!13671 (index!57084 (_ BitVec 32))) )
))
(declare-fun lt!674869 () SeekEntryResult!13671)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105302 (_ BitVec 32)) SeekEntryResult!13671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574678 (= lt!674869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135730 res!1076059) b!1574676))

(assert (= (and b!1574676 res!1076060) b!1574677))

(assert (= (and b!1574677 res!1076058) b!1574678))

(declare-fun m!1447917 () Bool)

(assert (=> start!135730 m!1447917))

(declare-fun m!1447919 () Bool)

(assert (=> start!135730 m!1447919))

(declare-fun m!1447921 () Bool)

(assert (=> b!1574677 m!1447921))

(declare-fun m!1447923 () Bool)

(assert (=> b!1574678 m!1447923))

(assert (=> b!1574678 m!1447923))

(declare-fun m!1447925 () Bool)

(assert (=> b!1574678 m!1447925))

(push 1)

(assert (not b!1574677))

(assert (not b!1574678))

(assert (not start!135730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

