; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135720 () Bool)

(assert start!135720)

(declare-fun res!1076014 () Bool)

(declare-fun e!878220 () Bool)

(assert (=> start!135720 (=> (not res!1076014) (not e!878220))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135720 (= res!1076014 (validMask!0 mask!898))))

(assert (=> start!135720 e!878220))

(assert (=> start!135720 true))

(declare-datatypes ((array!105292 0))(
  ( (array!105293 (arr!50785 (Array (_ BitVec 32) (_ BitVec 64))) (size!51336 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105292)

(declare-fun array_inv!39430 (array!105292) Bool)

(assert (=> start!135720 (array_inv!39430 _keys!605)))

(declare-fun b!1574631 () Bool)

(declare-fun res!1076015 () Bool)

(assert (=> b!1574631 (=> (not res!1076015) (not e!878220))))

(assert (=> b!1574631 (= res!1076015 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51336 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574632 () Bool)

(declare-fun res!1076013 () Bool)

(assert (=> b!1574632 (=> (not res!1076013) (not e!878220))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574632 (= res!1076013 (validKeyInArray!0 k!761))))

(declare-fun b!1574633 () Bool)

(assert (=> b!1574633 (= e!878220 false)))

(declare-datatypes ((SeekEntryResult!13666 0))(
  ( (MissingZero!13666 (index!57061 (_ BitVec 32))) (Found!13666 (index!57062 (_ BitVec 32))) (Intermediate!13666 (undefined!14478 Bool) (index!57063 (_ BitVec 32)) (x!142019 (_ BitVec 32))) (Undefined!13666) (MissingVacant!13666 (index!57064 (_ BitVec 32))) )
))
(declare-fun lt!674854 () SeekEntryResult!13666)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105292 (_ BitVec 32)) SeekEntryResult!13666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574633 (= lt!674854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135720 res!1076014) b!1574631))

(assert (= (and b!1574631 res!1076015) b!1574632))

(assert (= (and b!1574632 res!1076013) b!1574633))

(declare-fun m!1447867 () Bool)

(assert (=> start!135720 m!1447867))

(declare-fun m!1447869 () Bool)

(assert (=> start!135720 m!1447869))

(declare-fun m!1447871 () Bool)

(assert (=> b!1574632 m!1447871))

(declare-fun m!1447873 () Bool)

(assert (=> b!1574633 m!1447873))

(assert (=> b!1574633 m!1447873))

(declare-fun m!1447875 () Bool)

(assert (=> b!1574633 m!1447875))

(push 1)

(assert (not b!1574633))

(assert (not b!1574632))

(assert (not start!135720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

