; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135930 () Bool)

(assert start!135930)

(declare-fun res!1076539 () Bool)

(declare-fun e!878670 () Bool)

(assert (=> start!135930 (=> (not res!1076539) (not e!878670))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135930 (= res!1076539 (validMask!0 mask!898))))

(assert (=> start!135930 e!878670))

(assert (=> start!135930 true))

(declare-datatypes ((array!105394 0))(
  ( (array!105395 (arr!50830 (Array (_ BitVec 32) (_ BitVec 64))) (size!51381 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105394)

(declare-fun array_inv!39475 (array!105394) Bool)

(assert (=> start!135930 (array_inv!39475 _keys!605)))

(declare-fun b!1575360 () Bool)

(declare-fun res!1076538 () Bool)

(assert (=> b!1575360 (=> (not res!1076538) (not e!878670))))

(assert (=> b!1575360 (= res!1076538 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51381 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575361 () Bool)

(declare-fun res!1076540 () Bool)

(assert (=> b!1575361 (=> (not res!1076540) (not e!878670))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575361 (= res!1076540 (validKeyInArray!0 k!761))))

(declare-fun b!1575362 () Bool)

(declare-datatypes ((SeekEntryResult!13711 0))(
  ( (MissingZero!13711 (index!57241 (_ BitVec 32))) (Found!13711 (index!57242 (_ BitVec 32))) (Intermediate!13711 (undefined!14523 Bool) (index!57243 (_ BitVec 32)) (x!142208 (_ BitVec 32))) (Undefined!13711) (MissingVacant!13711 (index!57244 (_ BitVec 32))) )
))
(declare-fun lt!675133 () SeekEntryResult!13711)

(assert (=> b!1575362 (= e!878670 (and (is-Intermediate!13711 lt!675133) (not (undefined!14523 lt!675133)) (not (= (select (arr!50830 _keys!605) (index!57243 lt!675133)) k!761)) (= (select (arr!50830 _keys!605) (index!57243 lt!675133)) #b0000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57243 lt!675133) #b00000000000000000000000000000000) (bvsge (index!57243 lt!675133) (size!51381 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105394 (_ BitVec 32)) SeekEntryResult!13711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575362 (= lt!675133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135930 res!1076539) b!1575360))

(assert (= (and b!1575360 res!1076538) b!1575361))

(assert (= (and b!1575361 res!1076540) b!1575362))

(declare-fun m!1448431 () Bool)

(assert (=> start!135930 m!1448431))

(declare-fun m!1448433 () Bool)

(assert (=> start!135930 m!1448433))

(declare-fun m!1448435 () Bool)

(assert (=> b!1575361 m!1448435))

(declare-fun m!1448437 () Bool)

(assert (=> b!1575362 m!1448437))

(declare-fun m!1448439 () Bool)

(assert (=> b!1575362 m!1448439))

(assert (=> b!1575362 m!1448439))

(declare-fun m!1448441 () Bool)

(assert (=> b!1575362 m!1448441))

(push 1)

(assert (not b!1575361))

(assert (not start!135930))

(assert (not b!1575362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165367 () Bool)

(assert (=> d!165367 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575361 d!165367))

(declare-fun d!165371 () Bool)

(assert (=> d!165371 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135930 d!165371))

(declare-fun d!165375 () Bool)

(assert (=> d!165375 (= (array_inv!39475 _keys!605) (bvsge (size!51381 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135930 d!165375))

(declare-fun b!1575407 () Bool)

(declare-fun e!878697 () Bool)

(declare-fun lt!675148 () SeekEntryResult!13711)

(assert (=> b!1575407 (= e!878697 (bvsge (x!142208 lt!675148) #b01111111111111111111111111111110))))

(declare-fun b!1575408 () Bool)

(declare-fun e!878699 () SeekEntryResult!13711)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575408 (= e!878699 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun d!165377 () Bool)

(assert (=> d!165377 e!878697))

(declare-fun c!145692 () Bool)

(assert (=> d!165377 (= c!145692 (and (is-Intermediate!13711 lt!675148) (undefined!14523 lt!675148)))))

(declare-fun e!878701 () SeekEntryResult!13711)

(assert (=> d!165377 (= lt!675148 e!878701)))

(declare-fun c!145693 () Bool)

(assert (=> d!165377 (= c!145693 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675149 () (_ BitVec 64))

(assert (=> d!165377 (= lt!675149 (select (arr!50830 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165377 (validMask!0 mask!898)))

(assert (=> d!165377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675148)))

(declare-fun b!1575409 () Bool)

(assert (=> b!1575409 (= e!878701 e!878699)))

(declare-fun c!145691 () Bool)

(assert (=> b!1575409 (= c!145691 (or (= lt!675149 k!761) (= (bvadd lt!675149 lt!675149) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575410 () Bool)

(assert (=> b!1575410 (= e!878699 (Intermediate!13711 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575411 () Bool)

(assert (=> b!1575411 (= e!878701 (Intermediate!13711 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575412 () Bool)

(declare-fun e!878700 () Bool)

(assert (=> b!1575412 (= e!878697 e!878700)))

(declare-fun res!1076567 () Bool)

(assert (=> b!1575412 (= res!1076567 (and (is-Intermediate!13711 lt!675148) (not (undefined!14523 lt!675148)) (bvslt (x!142208 lt!675148) #b01111111111111111111111111111110) (bvsge (x!142208 lt!675148) #b00000000000000000000000000000000) (bvsge (x!142208 lt!675148) #b00000000000000000000000000000000)))))

(assert (=> b!1575412 (=> (not res!1076567) (not e!878700))))

(declare-fun b!1575413 () Bool)

(assert (=> b!1575413 (and (bvsge (index!57243 lt!675148) #b00000000000000000000000000000000) (bvslt (index!57243 lt!675148) (size!51381 _keys!605)))))

(declare-fun res!1076566 () Bool)

(assert (=> b!1575413 (= res!1076566 (= (select (arr!50830 _keys!605) (index!57243 lt!675148)) k!761))))

(declare-fun e!878698 () Bool)

(assert (=> b!1575413 (=> res!1076566 e!878698)))

(assert (=> b!1575413 (= e!878700 e!878698)))

(declare-fun b!1575414 () Bool)

(assert (=> b!1575414 (and (bvsge (index!57243 lt!675148) #b00000000000000000000000000000000) (bvslt (index!57243 lt!675148) (size!51381 _keys!605)))))

(declare-fun res!1076565 () Bool)

(assert (=> b!1575414 (= res!1076565 (= (select (arr!50830 _keys!605) (index!57243 lt!675148)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575414 (=> res!1076565 e!878698)))

(declare-fun b!1575415 () Bool)

(assert (=> b!1575415 (and (bvsge (index!57243 lt!675148) #b00000000000000000000000000000000) (bvslt (index!57243 lt!675148) (size!51381 _keys!605)))))

(assert (=> b!1575415 (= e!878698 (= (select (arr!50830 _keys!605) (index!57243 lt!675148)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165377 c!145693) b!1575411))

(assert (= (and d!165377 (not c!145693)) b!1575409))

(assert (= (and b!1575409 c!145691) b!1575410))

(assert (= (and b!1575409 (not c!145691)) b!1575408))

(assert (= (and d!165377 c!145692) b!1575407))

(assert (= (and d!165377 (not c!145692)) b!1575412))

(assert (= (and b!1575412 res!1076567) b!1575413))

(assert (= (and b!1575413 (not res!1076566)) b!1575414))

(assert (= (and b!1575414 (not res!1076565)) b!1575415))

(declare-fun m!1448467 () Bool)

(assert (=> b!1575415 m!1448467))

(assert (=> b!1575413 m!1448467))

(assert (=> d!165377 m!1448439))

(declare-fun m!1448469 () Bool)

(assert (=> d!165377 m!1448469))

(assert (=> d!165377 m!1448431))

(assert (=> b!1575414 m!1448467))

(assert (=> b!1575408 m!1448439))

(declare-fun m!1448471 () Bool)

(assert (=> b!1575408 m!1448471))

(assert (=> b!1575408 m!1448471))

(declare-fun m!1448473 () Bool)

(assert (=> b!1575408 m!1448473))

(assert (=> b!1575362 d!165377))

(declare-fun d!165387 () Bool)

(declare-fun lt!675157 () (_ BitVec 32))

(declare-fun lt!675156 () (_ BitVec 32))

(assert (=> d!165387 (= lt!675157 (bvmul (bvxor lt!675156 (bvlshr lt!675156 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165387 (= lt!675156 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165387 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076574 (let ((h!38429 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142213 (bvmul (bvxor h!38429 (bvlshr h!38429 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142213 (bvlshr x!142213 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076574 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076574 #b00000000000000000000000000000000))))))

(assert (=> d!165387 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675157 (bvlshr lt!675157 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575362 d!165387))

(push 1)

(assert (not b!1575408))

(assert (not d!165377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

