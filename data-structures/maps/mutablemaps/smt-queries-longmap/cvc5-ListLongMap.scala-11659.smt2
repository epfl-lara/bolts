; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136380 () Bool)

(assert start!136380)

(declare-fun b!1577002 () Bool)

(declare-fun res!1077402 () Bool)

(declare-fun e!879633 () Bool)

(assert (=> b!1577002 (=> (not res!1077402) (not e!879633))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105523 0))(
  ( (array!105524 (arr!50878 (Array (_ BitVec 32) (_ BitVec 64))) (size!51429 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105523)

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577002 (= res!1077402 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50878 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50878 _keys!610) ee!12) (select (arr!50878 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077401 () Bool)

(assert (=> start!136380 (=> (not res!1077401) (not e!879633))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136380 (= res!1077401 (validMask!0 mask!910))))

(assert (=> start!136380 e!879633))

(assert (=> start!136380 true))

(declare-fun array_inv!39523 (array!105523) Bool)

(assert (=> start!136380 (array_inv!39523 _keys!610)))

(declare-fun b!1577001 () Bool)

(declare-fun res!1077403 () Bool)

(assert (=> b!1577001 (=> (not res!1077403) (not e!879633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577001 (= res!1077403 (validKeyInArray!0 k!768))))

(declare-fun b!1577000 () Bool)

(declare-fun res!1077404 () Bool)

(assert (=> b!1577000 (=> (not res!1077404) (not e!879633))))

(assert (=> b!1577000 (= res!1077404 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51429 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577003 () Bool)

(declare-fun lt!675862 () (_ BitVec 32))

(assert (=> b!1577003 (= e!879633 (or (bvslt lt!675862 #b00000000000000000000000000000000) (bvsge lt!675862 (bvadd #b00000000000000000000000000000001 mask!910))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577003 (= lt!675862 (nextIndex!0 ee!12 x!458 mask!910))))

(assert (= (and start!136380 res!1077401) b!1577000))

(assert (= (and b!1577000 res!1077404) b!1577001))

(assert (= (and b!1577001 res!1077403) b!1577002))

(assert (= (and b!1577002 res!1077402) b!1577003))

(declare-fun m!1449359 () Bool)

(assert (=> b!1577002 m!1449359))

(declare-fun m!1449361 () Bool)

(assert (=> start!136380 m!1449361))

(declare-fun m!1449363 () Bool)

(assert (=> start!136380 m!1449363))

(declare-fun m!1449365 () Bool)

(assert (=> b!1577001 m!1449365))

(declare-fun m!1449367 () Bool)

(assert (=> b!1577003 m!1449367))

(push 1)

(assert (not b!1577003))

(assert (not start!136380))

(assert (not b!1577001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165759 () Bool)

(declare-fun lt!675874 () (_ BitVec 32))

(assert (=> d!165759 (and (bvsge lt!675874 #b00000000000000000000000000000000) (bvslt lt!675874 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165759 (= lt!675874 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165759 (validMask!0 mask!910)))

(assert (=> d!165759 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675874)))

(declare-fun bs!45543 () Bool)

(assert (= bs!45543 d!165759))

(declare-fun m!1449391 () Bool)

(assert (=> bs!45543 m!1449391))

(assert (=> bs!45543 m!1449361))

(assert (=> b!1577003 d!165759))

(declare-fun d!165761 () Bool)

(assert (=> d!165761 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136380 d!165761))

(declare-fun d!165771 () Bool)

(assert (=> d!165771 (= (array_inv!39523 _keys!610) (bvsge (size!51429 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136380 d!165771))

(declare-fun d!165773 () Bool)

(assert (=> d!165773 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577001 d!165773))

(push 1)

(assert (not d!165759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

