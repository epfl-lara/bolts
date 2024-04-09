; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135774 () Bool)

(assert start!135774)

(declare-fun res!1076151 () Bool)

(declare-fun e!878336 () Bool)

(assert (=> start!135774 (=> (not res!1076151) (not e!878336))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135774 (= res!1076151 (validMask!0 mask!898))))

(assert (=> start!135774 e!878336))

(assert (=> start!135774 true))

(declare-datatypes ((array!105319 0))(
  ( (array!105320 (arr!50797 (Array (_ BitVec 32) (_ BitVec 64))) (size!51348 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105319)

(declare-fun array_inv!39442 (array!105319) Bool)

(assert (=> start!135774 (array_inv!39442 _keys!605)))

(declare-fun b!1574820 () Bool)

(declare-fun res!1076153 () Bool)

(assert (=> b!1574820 (=> (not res!1076153) (not e!878336))))

(assert (=> b!1574820 (= res!1076153 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51348 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574821 () Bool)

(declare-fun res!1076152 () Bool)

(assert (=> b!1574821 (=> (not res!1076152) (not e!878336))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574821 (= res!1076152 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13678 0))(
  ( (MissingZero!13678 (index!57109 (_ BitVec 32))) (Found!13678 (index!57110 (_ BitVec 32))) (Intermediate!13678 (undefined!14490 Bool) (index!57111 (_ BitVec 32)) (x!142069 (_ BitVec 32))) (Undefined!13678) (MissingVacant!13678 (index!57112 (_ BitVec 32))) )
))
(declare-fun lt!674926 () SeekEntryResult!13678)

(declare-fun b!1574822 () Bool)

(assert (=> b!1574822 (= e!878336 (and (is-Intermediate!13678 lt!674926) (not (undefined!14490 lt!674926)) (not (= (select (arr!50797 _keys!605) (index!57111 lt!674926)) k!761)) (not (= (select (arr!50797 _keys!605) (index!57111 lt!674926)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50797 _keys!605) (index!57111 lt!674926)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57111 lt!674926) #b00000000000000000000000000000000) (bvsge (index!57111 lt!674926) (bvadd #b00000000000000000000000000000001 mask!898)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105319 (_ BitVec 32)) SeekEntryResult!13678)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574822 (= lt!674926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135774 res!1076151) b!1574820))

(assert (= (and b!1574820 res!1076153) b!1574821))

(assert (= (and b!1574821 res!1076152) b!1574822))

(declare-fun m!1448017 () Bool)

(assert (=> start!135774 m!1448017))

(declare-fun m!1448019 () Bool)

(assert (=> start!135774 m!1448019))

(declare-fun m!1448021 () Bool)

(assert (=> b!1574821 m!1448021))

(declare-fun m!1448023 () Bool)

(assert (=> b!1574822 m!1448023))

(declare-fun m!1448025 () Bool)

(assert (=> b!1574822 m!1448025))

(assert (=> b!1574822 m!1448025))

(declare-fun m!1448027 () Bool)

(assert (=> b!1574822 m!1448027))

(push 1)

(assert (not start!135774))

(assert (not b!1574822))

(assert (not b!1574821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165255 () Bool)

(assert (=> d!165255 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135774 d!165255))

(declare-fun d!165263 () Bool)

(assert (=> d!165263 (= (array_inv!39442 _keys!605) (bvsge (size!51348 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135774 d!165263))

(declare-fun b!1574859 () Bool)

(declare-fun e!878360 () SeekEntryResult!13678)

(declare-fun e!878361 () SeekEntryResult!13678)

(assert (=> b!1574859 (= e!878360 e!878361)))

(declare-fun c!145607 () Bool)

(declare-fun lt!674938 () (_ BitVec 64))

(assert (=> b!1574859 (= c!145607 (or (= lt!674938 k!761) (= (bvadd lt!674938 lt!674938) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574860 () Bool)

(declare-fun lt!674937 () SeekEntryResult!13678)

(assert (=> b!1574860 (and (bvsge (index!57111 lt!674937) #b00000000000000000000000000000000) (bvslt (index!57111 lt!674937) (size!51348 _keys!605)))))

(declare-fun e!878363 () Bool)

(assert (=> b!1574860 (= e!878363 (= (select (arr!50797 _keys!605) (index!57111 lt!674937)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574861 () Bool)

(declare-fun e!878362 () Bool)

(declare-fun e!878364 () Bool)

(assert (=> b!1574861 (= e!878362 e!878364)))

(declare-fun res!1076178 () Bool)

(assert (=> b!1574861 (= res!1076178 (and (is-Intermediate!13678 lt!674937) (not (undefined!14490 lt!674937)) (bvslt (x!142069 lt!674937) #b01111111111111111111111111111110) (bvsge (x!142069 lt!674937) #b00000000000000000000000000000000) (bvsge (x!142069 lt!674937) #b00000000000000000000000000000000)))))

(assert (=> b!1574861 (=> (not res!1076178) (not e!878364))))

(declare-fun d!165265 () Bool)

(assert (=> d!165265 e!878362))

(declare-fun c!145608 () Bool)

(assert (=> d!165265 (= c!145608 (and (is-Intermediate!13678 lt!674937) (undefined!14490 lt!674937)))))

(assert (=> d!165265 (= lt!674937 e!878360)))

(declare-fun c!145606 () Bool)

(assert (=> d!165265 (= c!145606 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165265 (= lt!674938 (select (arr!50797 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165265 (validMask!0 mask!898)))

(assert (=> d!165265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674937)))

(declare-fun b!1574862 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574862 (= e!878361 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1574863 () Bool)

(assert (=> b!1574863 (and (bvsge (index!57111 lt!674937) #b00000000000000000000000000000000) (bvslt (index!57111 lt!674937) (size!51348 _keys!605)))))

(declare-fun res!1076179 () Bool)

(assert (=> b!1574863 (= res!1076179 (= (select (arr!50797 _keys!605) (index!57111 lt!674937)) k!761))))

(assert (=> b!1574863 (=> res!1076179 e!878363)))

(assert (=> b!1574863 (= e!878364 e!878363)))

(declare-fun b!1574864 () Bool)

(assert (=> b!1574864 (= e!878362 (bvsge (x!142069 lt!674937) #b01111111111111111111111111111110))))

(declare-fun b!1574865 () Bool)

(assert (=> b!1574865 (= e!878360 (Intermediate!13678 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574866 () Bool)

(assert (=> b!1574866 (= e!878361 (Intermediate!13678 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574867 () Bool)

(assert (=> b!1574867 (and (bvsge (index!57111 lt!674937) #b00000000000000000000000000000000) (bvslt (index!57111 lt!674937) (size!51348 _keys!605)))))

(declare-fun res!1076180 () Bool)

(assert (=> b!1574867 (= res!1076180 (= (select (arr!50797 _keys!605) (index!57111 lt!674937)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574867 (=> res!1076180 e!878363)))

(assert (= (and d!165265 c!145606) b!1574865))

(assert (= (and d!165265 (not c!145606)) b!1574859))

(assert (= (and b!1574859 c!145607) b!1574866))

(assert (= (and b!1574859 (not c!145607)) b!1574862))

(assert (= (and d!165265 c!145608) b!1574864))

(assert (= (and d!165265 (not c!145608)) b!1574861))

(assert (= (and b!1574861 res!1076178) b!1574863))

(assert (= (and b!1574863 (not res!1076179)) b!1574867))

(assert (= (and b!1574867 (not res!1076180)) b!1574860))

(assert (=> d!165265 m!1448025))

(declare-fun m!1448053 () Bool)

(assert (=> d!165265 m!1448053))

(assert (=> d!165265 m!1448017))

(declare-fun m!1448055 () Bool)

(assert (=> b!1574867 m!1448055))

(assert (=> b!1574862 m!1448025))

(declare-fun m!1448057 () Bool)

(assert (=> b!1574862 m!1448057))

(assert (=> b!1574862 m!1448057))

(declare-fun m!1448059 () Bool)

(assert (=> b!1574862 m!1448059))

(assert (=> b!1574860 m!1448055))

(assert (=> b!1574863 m!1448055))

(assert (=> b!1574822 d!165265))

(declare-fun d!165275 () Bool)

(declare-fun lt!674948 () (_ BitVec 32))

(declare-fun lt!674947 () (_ BitVec 32))

(assert (=> d!165275 (= lt!674948 (bvmul (bvxor lt!674947 (bvlshr lt!674947 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165275 (= lt!674947 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165275 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076181 (let ((h!38420 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142074 (bvmul (bvxor h!38420 (bvlshr h!38420 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142074 (bvlshr x!142074 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076181 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076181 #b00000000000000000000000000000000))))))

(assert (=> d!165275 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!674948 (bvlshr lt!674948 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574822 d!165275))

(declare-fun d!165277 () Bool)

(assert (=> d!165277 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574821 d!165277))

(push 1)

(assert (not d!165265))

(assert (not b!1574862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

