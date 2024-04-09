; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135740 () Bool)

(assert start!135740)

(declare-fun res!1076104 () Bool)

(declare-fun e!878280 () Bool)

(assert (=> start!135740 (=> (not res!1076104) (not e!878280))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135740 (= res!1076104 (validMask!0 mask!898))))

(assert (=> start!135740 e!878280))

(assert (=> start!135740 true))

(declare-datatypes ((array!105312 0))(
  ( (array!105313 (arr!50795 (Array (_ BitVec 32) (_ BitVec 64))) (size!51346 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105312)

(declare-fun array_inv!39440 (array!105312) Bool)

(assert (=> start!135740 (array_inv!39440 _keys!605)))

(declare-fun b!1574721 () Bool)

(declare-fun res!1076103 () Bool)

(assert (=> b!1574721 (=> (not res!1076103) (not e!878280))))

(assert (=> b!1574721 (= res!1076103 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51346 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574722 () Bool)

(declare-fun res!1076105 () Bool)

(assert (=> b!1574722 (=> (not res!1076105) (not e!878280))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574722 (= res!1076105 (validKeyInArray!0 k0!761))))

(declare-datatypes ((SeekEntryResult!13676 0))(
  ( (MissingZero!13676 (index!57101 (_ BitVec 32))) (Found!13676 (index!57102 (_ BitVec 32))) (Intermediate!13676 (undefined!14488 Bool) (index!57103 (_ BitVec 32)) (x!142053 (_ BitVec 32))) (Undefined!13676) (MissingVacant!13676 (index!57104 (_ BitVec 32))) )
))
(declare-fun lt!674884 () SeekEntryResult!13676)

(declare-fun b!1574723 () Bool)

(get-info :version)

(assert (=> b!1574723 (= e!878280 (and ((_ is Intermediate!13676) lt!674884) (not (undefined!14488 lt!674884)) (not (= (select (arr!50795 _keys!605) (index!57103 lt!674884)) k0!761)) (not (= (select (arr!50795 _keys!605) (index!57103 lt!674884)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50795 _keys!605) (index!57103 lt!674884)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105312 (_ BitVec 32)) SeekEntryResult!13676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574723 (= lt!674884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135740 res!1076104) b!1574721))

(assert (= (and b!1574721 res!1076103) b!1574722))

(assert (= (and b!1574722 res!1076105) b!1574723))

(declare-fun m!1447969 () Bool)

(assert (=> start!135740 m!1447969))

(declare-fun m!1447971 () Bool)

(assert (=> start!135740 m!1447971))

(declare-fun m!1447973 () Bool)

(assert (=> b!1574722 m!1447973))

(declare-fun m!1447975 () Bool)

(assert (=> b!1574723 m!1447975))

(declare-fun m!1447977 () Bool)

(assert (=> b!1574723 m!1447977))

(assert (=> b!1574723 m!1447977))

(declare-fun m!1447979 () Bool)

(assert (=> b!1574723 m!1447979))

(check-sat (not b!1574722) (not b!1574723) (not start!135740))
(check-sat)
(get-model)

(declare-fun d!165225 () Bool)

(assert (=> d!165225 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574722 d!165225))

(declare-fun b!1574805 () Bool)

(declare-fun e!878330 () SeekEntryResult!13676)

(assert (=> b!1574805 (= e!878330 (Intermediate!13676 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574806 () Bool)

(declare-fun lt!674917 () SeekEntryResult!13676)

(assert (=> b!1574806 (and (bvsge (index!57103 lt!674917) #b00000000000000000000000000000000) (bvslt (index!57103 lt!674917) (size!51346 _keys!605)))))

(declare-fun e!878327 () Bool)

(assert (=> b!1574806 (= e!878327 (= (select (arr!50795 _keys!605) (index!57103 lt!674917)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574807 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574807 (= e!878330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1574808 () Bool)

(declare-fun e!878329 () Bool)

(declare-fun e!878328 () Bool)

(assert (=> b!1574808 (= e!878329 e!878328)))

(declare-fun res!1076141 () Bool)

(assert (=> b!1574808 (= res!1076141 (and ((_ is Intermediate!13676) lt!674917) (not (undefined!14488 lt!674917)) (bvslt (x!142053 lt!674917) #b01111111111111111111111111111110) (bvsge (x!142053 lt!674917) #b00000000000000000000000000000000) (bvsge (x!142053 lt!674917) #b00000000000000000000000000000000)))))

(assert (=> b!1574808 (=> (not res!1076141) (not e!878328))))

(declare-fun b!1574809 () Bool)

(assert (=> b!1574809 (and (bvsge (index!57103 lt!674917) #b00000000000000000000000000000000) (bvslt (index!57103 lt!674917) (size!51346 _keys!605)))))

(declare-fun res!1076143 () Bool)

(assert (=> b!1574809 (= res!1076143 (= (select (arr!50795 _keys!605) (index!57103 lt!674917)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574809 (=> res!1076143 e!878327)))

(declare-fun b!1574810 () Bool)

(declare-fun e!878331 () SeekEntryResult!13676)

(assert (=> b!1574810 (= e!878331 (Intermediate!13676 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165229 () Bool)

(assert (=> d!165229 e!878329))

(declare-fun c!145599 () Bool)

(assert (=> d!165229 (= c!145599 (and ((_ is Intermediate!13676) lt!674917) (undefined!14488 lt!674917)))))

(assert (=> d!165229 (= lt!674917 e!878331)))

(declare-fun c!145598 () Bool)

(assert (=> d!165229 (= c!145598 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674916 () (_ BitVec 64))

(assert (=> d!165229 (= lt!674916 (select (arr!50795 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165229 (validMask!0 mask!898)))

(assert (=> d!165229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!674917)))

(declare-fun b!1574811 () Bool)

(assert (=> b!1574811 (and (bvsge (index!57103 lt!674917) #b00000000000000000000000000000000) (bvslt (index!57103 lt!674917) (size!51346 _keys!605)))))

(declare-fun res!1076142 () Bool)

(assert (=> b!1574811 (= res!1076142 (= (select (arr!50795 _keys!605) (index!57103 lt!674917)) k0!761))))

(assert (=> b!1574811 (=> res!1076142 e!878327)))

(assert (=> b!1574811 (= e!878328 e!878327)))

(declare-fun b!1574812 () Bool)

(assert (=> b!1574812 (= e!878331 e!878330)))

(declare-fun c!145597 () Bool)

(assert (=> b!1574812 (= c!145597 (or (= lt!674916 k0!761) (= (bvadd lt!674916 lt!674916) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574813 () Bool)

(assert (=> b!1574813 (= e!878329 (bvsge (x!142053 lt!674917) #b01111111111111111111111111111110))))

(assert (= (and d!165229 c!145598) b!1574810))

(assert (= (and d!165229 (not c!145598)) b!1574812))

(assert (= (and b!1574812 c!145597) b!1574805))

(assert (= (and b!1574812 (not c!145597)) b!1574807))

(assert (= (and d!165229 c!145599) b!1574813))

(assert (= (and d!165229 (not c!145599)) b!1574808))

(assert (= (and b!1574808 res!1076141) b!1574811))

(assert (= (and b!1574811 (not res!1076142)) b!1574809))

(assert (= (and b!1574809 (not res!1076143)) b!1574806))

(declare-fun m!1448009 () Bool)

(assert (=> b!1574806 m!1448009))

(assert (=> d!165229 m!1447977))

(declare-fun m!1448011 () Bool)

(assert (=> d!165229 m!1448011))

(assert (=> d!165229 m!1447969))

(assert (=> b!1574807 m!1447977))

(declare-fun m!1448013 () Bool)

(assert (=> b!1574807 m!1448013))

(assert (=> b!1574807 m!1448013))

(declare-fun m!1448015 () Bool)

(assert (=> b!1574807 m!1448015))

(assert (=> b!1574811 m!1448009))

(assert (=> b!1574809 m!1448009))

(assert (=> b!1574723 d!165229))

(declare-fun d!165239 () Bool)

(declare-fun lt!674923 () (_ BitVec 32))

(declare-fun lt!674922 () (_ BitVec 32))

(assert (=> d!165239 (= lt!674923 (bvmul (bvxor lt!674922 (bvlshr lt!674922 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165239 (= lt!674922 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165239 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076144 (let ((h!38419 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142060 (bvmul (bvxor h!38419 (bvlshr h!38419 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142060 (bvlshr x!142060 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076144 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076144 #b00000000000000000000000000000000))))))

(assert (=> d!165239 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!674923 (bvlshr lt!674923 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574723 d!165239))

(declare-fun d!165245 () Bool)

(assert (=> d!165245 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135740 d!165245))

(declare-fun d!165251 () Bool)

(assert (=> d!165251 (= (array_inv!39440 _keys!605) (bvsge (size!51346 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135740 d!165251))

(check-sat (not b!1574807) (not d!165229))
