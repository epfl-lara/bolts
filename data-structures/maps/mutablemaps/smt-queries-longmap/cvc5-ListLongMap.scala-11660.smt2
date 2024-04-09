; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136410 () Bool)

(assert start!136410)

(declare-fun e!879650 () Bool)

(declare-fun x!458 () (_ BitVec 32))

(declare-fun lt!675880 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun b!1577039 () Bool)

(assert (=> b!1577039 (= e!879650 (and (bvsge lt!675880 #b00000000000000000000000000000000) (bvslt lt!675880 (bvadd #b00000000000000000000000000000001 mask!910)) (bvslt (bvadd #b00000000000000000000000000000001 x!458) #b00000000000000000000000000000000)))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577039 (= lt!675880 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577038 () Bool)

(declare-fun res!1077439 () Bool)

(assert (=> b!1577038 (=> (not res!1077439) (not e!879650))))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105532 0))(
  ( (array!105533 (arr!50881 (Array (_ BitVec 32) (_ BitVec 64))) (size!51432 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105532)

(assert (=> b!1577038 (= res!1077439 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50881 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50881 _keys!610) ee!12) (select (arr!50881 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577036 () Bool)

(declare-fun res!1077437 () Bool)

(assert (=> b!1577036 (=> (not res!1077437) (not e!879650))))

(assert (=> b!1577036 (= res!1077437 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51432 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun res!1077440 () Bool)

(assert (=> start!136410 (=> (not res!1077440) (not e!879650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136410 (= res!1077440 (validMask!0 mask!910))))

(assert (=> start!136410 e!879650))

(assert (=> start!136410 true))

(declare-fun array_inv!39526 (array!105532) Bool)

(assert (=> start!136410 (array_inv!39526 _keys!610)))

(declare-fun b!1577037 () Bool)

(declare-fun res!1077438 () Bool)

(assert (=> b!1577037 (=> (not res!1077438) (not e!879650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577037 (= res!1077438 (validKeyInArray!0 k!768))))

(assert (= (and start!136410 res!1077440) b!1577036))

(assert (= (and b!1577036 res!1077437) b!1577037))

(assert (= (and b!1577037 res!1077438) b!1577038))

(assert (= (and b!1577038 res!1077439) b!1577039))

(declare-fun m!1449395 () Bool)

(assert (=> b!1577039 m!1449395))

(declare-fun m!1449397 () Bool)

(assert (=> b!1577038 m!1449397))

(declare-fun m!1449399 () Bool)

(assert (=> start!136410 m!1449399))

(declare-fun m!1449401 () Bool)

(assert (=> start!136410 m!1449401))

(declare-fun m!1449403 () Bool)

(assert (=> b!1577037 m!1449403))

(push 1)

(assert (not start!136410))

(assert (not b!1577039))

(assert (not b!1577037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

