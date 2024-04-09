; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136384 () Bool)

(assert start!136384)

(declare-fun res!1077425 () Bool)

(declare-fun e!879644 () Bool)

(assert (=> start!136384 (=> (not res!1077425) (not e!879644))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136384 (= res!1077425 (validMask!0 mask!910))))

(assert (=> start!136384 e!879644))

(assert (=> start!136384 true))

(declare-datatypes ((array!105527 0))(
  ( (array!105528 (arr!50880 (Array (_ BitVec 32) (_ BitVec 64))) (size!51431 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105527)

(declare-fun array_inv!39525 (array!105527) Bool)

(assert (=> start!136384 (array_inv!39525 _keys!610)))

(declare-fun b!1577026 () Bool)

(declare-fun res!1077426 () Bool)

(assert (=> b!1577026 (=> (not res!1077426) (not e!879644))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1577026 (= res!1077426 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50880 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50880 _keys!610) ee!12) (select (arr!50880 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577025 () Bool)

(declare-fun res!1077427 () Bool)

(assert (=> b!1577025 (=> (not res!1077427) (not e!879644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577025 (= res!1077427 (validKeyInArray!0 k!768))))

(declare-fun b!1577027 () Bool)

(declare-fun lt!675868 () (_ BitVec 32))

(assert (=> b!1577027 (= e!879644 (or (bvslt lt!675868 #b00000000000000000000000000000000) (bvsge lt!675868 (bvadd #b00000000000000000000000000000001 mask!910))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577027 (= lt!675868 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577024 () Bool)

(declare-fun res!1077428 () Bool)

(assert (=> b!1577024 (=> (not res!1077428) (not e!879644))))

(assert (=> b!1577024 (= res!1077428 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51431 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136384 res!1077425) b!1577024))

(assert (= (and b!1577024 res!1077428) b!1577025))

(assert (= (and b!1577025 res!1077427) b!1577026))

(assert (= (and b!1577026 res!1077426) b!1577027))

(declare-fun m!1449379 () Bool)

(assert (=> start!136384 m!1449379))

(declare-fun m!1449381 () Bool)

(assert (=> start!136384 m!1449381))

(declare-fun m!1449383 () Bool)

(assert (=> b!1577026 m!1449383))

(declare-fun m!1449385 () Bool)

(assert (=> b!1577025 m!1449385))

(declare-fun m!1449387 () Bool)

(assert (=> b!1577027 m!1449387))

(push 1)

(assert (not b!1577025))

(assert (not b!1577027))

(assert (not start!136384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165763 () Bool)

(assert (=> d!165763 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577025 d!165763))

(declare-fun d!165765 () Bool)

(declare-fun lt!675877 () (_ BitVec 32))

(assert (=> d!165765 (and (bvsge lt!675877 #b00000000000000000000000000000000) (bvslt lt!675877 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165765 (= lt!675877 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165765 (validMask!0 mask!910)))

(assert (=> d!165765 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675877)))

(declare-fun bs!45544 () Bool)

(assert (= bs!45544 d!165765))

(declare-fun m!1449393 () Bool)

(assert (=> bs!45544 m!1449393))

(assert (=> bs!45544 m!1449379))

(assert (=> b!1577027 d!165765))

(declare-fun d!165767 () Bool)

(assert (=> d!165767 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136384 d!165767))

(declare-fun d!165775 () Bool)

(assert (=> d!165775 (= (array_inv!39525 _keys!610) (bvsge (size!51431 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136384 d!165775))

(push 1)

