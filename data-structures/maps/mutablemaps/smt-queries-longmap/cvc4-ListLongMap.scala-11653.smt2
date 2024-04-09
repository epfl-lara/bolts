; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136258 () Bool)

(assert start!136258)

(declare-fun b!1576566 () Bool)

(declare-fun res!1077121 () Bool)

(declare-fun e!879382 () Bool)

(assert (=> b!1576566 (=> (not res!1077121) (not e!879382))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576566 (= res!1077121 (validKeyInArray!0 k!761))))

(declare-fun b!1576568 () Bool)

(declare-fun e!879384 () Bool)

(declare-datatypes ((SeekEntryResult!13743 0))(
  ( (MissingZero!13743 (index!57369 (_ BitVec 32))) (Found!13743 (index!57370 (_ BitVec 32))) (Intermediate!13743 (undefined!14555 Bool) (index!57371 (_ BitVec 32)) (x!142380 (_ BitVec 32))) (Undefined!13743) (MissingVacant!13743 (index!57372 (_ BitVec 32))) )
))
(declare-fun lt!675669 () SeekEntryResult!13743)

(declare-datatypes ((array!105482 0))(
  ( (array!105483 (arr!50862 (Array (_ BitVec 32) (_ BitVec 64))) (size!51413 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105482)

(assert (=> b!1576568 (= e!879384 (and (not (is-Undefined!13743 lt!675669)) (not (is-Found!13743 lt!675669)) (is-MissingZero!13743 lt!675669) (or (bvslt (index!57369 lt!675669) #b00000000000000000000000000000000) (bvsge (index!57369 lt!675669) (size!51413 _keys!605)))))))

(declare-fun err!194 () SeekEntryResult!13743)

(assert (=> b!1576568 (= lt!675669 err!194)))

(assert (=> b!1576568 true))

(declare-fun b!1576565 () Bool)

(declare-fun res!1077119 () Bool)

(assert (=> b!1576565 (=> (not res!1077119) (not e!879382))))

(declare-fun mask!898 () (_ BitVec 32))

(assert (=> b!1576565 (= res!1077119 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51413 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1077122 () Bool)

(assert (=> start!136258 (=> (not res!1077122) (not e!879382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136258 (= res!1077122 (validMask!0 mask!898))))

(assert (=> start!136258 e!879382))

(assert (=> start!136258 true))

(declare-fun array_inv!39507 (array!105482) Bool)

(assert (=> start!136258 (array_inv!39507 _keys!605)))

(declare-fun b!1576567 () Bool)

(assert (=> b!1576567 (= e!879382 e!879384)))

(declare-fun res!1077120 () Bool)

(assert (=> b!1576567 (=> (not res!1077120) (not e!879384))))

(declare-fun lt!675670 () Bool)

(declare-fun lt!675668 () SeekEntryResult!13743)

(assert (=> b!1576567 (= res!1077120 (and (or lt!675670 (not (undefined!14555 lt!675668))) (or lt!675670 (undefined!14555 lt!675668))))))

(assert (=> b!1576567 (= lt!675670 (not (is-Intermediate!13743 lt!675668)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105482 (_ BitVec 32)) SeekEntryResult!13743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576567 (= lt!675668 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136258 res!1077122) b!1576565))

(assert (= (and b!1576565 res!1077119) b!1576566))

(assert (= (and b!1576566 res!1077121) b!1576567))

(assert (= (and b!1576567 res!1077120) b!1576568))

(declare-fun m!1449109 () Bool)

(assert (=> b!1576566 m!1449109))

(declare-fun m!1449111 () Bool)

(assert (=> start!136258 m!1449111))

(declare-fun m!1449113 () Bool)

(assert (=> start!136258 m!1449113))

(declare-fun m!1449115 () Bool)

(assert (=> b!1576567 m!1449115))

(assert (=> b!1576567 m!1449115))

(declare-fun m!1449117 () Bool)

(assert (=> b!1576567 m!1449117))

(push 1)

(assert (not start!136258))

(assert (not b!1576566))

(assert (not b!1576567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165655 () Bool)

(assert (=> d!165655 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136258 d!165655))

(declare-fun d!165669 () Bool)

(assert (=> d!165669 (= (array_inv!39507 _keys!605) (bvsge (size!51413 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136258 d!165669))

(declare-fun d!165671 () Bool)

(assert (=> d!165671 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576566 d!165671))

(declare-fun b!1576641 () Bool)

(declare-fun lt!675700 () SeekEntryResult!13743)

(assert (=> b!1576641 (and (bvsge (index!57371 lt!675700) #b00000000000000000000000000000000) (bvslt (index!57371 lt!675700) (size!51413 _keys!605)))))

(declare-fun e!879429 () Bool)

(assert (=> b!1576641 (= e!879429 (= (select (arr!50862 _keys!605) (index!57371 lt!675700)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576642 () Bool)

(assert (=> b!1576642 (and (bvsge (index!57371 lt!675700) #b00000000000000000000000000000000) (bvslt (index!57371 lt!675700) (size!51413 _keys!605)))))

(declare-fun res!1077150 () Bool)

(assert (=> b!1576642 (= res!1077150 (= (select (arr!50862 _keys!605) (index!57371 lt!675700)) k!761))))

(assert (=> b!1576642 (=> res!1077150 e!879429)))

(declare-fun e!879428 () Bool)

(assert (=> b!1576642 (= e!879428 e!879429)))

(declare-fun b!1576644 () Bool)

(declare-fun e!879425 () SeekEntryResult!13743)

(assert (=> b!1576644 (= e!879425 (Intermediate!13743 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576645 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576645 (= e!879425 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576646 () Bool)

(declare-fun e!879426 () Bool)

(assert (=> b!1576646 (= e!879426 e!879428)))

(declare-fun res!1077151 () Bool)

(assert (=> b!1576646 (= res!1077151 (and (is-Intermediate!13743 lt!675700) (not (undefined!14555 lt!675700)) (bvslt (x!142380 lt!675700) #b01111111111111111111111111111110) (bvsge (x!142380 lt!675700) #b00000000000000000000000000000000) (bvsge (x!142380 lt!675700) #b00000000000000000000000000000000)))))

(assert (=> b!1576646 (=> (not res!1077151) (not e!879428))))

(declare-fun b!1576647 () Bool)

(assert (=> b!1576647 (and (bvsge (index!57371 lt!675700) #b00000000000000000000000000000000) (bvslt (index!57371 lt!675700) (size!51413 _keys!605)))))

(declare-fun res!1077149 () Bool)

(assert (=> b!1576647 (= res!1077149 (= (select (arr!50862 _keys!605) (index!57371 lt!675700)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576647 (=> res!1077149 e!879429)))

(declare-fun b!1576643 () Bool)

(declare-fun e!879427 () SeekEntryResult!13743)

(assert (=> b!1576643 (= e!879427 (Intermediate!13743 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165673 () Bool)

(assert (=> d!165673 e!879426))

(declare-fun c!146031 () Bool)

(assert (=> d!165673 (= c!146031 (and (is-Intermediate!13743 lt!675700) (undefined!14555 lt!675700)))))

(assert (=> d!165673 (= lt!675700 e!879427)))

(declare-fun c!146030 () Bool)

(assert (=> d!165673 (= c!146030 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675699 () (_ BitVec 64))

(assert (=> d!165673 (= lt!675699 (select (arr!50862 _keys!605) (toIndex!0 k!761 mask!898)))))

