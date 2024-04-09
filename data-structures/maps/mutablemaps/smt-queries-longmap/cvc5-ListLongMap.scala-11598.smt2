; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135306 () Bool)

(assert start!135306)

(declare-fun res!1074979 () Bool)

(declare-fun e!877391 () Bool)

(assert (=> start!135306 (=> (not res!1074979) (not e!877391))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135306 (= res!1074979 (validMask!0 mask!889))))

(assert (=> start!135306 e!877391))

(assert (=> start!135306 true))

(declare-datatypes ((array!105085 0))(
  ( (array!105086 (arr!50695 (Array (_ BitVec 32) (_ BitVec 64))) (size!51246 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105085)

(declare-fun array_inv!39340 (array!105085) Bool)

(assert (=> start!135306 (array_inv!39340 _keys!600)))

(declare-fun b!1573344 () Bool)

(declare-fun res!1074978 () Bool)

(assert (=> b!1573344 (=> (not res!1074978) (not e!877391))))

(assert (=> b!1573344 (= res!1074978 (= (size!51246 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573345 () Bool)

(declare-fun res!1074980 () Bool)

(assert (=> b!1573345 (=> (not res!1074980) (not e!877391))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573345 (= res!1074980 (validKeyInArray!0 k!754))))

(declare-fun b!1573346 () Bool)

(declare-fun lt!674344 () Bool)

(declare-datatypes ((SeekEntryResult!13624 0))(
  ( (MissingZero!13624 (index!56893 (_ BitVec 32))) (Found!13624 (index!56894 (_ BitVec 32))) (Intermediate!13624 (undefined!14436 Bool) (index!56895 (_ BitVec 32)) (x!141704 (_ BitVec 32))) (Undefined!13624) (MissingVacant!13624 (index!56896 (_ BitVec 32))) )
))
(declare-fun lt!674343 () SeekEntryResult!13624)

(assert (=> b!1573346 (= e!877391 (and (or lt!674344 (not (undefined!14436 lt!674343))) (or lt!674344 (undefined!14436 lt!674343))))))

(assert (=> b!1573346 (= lt!674344 (not (is-Intermediate!13624 lt!674343)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105085 (_ BitVec 32)) SeekEntryResult!13624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573346 (= lt!674343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135306 res!1074979) b!1573344))

(assert (= (and b!1573344 res!1074978) b!1573345))

(assert (= (and b!1573345 res!1074980) b!1573346))

(declare-fun m!1446805 () Bool)

(assert (=> start!135306 m!1446805))

(declare-fun m!1446807 () Bool)

(assert (=> start!135306 m!1446807))

(declare-fun m!1446809 () Bool)

(assert (=> b!1573345 m!1446809))

(declare-fun m!1446811 () Bool)

(assert (=> b!1573346 m!1446811))

(assert (=> b!1573346 m!1446811))

(declare-fun m!1446813 () Bool)

(assert (=> b!1573346 m!1446813))

(push 1)

(assert (not b!1573346))

(assert (not b!1573345))

(assert (not start!135306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!877417 () SeekEntryResult!13624)

(declare-fun b!1573384 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573384 (= e!877417 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573385 () Bool)

(declare-fun e!877418 () SeekEntryResult!13624)

(assert (=> b!1573385 (= e!877418 e!877417)))

(declare-fun c!145444 () Bool)

(declare-fun lt!674361 () (_ BitVec 64))

(assert (=> b!1573385 (= c!145444 (or (= lt!674361 k!754) (= (bvadd lt!674361 lt!674361) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573386 () Bool)

(declare-fun lt!674362 () SeekEntryResult!13624)

(assert (=> b!1573386 (and (bvsge (index!56895 lt!674362) #b00000000000000000000000000000000) (bvslt (index!56895 lt!674362) (size!51246 _keys!600)))))

(declare-fun res!1075005 () Bool)

(assert (=> b!1573386 (= res!1075005 (= (select (arr!50695 _keys!600) (index!56895 lt!674362)) k!754))))

(declare-fun e!877416 () Bool)

(assert (=> b!1573386 (=> res!1075005 e!877416)))

(declare-fun e!877419 () Bool)

(assert (=> b!1573386 (= e!877419 e!877416)))

(declare-fun b!1573387 () Bool)

(assert (=> b!1573387 (and (bvsge (index!56895 lt!674362) #b00000000000000000000000000000000) (bvslt (index!56895 lt!674362) (size!51246 _keys!600)))))

(declare-fun res!1075007 () Bool)

(assert (=> b!1573387 (= res!1075007 (= (select (arr!50695 _keys!600) (index!56895 lt!674362)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573387 (=> res!1075007 e!877416)))

(declare-fun b!1573388 () Bool)

(assert (=> b!1573388 (= e!877417 (Intermediate!13624 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573389 () Bool)

(declare-fun e!877415 () Bool)

(assert (=> b!1573389 (= e!877415 e!877419)))

(declare-fun res!1075006 () Bool)

(assert (=> b!1573389 (= res!1075006 (and (is-Intermediate!13624 lt!674362) (not (undefined!14436 lt!674362)) (bvslt (x!141704 lt!674362) #b01111111111111111111111111111110) (bvsge (x!141704 lt!674362) #b00000000000000000000000000000000) (bvsge (x!141704 lt!674362) #b00000000000000000000000000000000)))))

(assert (=> b!1573389 (=> (not res!1075006) (not e!877419))))

(declare-fun d!164923 () Bool)

(assert (=> d!164923 e!877415))

(declare-fun c!145446 () Bool)

(assert (=> d!164923 (= c!145446 (and (is-Intermediate!13624 lt!674362) (undefined!14436 lt!674362)))))

(assert (=> d!164923 (= lt!674362 e!877418)))

(declare-fun c!145445 () Bool)

(assert (=> d!164923 (= c!145445 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164923 (= lt!674361 (select (arr!50695 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164923 (validMask!0 mask!889)))

(assert (=> d!164923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674362)))

(declare-fun b!1573383 () Bool)

(assert (=> b!1573383 (and (bvsge (index!56895 lt!674362) #b00000000000000000000000000000000) (bvslt (index!56895 lt!674362) (size!51246 _keys!600)))))

(assert (=> b!1573383 (= e!877416 (= (select (arr!50695 _keys!600) (index!56895 lt!674362)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573390 () Bool)

(assert (=> b!1573390 (= e!877415 (bvsge (x!141704 lt!674362) #b01111111111111111111111111111110))))

(declare-fun b!1573391 () Bool)

(assert (=> b!1573391 (= e!877418 (Intermediate!13624 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(assert (= (and d!164923 c!145445) b!1573391))

(assert (= (and d!164923 (not c!145445)) b!1573385))

(assert (= (and b!1573385 c!145444) b!1573388))

(assert (= (and b!1573385 (not c!145444)) b!1573384))

(assert (= (and d!164923 c!145446) b!1573390))

(assert (= (and d!164923 (not c!145446)) b!1573389))

(assert (= (and b!1573389 res!1075006) b!1573386))

(assert (= (and b!1573386 (not res!1075005)) b!1573387))

(assert (= (and b!1573387 (not res!1075007)) b!1573383))

(assert (=> d!164923 m!1446811))

(declare-fun m!1446835 () Bool)

(assert (=> d!164923 m!1446835))

(assert (=> d!164923 m!1446805))

(declare-fun m!1446837 () Bool)

(assert (=> b!1573387 m!1446837))

(assert (=> b!1573383 m!1446837))

(assert (=> b!1573386 m!1446837))

(assert (=> b!1573384 m!1446811))

(declare-fun m!1446839 () Bool)

(assert (=> b!1573384 m!1446839))

(assert (=> b!1573384 m!1446839))

(declare-fun m!1446841 () Bool)

(assert (=> b!1573384 m!1446841))

(assert (=> b!1573346 d!164923))

(declare-fun d!164941 () Bool)

(declare-fun lt!674368 () (_ BitVec 32))

(declare-fun lt!674367 () (_ BitVec 32))

(assert (=> d!164941 (= lt!674368 (bvmul (bvxor lt!674367 (bvlshr lt!674367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164941 (= lt!674367 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164941 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075008 (let ((h!38399 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141708 (bvmul (bvxor h!38399 (bvlshr h!38399 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141708 (bvlshr x!141708 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075008 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075008 #b00000000000000000000000000000000))))))

(assert (=> d!164941 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674368 (bvlshr lt!674368 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573346 d!164941))

(declare-fun d!164943 () Bool)

(assert (=> d!164943 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573345 d!164943))

(declare-fun d!164945 () Bool)

(assert (=> d!164945 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135306 d!164945))

(declare-fun d!164949 () Bool)

(assert (=> d!164949 (= (array_inv!39340 _keys!600) (bvsge (size!51246 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135306 d!164949))

(push 1)

(assert (not b!1573384))

(assert (not d!164923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

