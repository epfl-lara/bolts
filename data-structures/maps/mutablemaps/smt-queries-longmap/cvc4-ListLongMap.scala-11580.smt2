; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134974 () Bool)

(assert start!134974)

(declare-fun res!1074247 () Bool)

(declare-fun e!876629 () Bool)

(assert (=> start!134974 (=> (not res!1074247) (not e!876629))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134974 (= res!1074247 (validMask!0 mask!889))))

(assert (=> start!134974 e!876629))

(assert (=> start!134974 true))

(declare-datatypes ((array!104960 0))(
  ( (array!104961 (arr!50643 (Array (_ BitVec 32) (_ BitVec 64))) (size!51194 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104960)

(declare-fun array_inv!39288 (array!104960) Bool)

(assert (=> start!134974 (array_inv!39288 _keys!600)))

(declare-fun b!1572093 () Bool)

(declare-fun res!1074248 () Bool)

(assert (=> b!1572093 (=> (not res!1074248) (not e!876629))))

(assert (=> b!1572093 (= res!1074248 (= (size!51194 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572094 () Bool)

(declare-fun res!1074246 () Bool)

(assert (=> b!1572094 (=> (not res!1074246) (not e!876629))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572094 (= res!1074246 (validKeyInArray!0 k!754))))

(declare-fun b!1572095 () Bool)

(declare-datatypes ((SeekEntryResult!13572 0))(
  ( (MissingZero!13572 (index!56685 (_ BitVec 32))) (Found!13572 (index!56686 (_ BitVec 32))) (Intermediate!13572 (undefined!14384 Bool) (index!56687 (_ BitVec 32)) (x!141457 (_ BitVec 32))) (Undefined!13572) (MissingVacant!13572 (index!56688 (_ BitVec 32))) )
))
(declare-fun lt!673825 () SeekEntryResult!13572)

(assert (=> b!1572095 (= e!876629 (and (is-Intermediate!13572 lt!673825) (not (undefined!14384 lt!673825)) (not (= (select (arr!50643 _keys!600) (index!56687 lt!673825)) k!754)) (not (= (select (arr!50643 _keys!600) (index!56687 lt!673825)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50643 _keys!600) (index!56687 lt!673825)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!56687 lt!673825) #b00000000000000000000000000000000) (bvsge (index!56687 lt!673825) (bvadd #b00000000000000000000000000000001 mask!889)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104960 (_ BitVec 32)) SeekEntryResult!13572)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572095 (= lt!673825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134974 res!1074247) b!1572093))

(assert (= (and b!1572093 res!1074248) b!1572094))

(assert (= (and b!1572094 res!1074246) b!1572095))

(declare-fun m!1445953 () Bool)

(assert (=> start!134974 m!1445953))

(declare-fun m!1445955 () Bool)

(assert (=> start!134974 m!1445955))

(declare-fun m!1445957 () Bool)

(assert (=> b!1572094 m!1445957))

(declare-fun m!1445959 () Bool)

(assert (=> b!1572095 m!1445959))

(declare-fun m!1445961 () Bool)

(assert (=> b!1572095 m!1445961))

(assert (=> b!1572095 m!1445961))

(declare-fun m!1445963 () Bool)

(assert (=> b!1572095 m!1445963))

(push 1)

(assert (not start!134974))

(assert (not b!1572094))

(assert (not b!1572095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164665 () Bool)

(assert (=> d!164665 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134974 d!164665))

(declare-fun d!164669 () Bool)

(assert (=> d!164669 (= (array_inv!39288 _keys!600) (bvsge (size!51194 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134974 d!164669))

(declare-fun d!164671 () Bool)

(assert (=> d!164671 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572094 d!164671))

(declare-fun b!1572168 () Bool)

(declare-fun lt!673854 () SeekEntryResult!13572)

(assert (=> b!1572168 (and (bvsge (index!56687 lt!673854) #b00000000000000000000000000000000) (bvslt (index!56687 lt!673854) (size!51194 _keys!600)))))

(declare-fun e!876674 () Bool)

(assert (=> b!1572168 (= e!876674 (= (select (arr!50643 _keys!600) (index!56687 lt!673854)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876672 () SeekEntryResult!13572)

(declare-fun b!1572169 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572169 (= e!876672 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572170 () Bool)

(declare-fun e!876671 () SeekEntryResult!13572)

(assert (=> b!1572170 (= e!876671 (Intermediate!13572 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572171 () Bool)

(assert (=> b!1572171 (= e!876672 (Intermediate!13572 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572173 () Bool)

(declare-fun e!876673 () Bool)

(assert (=> b!1572173 (= e!876673 (bvsge (x!141457 lt!673854) #b01111111111111111111111111111110))))

(declare-fun b!1572174 () Bool)

(declare-fun e!876675 () Bool)

(assert (=> b!1572174 (= e!876673 e!876675)))

(declare-fun res!1074277 () Bool)

(assert (=> b!1572174 (= res!1074277 (and (is-Intermediate!13572 lt!673854) (not (undefined!14384 lt!673854)) (bvslt (x!141457 lt!673854) #b01111111111111111111111111111110) (bvsge (x!141457 lt!673854) #b00000000000000000000000000000000) (bvsge (x!141457 lt!673854) #b00000000000000000000000000000000)))))

(assert (=> b!1572174 (=> (not res!1074277) (not e!876675))))

(declare-fun b!1572175 () Bool)

(assert (=> b!1572175 (and (bvsge (index!56687 lt!673854) #b00000000000000000000000000000000) (bvslt (index!56687 lt!673854) (size!51194 _keys!600)))))

(declare-fun res!1074275 () Bool)

(assert (=> b!1572175 (= res!1074275 (= (select (arr!50643 _keys!600) (index!56687 lt!673854)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572175 (=> res!1074275 e!876674)))

(declare-fun b!1572176 () Bool)

(assert (=> b!1572176 (= e!876671 e!876672)))

(declare-fun c!145193 () Bool)

(declare-fun lt!673855 () (_ BitVec 64))

(assert (=> b!1572176 (= c!145193 (or (= lt!673855 k!754) (= (bvadd lt!673855 lt!673855) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164673 () Bool)

(assert (=> d!164673 e!876673))

(declare-fun c!145194 () Bool)

(assert (=> d!164673 (= c!145194 (and (is-Intermediate!13572 lt!673854) (undefined!14384 lt!673854)))))

(assert (=> d!164673 (= lt!673854 e!876671)))

(declare-fun c!145192 () Bool)

(assert (=> d!164673 (= c!145192 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164673 (= lt!673855 (select (arr!50643 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164673 (validMask!0 mask!889)))

(assert (=> d!164673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673854)))

(declare-fun b!1572172 () Bool)

(assert (=> b!1572172 (and (bvsge (index!56687 lt!673854) #b00000000000000000000000000000000) (bvslt (index!56687 lt!673854) (size!51194 _keys!600)))))

(declare-fun res!1074276 () Bool)

(assert (=> b!1572172 (= res!1074276 (= (select (arr!50643 _keys!600) (index!56687 lt!673854)) k!754))))

(assert (=> b!1572172 (=> res!1074276 e!876674)))

(assert (=> b!1572172 (= e!876675 e!876674)))

(assert (= (and d!164673 c!145192) b!1572170))

(assert (= (and d!164673 (not c!145192)) b!1572176))

(assert (= (and b!1572176 c!145193) b!1572171))

(assert (= (and b!1572176 (not c!145193)) b!1572169))

(assert (= (and d!164673 c!145194) b!1572173))

(assert (= (and d!164673 (not c!145194)) b!1572174))

(assert (= (and b!1572174 res!1074277) b!1572172))

(assert (= (and b!1572172 (not res!1074276)) b!1572175))

(assert (= (and b!1572175 (not res!1074275)) b!1572168))

(assert (=> b!1572169 m!1445961))

(declare-fun m!1445981 () Bool)

(assert (=> b!1572169 m!1445981))

(assert (=> b!1572169 m!1445981))

(declare-fun m!1445983 () Bool)

(assert (=> b!1572169 m!1445983))

(assert (=> d!164673 m!1445961))

(declare-fun m!1445985 () Bool)

(assert (=> d!164673 m!1445985))

(assert (=> d!164673 m!1445953))

(declare-fun m!1445987 () Bool)

(assert (=> b!1572172 m!1445987))

(assert (=> b!1572168 m!1445987))

(assert (=> b!1572175 m!1445987))

(assert (=> b!1572095 d!164673))

(declare-fun d!164687 () Bool)

(declare-fun lt!673861 () (_ BitVec 32))

(declare-fun lt!673860 () (_ BitVec 32))

(assert (=> d!164687 (= lt!673861 (bvmul (bvxor lt!673860 (bvlshr lt!673860 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164687 (= lt!673860 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164687 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074278 (let ((h!38380 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141463 (bvmul (bvxor h!38380 (bvlshr h!38380 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141463 (bvlshr x!141463 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074278 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074278 #b00000000000000000000000000000000))))))

(assert (=> d!164687 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673861 (bvlshr lt!673861 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572095 d!164687))

(push 1)

(assert (not b!1572169))

(assert (not d!164673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

