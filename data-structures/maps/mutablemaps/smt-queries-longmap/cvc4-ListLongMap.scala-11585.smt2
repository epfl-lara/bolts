; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135064 () Bool)

(assert start!135064)

(declare-fun res!1074442 () Bool)

(declare-fun e!876809 () Bool)

(assert (=> start!135064 (=> (not res!1074442) (not e!876809))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135064 (= res!1074442 (validMask!0 mask!889))))

(assert (=> start!135064 e!876809))

(assert (=> start!135064 true))

(declare-datatypes ((array!104996 0))(
  ( (array!104997 (arr!50658 (Array (_ BitVec 32) (_ BitVec 64))) (size!51209 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104996)

(declare-fun array_inv!39303 (array!104996) Bool)

(assert (=> start!135064 (array_inv!39303 _keys!600)))

(declare-fun b!1572390 () Bool)

(declare-fun res!1074441 () Bool)

(assert (=> b!1572390 (=> (not res!1074441) (not e!876809))))

(assert (=> b!1572390 (= res!1074441 (= (size!51209 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572391 () Bool)

(declare-fun res!1074443 () Bool)

(assert (=> b!1572391 (=> (not res!1074443) (not e!876809))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572391 (= res!1074443 (validKeyInArray!0 k!754))))

(declare-fun b!1572392 () Bool)

(declare-datatypes ((SeekEntryResult!13587 0))(
  ( (MissingZero!13587 (index!56745 (_ BitVec 32))) (Found!13587 (index!56746 (_ BitVec 32))) (Intermediate!13587 (undefined!14399 Bool) (index!56747 (_ BitVec 32)) (x!141524 (_ BitVec 32))) (Undefined!13587) (MissingVacant!13587 (index!56748 (_ BitVec 32))) )
))
(declare-fun lt!673942 () SeekEntryResult!13587)

(assert (=> b!1572392 (= e!876809 (and (is-Intermediate!13587 lt!673942) (not (undefined!14399 lt!673942)) (= (select (arr!50658 _keys!600) (index!56747 lt!673942)) k!754) (or (bvslt (index!56747 lt!673942) #b00000000000000000000000000000000) (bvsge (index!56747 lt!673942) (size!51209 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104996 (_ BitVec 32)) SeekEntryResult!13587)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572392 (= lt!673942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135064 res!1074442) b!1572390))

(assert (= (and b!1572390 res!1074441) b!1572391))

(assert (= (and b!1572391 res!1074443) b!1572392))

(declare-fun m!1446157 () Bool)

(assert (=> start!135064 m!1446157))

(declare-fun m!1446159 () Bool)

(assert (=> start!135064 m!1446159))

(declare-fun m!1446161 () Bool)

(assert (=> b!1572391 m!1446161))

(declare-fun m!1446163 () Bool)

(assert (=> b!1572392 m!1446163))

(declare-fun m!1446165 () Bool)

(assert (=> b!1572392 m!1446165))

(assert (=> b!1572392 m!1446165))

(declare-fun m!1446167 () Bool)

(assert (=> b!1572392 m!1446167))

(push 1)

(assert (not b!1572391))

(assert (not start!135064))

(assert (not b!1572392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164735 () Bool)

(assert (=> d!164735 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572391 d!164735))

(declare-fun d!164737 () Bool)

(assert (=> d!164737 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135064 d!164737))

(declare-fun d!164747 () Bool)

(assert (=> d!164747 (= (array_inv!39303 _keys!600) (bvsge (size!51209 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135064 d!164747))

(declare-fun b!1572465 () Bool)

(declare-fun e!876854 () Bool)

(declare-fun lt!673970 () SeekEntryResult!13587)

(assert (=> b!1572465 (= e!876854 (bvsge (x!141524 lt!673970) #b01111111111111111111111111111110))))

(declare-fun b!1572466 () Bool)

(declare-fun e!876855 () Bool)

(assert (=> b!1572466 (= e!876854 e!876855)))

(declare-fun res!1074472 () Bool)

(assert (=> b!1572466 (= res!1074472 (and (is-Intermediate!13587 lt!673970) (not (undefined!14399 lt!673970)) (bvslt (x!141524 lt!673970) #b01111111111111111111111111111110) (bvsge (x!141524 lt!673970) #b00000000000000000000000000000000) (bvsge (x!141524 lt!673970) #b00000000000000000000000000000000)))))

(assert (=> b!1572466 (=> (not res!1074472) (not e!876855))))

(declare-fun b!1572467 () Bool)

(declare-fun e!876852 () SeekEntryResult!13587)

(assert (=> b!1572467 (= e!876852 (Intermediate!13587 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572468 () Bool)

(declare-fun e!876851 () SeekEntryResult!13587)

(assert (=> b!1572468 (= e!876851 e!876852)))

(declare-fun c!145248 () Bool)

(declare-fun lt!673969 () (_ BitVec 64))

(assert (=> b!1572468 (= c!145248 (or (= lt!673969 k!754) (= (bvadd lt!673969 lt!673969) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164749 () Bool)

(assert (=> d!164749 e!876854))

(declare-fun c!145246 () Bool)

(assert (=> d!164749 (= c!145246 (and (is-Intermediate!13587 lt!673970) (undefined!14399 lt!673970)))))

(assert (=> d!164749 (= lt!673970 e!876851)))

(declare-fun c!145247 () Bool)

(assert (=> d!164749 (= c!145247 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164749 (= lt!673969 (select (arr!50658 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164749 (validMask!0 mask!889)))

(assert (=> d!164749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673970)))

(declare-fun b!1572469 () Bool)

(assert (=> b!1572469 (and (bvsge (index!56747 lt!673970) #b00000000000000000000000000000000) (bvslt (index!56747 lt!673970) (size!51209 _keys!600)))))

(declare-fun res!1074471 () Bool)

(assert (=> b!1572469 (= res!1074471 (= (select (arr!50658 _keys!600) (index!56747 lt!673970)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876853 () Bool)

(assert (=> b!1572469 (=> res!1074471 e!876853)))

(declare-fun b!1572470 () Bool)

(assert (=> b!1572470 (and (bvsge (index!56747 lt!673970) #b00000000000000000000000000000000) (bvslt (index!56747 lt!673970) (size!51209 _keys!600)))))

(declare-fun res!1074470 () Bool)

(assert (=> b!1572470 (= res!1074470 (= (select (arr!50658 _keys!600) (index!56747 lt!673970)) k!754))))

(assert (=> b!1572470 (=> res!1074470 e!876853)))

(assert (=> b!1572470 (= e!876855 e!876853)))

(declare-fun b!1572471 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572471 (= e!876852 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572472 () Bool)

(assert (=> b!1572472 (= e!876851 (Intermediate!13587 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572473 () Bool)

(assert (=> b!1572473 (and (bvsge (index!56747 lt!673970) #b00000000000000000000000000000000) (bvslt (index!56747 lt!673970) (size!51209 _keys!600)))))

(assert (=> b!1572473 (= e!876853 (= (select (arr!50658 _keys!600) (index!56747 lt!673970)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164749 c!145247) b!1572472))

(assert (= (and d!164749 (not c!145247)) b!1572468))

(assert (= (and b!1572468 c!145248) b!1572467))

(assert (= (and b!1572468 (not c!145248)) b!1572471))

(assert (= (and d!164749 c!145246) b!1572465))

(assert (= (and d!164749 (not c!145246)) b!1572466))

(assert (= (and b!1572466 res!1074472) b!1572470))

(assert (= (and b!1572470 (not res!1074470)) b!1572469))

(assert (= (and b!1572469 (not res!1074471)) b!1572473))

(declare-fun m!1446185 () Bool)

(assert (=> b!1572469 m!1446185))

(assert (=> b!1572470 m!1446185))

(assert (=> b!1572473 m!1446185))

(assert (=> b!1572471 m!1446165))

(declare-fun m!1446187 () Bool)

(assert (=> b!1572471 m!1446187))

(assert (=> b!1572471 m!1446187))

(declare-fun m!1446189 () Bool)

(assert (=> b!1572471 m!1446189))

(assert (=> d!164749 m!1446165))

(declare-fun m!1446191 () Bool)

(assert (=> d!164749 m!1446191))

(assert (=> d!164749 m!1446157))

(assert (=> b!1572392 d!164749))

(declare-fun d!164757 () Bool)

(declare-fun lt!673978 () (_ BitVec 32))

(declare-fun lt!673977 () (_ BitVec 32))

(assert (=> d!164757 (= lt!673978 (bvmul (bvxor lt!673977 (bvlshr lt!673977 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164757 (= lt!673977 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164757 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074473 (let ((h!38386 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141530 (bvmul (bvxor h!38386 (bvlshr h!38386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141530 (bvlshr x!141530 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074473 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074473 #b00000000000000000000000000000000))))))

(assert (=> d!164757 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673978 (bvlshr lt!673978 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572392 d!164757))

(push 1)

(assert (not b!1572471))

(assert (not d!164749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

