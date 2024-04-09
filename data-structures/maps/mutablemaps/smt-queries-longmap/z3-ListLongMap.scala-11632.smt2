; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135776 () Bool)

(assert start!135776)

(declare-fun res!1076161 () Bool)

(declare-fun e!878342 () Bool)

(assert (=> start!135776 (=> (not res!1076161) (not e!878342))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135776 (= res!1076161 (validMask!0 mask!898))))

(assert (=> start!135776 e!878342))

(assert (=> start!135776 true))

(declare-datatypes ((array!105321 0))(
  ( (array!105322 (arr!50798 (Array (_ BitVec 32) (_ BitVec 64))) (size!51349 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105321)

(declare-fun array_inv!39443 (array!105321) Bool)

(assert (=> start!135776 (array_inv!39443 _keys!605)))

(declare-fun b!1574829 () Bool)

(declare-fun res!1076162 () Bool)

(assert (=> b!1574829 (=> (not res!1076162) (not e!878342))))

(assert (=> b!1574829 (= res!1076162 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51349 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574830 () Bool)

(declare-fun res!1076160 () Bool)

(assert (=> b!1574830 (=> (not res!1076160) (not e!878342))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574830 (= res!1076160 (validKeyInArray!0 k0!761))))

(declare-fun b!1574831 () Bool)

(declare-datatypes ((SeekEntryResult!13679 0))(
  ( (MissingZero!13679 (index!57113 (_ BitVec 32))) (Found!13679 (index!57114 (_ BitVec 32))) (Intermediate!13679 (undefined!14491 Bool) (index!57115 (_ BitVec 32)) (x!142070 (_ BitVec 32))) (Undefined!13679) (MissingVacant!13679 (index!57116 (_ BitVec 32))) )
))
(declare-fun lt!674929 () SeekEntryResult!13679)

(get-info :version)

(assert (=> b!1574831 (= e!878342 (and ((_ is Intermediate!13679) lt!674929) (not (undefined!14491 lt!674929)) (not (= (select (arr!50798 _keys!605) (index!57115 lt!674929)) k0!761)) (not (= (select (arr!50798 _keys!605) (index!57115 lt!674929)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50798 _keys!605) (index!57115 lt!674929)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57115 lt!674929) #b00000000000000000000000000000000) (bvsge (index!57115 lt!674929) (bvadd #b00000000000000000000000000000001 mask!898)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105321 (_ BitVec 32)) SeekEntryResult!13679)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574831 (= lt!674929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135776 res!1076161) b!1574829))

(assert (= (and b!1574829 res!1076162) b!1574830))

(assert (= (and b!1574830 res!1076160) b!1574831))

(declare-fun m!1448029 () Bool)

(assert (=> start!135776 m!1448029))

(declare-fun m!1448031 () Bool)

(assert (=> start!135776 m!1448031))

(declare-fun m!1448033 () Bool)

(assert (=> b!1574830 m!1448033))

(declare-fun m!1448035 () Bool)

(assert (=> b!1574831 m!1448035))

(declare-fun m!1448037 () Bool)

(assert (=> b!1574831 m!1448037))

(assert (=> b!1574831 m!1448037))

(declare-fun m!1448039 () Bool)

(assert (=> b!1574831 m!1448039))

(check-sat (not b!1574830) (not start!135776) (not b!1574831))
(check-sat)
(get-model)

(declare-fun d!165257 () Bool)

(assert (=> d!165257 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574830 d!165257))

(declare-fun d!165259 () Bool)

(assert (=> d!165259 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135776 d!165259))

(declare-fun d!165271 () Bool)

(assert (=> d!165271 (= (array_inv!39443 _keys!605) (bvsge (size!51349 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135776 d!165271))

(declare-fun b!1574913 () Bool)

(declare-fun lt!674962 () SeekEntryResult!13679)

(assert (=> b!1574913 (and (bvsge (index!57115 lt!674962) #b00000000000000000000000000000000) (bvslt (index!57115 lt!674962) (size!51349 _keys!605)))))

(declare-fun e!878394 () Bool)

(assert (=> b!1574913 (= e!878394 (= (select (arr!50798 _keys!605) (index!57115 lt!674962)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574914 () Bool)

(declare-fun e!878391 () SeekEntryResult!13679)

(assert (=> b!1574914 (= e!878391 (Intermediate!13679 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574915 () Bool)

(assert (=> b!1574915 (and (bvsge (index!57115 lt!674962) #b00000000000000000000000000000000) (bvslt (index!57115 lt!674962) (size!51349 _keys!605)))))

(declare-fun res!1076198 () Bool)

(assert (=> b!1574915 (= res!1076198 (= (select (arr!50798 _keys!605) (index!57115 lt!674962)) k0!761))))

(assert (=> b!1574915 (=> res!1076198 e!878394)))

(declare-fun e!878393 () Bool)

(assert (=> b!1574915 (= e!878393 e!878394)))

(declare-fun b!1574916 () Bool)

(declare-fun e!878392 () SeekEntryResult!13679)

(assert (=> b!1574916 (= e!878392 (Intermediate!13679 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574917 () Bool)

(declare-fun e!878390 () Bool)

(assert (=> b!1574917 (= e!878390 e!878393)))

(declare-fun res!1076200 () Bool)

(assert (=> b!1574917 (= res!1076200 (and ((_ is Intermediate!13679) lt!674962) (not (undefined!14491 lt!674962)) (bvslt (x!142070 lt!674962) #b01111111111111111111111111111110) (bvsge (x!142070 lt!674962) #b00000000000000000000000000000000) (bvsge (x!142070 lt!674962) #b00000000000000000000000000000000)))))

(assert (=> b!1574917 (=> (not res!1076200) (not e!878393))))

(declare-fun b!1574919 () Bool)

(assert (=> b!1574919 (= e!878390 (bvsge (x!142070 lt!674962) #b01111111111111111111111111111110))))

(declare-fun b!1574920 () Bool)

(assert (=> b!1574920 (and (bvsge (index!57115 lt!674962) #b00000000000000000000000000000000) (bvslt (index!57115 lt!674962) (size!51349 _keys!605)))))

(declare-fun res!1076199 () Bool)

(assert (=> b!1574920 (= res!1076199 (= (select (arr!50798 _keys!605) (index!57115 lt!674962)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574920 (=> res!1076199 e!878394)))

(declare-fun b!1574921 () Bool)

(assert (=> b!1574921 (= e!878392 e!878391)))

(declare-fun c!145624 () Bool)

(declare-fun lt!674961 () (_ BitVec 64))

(assert (=> b!1574921 (= c!145624 (or (= lt!674961 k0!761) (= (bvadd lt!674961 lt!674961) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165273 () Bool)

(assert (=> d!165273 e!878390))

(declare-fun c!145626 () Bool)

(assert (=> d!165273 (= c!145626 (and ((_ is Intermediate!13679) lt!674962) (undefined!14491 lt!674962)))))

(assert (=> d!165273 (= lt!674962 e!878392)))

(declare-fun c!145625 () Bool)

(assert (=> d!165273 (= c!145625 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165273 (= lt!674961 (select (arr!50798 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165273 (validMask!0 mask!898)))

(assert (=> d!165273 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!674962)))

(declare-fun b!1574918 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574918 (= e!878391 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and d!165273 c!145625) b!1574916))

(assert (= (and d!165273 (not c!145625)) b!1574921))

(assert (= (and b!1574921 c!145624) b!1574914))

(assert (= (and b!1574921 (not c!145624)) b!1574918))

(assert (= (and d!165273 c!145626) b!1574919))

(assert (= (and d!165273 (not c!145626)) b!1574917))

(assert (= (and b!1574917 res!1076200) b!1574915))

(assert (= (and b!1574915 (not res!1076198)) b!1574920))

(assert (= (and b!1574920 (not res!1076199)) b!1574913))

(declare-fun m!1448069 () Bool)

(assert (=> b!1574920 m!1448069))

(assert (=> b!1574913 m!1448069))

(assert (=> d!165273 m!1448037))

(declare-fun m!1448071 () Bool)

(assert (=> d!165273 m!1448071))

(assert (=> d!165273 m!1448029))

(assert (=> b!1574918 m!1448037))

(declare-fun m!1448073 () Bool)

(assert (=> b!1574918 m!1448073))

(assert (=> b!1574918 m!1448073))

(declare-fun m!1448075 () Bool)

(assert (=> b!1574918 m!1448075))

(assert (=> b!1574915 m!1448069))

(assert (=> b!1574831 d!165273))

(declare-fun d!165283 () Bool)

(declare-fun lt!674968 () (_ BitVec 32))

(declare-fun lt!674967 () (_ BitVec 32))

(assert (=> d!165283 (= lt!674968 (bvmul (bvxor lt!674967 (bvlshr lt!674967 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165283 (= lt!674967 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165283 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076201 (let ((h!38422 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142077 (bvmul (bvxor h!38422 (bvlshr h!38422 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142077 (bvlshr x!142077 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076201 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076201 #b00000000000000000000000000000000))))))

(assert (=> d!165283 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!674968 (bvlshr lt!674968 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574831 d!165283))

(check-sat (not d!165273) (not b!1574918))
(check-sat)
