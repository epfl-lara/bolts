; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135738 () Bool)

(assert start!135738)

(declare-fun res!1076095 () Bool)

(declare-fun e!878274 () Bool)

(assert (=> start!135738 (=> (not res!1076095) (not e!878274))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135738 (= res!1076095 (validMask!0 mask!898))))

(assert (=> start!135738 e!878274))

(assert (=> start!135738 true))

(declare-datatypes ((array!105310 0))(
  ( (array!105311 (arr!50794 (Array (_ BitVec 32) (_ BitVec 64))) (size!51345 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105310)

(declare-fun array_inv!39439 (array!105310) Bool)

(assert (=> start!135738 (array_inv!39439 _keys!605)))

(declare-fun b!1574712 () Bool)

(declare-fun res!1076096 () Bool)

(assert (=> b!1574712 (=> (not res!1076096) (not e!878274))))

(assert (=> b!1574712 (= res!1076096 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51345 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574713 () Bool)

(declare-fun res!1076094 () Bool)

(assert (=> b!1574713 (=> (not res!1076094) (not e!878274))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574713 (= res!1076094 (validKeyInArray!0 k!761))))

(declare-fun b!1574714 () Bool)

(declare-datatypes ((SeekEntryResult!13675 0))(
  ( (MissingZero!13675 (index!57097 (_ BitVec 32))) (Found!13675 (index!57098 (_ BitVec 32))) (Intermediate!13675 (undefined!14487 Bool) (index!57099 (_ BitVec 32)) (x!142052 (_ BitVec 32))) (Undefined!13675) (MissingVacant!13675 (index!57100 (_ BitVec 32))) )
))
(declare-fun lt!674881 () SeekEntryResult!13675)

(assert (=> b!1574714 (= e!878274 (and (is-Intermediate!13675 lt!674881) (not (undefined!14487 lt!674881)) (not (= (select (arr!50794 _keys!605) (index!57099 lt!674881)) k!761)) (not (= (select (arr!50794 _keys!605) (index!57099 lt!674881)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50794 _keys!605) (index!57099 lt!674881)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105310 (_ BitVec 32)) SeekEntryResult!13675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574714 (= lt!674881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135738 res!1076095) b!1574712))

(assert (= (and b!1574712 res!1076096) b!1574713))

(assert (= (and b!1574713 res!1076094) b!1574714))

(declare-fun m!1447957 () Bool)

(assert (=> start!135738 m!1447957))

(declare-fun m!1447959 () Bool)

(assert (=> start!135738 m!1447959))

(declare-fun m!1447961 () Bool)

(assert (=> b!1574713 m!1447961))

(declare-fun m!1447963 () Bool)

(assert (=> b!1574714 m!1447963))

(declare-fun m!1447965 () Bool)

(assert (=> b!1574714 m!1447965))

(assert (=> b!1574714 m!1447965))

(declare-fun m!1447967 () Bool)

(assert (=> b!1574714 m!1447967))

(push 1)

(assert (not b!1574714))

(assert (not start!135738))

(assert (not b!1574713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1574761 () Bool)

(declare-fun e!878305 () SeekEntryResult!13675)

(declare-fun e!878304 () SeekEntryResult!13675)

(assert (=> b!1574761 (= e!878305 e!878304)))

(declare-fun c!145584 () Bool)

(declare-fun lt!674896 () (_ BitVec 64))

(assert (=> b!1574761 (= c!145584 (or (= lt!674896 k!761) (= (bvadd lt!674896 lt!674896) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574762 () Bool)

(declare-fun lt!674897 () SeekEntryResult!13675)

(assert (=> b!1574762 (and (bvsge (index!57099 lt!674897) #b00000000000000000000000000000000) (bvslt (index!57099 lt!674897) (size!51345 _keys!605)))))

(declare-fun res!1076123 () Bool)

(assert (=> b!1574762 (= res!1076123 (= (select (arr!50794 _keys!605) (index!57099 lt!674897)) k!761))))

(declare-fun e!878301 () Bool)

(assert (=> b!1574762 (=> res!1076123 e!878301)))

(declare-fun e!878303 () Bool)

(assert (=> b!1574762 (= e!878303 e!878301)))

(declare-fun b!1574763 () Bool)

(assert (=> b!1574763 (and (bvsge (index!57099 lt!674897) #b00000000000000000000000000000000) (bvslt (index!57099 lt!674897) (size!51345 _keys!605)))))

(declare-fun res!1076122 () Bool)

(assert (=> b!1574763 (= res!1076122 (= (select (arr!50794 _keys!605) (index!57099 lt!674897)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574763 (=> res!1076122 e!878301)))

(declare-fun b!1574765 () Bool)

(declare-fun e!878302 () Bool)

(assert (=> b!1574765 (= e!878302 (bvsge (x!142052 lt!674897) #b01111111111111111111111111111110))))

(declare-fun b!1574766 () Bool)

(assert (=> b!1574766 (= e!878302 e!878303)))

(declare-fun res!1076121 () Bool)

(assert (=> b!1574766 (= res!1076121 (and (is-Intermediate!13675 lt!674897) (not (undefined!14487 lt!674897)) (bvslt (x!142052 lt!674897) #b01111111111111111111111111111110) (bvsge (x!142052 lt!674897) #b00000000000000000000000000000000) (bvsge (x!142052 lt!674897) #b00000000000000000000000000000000)))))

(assert (=> b!1574766 (=> (not res!1076121) (not e!878303))))

(declare-fun b!1574767 () Bool)

(assert (=> b!1574767 (= e!878304 (Intermediate!13675 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574764 () Bool)

(assert (=> b!1574764 (and (bvsge (index!57099 lt!674897) #b00000000000000000000000000000000) (bvslt (index!57099 lt!674897) (size!51345 _keys!605)))))

(assert (=> b!1574764 (= e!878301 (= (select (arr!50794 _keys!605) (index!57099 lt!674897)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165223 () Bool)

(assert (=> d!165223 e!878302))

(declare-fun c!145585 () Bool)

(assert (=> d!165223 (= c!145585 (and (is-Intermediate!13675 lt!674897) (undefined!14487 lt!674897)))))

(assert (=> d!165223 (= lt!674897 e!878305)))

(declare-fun c!145583 () Bool)

(assert (=> d!165223 (= c!145583 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165223 (= lt!674896 (select (arr!50794 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165223 (validMask!0 mask!898)))

(assert (=> d!165223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674897)))

(declare-fun b!1574768 () Bool)

(assert (=> b!1574768 (= e!878305 (Intermediate!13675 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574769 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574769 (= e!878304 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and d!165223 c!145583) b!1574768))

(assert (= (and d!165223 (not c!145583)) b!1574761))

(assert (= (and b!1574761 c!145584) b!1574767))

(assert (= (and b!1574761 (not c!145584)) b!1574769))

(assert (= (and d!165223 c!145585) b!1574765))

(assert (= (and d!165223 (not c!145585)) b!1574766))

(assert (= (and b!1574766 res!1076121) b!1574762))

(assert (= (and b!1574762 (not res!1076123)) b!1574763))

(assert (= (and b!1574763 (not res!1076122)) b!1574764))

(declare-fun m!1447993 () Bool)

(assert (=> b!1574763 m!1447993))

(assert (=> b!1574764 m!1447993))

(assert (=> b!1574769 m!1447965))

(declare-fun m!1447995 () Bool)

(assert (=> b!1574769 m!1447995))

(assert (=> b!1574769 m!1447995))

(declare-fun m!1447997 () Bool)

(assert (=> b!1574769 m!1447997))

(assert (=> b!1574762 m!1447993))

(assert (=> d!165223 m!1447965))

(declare-fun m!1447999 () Bool)

(assert (=> d!165223 m!1447999))

(assert (=> d!165223 m!1447957))

(assert (=> b!1574714 d!165223))

(declare-fun d!165231 () Bool)

(declare-fun lt!674905 () (_ BitVec 32))

(declare-fun lt!674904 () (_ BitVec 32))

(assert (=> d!165231 (= lt!674905 (bvmul (bvxor lt!674904 (bvlshr lt!674904 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165231 (= lt!674904 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165231 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076130 (let ((h!38417 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142057 (bvmul (bvxor h!38417 (bvlshr h!38417 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142057 (bvlshr x!142057 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076130 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076130 #b00000000000000000000000000000000))))))

(assert (=> d!165231 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!674905 (bvlshr lt!674905 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574714 d!165231))

(declare-fun d!165235 () Bool)

(assert (=> d!165235 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135738 d!165235))

(declare-fun d!165241 () Bool)

(assert (=> d!165241 (= (array_inv!39439 _keys!605) (bvsge (size!51345 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135738 d!165241))

(declare-fun d!165243 () Bool)

(assert (=> d!165243 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574713 d!165243))

(push 1)

(assert (not b!1574769))

(assert (not d!165223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

