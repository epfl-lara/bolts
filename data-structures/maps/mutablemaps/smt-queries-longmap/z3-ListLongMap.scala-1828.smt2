; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33032 () Bool)

(assert start!33032)

(declare-fun b!328730 () Bool)

(declare-fun res!181215 () Bool)

(declare-fun e!201998 () Bool)

(assert (=> b!328730 (=> (not res!181215) (not e!201998))))

(declare-datatypes ((array!16834 0))(
  ( (array!16835 (arr!7961 (Array (_ BitVec 32) (_ BitVec 64))) (size!8313 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16834)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328730 (= res!181215 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!181221 () Bool)

(assert (=> start!33032 (=> (not res!181221) (not e!201998))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33032 (= res!181221 (validMask!0 mask!3777))))

(assert (=> start!33032 e!201998))

(declare-fun array_inv!5915 (array!16834) Bool)

(assert (=> start!33032 (array_inv!5915 a!3305)))

(assert (=> start!33032 true))

(declare-fun b!328731 () Bool)

(declare-fun res!181217 () Bool)

(declare-fun e!201999 () Bool)

(assert (=> b!328731 (=> (not res!181217) (not e!201999))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328731 (= res!181217 (and (= (select (arr!7961 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8313 a!3305))))))

(declare-fun b!328732 () Bool)

(assert (=> b!328732 (= e!201998 e!201999)))

(declare-fun res!181220 () Bool)

(assert (=> b!328732 (=> (not res!181220) (not e!201999))))

(declare-datatypes ((SeekEntryResult!3103 0))(
  ( (MissingZero!3103 (index!14588 (_ BitVec 32))) (Found!3103 (index!14589 (_ BitVec 32))) (Intermediate!3103 (undefined!3915 Bool) (index!14590 (_ BitVec 32)) (x!32817 (_ BitVec 32))) (Undefined!3103) (MissingVacant!3103 (index!14591 (_ BitVec 32))) )
))
(declare-fun lt!158009 () SeekEntryResult!3103)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16834 (_ BitVec 32)) SeekEntryResult!3103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328732 (= res!181220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158009))))

(assert (=> b!328732 (= lt!158009 (Intermediate!3103 false resIndex!58 resX!58))))

(declare-fun lt!158008 () SeekEntryResult!3103)

(declare-fun b!328733 () Bool)

(assert (=> b!328733 (= e!201999 (and (= lt!158008 lt!158009) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7961 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7961 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7961 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!158008 (Intermediate!3103 false index!1840 resX!58)))))))

(assert (=> b!328733 (= lt!158008 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!328734 () Bool)

(declare-fun res!181219 () Bool)

(assert (=> b!328734 (=> (not res!181219) (not e!201998))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16834 (_ BitVec 32)) SeekEntryResult!3103)

(assert (=> b!328734 (= res!181219 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3103 i!1250)))))

(declare-fun b!328735 () Bool)

(declare-fun res!181218 () Bool)

