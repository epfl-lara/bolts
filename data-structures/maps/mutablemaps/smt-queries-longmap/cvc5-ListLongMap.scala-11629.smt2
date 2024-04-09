; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135726 () Bool)

(assert start!135726)

(declare-fun res!1076040 () Bool)

(declare-fun e!878237 () Bool)

(assert (=> start!135726 (=> (not res!1076040) (not e!878237))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135726 (= res!1076040 (validMask!0 mask!898))))

(assert (=> start!135726 e!878237))

(assert (=> start!135726 true))

(declare-datatypes ((array!105298 0))(
  ( (array!105299 (arr!50788 (Array (_ BitVec 32) (_ BitVec 64))) (size!51339 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105298)

(declare-fun array_inv!39433 (array!105298) Bool)

(assert (=> start!135726 (array_inv!39433 _keys!605)))

(declare-fun b!1574658 () Bool)

(declare-fun res!1076042 () Bool)

(assert (=> b!1574658 (=> (not res!1076042) (not e!878237))))

(assert (=> b!1574658 (= res!1076042 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51339 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574659 () Bool)

(declare-fun res!1076041 () Bool)

(assert (=> b!1574659 (=> (not res!1076041) (not e!878237))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574659 (= res!1076041 (validKeyInArray!0 k!761))))

(declare-fun b!1574660 () Bool)

(assert (=> b!1574660 (= e!878237 false)))

(declare-datatypes ((SeekEntryResult!13669 0))(
  ( (MissingZero!13669 (index!57073 (_ BitVec 32))) (Found!13669 (index!57074 (_ BitVec 32))) (Intermediate!13669 (undefined!14481 Bool) (index!57075 (_ BitVec 32)) (x!142030 (_ BitVec 32))) (Undefined!13669) (MissingVacant!13669 (index!57076 (_ BitVec 32))) )
))
(declare-fun lt!674863 () SeekEntryResult!13669)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105298 (_ BitVec 32)) SeekEntryResult!13669)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574660 (= lt!674863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135726 res!1076040) b!1574658))

(assert (= (and b!1574658 res!1076042) b!1574659))

(assert (= (and b!1574659 res!1076041) b!1574660))

(declare-fun m!1447897 () Bool)

(assert (=> start!135726 m!1447897))

(declare-fun m!1447899 () Bool)

(assert (=> start!135726 m!1447899))

(declare-fun m!1447901 () Bool)

(assert (=> b!1574659 m!1447901))

(declare-fun m!1447903 () Bool)

(assert (=> b!1574660 m!1447903))

(assert (=> b!1574660 m!1447903))

(declare-fun m!1447905 () Bool)

(assert (=> b!1574660 m!1447905))

(push 1)

(assert (not b!1574659))

(assert (not b!1574660))

(assert (not start!135726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

