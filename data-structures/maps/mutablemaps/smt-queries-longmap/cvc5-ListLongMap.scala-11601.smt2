; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135414 () Bool)

(assert start!135414)

(declare-fun b!1573688 () Bool)

(declare-fun res!1075171 () Bool)

(declare-fun e!877601 () Bool)

(assert (=> b!1573688 (=> (not res!1075171) (not e!877601))))

(declare-datatypes ((array!105112 0))(
  ( (array!105113 (arr!50704 (Array (_ BitVec 32) (_ BitVec 64))) (size!51255 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105112)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1573688 (= res!1075171 (= (size!51255 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573689 () Bool)

(declare-fun res!1075169 () Bool)

(assert (=> b!1573689 (=> (not res!1075169) (not e!877601))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573689 (= res!1075169 (validKeyInArray!0 k!754))))

(declare-fun b!1573690 () Bool)

(declare-fun e!877602 () Bool)

(assert (=> b!1573690 (= e!877601 e!877602)))

(declare-fun res!1075172 () Bool)

(assert (=> b!1573690 (=> (not res!1075172) (not e!877602))))

(declare-fun lt!674527 () Bool)

(declare-datatypes ((SeekEntryResult!13633 0))(
  ( (MissingZero!13633 (index!56929 (_ BitVec 32))) (Found!13633 (index!56930 (_ BitVec 32))) (Intermediate!13633 (undefined!14445 Bool) (index!56931 (_ BitVec 32)) (x!141755 (_ BitVec 32))) (Undefined!13633) (MissingVacant!13633 (index!56932 (_ BitVec 32))) )
))
(declare-fun lt!674526 () SeekEntryResult!13633)

(assert (=> b!1573690 (= res!1075172 (and (or lt!674527 (not (undefined!14445 lt!674526))) (or lt!674527 (undefined!14445 lt!674526))))))

(assert (=> b!1573690 (= lt!674527 (not (is-Intermediate!13633 lt!674526)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105112 (_ BitVec 32)) SeekEntryResult!13633)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573690 (= lt!674526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun lt!674525 () SeekEntryResult!13633)

(declare-fun b!1573691 () Bool)

(assert (=> b!1573691 (= e!877602 (or (is-MissingVacant!13633 lt!674525) (and (is-Found!13633 lt!674525) (not (= (select (arr!50704 _keys!600) (index!56930 lt!674525)) k!754)))))))

(declare-fun err!162 () SeekEntryResult!13633)

(assert (=> b!1573691 (= lt!674525 err!162)))

(assert (=> b!1573691 true))

(declare-fun res!1075170 () Bool)

(assert (=> start!135414 (=> (not res!1075170) (not e!877601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135414 (= res!1075170 (validMask!0 mask!889))))

(assert (=> start!135414 e!877601))

(assert (=> start!135414 true))

(declare-fun array_inv!39349 (array!105112) Bool)

(assert (=> start!135414 (array_inv!39349 _keys!600)))

(assert (= (and start!135414 res!1075170) b!1573688))

(assert (= (and b!1573688 res!1075171) b!1573689))

(assert (= (and b!1573689 res!1075169) b!1573690))

(assert (= (and b!1573690 res!1075172) b!1573691))

(declare-fun m!1446967 () Bool)

(assert (=> b!1573689 m!1446967))

(declare-fun m!1446969 () Bool)

(assert (=> b!1573690 m!1446969))

(assert (=> b!1573690 m!1446969))

(declare-fun m!1446971 () Bool)

(assert (=> b!1573690 m!1446971))

(declare-fun m!1446973 () Bool)

(assert (=> b!1573691 m!1446973))

(declare-fun m!1446975 () Bool)

(assert (=> start!135414 m!1446975))

(declare-fun m!1446977 () Bool)

(assert (=> start!135414 m!1446977))

(push 1)

(assert (not b!1573690))

(assert (not start!135414))

(assert (not b!1573689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1573761 () Bool)

(declare-fun e!877647 () SeekEntryResult!13633)

(assert (=> b!1573761 (= e!877647 (Intermediate!13633 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573762 () Bool)

(declare-fun e!877650 () SeekEntryResult!13633)

(assert (=> b!1573762 (= e!877647 e!877650)))

(declare-fun c!145535 () Bool)

(declare-fun lt!674557 () (_ BitVec 64))

(assert (=> b!1573762 (= c!145535 (or (= lt!674557 k!754) (= (bvadd lt!674557 lt!674557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573763 () Bool)

(declare-fun lt!674556 () SeekEntryResult!13633)

(assert (=> b!1573763 (and (bvsge (index!56931 lt!674556) #b00000000000000000000000000000000) (bvslt (index!56931 lt!674556) (size!51255 _keys!600)))))

(declare-fun e!877648 () Bool)

(assert (=> b!1573763 (= e!877648 (= (select (arr!50704 _keys!600) (index!56931 lt!674556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573764 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573764 (= e!877650 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573765 () Bool)

(declare-fun e!877649 () Bool)

(declare-fun e!877646 () Bool)

(assert (=> b!1573765 (= e!877649 e!877646)))

(declare-fun res!1075215 () Bool)

(assert (=> b!1573765 (= res!1075215 (and (is-Intermediate!13633 lt!674556) (not (undefined!14445 lt!674556)) (bvslt (x!141755 lt!674556) #b01111111111111111111111111111110) (bvsge (x!141755 lt!674556) #b00000000000000000000000000000000) (bvsge (x!141755 lt!674556) #b00000000000000000000000000000000)))))

(assert (=> b!1573765 (=> (not res!1075215) (not e!877646))))

(declare-fun d!165021 () Bool)

(assert (=> d!165021 e!877649))

(declare-fun c!145534 () Bool)

(assert (=> d!165021 (= c!145534 (and (is-Intermediate!13633 lt!674556) (undefined!14445 lt!674556)))))

(assert (=> d!165021 (= lt!674556 e!877647)))

(declare-fun c!145536 () Bool)

(assert (=> d!165021 (= c!145536 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165021 (= lt!674557 (select (arr!50704 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!165021 (validMask!0 mask!889)))

(assert (=> d!165021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674556)))

(declare-fun b!1573766 () Bool)

(assert (=> b!1573766 (and (bvsge (index!56931 lt!674556) #b00000000000000000000000000000000) (bvslt (index!56931 lt!674556) (size!51255 _keys!600)))))

(declare-fun res!1075214 () Bool)

(assert (=> b!1573766 (= res!1075214 (= (select (arr!50704 _keys!600) (index!56931 lt!674556)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573766 (=> res!1075214 e!877648)))

(declare-fun b!1573767 () Bool)

(assert (=> b!1573767 (and (bvsge (index!56931 lt!674556) #b00000000000000000000000000000000) (bvslt (index!56931 lt!674556) (size!51255 _keys!600)))))

(declare-fun res!1075213 () Bool)

(assert (=> b!1573767 (= res!1075213 (= (select (arr!50704 _keys!600) (index!56931 lt!674556)) k!754))))

(assert (=> b!1573767 (=> res!1075213 e!877648)))

(assert (=> b!1573767 (= e!877646 e!877648)))

(declare-fun b!1573768 () Bool)

(assert (=> b!1573768 (= e!877650 (Intermediate!13633 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573769 () Bool)

(assert (=> b!1573769 (= e!877649 (bvsge (x!141755 lt!674556) #b01111111111111111111111111111110))))

(assert (= (and d!165021 c!145536) b!1573761))

(assert (= (and d!165021 (not c!145536)) b!1573762))

(assert (= (and b!1573762 c!145535) b!1573768))

(assert (= (and b!1573762 (not c!145535)) b!1573764))

(assert (= (and d!165021 c!145534) b!1573769))

(assert (= (and d!165021 (not c!145534)) b!1573765))

(assert (= (and b!1573765 res!1075215) b!1573767))

(assert (= (and b!1573767 (not res!1075213)) b!1573766))

(assert (= (and b!1573766 (not res!1075214)) b!1573763))

(declare-fun m!1447011 () Bool)

(assert (=> b!1573767 m!1447011))

(assert (=> b!1573764 m!1446969))

(declare-fun m!1447013 () Bool)

(assert (=> b!1573764 m!1447013))

(assert (=> b!1573764 m!1447013))

(declare-fun m!1447015 () Bool)

(assert (=> b!1573764 m!1447015))

(assert (=> d!165021 m!1446969))

(declare-fun m!1447017 () Bool)

(assert (=> d!165021 m!1447017))

(assert (=> d!165021 m!1446975))

(assert (=> b!1573766 m!1447011))

(assert (=> b!1573763 m!1447011))

(assert (=> b!1573690 d!165021))

(declare-fun d!165027 () Bool)

(declare-fun lt!674569 () (_ BitVec 32))

(declare-fun lt!674568 () (_ BitVec 32))

(assert (=> d!165027 (= lt!674569 (bvmul (bvxor lt!674568 (bvlshr lt!674568 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165027 (= lt!674568 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165027 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075216 (let ((h!38409 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141761 (bvmul (bvxor h!38409 (bvlshr h!38409 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141761 (bvlshr x!141761 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075216 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075216 #b00000000000000000000000000000000))))))

(assert (=> d!165027 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674569 (bvlshr lt!674569 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573690 d!165027))

(declare-fun d!165033 () Bool)

(assert (=> d!165033 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135414 d!165033))

(declare-fun d!165043 () Bool)

(assert (=> d!165043 (= (array_inv!39349 _keys!600) (bvsge (size!51255 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135414 d!165043))

(declare-fun d!165045 () Bool)

(assert (=> d!165045 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573689 d!165045))

(push 1)

(assert (not b!1573764))

(assert (not d!165021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

