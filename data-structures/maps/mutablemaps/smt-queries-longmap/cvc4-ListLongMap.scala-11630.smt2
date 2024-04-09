; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135736 () Bool)

(assert start!135736)

(declare-fun res!1076087 () Bool)

(declare-fun e!878267 () Bool)

(assert (=> start!135736 (=> (not res!1076087) (not e!878267))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135736 (= res!1076087 (validMask!0 mask!898))))

(assert (=> start!135736 e!878267))

(assert (=> start!135736 true))

(declare-datatypes ((array!105308 0))(
  ( (array!105309 (arr!50793 (Array (_ BitVec 32) (_ BitVec 64))) (size!51344 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105308)

(declare-fun array_inv!39438 (array!105308) Bool)

(assert (=> start!135736 (array_inv!39438 _keys!605)))

(declare-fun b!1574703 () Bool)

(declare-fun res!1076085 () Bool)

(assert (=> b!1574703 (=> (not res!1076085) (not e!878267))))

(assert (=> b!1574703 (= res!1076085 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51344 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574704 () Bool)

(declare-fun res!1076086 () Bool)

(assert (=> b!1574704 (=> (not res!1076086) (not e!878267))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574704 (= res!1076086 (validKeyInArray!0 k!761))))

(declare-fun b!1574705 () Bool)

(assert (=> b!1574705 (= e!878267 false)))

(declare-datatypes ((SeekEntryResult!13674 0))(
  ( (MissingZero!13674 (index!57093 (_ BitVec 32))) (Found!13674 (index!57094 (_ BitVec 32))) (Intermediate!13674 (undefined!14486 Bool) (index!57095 (_ BitVec 32)) (x!142043 (_ BitVec 32))) (Undefined!13674) (MissingVacant!13674 (index!57096 (_ BitVec 32))) )
))
(declare-fun lt!674878 () SeekEntryResult!13674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105308 (_ BitVec 32)) SeekEntryResult!13674)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574705 (= lt!674878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135736 res!1076087) b!1574703))

(assert (= (and b!1574703 res!1076085) b!1574704))

(assert (= (and b!1574704 res!1076086) b!1574705))

(declare-fun m!1447947 () Bool)

(assert (=> start!135736 m!1447947))

(declare-fun m!1447949 () Bool)

(assert (=> start!135736 m!1447949))

(declare-fun m!1447951 () Bool)

(assert (=> b!1574704 m!1447951))

(declare-fun m!1447953 () Bool)

(assert (=> b!1574705 m!1447953))

(assert (=> b!1574705 m!1447953))

(declare-fun m!1447955 () Bool)

(assert (=> b!1574705 m!1447955))

(push 1)

(assert (not b!1574705))

(assert (not start!135736))

(assert (not b!1574704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

