; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136326 () Bool)

(assert start!136326)

(declare-fun res!1077228 () Bool)

(declare-fun e!879509 () Bool)

(assert (=> start!136326 (=> (not res!1077228) (not e!879509))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136326 (= res!1077228 (validMask!0 mask!898))))

(assert (=> start!136326 e!879509))

(assert (=> start!136326 true))

(declare-datatypes ((array!105496 0))(
  ( (array!105497 (arr!50866 (Array (_ BitVec 32) (_ BitVec 64))) (size!51417 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105496)

(declare-fun array_inv!39511 (array!105496) Bool)

(assert (=> start!136326 (array_inv!39511 _keys!605)))

(declare-fun b!1576775 () Bool)

(declare-fun res!1077230 () Bool)

(assert (=> b!1576775 (=> (not res!1077230) (not e!879509))))

(assert (=> b!1576775 (= res!1077230 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51417 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576778 () Bool)

(declare-fun e!879508 () Bool)

(declare-datatypes ((SeekEntryResult!13747 0))(
  ( (MissingZero!13747 (index!57385 (_ BitVec 32))) (Found!13747 (index!57386 (_ BitVec 32))) (Intermediate!13747 (undefined!14559 Bool) (index!57387 (_ BitVec 32)) (x!142412 (_ BitVec 32))) (Undefined!13747) (MissingVacant!13747 (index!57388 (_ BitVec 32))) )
))
(declare-fun lt!675777 () SeekEntryResult!13747)

(declare-fun k!761 () (_ BitVec 64))

(assert (=> b!1576778 (= e!879508 (and (not (is-Undefined!13747 lt!675777)) (ite (is-Found!13747 lt!675777) (not (= (select (arr!50866 _keys!605) (index!57386 lt!675777)) k!761)) (ite (is-MissingZero!13747 lt!675777) (not (= (select (arr!50866 _keys!605) (index!57385 lt!675777)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not (is-MissingVacant!13747 lt!675777)) (not (= (select (arr!50866 _keys!605) (index!57388 lt!675777)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun err!210 () SeekEntryResult!13747)

(assert (=> b!1576778 (= lt!675777 err!210)))

(assert (=> b!1576778 true))

(declare-fun b!1576776 () Bool)

(declare-fun res!1077229 () Bool)

(assert (=> b!1576776 (=> (not res!1077229) (not e!879509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576776 (= res!1077229 (validKeyInArray!0 k!761))))

(declare-fun b!1576777 () Bool)

(assert (=> b!1576777 (= e!879509 e!879508)))

(declare-fun res!1077227 () Bool)

(assert (=> b!1576777 (=> (not res!1077227) (not e!879508))))

(declare-fun lt!675776 () Bool)

(declare-fun lt!675778 () SeekEntryResult!13747)

(assert (=> b!1576777 (= res!1077227 (and (or lt!675776 (not (undefined!14559 lt!675778))) (or lt!675776 (undefined!14559 lt!675778))))))

(assert (=> b!1576777 (= lt!675776 (not (is-Intermediate!13747 lt!675778)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105496 (_ BitVec 32)) SeekEntryResult!13747)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576777 (= lt!675778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136326 res!1077228) b!1576775))

(assert (= (and b!1576775 res!1077230) b!1576776))

(assert (= (and b!1576776 res!1077229) b!1576777))

(assert (= (and b!1576777 res!1077227) b!1576778))

(declare-fun m!1449197 () Bool)

(assert (=> start!136326 m!1449197))

(declare-fun m!1449199 () Bool)

(assert (=> start!136326 m!1449199))

(declare-fun m!1449201 () Bool)

(assert (=> b!1576778 m!1449201))

(declare-fun m!1449203 () Bool)

(assert (=> b!1576778 m!1449203))

(declare-fun m!1449205 () Bool)

(assert (=> b!1576778 m!1449205))

(declare-fun m!1449207 () Bool)

(assert (=> b!1576776 m!1449207))

(declare-fun m!1449209 () Bool)

(assert (=> b!1576777 m!1449209))

(assert (=> b!1576777 m!1449209))

(declare-fun m!1449211 () Bool)

(assert (=> b!1576777 m!1449211))

(push 1)

(assert (not b!1576777))

(assert (not start!136326))

(assert (not b!1576776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1576821 () Bool)

(declare-fun lt!675801 () SeekEntryResult!13747)

(assert (=> b!1576821 (and (bvsge (index!57387 lt!675801) #b00000000000000000000000000000000) (bvslt (index!57387 lt!675801) (size!51417 _keys!605)))))

(declare-fun res!1077262 () Bool)

(assert (=> b!1576821 (= res!1077262 (= (select (arr!50866 _keys!605) (index!57387 lt!675801)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879541 () Bool)

(assert (=> b!1576821 (=> res!1077262 e!879541)))

(declare-fun e!879542 () SeekEntryResult!13747)

(declare-fun b!1576822 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576822 (= e!879542 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576823 () Bool)

(declare-fun e!879543 () SeekEntryResult!13747)

(assert (=> b!1576823 (= e!879543 e!879542)))

(declare-fun c!146067 () Bool)

(declare-fun lt!675802 () (_ BitVec 64))

(assert (=> b!1576823 (= c!146067 (or (= lt!675802 k!761) (= (bvadd lt!675802 lt!675802) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165717 () Bool)

(declare-fun e!879540 () Bool)

(assert (=> d!165717 e!879540))

(declare-fun c!146066 () Bool)

(assert (=> d!165717 (= c!146066 (and (is-Intermediate!13747 lt!675801) (undefined!14559 lt!675801)))))

(assert (=> d!165717 (= lt!675801 e!879543)))

(declare-fun c!146065 () Bool)

(assert (=> d!165717 (= c!146065 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165717 (= lt!675802 (select (arr!50866 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165717 (validMask!0 mask!898)))

(assert (=> d!165717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675801)))

(declare-fun b!1576824 () Bool)

(declare-fun e!879539 () Bool)

(assert (=> b!1576824 (= e!879540 e!879539)))

(declare-fun res!1077263 () Bool)

(assert (=> b!1576824 (= res!1077263 (and (is-Intermediate!13747 lt!675801) (not (undefined!14559 lt!675801)) (bvslt (x!142412 lt!675801) #b01111111111111111111111111111110) (bvsge (x!142412 lt!675801) #b00000000000000000000000000000000) (bvsge (x!142412 lt!675801) #b00000000000000000000000000000000)))))

(assert (=> b!1576824 (=> (not res!1077263) (not e!879539))))

(declare-fun b!1576825 () Bool)

(assert (=> b!1576825 (= e!879543 (Intermediate!13747 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576826 () Bool)

(assert (=> b!1576826 (= e!879540 (bvsge (x!142412 lt!675801) #b01111111111111111111111111111110))))

(declare-fun b!1576827 () Bool)

(assert (=> b!1576827 (and (bvsge (index!57387 lt!675801) #b00000000000000000000000000000000) (bvslt (index!57387 lt!675801) (size!51417 _keys!605)))))

(declare-fun res!1077261 () Bool)

(assert (=> b!1576827 (= res!1077261 (= (select (arr!50866 _keys!605) (index!57387 lt!675801)) k!761))))

(assert (=> b!1576827 (=> res!1077261 e!879541)))

(assert (=> b!1576827 (= e!879539 e!879541)))

(declare-fun b!1576828 () Bool)

(assert (=> b!1576828 (and (bvsge (index!57387 lt!675801) #b00000000000000000000000000000000) (bvslt (index!57387 lt!675801) (size!51417 _keys!605)))))

(assert (=> b!1576828 (= e!879541 (= (select (arr!50866 _keys!605) (index!57387 lt!675801)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576829 () Bool)

(assert (=> b!1576829 (= e!879542 (Intermediate!13747 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165717 c!146065) b!1576825))

(assert (= (and d!165717 (not c!146065)) b!1576823))

(assert (= (and b!1576823 c!146067) b!1576829))

(assert (= (and b!1576823 (not c!146067)) b!1576822))

(assert (= (and d!165717 c!146066) b!1576826))

(assert (= (and d!165717 (not c!146066)) b!1576824))

(assert (= (and b!1576824 res!1077263) b!1576827))

(assert (= (and b!1576827 (not res!1077261)) b!1576821))

(assert (= (and b!1576821 (not res!1077262)) b!1576828))

(assert (=> d!165717 m!1449209))

(declare-fun m!1449245 () Bool)

(assert (=> d!165717 m!1449245))

(assert (=> d!165717 m!1449197))

(declare-fun m!1449247 () Bool)

(assert (=> b!1576827 m!1449247))

(assert (=> b!1576821 m!1449247))

(assert (=> b!1576828 m!1449247))

(assert (=> b!1576822 m!1449209))

(declare-fun m!1449249 () Bool)

(assert (=> b!1576822 m!1449249))

(assert (=> b!1576822 m!1449249))

(declare-fun m!1449251 () Bool)

(assert (=> b!1576822 m!1449251))

(assert (=> b!1576777 d!165717))

(declare-fun d!165727 () Bool)

(declare-fun lt!675814 () (_ BitVec 32))

(declare-fun lt!675813 () (_ BitVec 32))

(assert (=> d!165727 (= lt!675814 (bvmul (bvxor lt!675813 (bvlshr lt!675813 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165727 (= lt!675813 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165727 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077264 (let ((h!38459 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142417 (bvmul (bvxor h!38459 (bvlshr h!38459 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142417 (bvlshr x!142417 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077264 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077264 #b00000000000000000000000000000000))))))

(assert (=> d!165727 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675814 (bvlshr lt!675814 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576777 d!165727))

(declare-fun d!165729 () Bool)

(assert (=> d!165729 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136326 d!165729))

(declare-fun d!165735 () Bool)

(assert (=> d!165735 (= (array_inv!39511 _keys!605) (bvsge (size!51417 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136326 d!165735))

(declare-fun d!165737 () Bool)

(assert (=> d!165737 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576776 d!165737))

(push 1)

(assert (not d!165717))

(assert (not b!1576822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

