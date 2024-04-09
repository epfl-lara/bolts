; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135688 () Bool)

(assert start!135688)

(declare-fun res!1075975 () Bool)

(declare-fun e!878168 () Bool)

(assert (=> start!135688 (=> (not res!1075975) (not e!878168))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135688 (= res!1075975 (validMask!0 mask!898))))

(assert (=> start!135688 e!878168))

(assert (=> start!135688 true))

(declare-datatypes ((array!105287 0))(
  ( (array!105288 (arr!50784 (Array (_ BitVec 32) (_ BitVec 64))) (size!51335 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105287)

(declare-fun array_inv!39429 (array!105287) Bool)

(assert (=> start!135688 (array_inv!39429 _keys!605)))

(declare-fun b!1574541 () Bool)

(declare-fun res!1075976 () Bool)

(assert (=> b!1574541 (=> (not res!1075976) (not e!878168))))

(assert (=> b!1574541 (= res!1075976 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51335 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574542 () Bool)

(declare-fun res!1075974 () Bool)

(assert (=> b!1574542 (=> (not res!1075974) (not e!878168))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574542 (= res!1075974 (validKeyInArray!0 k!761))))

(declare-fun b!1574543 () Bool)

(declare-datatypes ((SeekEntryResult!13665 0))(
  ( (MissingZero!13665 (index!57057 (_ BitVec 32))) (Found!13665 (index!57058 (_ BitVec 32))) (Intermediate!13665 (undefined!14477 Bool) (index!57059 (_ BitVec 32)) (x!142004 (_ BitVec 32))) (Undefined!13665) (MissingVacant!13665 (index!57060 (_ BitVec 32))) )
))
(declare-fun lt!674815 () SeekEntryResult!13665)

(assert (=> b!1574543 (= e!878168 (and (is-Intermediate!13665 lt!674815) (not (undefined!14477 lt!674815)) (not (= (select (arr!50784 _keys!605) (index!57059 lt!674815)) k!761)) (not (= (select (arr!50784 _keys!605) (index!57059 lt!674815)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50784 _keys!605) (index!57059 lt!674815)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57059 lt!674815) #b00000000000000000000000000000000) (bvslt (index!57059 lt!674815) (bvadd #b00000000000000000000000000000001 mask!898)) (or (bvsgt (x!142004 lt!674815) #b01111111111111111111111111111110) (bvslt (x!142004 lt!674815) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105287 (_ BitVec 32)) SeekEntryResult!13665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574543 (= lt!674815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135688 res!1075975) b!1574541))

(assert (= (and b!1574541 res!1075976) b!1574542))

(assert (= (and b!1574542 res!1075974) b!1574543))

(declare-fun m!1447831 () Bool)

(assert (=> start!135688 m!1447831))

(declare-fun m!1447833 () Bool)

(assert (=> start!135688 m!1447833))

(declare-fun m!1447835 () Bool)

(assert (=> b!1574542 m!1447835))

(declare-fun m!1447837 () Bool)

(assert (=> b!1574543 m!1447837))

(declare-fun m!1447839 () Bool)

(assert (=> b!1574543 m!1447839))

(assert (=> b!1574543 m!1447839))

(declare-fun m!1447841 () Bool)

(assert (=> b!1574543 m!1447841))

(push 1)

(assert (not b!1574542))

(assert (not start!135688))

(assert (not b!1574543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165195 () Bool)

(assert (=> d!165195 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574542 d!165195))

(declare-fun d!165197 () Bool)

(assert (=> d!165197 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135688 d!165197))

(declare-fun d!165201 () Bool)

(assert (=> d!165201 (= (array_inv!39429 _keys!605) (bvsge (size!51335 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135688 d!165201))

(declare-fun b!1574616 () Bool)

(declare-fun e!878214 () SeekEntryResult!13665)

(declare-fun e!878213 () SeekEntryResult!13665)

(assert (=> b!1574616 (= e!878214 e!878213)))

(declare-fun c!145570 () Bool)

(declare-fun lt!674845 () (_ BitVec 64))

(assert (=> b!1574616 (= c!145570 (or (= lt!674845 k!761) (= (bvadd lt!674845 lt!674845) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165203 () Bool)

(declare-fun e!878211 () Bool)

(assert (=> d!165203 e!878211))

(declare-fun c!145572 () Bool)

(declare-fun lt!674844 () SeekEntryResult!13665)

(assert (=> d!165203 (= c!145572 (and (is-Intermediate!13665 lt!674844) (undefined!14477 lt!674844)))))

(assert (=> d!165203 (= lt!674844 e!878214)))

(declare-fun c!145571 () Bool)

(assert (=> d!165203 (= c!145571 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165203 (= lt!674845 (select (arr!50784 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165203 (validMask!0 mask!898)))

(assert (=> d!165203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674844)))

