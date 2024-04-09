; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135742 () Bool)

(assert start!135742)

(declare-fun res!1076112 () Bool)

(declare-fun e!878285 () Bool)

(assert (=> start!135742 (=> (not res!1076112) (not e!878285))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135742 (= res!1076112 (validMask!0 mask!898))))

(assert (=> start!135742 e!878285))

(assert (=> start!135742 true))

(declare-datatypes ((array!105314 0))(
  ( (array!105315 (arr!50796 (Array (_ BitVec 32) (_ BitVec 64))) (size!51347 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105314)

(declare-fun array_inv!39441 (array!105314) Bool)

(assert (=> start!135742 (array_inv!39441 _keys!605)))

(declare-fun b!1574730 () Bool)

(declare-fun res!1076114 () Bool)

(assert (=> b!1574730 (=> (not res!1076114) (not e!878285))))

(assert (=> b!1574730 (= res!1076114 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51347 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574731 () Bool)

(declare-fun res!1076113 () Bool)

(assert (=> b!1574731 (=> (not res!1076113) (not e!878285))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574731 (= res!1076113 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13677 0))(
  ( (MissingZero!13677 (index!57105 (_ BitVec 32))) (Found!13677 (index!57106 (_ BitVec 32))) (Intermediate!13677 (undefined!14489 Bool) (index!57107 (_ BitVec 32)) (x!142054 (_ BitVec 32))) (Undefined!13677) (MissingVacant!13677 (index!57108 (_ BitVec 32))) )
))
(declare-fun lt!674887 () SeekEntryResult!13677)

(declare-fun b!1574732 () Bool)

(assert (=> b!1574732 (= e!878285 (and (is-Intermediate!13677 lt!674887) (not (undefined!14489 lt!674887)) (not (= (select (arr!50796 _keys!605) (index!57107 lt!674887)) k!761)) (not (= (select (arr!50796 _keys!605) (index!57107 lt!674887)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50796 _keys!605) (index!57107 lt!674887)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105314 (_ BitVec 32)) SeekEntryResult!13677)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574732 (= lt!674887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135742 res!1076112) b!1574730))

(assert (= (and b!1574730 res!1076114) b!1574731))

(assert (= (and b!1574731 res!1076113) b!1574732))

(declare-fun m!1447981 () Bool)

(assert (=> start!135742 m!1447981))

(declare-fun m!1447983 () Bool)

(assert (=> start!135742 m!1447983))

(declare-fun m!1447985 () Bool)

(assert (=> b!1574731 m!1447985))

(declare-fun m!1447987 () Bool)

(assert (=> b!1574732 m!1447987))

(declare-fun m!1447989 () Bool)

(assert (=> b!1574732 m!1447989))

(assert (=> b!1574732 m!1447989))

(declare-fun m!1447991 () Bool)

(assert (=> b!1574732 m!1447991))

(push 1)

(assert (not b!1574732))

(assert (not start!135742))

(assert (not b!1574731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1574778 () Bool)

(declare-fun e!878315 () Bool)

(declare-fun lt!674899 () SeekEntryResult!13677)

(assert (=> b!1574778 (= e!878315 (bvsge (x!142054 lt!674899) #b01111111111111111111111111111110))))

(declare-fun b!1574779 () Bool)

(assert (=> b!1574779 (and (bvsge (index!57107 lt!674899) #b00000000000000000000000000000000) (bvslt (index!57107 lt!674899) (size!51347 _keys!605)))))

(declare-fun res!1076131 () Bool)

(assert (=> b!1574779 (= res!1076131 (= (select (arr!50796 _keys!605) (index!57107 lt!674899)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878313 () Bool)

(assert (=> b!1574779 (=> res!1076131 e!878313)))

(declare-fun d!165227 () Bool)

(assert (=> d!165227 e!878315))

(declare-fun c!145590 () Bool)

(assert (=> d!165227 (= c!145590 (and (is-Intermediate!13677 lt!674899) (undefined!14489 lt!674899)))))

(declare-fun e!878314 () SeekEntryResult!13677)

(assert (=> d!165227 (= lt!674899 e!878314)))

(declare-fun c!145589 () Bool)

(assert (=> d!165227 (= c!145589 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674898 () (_ BitVec 64))

(assert (=> d!165227 (= lt!674898 (select (arr!50796 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165227 (validMask!0 mask!898)))

(assert (=> d!165227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674899)))

(declare-fun b!1574780 () Bool)

(assert (=> b!1574780 (and (bvsge (index!57107 lt!674899) #b00000000000000000000000000000000) (bvslt (index!57107 lt!674899) (size!51347 _keys!605)))))

(assert (=> b!1574780 (= e!878313 (= (select (arr!50796 _keys!605) (index!57107 lt!674899)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574781 () Bool)

(assert (=> b!1574781 (and (bvsge (index!57107 lt!674899) #b00000000000000000000000000000000) (bvslt (index!57107 lt!674899) (size!51347 _keys!605)))))

(declare-fun res!1076132 () Bool)

(assert (=> b!1574781 (= res!1076132 (= (select (arr!50796 _keys!605) (index!57107 lt!674899)) k!761))))

(assert (=> b!1574781 (=> res!1076132 e!878313)))

(declare-fun e!878316 () Bool)

(assert (=> b!1574781 (= e!878316 e!878313)))

(declare-fun b!1574782 () Bool)

(declare-fun e!878312 () SeekEntryResult!13677)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574782 (= e!878312 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1574783 () Bool)

(assert (=> b!1574783 (= e!878315 e!878316)))

(declare-fun res!1076133 () Bool)

(assert (=> b!1574783 (= res!1076133 (and (is-Intermediate!13677 lt!674899) (not (undefined!14489 lt!674899)) (bvslt (x!142054 lt!674899) #b01111111111111111111111111111110) (bvsge (x!142054 lt!674899) #b00000000000000000000000000000000) (bvsge (x!142054 lt!674899) #b00000000000000000000000000000000)))))

(assert (=> b!1574783 (=> (not res!1076133) (not e!878316))))

(declare-fun b!1574784 () Bool)

(assert (=> b!1574784 (= e!878312 (Intermediate!13677 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574785 () Bool)

(assert (=> b!1574785 (= e!878314 (Intermediate!13677 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574786 () Bool)

(assert (=> b!1574786 (= e!878314 e!878312)))

(declare-fun c!145588 () Bool)

(assert (=> b!1574786 (= c!145588 (or (= lt!674898 k!761) (= (bvadd lt!674898 lt!674898) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165227 c!145589) b!1574785))

(assert (= (and d!165227 (not c!145589)) b!1574786))

(assert (= (and b!1574786 c!145588) b!1574784))

(assert (= (and b!1574786 (not c!145588)) b!1574782))

(assert (= (and d!165227 c!145590) b!1574778))

(assert (= (and d!165227 (not c!145590)) b!1574783))

(assert (= (and b!1574783 res!1076133) b!1574781))

(assert (= (and b!1574781 (not res!1076132)) b!1574779))

(assert (= (and b!1574779 (not res!1076131)) b!1574780))

(declare-fun m!1448001 () Bool)

(assert (=> b!1574781 m!1448001))

(assert (=> d!165227 m!1447989))

(declare-fun m!1448003 () Bool)

(assert (=> d!165227 m!1448003))

(assert (=> d!165227 m!1447981))

(assert (=> b!1574780 m!1448001))

(assert (=> b!1574782 m!1447989))

(declare-fun m!1448005 () Bool)

(assert (=> b!1574782 m!1448005))

(assert (=> b!1574782 m!1448005))

(declare-fun m!1448007 () Bool)

(assert (=> b!1574782 m!1448007))

(assert (=> b!1574779 m!1448001))

(assert (=> b!1574732 d!165227))

(declare-fun d!165233 () Bool)

(declare-fun lt!674915 () (_ BitVec 32))

(declare-fun lt!674914 () (_ BitVec 32))

(assert (=> d!165233 (= lt!674915 (bvmul (bvxor lt!674914 (bvlshr lt!674914 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165233 (= lt!674914 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165233 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076134 (let ((h!38418 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142058 (bvmul (bvxor h!38418 (bvlshr h!38418 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142058 (bvlshr x!142058 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076134 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076134 #b00000000000000000000000000000000))))))

