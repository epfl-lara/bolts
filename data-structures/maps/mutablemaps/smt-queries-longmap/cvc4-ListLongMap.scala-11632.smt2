; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135778 () Bool)

(assert start!135778)

(declare-fun res!1076169 () Bool)

(declare-fun e!878349 () Bool)

(assert (=> start!135778 (=> (not res!1076169) (not e!878349))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135778 (= res!1076169 (validMask!0 mask!898))))

(assert (=> start!135778 e!878349))

(assert (=> start!135778 true))

(declare-datatypes ((array!105323 0))(
  ( (array!105324 (arr!50799 (Array (_ BitVec 32) (_ BitVec 64))) (size!51350 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105323)

(declare-fun array_inv!39444 (array!105323) Bool)

(assert (=> start!135778 (array_inv!39444 _keys!605)))

(declare-fun b!1574838 () Bool)

(declare-fun res!1076170 () Bool)

(assert (=> b!1574838 (=> (not res!1076170) (not e!878349))))

(assert (=> b!1574838 (= res!1076170 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51350 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574839 () Bool)

(declare-fun res!1076171 () Bool)

(assert (=> b!1574839 (=> (not res!1076171) (not e!878349))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574839 (= res!1076171 (validKeyInArray!0 k!761))))

(declare-fun b!1574840 () Bool)

(declare-datatypes ((SeekEntryResult!13680 0))(
  ( (MissingZero!13680 (index!57117 (_ BitVec 32))) (Found!13680 (index!57118 (_ BitVec 32))) (Intermediate!13680 (undefined!14492 Bool) (index!57119 (_ BitVec 32)) (x!142071 (_ BitVec 32))) (Undefined!13680) (MissingVacant!13680 (index!57120 (_ BitVec 32))) )
))
(declare-fun lt!674932 () SeekEntryResult!13680)

(assert (=> b!1574840 (= e!878349 (and (is-Intermediate!13680 lt!674932) (not (undefined!14492 lt!674932)) (not (= (select (arr!50799 _keys!605) (index!57119 lt!674932)) k!761)) (not (= (select (arr!50799 _keys!605) (index!57119 lt!674932)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50799 _keys!605) (index!57119 lt!674932)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57119 lt!674932) #b00000000000000000000000000000000) (bvsge (index!57119 lt!674932) (bvadd #b00000000000000000000000000000001 mask!898)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105323 (_ BitVec 32)) SeekEntryResult!13680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574840 (= lt!674932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135778 res!1076169) b!1574838))

(assert (= (and b!1574838 res!1076170) b!1574839))

(assert (= (and b!1574839 res!1076171) b!1574840))

(declare-fun m!1448041 () Bool)

(assert (=> start!135778 m!1448041))

(declare-fun m!1448043 () Bool)

(assert (=> start!135778 m!1448043))

(declare-fun m!1448045 () Bool)

(assert (=> b!1574839 m!1448045))

(declare-fun m!1448047 () Bool)

(assert (=> b!1574840 m!1448047))

(declare-fun m!1448049 () Bool)

(assert (=> b!1574840 m!1448049))

(assert (=> b!1574840 m!1448049))

(declare-fun m!1448051 () Bool)

(assert (=> b!1574840 m!1448051))

(push 1)

(assert (not start!135778))

(assert (not b!1574840))

(assert (not b!1574839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165261 () Bool)

(assert (=> d!165261 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135778 d!165261))

(declare-fun d!165267 () Bool)

(assert (=> d!165267 (= (array_inv!39444 _keys!605) (bvsge (size!51350 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135778 d!165267))

(declare-fun b!1574886 () Bool)

(declare-fun e!878375 () Bool)

(declare-fun e!878377 () Bool)

(assert (=> b!1574886 (= e!878375 e!878377)))

(declare-fun res!1076188 () Bool)

(declare-fun lt!674949 () SeekEntryResult!13680)

(assert (=> b!1574886 (= res!1076188 (and (is-Intermediate!13680 lt!674949) (not (undefined!14492 lt!674949)) (bvslt (x!142071 lt!674949) #b01111111111111111111111111111110) (bvsge (x!142071 lt!674949) #b00000000000000000000000000000000) (bvsge (x!142071 lt!674949) #b00000000000000000000000000000000)))))

(assert (=> b!1574886 (=> (not res!1076188) (not e!878377))))

(declare-fun b!1574887 () Bool)

(assert (=> b!1574887 (and (bvsge (index!57119 lt!674949) #b00000000000000000000000000000000) (bvslt (index!57119 lt!674949) (size!51350 _keys!605)))))

(declare-fun res!1076189 () Bool)

(assert (=> b!1574887 (= res!1076189 (= (select (arr!50799 _keys!605) (index!57119 lt!674949)) k!761))))

(declare-fun e!878376 () Bool)

(assert (=> b!1574887 (=> res!1076189 e!878376)))

(assert (=> b!1574887 (= e!878377 e!878376)))

(declare-fun b!1574888 () Bool)

(assert (=> b!1574888 (and (bvsge (index!57119 lt!674949) #b00000000000000000000000000000000) (bvslt (index!57119 lt!674949) (size!51350 _keys!605)))))

(declare-fun res!1076190 () Bool)

(assert (=> b!1574888 (= res!1076190 (= (select (arr!50799 _keys!605) (index!57119 lt!674949)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574888 (=> res!1076190 e!878376)))

(declare-fun d!165269 () Bool)

(assert (=> d!165269 e!878375))

(declare-fun c!145615 () Bool)

(assert (=> d!165269 (= c!145615 (and (is-Intermediate!13680 lt!674949) (undefined!14492 lt!674949)))))

(declare-fun e!878378 () SeekEntryResult!13680)

(assert (=> d!165269 (= lt!674949 e!878378)))

(declare-fun c!145616 () Bool)

(assert (=> d!165269 (= c!145616 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674950 () (_ BitVec 64))

(assert (=> d!165269 (= lt!674950 (select (arr!50799 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165269 (validMask!0 mask!898)))

(assert (=> d!165269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674949)))

(declare-fun b!1574889 () Bool)

(assert (=> b!1574889 (and (bvsge (index!57119 lt!674949) #b00000000000000000000000000000000) (bvslt (index!57119 lt!674949) (size!51350 _keys!605)))))

(assert (=> b!1574889 (= e!878376 (= (select (arr!50799 _keys!605) (index!57119 lt!674949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574890 () Bool)

(declare-fun e!878379 () SeekEntryResult!13680)

(assert (=> b!1574890 (= e!878378 e!878379)))

(declare-fun c!145617 () Bool)

(assert (=> b!1574890 (= c!145617 (or (= lt!674950 k!761) (= (bvadd lt!674950 lt!674950) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574891 () Bool)

(assert (=> b!1574891 (= e!878379 (Intermediate!13680 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574892 () Bool)

(assert (=> b!1574892 (= e!878378 (Intermediate!13680 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574893 () Bool)

(assert (=> b!1574893 (= e!878375 (bvsge (x!142071 lt!674949) #b01111111111111111111111111111110))))

(declare-fun b!1574894 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574894 (= e!878379 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and d!165269 c!145616) b!1574892))

(assert (= (and d!165269 (not c!145616)) b!1574890))

(assert (= (and b!1574890 c!145617) b!1574891))

(assert (= (and b!1574890 (not c!145617)) b!1574894))

(assert (= (and d!165269 c!145615) b!1574893))

(assert (= (and d!165269 (not c!145615)) b!1574886))

(assert (= (and b!1574886 res!1076188) b!1574887))

(assert (= (and b!1574887 (not res!1076189)) b!1574888))

(assert (= (and b!1574888 (not res!1076190)) b!1574889))

(declare-fun m!1448061 () Bool)

(assert (=> b!1574887 m!1448061))

(assert (=> d!165269 m!1448049))

(declare-fun m!1448063 () Bool)

(assert (=> d!165269 m!1448063))

(assert (=> d!165269 m!1448041))

(assert (=> b!1574894 m!1448049))

(declare-fun m!1448065 () Bool)

(assert (=> b!1574894 m!1448065))

(assert (=> b!1574894 m!1448065))

(declare-fun m!1448067 () Bool)

(assert (=> b!1574894 m!1448067))

(assert (=> b!1574889 m!1448061))

(assert (=> b!1574888 m!1448061))

(assert (=> b!1574840 d!165269))

(declare-fun d!165279 () Bool)

(declare-fun lt!674960 () (_ BitVec 32))

(declare-fun lt!674959 () (_ BitVec 32))

(assert (=> d!165279 (= lt!674960 (bvmul (bvxor lt!674959 (bvlshr lt!674959 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165279 (= lt!674959 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165279 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076191 (let ((h!38421 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142075 (bvmul (bvxor h!38421 (bvlshr h!38421 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142075 (bvlshr x!142075 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076191 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076191 #b00000000000000000000000000000000))))))

(assert (=> d!165279 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!674960 (bvlshr lt!674960 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574840 d!165279))

(declare-fun d!165281 () Bool)

(assert (=> d!165281 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574839 d!165281))

(push 1)

(assert (not b!1574894))

(assert (not d!165269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

