; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135932 () Bool)

(assert start!135932)

(declare-fun res!1076547 () Bool)

(declare-fun e!878675 () Bool)

(assert (=> start!135932 (=> (not res!1076547) (not e!878675))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135932 (= res!1076547 (validMask!0 mask!898))))

(assert (=> start!135932 e!878675))

(assert (=> start!135932 true))

(declare-datatypes ((array!105396 0))(
  ( (array!105397 (arr!50831 (Array (_ BitVec 32) (_ BitVec 64))) (size!51382 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105396)

(declare-fun array_inv!39476 (array!105396) Bool)

(assert (=> start!135932 (array_inv!39476 _keys!605)))

(declare-fun b!1575369 () Bool)

(declare-fun res!1076548 () Bool)

(assert (=> b!1575369 (=> (not res!1076548) (not e!878675))))

(assert (=> b!1575369 (= res!1076548 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51382 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575370 () Bool)

(declare-fun res!1076549 () Bool)

(assert (=> b!1575370 (=> (not res!1076549) (not e!878675))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575370 (= res!1076549 (validKeyInArray!0 k0!761))))

(declare-datatypes ((SeekEntryResult!13712 0))(
  ( (MissingZero!13712 (index!57245 (_ BitVec 32))) (Found!13712 (index!57246 (_ BitVec 32))) (Intermediate!13712 (undefined!14524 Bool) (index!57247 (_ BitVec 32)) (x!142209 (_ BitVec 32))) (Undefined!13712) (MissingVacant!13712 (index!57248 (_ BitVec 32))) )
))
(declare-fun lt!675136 () SeekEntryResult!13712)

(declare-fun b!1575371 () Bool)

(get-info :version)

(assert (=> b!1575371 (= e!878675 (and ((_ is Intermediate!13712) lt!675136) (not (undefined!14524 lt!675136)) (not (= (select (arr!50831 _keys!605) (index!57247 lt!675136)) k0!761)) (= (select (arr!50831 _keys!605) (index!57247 lt!675136)) #b0000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57247 lt!675136) #b00000000000000000000000000000000) (bvsge (index!57247 lt!675136) (size!51382 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105396 (_ BitVec 32)) SeekEntryResult!13712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575371 (= lt!675136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135932 res!1076547) b!1575369))

(assert (= (and b!1575369 res!1076548) b!1575370))

(assert (= (and b!1575370 res!1076549) b!1575371))

(declare-fun m!1448443 () Bool)

(assert (=> start!135932 m!1448443))

(declare-fun m!1448445 () Bool)

(assert (=> start!135932 m!1448445))

(declare-fun m!1448447 () Bool)

(assert (=> b!1575370 m!1448447))

(declare-fun m!1448449 () Bool)

(assert (=> b!1575371 m!1448449))

(declare-fun m!1448451 () Bool)

(assert (=> b!1575371 m!1448451))

(assert (=> b!1575371 m!1448451))

(declare-fun m!1448453 () Bool)

(assert (=> b!1575371 m!1448453))

(check-sat (not start!135932) (not b!1575371) (not b!1575370))
(check-sat)
(get-model)

(declare-fun d!165369 () Bool)

(assert (=> d!165369 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135932 d!165369))

(declare-fun d!165383 () Bool)

(assert (=> d!165383 (= (array_inv!39476 _keys!605) (bvsge (size!51382 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135932 d!165383))

(declare-fun b!1575453 () Bool)

(declare-fun lt!675166 () SeekEntryResult!13712)

(assert (=> b!1575453 (and (bvsge (index!57247 lt!675166) #b00000000000000000000000000000000) (bvslt (index!57247 lt!675166) (size!51382 _keys!605)))))

(declare-fun res!1076585 () Bool)

(assert (=> b!1575453 (= res!1076585 (= (select (arr!50831 _keys!605) (index!57247 lt!675166)) k0!761))))

(declare-fun e!878724 () Bool)

(assert (=> b!1575453 (=> res!1076585 e!878724)))

(declare-fun e!878725 () Bool)

(assert (=> b!1575453 (= e!878725 e!878724)))

(declare-fun b!1575454 () Bool)

(assert (=> b!1575454 (and (bvsge (index!57247 lt!675166) #b00000000000000000000000000000000) (bvslt (index!57247 lt!675166) (size!51382 _keys!605)))))

(assert (=> b!1575454 (= e!878724 (= (select (arr!50831 _keys!605) (index!57247 lt!675166)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575455 () Bool)

(declare-fun e!878727 () Bool)

(assert (=> b!1575455 (= e!878727 (bvsge (x!142209 lt!675166) #b01111111111111111111111111111110))))

(declare-fun b!1575456 () Bool)

(declare-fun e!878726 () SeekEntryResult!13712)

(assert (=> b!1575456 (= e!878726 (Intermediate!13712 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575457 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575457 (= e!878726 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575458 () Bool)

(declare-fun e!878723 () SeekEntryResult!13712)

(assert (=> b!1575458 (= e!878723 e!878726)))

(declare-fun c!145706 () Bool)

(declare-fun lt!675167 () (_ BitVec 64))

(assert (=> b!1575458 (= c!145706 (or (= lt!675167 k0!761) (= (bvadd lt!675167 lt!675167) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165385 () Bool)

(assert (=> d!165385 e!878727))

(declare-fun c!145705 () Bool)

(assert (=> d!165385 (= c!145705 (and ((_ is Intermediate!13712) lt!675166) (undefined!14524 lt!675166)))))

(assert (=> d!165385 (= lt!675166 e!878723)))

(declare-fun c!145707 () Bool)

(assert (=> d!165385 (= c!145707 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165385 (= lt!675167 (select (arr!50831 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165385 (validMask!0 mask!898)))

(assert (=> d!165385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675166)))

(declare-fun b!1575459 () Bool)

(assert (=> b!1575459 (= e!878723 (Intermediate!13712 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575460 () Bool)

(assert (=> b!1575460 (and (bvsge (index!57247 lt!675166) #b00000000000000000000000000000000) (bvslt (index!57247 lt!675166) (size!51382 _keys!605)))))

(declare-fun res!1076586 () Bool)

(assert (=> b!1575460 (= res!1076586 (= (select (arr!50831 _keys!605) (index!57247 lt!675166)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575460 (=> res!1076586 e!878724)))

(declare-fun b!1575461 () Bool)

(assert (=> b!1575461 (= e!878727 e!878725)))

(declare-fun res!1076587 () Bool)

(assert (=> b!1575461 (= res!1076587 (and ((_ is Intermediate!13712) lt!675166) (not (undefined!14524 lt!675166)) (bvslt (x!142209 lt!675166) #b01111111111111111111111111111110) (bvsge (x!142209 lt!675166) #b00000000000000000000000000000000) (bvsge (x!142209 lt!675166) #b00000000000000000000000000000000)))))

(assert (=> b!1575461 (=> (not res!1076587) (not e!878725))))

(assert (= (and d!165385 c!145707) b!1575459))

(assert (= (and d!165385 (not c!145707)) b!1575458))

(assert (= (and b!1575458 c!145706) b!1575456))

(assert (= (and b!1575458 (not c!145706)) b!1575457))

(assert (= (and d!165385 c!145705) b!1575455))

(assert (= (and d!165385 (not c!145705)) b!1575461))

(assert (= (and b!1575461 res!1076587) b!1575453))

(assert (= (and b!1575453 (not res!1076585)) b!1575460))

(assert (= (and b!1575460 (not res!1076586)) b!1575454))

(declare-fun m!1448483 () Bool)

(assert (=> b!1575453 m!1448483))

(assert (=> d!165385 m!1448451))

(declare-fun m!1448485 () Bool)

(assert (=> d!165385 m!1448485))

(assert (=> d!165385 m!1448443))

(assert (=> b!1575460 m!1448483))

(assert (=> b!1575457 m!1448451))

(declare-fun m!1448487 () Bool)

(assert (=> b!1575457 m!1448487))

(assert (=> b!1575457 m!1448487))

(declare-fun m!1448489 () Bool)

(assert (=> b!1575457 m!1448489))

(assert (=> b!1575454 m!1448483))

(assert (=> b!1575371 d!165385))

(declare-fun d!165393 () Bool)

(declare-fun lt!675175 () (_ BitVec 32))

(declare-fun lt!675174 () (_ BitVec 32))

(assert (=> d!165393 (= lt!675175 (bvmul (bvxor lt!675174 (bvlshr lt!675174 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165393 (= lt!675174 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165393 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076588 (let ((h!38431 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142216 (bvmul (bvxor h!38431 (bvlshr h!38431 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142216 (bvlshr x!142216 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076588 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076588 #b00000000000000000000000000000000))))))

(assert (=> d!165393 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675175 (bvlshr lt!675175 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575371 d!165393))

(declare-fun d!165395 () Bool)

(assert (=> d!165395 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575370 d!165395))

(check-sat (not d!165385) (not b!1575457))
