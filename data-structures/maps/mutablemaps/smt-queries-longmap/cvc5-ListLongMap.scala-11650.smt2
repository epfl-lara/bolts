; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136140 () Bool)

(assert start!136140)

(declare-datatypes ((array!105451 0))(
  ( (array!105452 (arr!50851 (Array (_ BitVec 32) (_ BitVec 64))) (size!51402 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105451)

(declare-fun e!879131 () Bool)

(declare-datatypes ((SeekEntryResult!13732 0))(
  ( (MissingZero!13732 (index!57325 (_ BitVec 32))) (Found!13732 (index!57326 (_ BitVec 32))) (Intermediate!13732 (undefined!14544 Bool) (index!57327 (_ BitVec 32)) (x!142324 (_ BitVec 32))) (Undefined!13732) (MissingVacant!13732 (index!57328 (_ BitVec 32))) )
))
(declare-fun lt!675459 () SeekEntryResult!13732)

(declare-fun b!1576148 () Bool)

(declare-fun k!761 () (_ BitVec 64))

(assert (=> b!1576148 (= e!879131 (and (not (is-Undefined!13732 lt!675459)) (ite (is-Found!13732 lt!675459) (not (= (select (arr!50851 _keys!605) (index!57326 lt!675459)) k!761)) (ite (is-MissingZero!13732 lt!675459) (not (= (select (arr!50851 _keys!605) (index!57325 lt!675459)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not (is-MissingVacant!13732 lt!675459)) (not (= (select (arr!50851 _keys!605) (index!57328 lt!675459)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!675460 () SeekEntryResult!13732)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105451 (_ BitVec 32)) SeekEntryResult!13732)

(assert (=> b!1576148 (= lt!675459 (seekKeyOrZeroReturnVacant!0 (x!142324 lt!675460) (index!57327 lt!675460) (index!57327 lt!675460) k!761 _keys!605 mask!898))))

(declare-fun b!1576146 () Bool)

(declare-fun res!1076908 () Bool)

(declare-fun e!879132 () Bool)

(assert (=> b!1576146 (=> (not res!1076908) (not e!879132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576146 (= res!1076908 (validKeyInArray!0 k!761))))

(declare-fun b!1576147 () Bool)

(assert (=> b!1576147 (= e!879132 e!879131)))

(declare-fun res!1076909 () Bool)

(assert (=> b!1576147 (=> (not res!1076909) (not e!879131))))

(assert (=> b!1576147 (= res!1076909 (and (not (undefined!14544 lt!675460)) (is-Intermediate!13732 lt!675460) (not (= (select (arr!50851 _keys!605) (index!57327 lt!675460)) k!761)) (not (= (select (arr!50851 _keys!605) (index!57327 lt!675460)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50851 _keys!605) (index!57327 lt!675460)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57327 lt!675460) #b00000000000000000000000000000000) (bvslt (index!57327 lt!675460) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105451 (_ BitVec 32)) SeekEntryResult!13732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576147 (= lt!675460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun res!1076906 () Bool)

(assert (=> start!136140 (=> (not res!1076906) (not e!879132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136140 (= res!1076906 (validMask!0 mask!898))))

(assert (=> start!136140 e!879132))

(assert (=> start!136140 true))

(declare-fun array_inv!39496 (array!105451) Bool)

(assert (=> start!136140 (array_inv!39496 _keys!605)))

(declare-fun b!1576145 () Bool)

(declare-fun res!1076907 () Bool)

(assert (=> b!1576145 (=> (not res!1076907) (not e!879132))))

(assert (=> b!1576145 (= res!1076907 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51402 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(assert (= (and start!136140 res!1076906) b!1576145))

(assert (= (and b!1576145 res!1076907) b!1576146))

(assert (= (and b!1576146 res!1076908) b!1576147))

(assert (= (and b!1576147 res!1076909) b!1576148))

(declare-fun m!1448881 () Bool)

(assert (=> b!1576148 m!1448881))

(declare-fun m!1448883 () Bool)

(assert (=> b!1576148 m!1448883))

(declare-fun m!1448885 () Bool)

(assert (=> b!1576148 m!1448885))

(declare-fun m!1448887 () Bool)

(assert (=> b!1576148 m!1448887))

(declare-fun m!1448889 () Bool)

(assert (=> b!1576146 m!1448889))

(declare-fun m!1448891 () Bool)

(assert (=> b!1576147 m!1448891))

(declare-fun m!1448893 () Bool)

(assert (=> b!1576147 m!1448893))

(assert (=> b!1576147 m!1448893))

(declare-fun m!1448895 () Bool)

(assert (=> b!1576147 m!1448895))

(declare-fun m!1448897 () Bool)

(assert (=> start!136140 m!1448897))

(declare-fun m!1448899 () Bool)

(assert (=> start!136140 m!1448899))

(push 1)

(assert (not b!1576146))

(assert (not start!136140))

(assert (not b!1576147))

(assert (not b!1576148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165549 () Bool)

(assert (=> d!165549 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576146 d!165549))

(declare-fun d!165551 () Bool)

(assert (=> d!165551 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136140 d!165551))

(declare-fun d!165557 () Bool)

(assert (=> d!165557 (= (array_inv!39496 _keys!605) (bvsge (size!51402 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136140 d!165557))

(declare-fun b!1576195 () Bool)

(declare-fun lt!675481 () SeekEntryResult!13732)

(assert (=> b!1576195 (and (bvsge (index!57327 lt!675481) #b00000000000000000000000000000000) (bvslt (index!57327 lt!675481) (size!51402 _keys!605)))))

(declare-fun res!1076940 () Bool)

(assert (=> b!1576195 (= res!1076940 (= (select (arr!50851 _keys!605) (index!57327 lt!675481)) k!761))))

(declare-fun e!879165 () Bool)

(assert (=> b!1576195 (=> res!1076940 e!879165)))

(declare-fun e!879163 () Bool)

(assert (=> b!1576195 (= e!879163 e!879165)))

(declare-fun b!1576196 () Bool)

(assert (=> b!1576196 (and (bvsge (index!57327 lt!675481) #b00000000000000000000000000000000) (bvslt (index!57327 lt!675481) (size!51402 _keys!605)))))

(declare-fun res!1076941 () Bool)

(assert (=> b!1576196 (= res!1076941 (= (select (arr!50851 _keys!605) (index!57327 lt!675481)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576196 (=> res!1076941 e!879165)))

(declare-fun e!879166 () SeekEntryResult!13732)

(declare-fun b!1576197 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576197 (= e!879166 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576198 () Bool)

(assert (=> b!1576198 (and (bvsge (index!57327 lt!675481) #b00000000000000000000000000000000) (bvslt (index!57327 lt!675481) (size!51402 _keys!605)))))

(assert (=> b!1576198 (= e!879165 (= (select (arr!50851 _keys!605) (index!57327 lt!675481)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576199 () Bool)

(assert (=> b!1576199 (= e!879166 (Intermediate!13732 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576200 () Bool)

(declare-fun e!879167 () Bool)

(assert (=> b!1576200 (= e!879167 e!879163)))

(declare-fun res!1076942 () Bool)

(assert (=> b!1576200 (= res!1076942 (and (is-Intermediate!13732 lt!675481) (not (undefined!14544 lt!675481)) (bvslt (x!142324 lt!675481) #b01111111111111111111111111111110) (bvsge (x!142324 lt!675481) #b00000000000000000000000000000000) (bvsge (x!142324 lt!675481) #b00000000000000000000000000000000)))))

(assert (=> b!1576200 (=> (not res!1076942) (not e!879163))))

(declare-fun b!1576201 () Bool)

(declare-fun e!879164 () SeekEntryResult!13732)

(assert (=> b!1576201 (= e!879164 (Intermediate!13732 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165559 () Bool)

(assert (=> d!165559 e!879167))

(declare-fun c!145907 () Bool)

(assert (=> d!165559 (= c!145907 (and (is-Intermediate!13732 lt!675481) (undefined!14544 lt!675481)))))

(assert (=> d!165559 (= lt!675481 e!879164)))

(declare-fun c!145906 () Bool)

(assert (=> d!165559 (= c!145906 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675482 () (_ BitVec 64))

(assert (=> d!165559 (= lt!675482 (select (arr!50851 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165559 (validMask!0 mask!898)))

(assert (=> d!165559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675481)))

(declare-fun b!1576202 () Bool)

(assert (=> b!1576202 (= e!879167 (bvsge (x!142324 lt!675481) #b01111111111111111111111111111110))))

(declare-fun b!1576203 () Bool)

(assert (=> b!1576203 (= e!879164 e!879166)))

(declare-fun c!145905 () Bool)

(assert (=> b!1576203 (= c!145905 (or (= lt!675482 k!761) (= (bvadd lt!675482 lt!675482) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165559 c!145906) b!1576201))

(assert (= (and d!165559 (not c!145906)) b!1576203))

(assert (= (and b!1576203 c!145905) b!1576199))

(assert (= (and b!1576203 (not c!145905)) b!1576197))

(assert (= (and d!165559 c!145907) b!1576202))

(assert (= (and d!165559 (not c!145907)) b!1576200))

(assert (= (and b!1576200 res!1076942) b!1576195))

(assert (= (and b!1576195 (not res!1076940)) b!1576196))

(assert (= (and b!1576196 (not res!1076941)) b!1576198))

(declare-fun m!1448941 () Bool)

(assert (=> b!1576196 m!1448941))

(assert (=> b!1576198 m!1448941))

(assert (=> b!1576195 m!1448941))

(assert (=> b!1576197 m!1448893))

(declare-fun m!1448943 () Bool)

(assert (=> b!1576197 m!1448943))

(assert (=> b!1576197 m!1448943))

(declare-fun m!1448945 () Bool)

(assert (=> b!1576197 m!1448945))

(assert (=> d!165559 m!1448893))

(declare-fun m!1448947 () Bool)

(assert (=> d!165559 m!1448947))

(assert (=> d!165559 m!1448897))

(assert (=> b!1576147 d!165559))

(declare-fun d!165563 () Bool)

(declare-fun lt!675494 () (_ BitVec 32))

(declare-fun lt!675493 () (_ BitVec 32))

(assert (=> d!165563 (= lt!675494 (bvmul (bvxor lt!675493 (bvlshr lt!675493 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165563 (= lt!675493 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165563 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076949 (let ((h!38444 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142329 (bvmul (bvxor h!38444 (bvlshr h!38444 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142329 (bvlshr x!142329 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076949 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076949 #b00000000000000000000000000000000))))))

(assert (=> d!165563 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675494 (bvlshr lt!675494 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576147 d!165563))

(declare-fun d!165565 () Bool)

(declare-fun lt!675507 () SeekEntryResult!13732)

(assert (=> d!165565 (and (or (is-Undefined!13732 lt!675507) (not (is-Found!13732 lt!675507)) (and (bvsge (index!57326 lt!675507) #b00000000000000000000000000000000) (bvslt (index!57326 lt!675507) (size!51402 _keys!605)))) (or (is-Undefined!13732 lt!675507) (is-Found!13732 lt!675507) (not (is-MissingVacant!13732 lt!675507)) (not (= (index!57328 lt!675507) (index!57327 lt!675460))) (and (bvsge (index!57328 lt!675507) #b00000000000000000000000000000000) (bvslt (index!57328 lt!675507) (size!51402 _keys!605)))) (or (is-Undefined!13732 lt!675507) (ite (is-Found!13732 lt!675507) (= (select (arr!50851 _keys!605) (index!57326 lt!675507)) k!761) (and (is-MissingVacant!13732 lt!675507) (= (index!57328 lt!675507) (index!57327 lt!675460)) (= (select (arr!50851 _keys!605) (index!57328 lt!675507)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!879204 () SeekEntryResult!13732)

(assert (=> d!165565 (= lt!675507 e!879204)))

(declare-fun c!145930 () Bool)

(assert (=> d!165565 (= c!145930 (bvsge (x!142324 lt!675460) #b01111111111111111111111111111110))))

(declare-fun lt!675508 () (_ BitVec 64))

(assert (=> d!165565 (= lt!675508 (select (arr!50851 _keys!605) (index!57327 lt!675460)))))

(assert (=> d!165565 (validMask!0 mask!898)))

(assert (=> d!165565 (= (seekKeyOrZeroReturnVacant!0 (x!142324 lt!675460) (index!57327 lt!675460) (index!57327 lt!675460) k!761 _keys!605 mask!898) lt!675507)))

(declare-fun b!1576266 () Bool)

(declare-fun e!879202 () SeekEntryResult!13732)

(assert (=> b!1576266 (= e!879204 e!879202)))

(declare-fun c!145932 () Bool)

(assert (=> b!1576266 (= c!145932 (= lt!675508 k!761))))

(declare-fun e!879203 () SeekEntryResult!13732)

(declare-fun b!1576267 () Bool)

(assert (=> b!1576267 (= e!879203 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142324 lt!675460) #b00000000000000000000000000000001) (nextIndex!0 (index!57327 lt!675460) (x!142324 lt!675460) mask!898) (index!57327 lt!675460) k!761 _keys!605 mask!898))))

(declare-fun b!1576268 () Bool)

(assert (=> b!1576268 (= e!879203 (MissingVacant!13732 (index!57327 lt!675460)))))

(declare-fun b!1576269 () Bool)

(assert (=> b!1576269 (= e!879202 (Found!13732 (index!57327 lt!675460)))))

(declare-fun b!1576270 () Bool)

(assert (=> b!1576270 (= e!879204 Undefined!13732)))

(declare-fun b!1576271 () Bool)

(declare-fun c!145931 () Bool)

(assert (=> b!1576271 (= c!145931 (= lt!675508 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576271 (= e!879202 e!879203)))

(assert (= (and d!165565 c!145930) b!1576270))

(assert (= (and d!165565 (not c!145930)) b!1576266))

(assert (= (and b!1576266 c!145932) b!1576269))

(assert (= (and b!1576266 (not c!145932)) b!1576271))

(assert (= (and b!1576271 c!145931) b!1576268))

(assert (= (and b!1576271 (not c!145931)) b!1576267))

(declare-fun m!1448965 () Bool)

(assert (=> d!165565 m!1448965))

(declare-fun m!1448967 () Bool)

(assert (=> d!165565 m!1448967))

(assert (=> d!165565 m!1448891))

(assert (=> d!165565 m!1448897))

(declare-fun m!1448969 () Bool)

(assert (=> b!1576267 m!1448969))

(assert (=> b!1576267 m!1448969))

(declare-fun m!1448971 () Bool)

(assert (=> b!1576267 m!1448971))

(assert (=> b!1576148 d!165565))

(push 1)

(assert (not b!1576267))

(assert (not b!1576197))

(assert (not d!165565))

(assert (not d!165559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

