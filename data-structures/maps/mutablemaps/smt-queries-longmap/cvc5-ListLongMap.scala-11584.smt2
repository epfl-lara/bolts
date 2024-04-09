; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135024 () Bool)

(assert start!135024)

(declare-fun res!1074367 () Bool)

(declare-fun e!876735 () Bool)

(assert (=> start!135024 (=> (not res!1074367) (not e!876735))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135024 (= res!1074367 (validMask!0 mask!889))))

(assert (=> start!135024 e!876735))

(assert (=> start!135024 true))

(declare-datatypes ((array!104983 0))(
  ( (array!104984 (arr!50653 (Array (_ BitVec 32) (_ BitVec 64))) (size!51204 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104983)

(declare-fun array_inv!39298 (array!104983) Bool)

(assert (=> start!135024 (array_inv!39298 _keys!600)))

(declare-fun b!1572264 () Bool)

(declare-fun res!1074366 () Bool)

(assert (=> b!1572264 (=> (not res!1074366) (not e!876735))))

(assert (=> b!1572264 (= res!1074366 (= (size!51204 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572265 () Bool)

(declare-fun res!1074368 () Bool)

(assert (=> b!1572265 (=> (not res!1074368) (not e!876735))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572265 (= res!1074368 (validKeyInArray!0 k!754))))

(declare-fun b!1572266 () Bool)

(declare-datatypes ((SeekEntryResult!13582 0))(
  ( (MissingZero!13582 (index!56725 (_ BitVec 32))) (Found!13582 (index!56726 (_ BitVec 32))) (Intermediate!13582 (undefined!14394 Bool) (index!56727 (_ BitVec 32)) (x!141505 (_ BitVec 32))) (Undefined!13582) (MissingVacant!13582 (index!56728 (_ BitVec 32))) )
))
(declare-fun lt!673891 () SeekEntryResult!13582)

(assert (=> b!1572266 (= e!876735 (and (is-Intermediate!13582 lt!673891) (not (undefined!14394 lt!673891)) (or (bvslt (index!56727 lt!673891) #b00000000000000000000000000000000) (bvsge (index!56727 lt!673891) (size!51204 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104983 (_ BitVec 32)) SeekEntryResult!13582)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572266 (= lt!673891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135024 res!1074367) b!1572264))

(assert (= (and b!1572264 res!1074366) b!1572265))

(assert (= (and b!1572265 res!1074368) b!1572266))

(declare-fun m!1446079 () Bool)

(assert (=> start!135024 m!1446079))

(declare-fun m!1446081 () Bool)

(assert (=> start!135024 m!1446081))

(declare-fun m!1446083 () Bool)

(assert (=> b!1572265 m!1446083))

(declare-fun m!1446085 () Bool)

(assert (=> b!1572266 m!1446085))

(assert (=> b!1572266 m!1446085))

(declare-fun m!1446087 () Bool)

(assert (=> b!1572266 m!1446087))

(push 1)

(assert (not b!1572265))

(assert (not b!1572266))

(assert (not start!135024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164701 () Bool)

(assert (=> d!164701 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572265 d!164701))

(declare-fun b!1572303 () Bool)

(declare-fun lt!673902 () SeekEntryResult!13582)

(assert (=> b!1572303 (and (bvsge (index!56727 lt!673902) #b00000000000000000000000000000000) (bvslt (index!56727 lt!673902) (size!51204 _keys!600)))))

(declare-fun e!876759 () Bool)

(assert (=> b!1572303 (= e!876759 (= (select (arr!50653 _keys!600) (index!56727 lt!673902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572304 () Bool)

(declare-fun e!876761 () SeekEntryResult!13582)

(declare-fun e!876760 () SeekEntryResult!13582)

(assert (=> b!1572304 (= e!876761 e!876760)))

(declare-fun c!145203 () Bool)

(declare-fun lt!673903 () (_ BitVec 64))

(assert (=> b!1572304 (= c!145203 (or (= lt!673903 k!754) (= (bvadd lt!673903 lt!673903) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572305 () Bool)

(declare-fun e!876758 () Bool)

(assert (=> b!1572305 (= e!876758 (bvsge (x!141505 lt!673902) #b01111111111111111111111111111110))))

(declare-fun b!1572306 () Bool)

(assert (=> b!1572306 (and (bvsge (index!56727 lt!673902) #b00000000000000000000000000000000) (bvslt (index!56727 lt!673902) (size!51204 _keys!600)))))

(declare-fun res!1074393 () Bool)

(assert (=> b!1572306 (= res!1074393 (= (select (arr!50653 _keys!600) (index!56727 lt!673902)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572306 (=> res!1074393 e!876759)))

(declare-fun b!1572307 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572307 (= e!876760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572309 () Bool)

(assert (=> b!1572309 (= e!876761 (Intermediate!13582 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572310 () Bool)

(assert (=> b!1572310 (= e!876760 (Intermediate!13582 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572311 () Bool)

(declare-fun e!876762 () Bool)

(assert (=> b!1572311 (= e!876758 e!876762)))

(declare-fun res!1074394 () Bool)

(assert (=> b!1572311 (= res!1074394 (and (is-Intermediate!13582 lt!673902) (not (undefined!14394 lt!673902)) (bvslt (x!141505 lt!673902) #b01111111111111111111111111111110) (bvsge (x!141505 lt!673902) #b00000000000000000000000000000000) (bvsge (x!141505 lt!673902) #b00000000000000000000000000000000)))))

(assert (=> b!1572311 (=> (not res!1074394) (not e!876762))))

(declare-fun b!1572308 () Bool)

(assert (=> b!1572308 (and (bvsge (index!56727 lt!673902) #b00000000000000000000000000000000) (bvslt (index!56727 lt!673902) (size!51204 _keys!600)))))

(declare-fun res!1074395 () Bool)

(assert (=> b!1572308 (= res!1074395 (= (select (arr!50653 _keys!600) (index!56727 lt!673902)) k!754))))

(assert (=> b!1572308 (=> res!1074395 e!876759)))

(assert (=> b!1572308 (= e!876762 e!876759)))

(declare-fun d!164703 () Bool)

(assert (=> d!164703 e!876758))

(declare-fun c!145202 () Bool)

(assert (=> d!164703 (= c!145202 (and (is-Intermediate!13582 lt!673902) (undefined!14394 lt!673902)))))

(assert (=> d!164703 (= lt!673902 e!876761)))

(declare-fun c!145201 () Bool)

(assert (=> d!164703 (= c!145201 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164703 (= lt!673903 (select (arr!50653 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164703 (validMask!0 mask!889)))

(assert (=> d!164703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673902)))

(assert (= (and d!164703 c!145201) b!1572309))

(assert (= (and d!164703 (not c!145201)) b!1572304))

(assert (= (and b!1572304 c!145203) b!1572310))

(assert (= (and b!1572304 (not c!145203)) b!1572307))

(assert (= (and d!164703 c!145202) b!1572305))

(assert (= (and d!164703 (not c!145202)) b!1572311))

(assert (= (and b!1572311 res!1074394) b!1572308))

(assert (= (and b!1572308 (not res!1074395)) b!1572306))

(assert (= (and b!1572306 (not res!1074393)) b!1572303))

(declare-fun m!1446109 () Bool)

(assert (=> b!1572306 m!1446109))

(assert (=> d!164703 m!1446085))

(declare-fun m!1446111 () Bool)

(assert (=> d!164703 m!1446111))

(assert (=> d!164703 m!1446079))

(assert (=> b!1572307 m!1446085))

(declare-fun m!1446113 () Bool)

(assert (=> b!1572307 m!1446113))

(assert (=> b!1572307 m!1446113))

(declare-fun m!1446115 () Bool)

(assert (=> b!1572307 m!1446115))

(assert (=> b!1572303 m!1446109))

(assert (=> b!1572308 m!1446109))

(assert (=> b!1572266 d!164703))

(declare-fun d!164717 () Bool)

(declare-fun lt!673913 () (_ BitVec 32))

(declare-fun lt!673912 () (_ BitVec 32))

(assert (=> d!164717 (= lt!673913 (bvmul (bvxor lt!673912 (bvlshr lt!673912 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164717 (= lt!673912 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164717 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074396 (let ((h!38381 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141509 (bvmul (bvxor h!38381 (bvlshr h!38381 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141509 (bvlshr x!141509 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074396 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074396 #b00000000000000000000000000000000))))))

(assert (=> d!164717 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673913 (bvlshr lt!673913 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572266 d!164717))

(declare-fun d!164719 () Bool)

(assert (=> d!164719 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135024 d!164719))

(declare-fun d!164725 () Bool)

(assert (=> d!164725 (= (array_inv!39298 _keys!600) (bvsge (size!51204 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135024 d!164725))

(push 1)

(assert (not d!164703))

(assert (not b!1572307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