(assert (=> b!328735 (=> (not res!181218) (not e!201998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328735 (= res!181218 (validKeyInArray!0 k0!2497))))

(declare-fun b!328736 () Bool)

(declare-fun res!181216 () Bool)

(assert (=> b!328736 (=> (not res!181216) (not e!201998))))

(assert (=> b!328736 (= res!181216 (and (= (size!8313 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8313 a!3305))))))

(declare-fun b!328737 () Bool)

(declare-fun res!181214 () Bool)

(assert (=> b!328737 (=> (not res!181214) (not e!201998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16834 (_ BitVec 32)) Bool)

(assert (=> b!328737 (= res!181214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!33032 res!181221) b!328736))

(assert (= (and b!328736 res!181216) b!328735))

(assert (= (and b!328735 res!181218) b!328730))

(assert (= (and b!328730 res!181215) b!328734))

(assert (= (and b!328734 res!181219) b!328737))

(assert (= (and b!328737 res!181214) b!328732))

(assert (= (and b!328732 res!181220) b!328731))

(assert (= (and b!328731 res!181217) b!328733))

(declare-fun m!334607 () Bool)

(assert (=> b!328733 m!334607))

(declare-fun m!334609 () Bool)

(assert (=> b!328733 m!334609))

(declare-fun m!334611 () Bool)

(assert (=> b!328730 m!334611))

(declare-fun m!334613 () Bool)

(assert (=> b!328732 m!334613))

(assert (=> b!328732 m!334613))

(declare-fun m!334615 () Bool)

(assert (=> b!328732 m!334615))

(declare-fun m!334617 () Bool)

(assert (=> b!328737 m!334617))

(declare-fun m!334619 () Bool)

(assert (=> b!328731 m!334619))

(declare-fun m!334621 () Bool)

(assert (=> b!328734 m!334621))

(declare-fun m!334623 () Bool)

(assert (=> b!328735 m!334623))

(declare-fun m!334625 () Bool)

(assert (=> start!33032 m!334625))

(declare-fun m!334627 () Bool)

(assert (=> start!33032 m!334627))

(check-sat (not b!328730) (not b!328737) (not b!328732) (not b!328734) (not b!328735) (not b!328733) (not start!33032))
(check-sat)
(get-model)

(declare-fun d!69961 () Bool)

(assert (=> d!69961 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33032 d!69961))

(declare-fun d!69965 () Bool)

(assert (=> d!69965 (= (array_inv!5915 a!3305) (bvsge (size!8313 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33032 d!69965))

(declare-fun b!328807 () Bool)

(declare-fun e!202036 () SeekEntryResult!3103)

(assert (=> b!328807 (= e!202036 (Intermediate!3103 true index!1840 x!1490))))

(declare-fun b!328808 () Bool)

(declare-fun e!202038 () SeekEntryResult!3103)

(assert (=> b!328808 (= e!202038 (Intermediate!3103 false index!1840 x!1490))))

(declare-fun b!328809 () Bool)

(declare-fun lt!158026 () SeekEntryResult!3103)

(assert (=> b!328809 (and (bvsge (index!14590 lt!158026) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158026) (size!8313 a!3305)))))

(declare-fun e!202037 () Bool)

(assert (=> b!328809 (= e!202037 (= (select (arr!7961 a!3305) (index!14590 lt!158026)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328810 () Bool)

(declare-fun e!202035 () Bool)

(assert (=> b!328810 (= e!202035 (bvsge (x!32817 lt!158026) #b01111111111111111111111111111110))))

(declare-fun d!69967 () Bool)

(assert (=> d!69967 e!202035))

(declare-fun c!51411 () Bool)

(get-info :version)

(assert (=> d!69967 (= c!51411 (and ((_ is Intermediate!3103) lt!158026) (undefined!3915 lt!158026)))))

(assert (=> d!69967 (= lt!158026 e!202036)))

(declare-fun c!51413 () Bool)

(assert (=> d!69967 (= c!51413 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158027 () (_ BitVec 64))

(assert (=> d!69967 (= lt!158027 (select (arr!7961 a!3305) index!1840))))

(assert (=> d!69967 (validMask!0 mask!3777)))

(assert (=> d!69967 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158026)))

(declare-fun b!328811 () Bool)

(assert (=> b!328811 (and (bvsge (index!14590 lt!158026) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158026) (size!8313 a!3305)))))

(declare-fun res!181261 () Bool)

(assert (=> b!328811 (= res!181261 (= (select (arr!7961 a!3305) (index!14590 lt!158026)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328811 (=> res!181261 e!202037)))

(declare-fun b!328812 () Bool)

(declare-fun e!202039 () Bool)

(assert (=> b!328812 (= e!202035 e!202039)))

(declare-fun res!181263 () Bool)

(assert (=> b!328812 (= res!181263 (and ((_ is Intermediate!3103) lt!158026) (not (undefined!3915 lt!158026)) (bvslt (x!32817 lt!158026) #b01111111111111111111111111111110) (bvsge (x!32817 lt!158026) #b00000000000000000000000000000000) (bvsge (x!32817 lt!158026) x!1490)))))

(assert (=> b!328812 (=> (not res!181263) (not e!202039))))

(declare-fun b!328813 () Bool)

(assert (=> b!328813 (and (bvsge (index!14590 lt!158026) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158026) (size!8313 a!3305)))))

(declare-fun res!181262 () Bool)

(assert (=> b!328813 (= res!181262 (= (select (arr!7961 a!3305) (index!14590 lt!158026)) k0!2497))))

(assert (=> b!328813 (=> res!181262 e!202037)))

(assert (=> b!328813 (= e!202039 e!202037)))

(declare-fun b!328814 () Bool)

(assert (=> b!328814 (= e!202036 e!202038)))

(declare-fun c!51412 () Bool)

(assert (=> b!328814 (= c!51412 (or (= lt!158027 k0!2497) (= (bvadd lt!158027 lt!158027) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328815 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328815 (= e!202038 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (= (and d!69967 c!51413) b!328807))

(assert (= (and d!69967 (not c!51413)) b!328814))

(assert (= (and b!328814 c!51412) b!328808))

(assert (= (and b!328814 (not c!51412)) b!328815))

(assert (= (and d!69967 c!51411) b!328810))

(assert (= (and d!69967 (not c!51411)) b!328812))

(assert (= (and b!328812 res!181263) b!328813))

(assert (= (and b!328813 (not res!181262)) b!328811))

(assert (= (and b!328811 (not res!181261)) b!328809))

(assert (=> d!69967 m!334607))

(assert (=> d!69967 m!334625))

(declare-fun m!334657 () Bool)

(assert (=> b!328815 m!334657))

(assert (=> b!328815 m!334657))

(declare-fun m!334659 () Bool)

(assert (=> b!328815 m!334659))

(declare-fun m!334661 () Bool)

(assert (=> b!328809 m!334661))

(assert (=> b!328813 m!334661))

(assert (=> b!328811 m!334661))

(assert (=> b!328733 d!69967))

(declare-fun b!328816 () Bool)

(declare-fun e!202041 () SeekEntryResult!3103)

(assert (=> b!328816 (= e!202041 (Intermediate!3103 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328817 () Bool)

(declare-fun e!202043 () SeekEntryResult!3103)

(assert (=> b!328817 (= e!202043 (Intermediate!3103 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328818 () Bool)

(declare-fun lt!158032 () SeekEntryResult!3103)

(assert (=> b!328818 (and (bvsge (index!14590 lt!158032) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158032) (size!8313 a!3305)))))

(declare-fun e!202042 () Bool)

(assert (=> b!328818 (= e!202042 (= (select (arr!7961 a!3305) (index!14590 lt!158032)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328819 () Bool)

(declare-fun e!202040 () Bool)

(assert (=> b!328819 (= e!202040 (bvsge (x!32817 lt!158032) #b01111111111111111111111111111110))))

(declare-fun d!69975 () Bool)

(assert (=> d!69975 e!202040))

(declare-fun c!51414 () Bool)

(assert (=> d!69975 (= c!51414 (and ((_ is Intermediate!3103) lt!158032) (undefined!3915 lt!158032)))))

(assert (=> d!69975 (= lt!158032 e!202041)))

(declare-fun c!51416 () Bool)

(assert (=> d!69975 (= c!51416 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158033 () (_ BitVec 64))

(assert (=> d!69975 (= lt!158033 (select (arr!7961 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69975 (validMask!0 mask!3777)))

(assert (=> d!69975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158032)))

(declare-fun b!328820 () Bool)

(assert (=> b!328820 (and (bvsge (index!14590 lt!158032) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158032) (size!8313 a!3305)))))

(declare-fun res!181264 () Bool)

(assert (=> b!328820 (= res!181264 (= (select (arr!7961 a!3305) (index!14590 lt!158032)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328820 (=> res!181264 e!202042)))

(declare-fun b!328821 () Bool)

(declare-fun e!202044 () Bool)

(assert (=> b!328821 (= e!202040 e!202044)))

(declare-fun res!181266 () Bool)

(assert (=> b!328821 (= res!181266 (and ((_ is Intermediate!3103) lt!158032) (not (undefined!3915 lt!158032)) (bvslt (x!32817 lt!158032) #b01111111111111111111111111111110) (bvsge (x!32817 lt!158032) #b00000000000000000000000000000000) (bvsge (x!32817 lt!158032) #b00000000000000000000000000000000)))))

(assert (=> b!328821 (=> (not res!181266) (not e!202044))))

(declare-fun b!328822 () Bool)

(assert (=> b!328822 (and (bvsge (index!14590 lt!158032) #b00000000000000000000000000000000) (bvslt (index!14590 lt!158032) (size!8313 a!3305)))))

(declare-fun res!181265 () Bool)

(assert (=> b!328822 (= res!181265 (= (select (arr!7961 a!3305) (index!14590 lt!158032)) k0!2497))))

(assert (=> b!328822 (=> res!181265 e!202042)))

(assert (=> b!328822 (= e!202044 e!202042)))

(declare-fun b!328823 () Bool)

(assert (=> b!328823 (= e!202041 e!202043)))

(declare-fun c!51415 () Bool)

(assert (=> b!328823 (= c!51415 (or (= lt!158033 k0!2497) (= (bvadd lt!158033 lt!158033) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328824 () Bool)

(assert (=> b!328824 (= e!202043 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (= (and d!69975 c!51416) b!328816))

(assert (= (and d!69975 (not c!51416)) b!328823))

(assert (= (and b!328823 c!51415) b!328817))

(assert (= (and b!328823 (not c!51415)) b!328824))

(assert (= (and d!69975 c!51414) b!328819))

(assert (= (and d!69975 (not c!51414)) b!328821))

(assert (= (and b!328821 res!181266) b!328822))

(assert (= (and b!328822 (not res!181265)) b!328820))

(assert (= (and b!328820 (not res!181264)) b!328818))

(assert (=> d!69975 m!334613))

(declare-fun m!334663 () Bool)

(assert (=> d!69975 m!334663))

(assert (=> d!69975 m!334625))

(assert (=> b!328824 m!334613))

(declare-fun m!334665 () Bool)

(assert (=> b!328824 m!334665))

(assert (=> b!328824 m!334665))

(declare-fun m!334667 () Bool)

(assert (=> b!328824 m!334667))

(declare-fun m!334669 () Bool)

(assert (=> b!328818 m!334669))

(assert (=> b!328822 m!334669))

(assert (=> b!328820 m!334669))

(assert (=> b!328732 d!69975))

(declare-fun d!69977 () Bool)

(declare-fun lt!158041 () (_ BitVec 32))

(declare-fun lt!158040 () (_ BitVec 32))

(assert (=> d!69977 (= lt!158041 (bvmul (bvxor lt!158040 (bvlshr lt!158040 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69977 (= lt!158040 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69977 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181269 (let ((h!5432 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32822 (bvmul (bvxor h!5432 (bvlshr h!5432 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32822 (bvlshr x!32822 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181269 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181269 #b00000000000000000000000000000000))))))

(assert (=> d!69977 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!158041 (bvlshr lt!158041 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328732 d!69977))

(declare-fun b!328869 () Bool)

(declare-fun e!202073 () Bool)

(declare-fun call!26132 () Bool)

(assert (=> b!328869 (= e!202073 call!26132)))

(declare-fun b!328870 () Bool)

(declare-fun e!202071 () Bool)

(declare-fun e!202072 () Bool)

(assert (=> b!328870 (= e!202071 e!202072)))

(declare-fun c!51431 () Bool)

(assert (=> b!328870 (= c!51431 (validKeyInArray!0 (select (arr!7961 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26129 () Bool)

(assert (=> bm!26129 (= call!26132 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328871 () Bool)

(assert (=> b!328871 (= e!202072 e!202073)))

(declare-fun lt!158056 () (_ BitVec 64))

(assert (=> b!328871 (= lt!158056 (select (arr!7961 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10193 0))(
  ( (Unit!10194) )
))
(declare-fun lt!158058 () Unit!10193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16834 (_ BitVec 64) (_ BitVec 32)) Unit!10193)

(assert (=> b!328871 (= lt!158058 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158056 #b00000000000000000000000000000000))))

(assert (=> b!328871 (arrayContainsKey!0 a!3305 lt!158056 #b00000000000000000000000000000000)))

(declare-fun lt!158057 () Unit!10193)

(assert (=> b!328871 (= lt!158057 lt!158058)))

(declare-fun res!181285 () Bool)

(assert (=> b!328871 (= res!181285 (= (seekEntryOrOpen!0 (select (arr!7961 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3103 #b00000000000000000000000000000000)))))

(assert (=> b!328871 (=> (not res!181285) (not e!202073))))

(declare-fun b!328872 () Bool)

(assert (=> b!328872 (= e!202072 call!26132)))

(declare-fun d!69979 () Bool)

(declare-fun res!181286 () Bool)

(assert (=> d!69979 (=> res!181286 e!202071)))

(assert (=> d!69979 (= res!181286 (bvsge #b00000000000000000000000000000000 (size!8313 a!3305)))))

(assert (=> d!69979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202071)))

(assert (= (and d!69979 (not res!181286)) b!328870))

(assert (= (and b!328870 c!51431) b!328871))

(assert (= (and b!328870 (not c!51431)) b!328872))

(assert (= (and b!328871 res!181285) b!328869))

(assert (= (or b!328869 b!328872) bm!26129))

(declare-fun m!334685 () Bool)

(assert (=> b!328870 m!334685))

(assert (=> b!328870 m!334685))

(declare-fun m!334687 () Bool)

(assert (=> b!328870 m!334687))

(declare-fun m!334689 () Bool)

(assert (=> bm!26129 m!334689))

(assert (=> b!328871 m!334685))

(declare-fun m!334691 () Bool)

(assert (=> b!328871 m!334691))

(declare-fun m!334693 () Bool)

(assert (=> b!328871 m!334693))

(assert (=> b!328871 m!334685))

(declare-fun m!334695 () Bool)

(assert (=> b!328871 m!334695))

(assert (=> b!328737 d!69979))

(declare-fun d!69991 () Bool)

(declare-fun res!181291 () Bool)

(declare-fun e!202078 () Bool)

(assert (=> d!69991 (=> res!181291 e!202078)))

(assert (=> d!69991 (= res!181291 (= (select (arr!7961 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69991 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!202078)))

(declare-fun b!328877 () Bool)

(declare-fun e!202079 () Bool)

(assert (=> b!328877 (= e!202078 e!202079)))

(declare-fun res!181292 () Bool)

(assert (=> b!328877 (=> (not res!181292) (not e!202079))))

(assert (=> b!328877 (= res!181292 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8313 a!3305)))))

(declare-fun b!328878 () Bool)

(assert (=> b!328878 (= e!202079 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69991 (not res!181291)) b!328877))

(assert (= (and b!328877 res!181292) b!328878))

(assert (=> d!69991 m!334685))

(declare-fun m!334697 () Bool)

(assert (=> b!328878 m!334697))

(assert (=> b!328730 d!69991))

(declare-fun d!69993 () Bool)

(assert (=> d!69993 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328735 d!69993))

(declare-fun e!202119 () SeekEntryResult!3103)

(declare-fun b!328940 () Bool)

(declare-fun lt!158093 () SeekEntryResult!3103)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16834 (_ BitVec 32)) SeekEntryResult!3103)

(assert (=> b!328940 (= e!202119 (seekKeyOrZeroReturnVacant!0 (x!32817 lt!158093) (index!14590 lt!158093) (index!14590 lt!158093) k0!2497 a!3305 mask!3777))))

(declare-fun b!328941 () Bool)

(declare-fun e!202120 () SeekEntryResult!3103)

(assert (=> b!328941 (= e!202120 (Found!3103 (index!14590 lt!158093)))))

(declare-fun b!328942 () Bool)

(declare-fun e!202121 () SeekEntryResult!3103)

(assert (=> b!328942 (= e!202121 Undefined!3103)))

(declare-fun d!69995 () Bool)

(declare-fun lt!158091 () SeekEntryResult!3103)

(assert (=> d!69995 (and (or ((_ is Undefined!3103) lt!158091) (not ((_ is Found!3103) lt!158091)) (and (bvsge (index!14589 lt!158091) #b00000000000000000000000000000000) (bvslt (index!14589 lt!158091) (size!8313 a!3305)))) (or ((_ is Undefined!3103) lt!158091) ((_ is Found!3103) lt!158091) (not ((_ is MissingZero!3103) lt!158091)) (and (bvsge (index!14588 lt!158091) #b00000000000000000000000000000000) (bvslt (index!14588 lt!158091) (size!8313 a!3305)))) (or ((_ is Undefined!3103) lt!158091) ((_ is Found!3103) lt!158091) ((_ is MissingZero!3103) lt!158091) (not ((_ is MissingVacant!3103) lt!158091)) (and (bvsge (index!14591 lt!158091) #b00000000000000000000000000000000) (bvslt (index!14591 lt!158091) (size!8313 a!3305)))) (or ((_ is Undefined!3103) lt!158091) (ite ((_ is Found!3103) lt!158091) (= (select (arr!7961 a!3305) (index!14589 lt!158091)) k0!2497) (ite ((_ is MissingZero!3103) lt!158091) (= (select (arr!7961 a!3305) (index!14588 lt!158091)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3103) lt!158091) (= (select (arr!7961 a!3305) (index!14591 lt!158091)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69995 (= lt!158091 e!202121)))

(declare-fun c!51455 () Bool)

(assert (=> d!69995 (= c!51455 (and ((_ is Intermediate!3103) lt!158093) (undefined!3915 lt!158093)))))

(assert (=> d!69995 (= lt!158093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69995 (validMask!0 mask!3777)))

(assert (=> d!69995 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!158091)))

(declare-fun b!328943 () Bool)

(declare-fun c!51453 () Bool)

(declare-fun lt!158092 () (_ BitVec 64))

(assert (=> b!328943 (= c!51453 (= lt!158092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328943 (= e!202120 e!202119)))

(declare-fun b!328944 () Bool)

(assert (=> b!328944 (= e!202119 (MissingZero!3103 (index!14590 lt!158093)))))

(declare-fun b!328945 () Bool)

(assert (=> b!328945 (= e!202121 e!202120)))

(assert (=> b!328945 (= lt!158092 (select (arr!7961 a!3305) (index!14590 lt!158093)))))

(declare-fun c!51454 () Bool)

(assert (=> b!328945 (= c!51454 (= lt!158092 k0!2497))))

(assert (= (and d!69995 c!51455) b!328942))

(assert (= (and d!69995 (not c!51455)) b!328945))

(assert (= (and b!328945 c!51454) b!328941))

(assert (= (and b!328945 (not c!51454)) b!328943))

(assert (= (and b!328943 c!51453) b!328944))

(assert (= (and b!328943 (not c!51453)) b!328940))

(declare-fun m!334731 () Bool)

(assert (=> b!328940 m!334731))

(assert (=> d!69995 m!334625))

(declare-fun m!334733 () Bool)

(assert (=> d!69995 m!334733))

(assert (=> d!69995 m!334613))

(declare-fun m!334735 () Bool)

(assert (=> d!69995 m!334735))

(assert (=> d!69995 m!334613))

(assert (=> d!69995 m!334615))

(declare-fun m!334737 () Bool)

(assert (=> d!69995 m!334737))

(declare-fun m!334741 () Bool)

(assert (=> b!328945 m!334741))

(assert (=> b!328734 d!69995))

(check-sat (not b!328824) (not b!328940) (not b!328878) (not b!328815) (not d!69975) (not d!69967) (not b!328870) (not bm!26129) (not b!328871) (not d!69995))
(check-sat)
