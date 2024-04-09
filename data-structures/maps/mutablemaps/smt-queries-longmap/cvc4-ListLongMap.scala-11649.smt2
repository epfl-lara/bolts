; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136102 () Bool)

(assert start!136102)

(declare-fun b!1575998 () Bool)

(declare-fun res!1076864 () Bool)

(declare-fun e!879050 () Bool)

(assert (=> b!1575998 (=> (not res!1076864) (not e!879050))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105446 0))(
  ( (array!105447 (arr!50850 (Array (_ BitVec 32) (_ BitVec 64))) (size!51401 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105446)

(assert (=> b!1575998 (= res!1076864 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51401 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1076866 () Bool)

(assert (=> start!136102 (=> (not res!1076866) (not e!879050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136102 (= res!1076866 (validMask!0 mask!898))))

(assert (=> start!136102 e!879050))

(assert (=> start!136102 true))

(declare-fun array_inv!39495 (array!105446) Bool)

(assert (=> start!136102 (array_inv!39495 _keys!605)))

(declare-fun b!1575999 () Bool)

(declare-fun res!1076867 () Bool)

(assert (=> b!1575999 (=> (not res!1076867) (not e!879050))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575999 (= res!1076867 (validKeyInArray!0 k!761))))

(declare-fun b!1576000 () Bool)

(declare-fun e!879051 () Bool)

(assert (=> b!1576000 (= e!879050 e!879051)))

(declare-fun res!1076865 () Bool)

(assert (=> b!1576000 (=> (not res!1076865) (not e!879051))))

(declare-datatypes ((SeekEntryResult!13731 0))(
  ( (MissingZero!13731 (index!57321 (_ BitVec 32))) (Found!13731 (index!57322 (_ BitVec 32))) (Intermediate!13731 (undefined!14543 Bool) (index!57323 (_ BitVec 32)) (x!142306 (_ BitVec 32))) (Undefined!13731) (MissingVacant!13731 (index!57324 (_ BitVec 32))) )
))
(declare-fun lt!675399 () SeekEntryResult!13731)

(assert (=> b!1576000 (= res!1076865 (and (not (undefined!14543 lt!675399)) (is-Intermediate!13731 lt!675399) (not (= (select (arr!50850 _keys!605) (index!57323 lt!675399)) k!761)) (not (= (select (arr!50850 _keys!605) (index!57323 lt!675399)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50850 _keys!605) (index!57323 lt!675399)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57323 lt!675399) #b00000000000000000000000000000000) (bvslt (index!57323 lt!675399) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105446 (_ BitVec 32)) SeekEntryResult!13731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576000 (= lt!675399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576001 () Bool)

(declare-fun lt!675400 () SeekEntryResult!13731)

(assert (=> b!1576001 (= e!879051 (and (not (is-Undefined!13731 lt!675400)) (not (is-Found!13731 lt!675400)) (not (is-MissingZero!13731 lt!675400)) (is-MissingVacant!13731 lt!675400) (or (bvslt (index!57324 lt!675400) #b00000000000000000000000000000000) (bvsge (index!57324 lt!675400) (size!51401 _keys!605)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105446 (_ BitVec 32)) SeekEntryResult!13731)

(assert (=> b!1576001 (= lt!675400 (seekKeyOrZeroReturnVacant!0 (x!142306 lt!675399) (index!57323 lt!675399) (index!57323 lt!675399) k!761 _keys!605 mask!898))))

(assert (= (and start!136102 res!1076866) b!1575998))

(assert (= (and b!1575998 res!1076864) b!1575999))

(assert (= (and b!1575999 res!1076867) b!1576000))

(assert (= (and b!1576000 res!1076865) b!1576001))

(declare-fun m!1448819 () Bool)

(assert (=> start!136102 m!1448819))

(declare-fun m!1448821 () Bool)

(assert (=> start!136102 m!1448821))

(declare-fun m!1448823 () Bool)

(assert (=> b!1575999 m!1448823))

(declare-fun m!1448825 () Bool)

(assert (=> b!1576000 m!1448825))

(declare-fun m!1448827 () Bool)

(assert (=> b!1576000 m!1448827))

(assert (=> b!1576000 m!1448827))

(declare-fun m!1448829 () Bool)

(assert (=> b!1576000 m!1448829))

(declare-fun m!1448831 () Bool)

(assert (=> b!1576001 m!1448831))

(push 1)

(assert (not b!1576001))

(assert (not start!136102))

(assert (not b!1575999))

(assert (not b!1576000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1576044 () Bool)

(declare-fun e!879075 () SeekEntryResult!13731)

(assert (=> b!1576044 (= e!879075 (Found!13731 (index!57323 lt!675399)))))

(declare-fun lt!675414 () SeekEntryResult!13731)

(declare-fun d!165521 () Bool)

(assert (=> d!165521 (and (or (is-Undefined!13731 lt!675414) (not (is-Found!13731 lt!675414)) (and (bvsge (index!57322 lt!675414) #b00000000000000000000000000000000) (bvslt (index!57322 lt!675414) (size!51401 _keys!605)))) (or (is-Undefined!13731 lt!675414) (is-Found!13731 lt!675414) (not (is-MissingVacant!13731 lt!675414)) (not (= (index!57324 lt!675414) (index!57323 lt!675399))) (and (bvsge (index!57324 lt!675414) #b00000000000000000000000000000000) (bvslt (index!57324 lt!675414) (size!51401 _keys!605)))) (or (is-Undefined!13731 lt!675414) (ite (is-Found!13731 lt!675414) (= (select (arr!50850 _keys!605) (index!57322 lt!675414)) k!761) (and (is-MissingVacant!13731 lt!675414) (= (index!57324 lt!675414) (index!57323 lt!675399)) (= (select (arr!50850 _keys!605) (index!57324 lt!675414)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!879076 () SeekEntryResult!13731)

(assert (=> d!165521 (= lt!675414 e!879076)))

(declare-fun c!145863 () Bool)

(assert (=> d!165521 (= c!145863 (bvsge (x!142306 lt!675399) #b01111111111111111111111111111110))))

(declare-fun lt!675413 () (_ BitVec 64))

(assert (=> d!165521 (= lt!675413 (select (arr!50850 _keys!605) (index!57323 lt!675399)))))

(assert (=> d!165521 (validMask!0 mask!898)))

(assert (=> d!165521 (= (seekKeyOrZeroReturnVacant!0 (x!142306 lt!675399) (index!57323 lt!675399) (index!57323 lt!675399) k!761 _keys!605 mask!898) lt!675414)))

(declare-fun b!1576045 () Bool)

(declare-fun c!145862 () Bool)

(assert (=> b!1576045 (= c!145862 (= lt!675413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879074 () SeekEntryResult!13731)

(assert (=> b!1576045 (= e!879075 e!879074)))

(declare-fun b!1576046 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576046 (= e!879074 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142306 lt!675399) #b00000000000000000000000000000001) (nextIndex!0 (index!57323 lt!675399) (x!142306 lt!675399) mask!898) (index!57323 lt!675399) k!761 _keys!605 mask!898))))

(declare-fun b!1576047 () Bool)

(assert (=> b!1576047 (= e!879076 e!879075)))

(declare-fun c!145861 () Bool)

(assert (=> b!1576047 (= c!145861 (= lt!675413 k!761))))

(declare-fun b!1576048 () Bool)

(assert (=> b!1576048 (= e!879076 Undefined!13731)))

(declare-fun b!1576049 () Bool)

(assert (=> b!1576049 (= e!879074 (MissingVacant!13731 (index!57323 lt!675399)))))

(assert (= (and d!165521 c!145863) b!1576048))

(assert (= (and d!165521 (not c!145863)) b!1576047))

(assert (= (and b!1576047 c!145861) b!1576044))

(assert (= (and b!1576047 (not c!145861)) b!1576045))

(assert (= (and b!1576045 c!145862) b!1576049))

(assert (= (and b!1576045 (not c!145862)) b!1576046))

(declare-fun m!1448833 () Bool)

(assert (=> d!165521 m!1448833))

(declare-fun m!1448835 () Bool)

(assert (=> d!165521 m!1448835))

(assert (=> d!165521 m!1448825))

(assert (=> d!165521 m!1448819))

(declare-fun m!1448837 () Bool)

(assert (=> b!1576046 m!1448837))

(assert (=> b!1576046 m!1448837))

(declare-fun m!1448839 () Bool)

(assert (=> b!1576046 m!1448839))

(assert (=> b!1576001 d!165521))

(declare-fun d!165523 () Bool)

(assert (=> d!165523 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136102 d!165523))

(declare-fun d!165531 () Bool)

(assert (=> d!165531 (= (array_inv!39495 _keys!605) (bvsge (size!51401 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136102 d!165531))

(declare-fun d!165533 () Bool)

(assert (=> d!165533 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575999 d!165533))

(declare-fun e!879106 () SeekEntryResult!13731)

(declare-fun b!1576101 () Bool)

(assert (=> b!1576101 (= e!879106 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576102 () Bool)

(declare-fun e!879105 () Bool)

(declare-fun e!879104 () Bool)

(assert (=> b!1576102 (= e!879105 e!879104)))

(declare-fun res!1076886 () Bool)

(declare-fun lt!675435 () SeekEntryResult!13731)

(assert (=> b!1576102 (= res!1076886 (and (is-Intermediate!13731 lt!675435) (not (undefined!14543 lt!675435)) (bvslt (x!142306 lt!675435) #b01111111111111111111111111111110) (bvsge (x!142306 lt!675435) #b00000000000000000000000000000000) (bvsge (x!142306 lt!675435) #b00000000000000000000000000000000)))))

(assert (=> b!1576102 (=> (not res!1076886) (not e!879104))))

(declare-fun b!1576103 () Bool)

(assert (=> b!1576103 (and (bvsge (index!57323 lt!675435) #b00000000000000000000000000000000) (bvslt (index!57323 lt!675435) (size!51401 _keys!605)))))

(declare-fun res!1076885 () Bool)

(assert (=> b!1576103 (= res!1076885 (= (select (arr!50850 _keys!605) (index!57323 lt!675435)) k!761))))

(declare-fun e!879108 () Bool)

(assert (=> b!1576103 (=> res!1076885 e!879108)))

(assert (=> b!1576103 (= e!879104 e!879108)))

(declare-fun b!1576104 () Bool)

(assert (=> b!1576104 (and (bvsge (index!57323 lt!675435) #b00000000000000000000000000000000) (bvslt (index!57323 lt!675435) (size!51401 _keys!605)))))

(assert (=> b!1576104 (= e!879108 (= (select (arr!50850 _keys!605) (index!57323 lt!675435)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576105 () Bool)

(assert (=> b!1576105 (= e!879105 (bvsge (x!142306 lt!675435) #b01111111111111111111111111111110))))

(declare-fun b!1576106 () Bool)

(declare-fun e!879107 () SeekEntryResult!13731)

(assert (=> b!1576106 (= e!879107 (Intermediate!13731 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576107 () Bool)

(assert (=> b!1576107 (= e!879107 e!879106)))

(declare-fun c!145886 () Bool)

(declare-fun lt!675436 () (_ BitVec 64))

(assert (=> b!1576107 (= c!145886 (or (= lt!675436 k!761) (= (bvadd lt!675436 lt!675436) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165535 () Bool)

(assert (=> d!165535 e!879105))

(declare-fun c!145885 () Bool)

(assert (=> d!165535 (= c!145885 (and (is-Intermediate!13731 lt!675435) (undefined!14543 lt!675435)))))

(assert (=> d!165535 (= lt!675435 e!879107)))

(declare-fun c!145887 () Bool)

(assert (=> d!165535 (= c!145887 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165535 (= lt!675436 (select (arr!50850 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165535 (validMask!0 mask!898)))

(assert (=> d!165535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675435)))

(declare-fun b!1576108 () Bool)

(assert (=> b!1576108 (= e!879106 (Intermediate!13731 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576109 () Bool)

(assert (=> b!1576109 (and (bvsge (index!57323 lt!675435) #b00000000000000000000000000000000) (bvslt (index!57323 lt!675435) (size!51401 _keys!605)))))

(declare-fun res!1076884 () Bool)

(assert (=> b!1576109 (= res!1076884 (= (select (arr!50850 _keys!605) (index!57323 lt!675435)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576109 (=> res!1076884 e!879108)))

(assert (= (and d!165535 c!145887) b!1576106))

(assert (= (and d!165535 (not c!145887)) b!1576107))

(assert (= (and b!1576107 c!145886) b!1576108))

(assert (= (and b!1576107 (not c!145886)) b!1576101))

(assert (= (and d!165535 c!145885) b!1576105))

(assert (= (and d!165535 (not c!145885)) b!1576102))

(assert (= (and b!1576102 res!1076886) b!1576103))

(assert (= (and b!1576103 (not res!1076885)) b!1576109))

(assert (= (and b!1576109 (not res!1076884)) b!1576104))

(declare-fun m!1448865 () Bool)

(assert (=> b!1576109 m!1448865))

(assert (=> b!1576103 m!1448865))

(assert (=> b!1576101 m!1448827))

(declare-fun m!1448867 () Bool)

(assert (=> b!1576101 m!1448867))

(assert (=> b!1576101 m!1448867))

(declare-fun m!1448869 () Bool)

(assert (=> b!1576101 m!1448869))

(assert (=> d!165535 m!1448827))

(declare-fun m!1448871 () Bool)

(assert (=> d!165535 m!1448871))

(assert (=> d!165535 m!1448819))

(assert (=> b!1576104 m!1448865))

(assert (=> b!1576000 d!165535))

(declare-fun d!165543 () Bool)

(declare-fun lt!675446 () (_ BitVec 32))

(declare-fun lt!675445 () (_ BitVec 32))

(assert (=> d!165543 (= lt!675446 (bvmul (bvxor lt!675445 (bvlshr lt!675445 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165543 (= lt!675445 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165543 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076887 (let ((h!38442 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142313 (bvmul (bvxor h!38442 (bvlshr h!38442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142313 (bvlshr x!142313 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076887 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076887 #b00000000000000000000000000000000))))))

(assert (=> d!165543 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675446 (bvlshr lt!675446 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576000 d!165543))

(push 1)

