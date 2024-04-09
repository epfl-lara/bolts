; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135686 () Bool)

(assert start!135686)

(declare-fun res!1075967 () Bool)

(declare-fun e!878163 () Bool)

(assert (=> start!135686 (=> (not res!1075967) (not e!878163))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135686 (= res!1075967 (validMask!0 mask!898))))

(assert (=> start!135686 e!878163))

(assert (=> start!135686 true))

(declare-datatypes ((array!105285 0))(
  ( (array!105286 (arr!50783 (Array (_ BitVec 32) (_ BitVec 64))) (size!51334 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105285)

(declare-fun array_inv!39428 (array!105285) Bool)

(assert (=> start!135686 (array_inv!39428 _keys!605)))

(declare-fun b!1574532 () Bool)

(declare-fun res!1075966 () Bool)

(assert (=> b!1574532 (=> (not res!1075966) (not e!878163))))

(assert (=> b!1574532 (= res!1075966 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51334 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574533 () Bool)

(declare-fun res!1075965 () Bool)

(assert (=> b!1574533 (=> (not res!1075965) (not e!878163))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574533 (= res!1075965 (validKeyInArray!0 k0!761))))

(declare-fun b!1574534 () Bool)

(declare-datatypes ((SeekEntryResult!13664 0))(
  ( (MissingZero!13664 (index!57053 (_ BitVec 32))) (Found!13664 (index!57054 (_ BitVec 32))) (Intermediate!13664 (undefined!14476 Bool) (index!57055 (_ BitVec 32)) (x!142003 (_ BitVec 32))) (Undefined!13664) (MissingVacant!13664 (index!57056 (_ BitVec 32))) )
))
(declare-fun lt!674812 () SeekEntryResult!13664)

(get-info :version)

(assert (=> b!1574534 (= e!878163 (and ((_ is Intermediate!13664) lt!674812) (not (undefined!14476 lt!674812)) (not (= (select (arr!50783 _keys!605) (index!57055 lt!674812)) k0!761)) (not (= (select (arr!50783 _keys!605) (index!57055 lt!674812)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50783 _keys!605) (index!57055 lt!674812)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57055 lt!674812) #b00000000000000000000000000000000) (bvslt (index!57055 lt!674812) (bvadd #b00000000000000000000000000000001 mask!898)) (or (bvsgt (x!142003 lt!674812) #b01111111111111111111111111111110) (bvslt (x!142003 lt!674812) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105285 (_ BitVec 32)) SeekEntryResult!13664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574534 (= lt!674812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135686 res!1075967) b!1574532))

(assert (= (and b!1574532 res!1075966) b!1574533))

(assert (= (and b!1574533 res!1075965) b!1574534))

(declare-fun m!1447819 () Bool)

(assert (=> start!135686 m!1447819))

(declare-fun m!1447821 () Bool)

(assert (=> start!135686 m!1447821))

(declare-fun m!1447823 () Bool)

(assert (=> b!1574533 m!1447823))

(declare-fun m!1447825 () Bool)

(assert (=> b!1574534 m!1447825))

(declare-fun m!1447827 () Bool)

(assert (=> b!1574534 m!1447827))

(assert (=> b!1574534 m!1447827))

(declare-fun m!1447829 () Bool)

(assert (=> b!1574534 m!1447829))

(check-sat (not b!1574533) (not start!135686) (not b!1574534))
(check-sat)
(get-model)

(declare-fun d!165185 () Bool)

(assert (=> d!165185 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574533 d!165185))

(declare-fun d!165187 () Bool)

(assert (=> d!165187 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135686 d!165187))

(declare-fun d!165191 () Bool)

(assert (=> d!165191 (= (array_inv!39428 _keys!605) (bvsge (size!51334 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135686 d!165191))

(declare-fun b!1574589 () Bool)

(declare-fun e!878197 () Bool)

(declare-fun e!878198 () Bool)

(assert (=> b!1574589 (= e!878197 e!878198)))

(declare-fun res!1075994 () Bool)

(declare-fun lt!674832 () SeekEntryResult!13664)

(assert (=> b!1574589 (= res!1075994 (and ((_ is Intermediate!13664) lt!674832) (not (undefined!14476 lt!674832)) (bvslt (x!142003 lt!674832) #b01111111111111111111111111111110) (bvsge (x!142003 lt!674832) #b00000000000000000000000000000000) (bvsge (x!142003 lt!674832) #b00000000000000000000000000000000)))))

(assert (=> b!1574589 (=> (not res!1075994) (not e!878198))))

(declare-fun b!1574590 () Bool)

(assert (=> b!1574590 (and (bvsge (index!57055 lt!674832) #b00000000000000000000000000000000) (bvslt (index!57055 lt!674832) (size!51334 _keys!605)))))

(declare-fun res!1075995 () Bool)

(assert (=> b!1574590 (= res!1075995 (= (select (arr!50783 _keys!605) (index!57055 lt!674832)) k0!761))))

(declare-fun e!878195 () Bool)

(assert (=> b!1574590 (=> res!1075995 e!878195)))

(assert (=> b!1574590 (= e!878198 e!878195)))

(declare-fun d!165193 () Bool)

(assert (=> d!165193 e!878197))

(declare-fun c!145561 () Bool)

(assert (=> d!165193 (= c!145561 (and ((_ is Intermediate!13664) lt!674832) (undefined!14476 lt!674832)))))

(declare-fun e!878199 () SeekEntryResult!13664)

(assert (=> d!165193 (= lt!674832 e!878199)))

(declare-fun c!145563 () Bool)

(assert (=> d!165193 (= c!145563 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674833 () (_ BitVec 64))

(assert (=> d!165193 (= lt!674833 (select (arr!50783 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165193 (validMask!0 mask!898)))

(assert (=> d!165193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!674832)))

(declare-fun b!1574591 () Bool)

(declare-fun e!878196 () SeekEntryResult!13664)

(assert (=> b!1574591 (= e!878196 (Intermediate!13664 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574592 () Bool)

(assert (=> b!1574592 (= e!878199 e!878196)))

(declare-fun c!145562 () Bool)

(assert (=> b!1574592 (= c!145562 (or (= lt!674833 k0!761) (= (bvadd lt!674833 lt!674833) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574593 () Bool)

(assert (=> b!1574593 (and (bvsge (index!57055 lt!674832) #b00000000000000000000000000000000) (bvslt (index!57055 lt!674832) (size!51334 _keys!605)))))

(assert (=> b!1574593 (= e!878195 (= (select (arr!50783 _keys!605) (index!57055 lt!674832)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574594 () Bool)

(assert (=> b!1574594 (= e!878197 (bvsge (x!142003 lt!674832) #b01111111111111111111111111111110))))

(declare-fun b!1574595 () Bool)

(assert (=> b!1574595 (and (bvsge (index!57055 lt!674832) #b00000000000000000000000000000000) (bvslt (index!57055 lt!674832) (size!51334 _keys!605)))))

(declare-fun res!1075993 () Bool)

(assert (=> b!1574595 (= res!1075993 (= (select (arr!50783 _keys!605) (index!57055 lt!674832)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574595 (=> res!1075993 e!878195)))

(declare-fun b!1574596 () Bool)

(assert (=> b!1574596 (= e!878199 (Intermediate!13664 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574597 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574597 (= e!878196 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and d!165193 c!145563) b!1574596))

(assert (= (and d!165193 (not c!145563)) b!1574592))

(assert (= (and b!1574592 c!145562) b!1574591))

(assert (= (and b!1574592 (not c!145562)) b!1574597))

(assert (= (and d!165193 c!145561) b!1574594))

(assert (= (and d!165193 (not c!145561)) b!1574589))

(assert (= (and b!1574589 res!1075994) b!1574590))

(assert (= (and b!1574590 (not res!1075995)) b!1574595))

(assert (= (and b!1574595 (not res!1075993)) b!1574593))

(declare-fun m!1447851 () Bool)

(assert (=> b!1574595 m!1447851))

(assert (=> d!165193 m!1447827))

(declare-fun m!1447853 () Bool)

(assert (=> d!165193 m!1447853))

(assert (=> d!165193 m!1447819))

(assert (=> b!1574593 m!1447851))

(assert (=> b!1574597 m!1447827))

(declare-fun m!1447855 () Bool)

(assert (=> b!1574597 m!1447855))

(assert (=> b!1574597 m!1447855))

(declare-fun m!1447857 () Bool)

(assert (=> b!1574597 m!1447857))

(assert (=> b!1574590 m!1447851))

(assert (=> b!1574534 d!165193))

(declare-fun d!165209 () Bool)

(declare-fun lt!674839 () (_ BitVec 32))

(declare-fun lt!674838 () (_ BitVec 32))

(assert (=> d!165209 (= lt!674839 (bvmul (bvxor lt!674838 (bvlshr lt!674838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165209 (= lt!674838 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165209 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1075996 (let ((h!38415 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142008 (bvmul (bvxor h!38415 (bvlshr h!38415 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142008 (bvlshr x!142008 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1075996 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1075996 #b00000000000000000000000000000000))))))

(assert (=> d!165209 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!674839 (bvlshr lt!674839 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574534 d!165209))

(check-sat (not d!165193) (not b!1574597))
(check-sat)
