; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30464 () Bool)

(assert start!30464)

(declare-fun b!304822 () Bool)

(declare-fun res!162330 () Bool)

(declare-fun e!191485 () Bool)

(assert (=> b!304822 (=> (not res!162330) (not e!191485))))

(declare-datatypes ((array!15517 0))(
  ( (array!15518 (arr!7343 (Array (_ BitVec 32) (_ BitVec 64))) (size!7695 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15517)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304822 (= res!162330 (and (= (size!7695 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7695 a!3293))))))

(declare-fun b!304824 () Bool)

(declare-fun e!191488 () Bool)

(assert (=> b!304824 (= e!191485 e!191488)))

(declare-fun res!162326 () Bool)

(assert (=> b!304824 (=> (not res!162326) (not e!191488))))

(declare-datatypes ((SeekEntryResult!2494 0))(
  ( (MissingZero!2494 (index!12152 (_ BitVec 32))) (Found!2494 (index!12153 (_ BitVec 32))) (Intermediate!2494 (undefined!3306 Bool) (index!12154 (_ BitVec 32)) (x!30371 (_ BitVec 32))) (Undefined!2494) (MissingVacant!2494 (index!12155 (_ BitVec 32))) )
))
(declare-fun lt!150546 () SeekEntryResult!2494)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15517 (_ BitVec 32)) SeekEntryResult!2494)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304824 (= res!162326 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150546))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304824 (= lt!150546 (Intermediate!2494 false resIndex!52 resX!52))))

(declare-fun b!304825 () Bool)

(declare-fun res!162329 () Bool)

(assert (=> b!304825 (=> (not res!162329) (not e!191485))))

(declare-fun arrayContainsKey!0 (array!15517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304825 (= res!162329 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304826 () Bool)

(declare-fun res!162327 () Bool)

(assert (=> b!304826 (=> (not res!162327) (not e!191485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304826 (= res!162327 (validKeyInArray!0 k0!2441))))

(declare-fun b!304827 () Bool)

(declare-fun e!191486 () Bool)

(assert (=> b!304827 (= e!191488 e!191486)))

(declare-fun res!162332 () Bool)

(assert (=> b!304827 (=> (not res!162332) (not e!191486))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!150548 () SeekEntryResult!2494)

(assert (=> b!304827 (= res!162332 (and (= lt!150548 lt!150546) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7343 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7343 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7343 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304827 (= lt!150548 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!162328 () Bool)

(assert (=> start!30464 (=> (not res!162328) (not e!191485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30464 (= res!162328 (validMask!0 mask!3709))))

(assert (=> start!30464 e!191485))

(declare-fun array_inv!5297 (array!15517) Bool)

(assert (=> start!30464 (array_inv!5297 a!3293)))

(assert (=> start!30464 true))

(declare-fun b!304823 () Bool)

(declare-fun res!162333 () Bool)

(assert (=> b!304823 (=> (not res!162333) (not e!191485))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15517 (_ BitVec 32)) SeekEntryResult!2494)

(assert (=> b!304823 (= res!162333 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2494 i!1240)))))

(declare-fun b!304828 () Bool)

(declare-fun res!162331 () Bool)

(assert (=> b!304828 (=> (not res!162331) (not e!191488))))

(assert (=> b!304828 (= res!162331 (and (= (select (arr!7343 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7695 a!3293))))))

(declare-fun b!304829 () Bool)

(declare-fun res!162325 () Bool)

(assert (=> b!304829 (=> (not res!162325) (not e!191485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15517 (_ BitVec 32)) Bool)

(assert (=> b!304829 (= res!162325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304830 () Bool)

(declare-fun lt!150547 () (_ BitVec 32))

(assert (=> b!304830 (= e!191486 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (and (bvsge lt!150547 #b00000000000000000000000000000000) (bvslt lt!150547 (bvadd #b00000000000000000000000000000001 mask!3709))))))))

(assert (=> b!304830 (= lt!150548 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150547 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304830 (= lt!150547 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30464 res!162328) b!304822))

(assert (= (and b!304822 res!162330) b!304826))

(assert (= (and b!304826 res!162327) b!304825))

(assert (= (and b!304825 res!162329) b!304823))

(assert (= (and b!304823 res!162333) b!304829))

(assert (= (and b!304829 res!162325) b!304824))

(assert (= (and b!304824 res!162326) b!304828))

(assert (= (and b!304828 res!162331) b!304827))

(assert (= (and b!304827 res!162332) b!304830))

(declare-fun m!315939 () Bool)

(assert (=> b!304828 m!315939))

(declare-fun m!315941 () Bool)

(assert (=> b!304826 m!315941))

(declare-fun m!315943 () Bool)

(assert (=> b!304825 m!315943))

(declare-fun m!315945 () Bool)

(assert (=> b!304827 m!315945))

(declare-fun m!315947 () Bool)

(assert (=> b!304827 m!315947))

(declare-fun m!315949 () Bool)

(assert (=> b!304823 m!315949))

(declare-fun m!315951 () Bool)

(assert (=> b!304830 m!315951))

(declare-fun m!315953 () Bool)

(assert (=> b!304830 m!315953))

(declare-fun m!315955 () Bool)

(assert (=> b!304829 m!315955))

(declare-fun m!315957 () Bool)

(assert (=> start!30464 m!315957))

(declare-fun m!315959 () Bool)

(assert (=> start!30464 m!315959))

(declare-fun m!315961 () Bool)

(assert (=> b!304824 m!315961))

(assert (=> b!304824 m!315961))

(declare-fun m!315963 () Bool)

(assert (=> b!304824 m!315963))

(check-sat (not b!304823) (not b!304824) (not b!304827) (not b!304829) (not b!304825) (not start!30464) (not b!304826) (not b!304830))
(check-sat)
(get-model)

(declare-fun b!304882 () Bool)

(declare-fun lt!150569 () SeekEntryResult!2494)

(assert (=> b!304882 (and (bvsge (index!12154 lt!150569) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150569) (size!7695 a!3293)))))

(declare-fun res!162369 () Bool)

(assert (=> b!304882 (= res!162369 (= (select (arr!7343 a!3293) (index!12154 lt!150569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191516 () Bool)

(assert (=> b!304882 (=> res!162369 e!191516)))

(declare-fun b!304883 () Bool)

(declare-fun e!191518 () SeekEntryResult!2494)

(assert (=> b!304883 (= e!191518 (Intermediate!2494 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!304884 () Bool)

(assert (=> b!304884 (and (bvsge (index!12154 lt!150569) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150569) (size!7695 a!3293)))))

(assert (=> b!304884 (= e!191516 (= (select (arr!7343 a!3293) (index!12154 lt!150569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!304885 () Bool)

(declare-fun e!191515 () SeekEntryResult!2494)

(assert (=> b!304885 (= e!191515 (Intermediate!2494 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!67995 () Bool)

(declare-fun e!191517 () Bool)

(assert (=> d!67995 e!191517))

(declare-fun c!48859 () Bool)

(get-info :version)

(assert (=> d!67995 (= c!48859 (and ((_ is Intermediate!2494) lt!150569) (undefined!3306 lt!150569)))))

(assert (=> d!67995 (= lt!150569 e!191518)))

(declare-fun c!48857 () Bool)

(assert (=> d!67995 (= c!48857 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!150568 () (_ BitVec 64))

(assert (=> d!67995 (= lt!150568 (select (arr!7343 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!67995 (validMask!0 mask!3709)))

(assert (=> d!67995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150569)))

(declare-fun b!304886 () Bool)

(assert (=> b!304886 (= e!191518 e!191515)))

(declare-fun c!48858 () Bool)

(assert (=> b!304886 (= c!48858 (or (= lt!150568 k0!2441) (= (bvadd lt!150568 lt!150568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!304887 () Bool)

(assert (=> b!304887 (= e!191517 (bvsge (x!30371 lt!150569) #b01111111111111111111111111111110))))

(declare-fun b!304888 () Bool)

(assert (=> b!304888 (= e!191515 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304889 () Bool)

(assert (=> b!304889 (and (bvsge (index!12154 lt!150569) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150569) (size!7695 a!3293)))))

(declare-fun res!162370 () Bool)

(assert (=> b!304889 (= res!162370 (= (select (arr!7343 a!3293) (index!12154 lt!150569)) k0!2441))))

(assert (=> b!304889 (=> res!162370 e!191516)))

(declare-fun e!191519 () Bool)

(assert (=> b!304889 (= e!191519 e!191516)))

(declare-fun b!304890 () Bool)

(assert (=> b!304890 (= e!191517 e!191519)))

(declare-fun res!162371 () Bool)

(assert (=> b!304890 (= res!162371 (and ((_ is Intermediate!2494) lt!150569) (not (undefined!3306 lt!150569)) (bvslt (x!30371 lt!150569) #b01111111111111111111111111111110) (bvsge (x!30371 lt!150569) #b00000000000000000000000000000000) (bvsge (x!30371 lt!150569) #b00000000000000000000000000000000)))))

(assert (=> b!304890 (=> (not res!162371) (not e!191519))))

(assert (= (and d!67995 c!48857) b!304883))

(assert (= (and d!67995 (not c!48857)) b!304886))

(assert (= (and b!304886 c!48858) b!304885))

(assert (= (and b!304886 (not c!48858)) b!304888))

(assert (= (and d!67995 c!48859) b!304887))

(assert (= (and d!67995 (not c!48859)) b!304890))

(assert (= (and b!304890 res!162371) b!304889))

(assert (= (and b!304889 (not res!162370)) b!304882))

(assert (= (and b!304882 (not res!162369)) b!304884))

(declare-fun m!315991 () Bool)

(assert (=> b!304882 m!315991))

(assert (=> b!304888 m!315961))

(declare-fun m!315993 () Bool)

(assert (=> b!304888 m!315993))

(assert (=> b!304888 m!315993))

(declare-fun m!315995 () Bool)

(assert (=> b!304888 m!315995))

(assert (=> b!304884 m!315991))

(assert (=> d!67995 m!315961))

(declare-fun m!315997 () Bool)

(assert (=> d!67995 m!315997))

(assert (=> d!67995 m!315957))

(assert (=> b!304889 m!315991))

(assert (=> b!304824 d!67995))

(declare-fun d!67999 () Bool)

(declare-fun lt!150578 () (_ BitVec 32))

(declare-fun lt!150577 () (_ BitVec 32))

(assert (=> d!67999 (= lt!150578 (bvmul (bvxor lt!150577 (bvlshr lt!150577 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67999 (= lt!150577 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67999 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!162374 (let ((h!5357 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30374 (bvmul (bvxor h!5357 (bvlshr h!5357 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30374 (bvlshr x!30374 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!162374 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!162374 #b00000000000000000000000000000000))))))

(assert (=> d!67999 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!150578 (bvlshr lt!150578 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!304824 d!67999))

(declare-fun bm!25898 () Bool)

(declare-fun call!25901 () Bool)

(assert (=> bm!25898 (= call!25901 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!304911 () Bool)

(declare-fun e!191539 () Bool)

(declare-fun e!191538 () Bool)

(assert (=> b!304911 (= e!191539 e!191538)))

(declare-fun c!48863 () Bool)

(assert (=> b!304911 (= c!48863 (validKeyInArray!0 (select (arr!7343 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!68007 () Bool)

(declare-fun res!162387 () Bool)

(assert (=> d!68007 (=> res!162387 e!191539)))

(assert (=> d!68007 (= res!162387 (bvsge #b00000000000000000000000000000000 (size!7695 a!3293)))))

(assert (=> d!68007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!191539)))

(declare-fun b!304912 () Bool)

(declare-fun e!191537 () Bool)

(assert (=> b!304912 (= e!191537 call!25901)))

(declare-fun b!304913 () Bool)

(assert (=> b!304913 (= e!191538 call!25901)))

(declare-fun b!304914 () Bool)

(assert (=> b!304914 (= e!191538 e!191537)))

(declare-fun lt!150586 () (_ BitVec 64))

(assert (=> b!304914 (= lt!150586 (select (arr!7343 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9384 0))(
  ( (Unit!9385) )
))
(declare-fun lt!150587 () Unit!9384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15517 (_ BitVec 64) (_ BitVec 32)) Unit!9384)

(assert (=> b!304914 (= lt!150587 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!150586 #b00000000000000000000000000000000))))

(assert (=> b!304914 (arrayContainsKey!0 a!3293 lt!150586 #b00000000000000000000000000000000)))

(declare-fun lt!150585 () Unit!9384)

(assert (=> b!304914 (= lt!150585 lt!150587)))

(declare-fun res!162388 () Bool)

(assert (=> b!304914 (= res!162388 (= (seekEntryOrOpen!0 (select (arr!7343 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2494 #b00000000000000000000000000000000)))))

(assert (=> b!304914 (=> (not res!162388) (not e!191537))))

(assert (= (and d!68007 (not res!162387)) b!304911))

(assert (= (and b!304911 c!48863) b!304914))

(assert (= (and b!304911 (not c!48863)) b!304913))

(assert (= (and b!304914 res!162388) b!304912))

(assert (= (or b!304912 b!304913) bm!25898))

(declare-fun m!316015 () Bool)

(assert (=> bm!25898 m!316015))

(declare-fun m!316017 () Bool)

(assert (=> b!304911 m!316017))

(assert (=> b!304911 m!316017))

(declare-fun m!316019 () Bool)

(assert (=> b!304911 m!316019))

(assert (=> b!304914 m!316017))

(declare-fun m!316021 () Bool)

(assert (=> b!304914 m!316021))

(declare-fun m!316023 () Bool)

(assert (=> b!304914 m!316023))

(assert (=> b!304914 m!316017))

(declare-fun m!316025 () Bool)

(assert (=> b!304914 m!316025))

(assert (=> b!304829 d!68007))

(declare-fun b!304957 () Bool)

(declare-fun e!191562 () SeekEntryResult!2494)

(declare-fun e!191564 () SeekEntryResult!2494)

(assert (=> b!304957 (= e!191562 e!191564)))

(declare-fun lt!150606 () (_ BitVec 64))

(declare-fun lt!150604 () SeekEntryResult!2494)

(assert (=> b!304957 (= lt!150606 (select (arr!7343 a!3293) (index!12154 lt!150604)))))

(declare-fun c!48882 () Bool)

(assert (=> b!304957 (= c!48882 (= lt!150606 k0!2441))))

(declare-fun b!304958 () Bool)

(declare-fun c!48883 () Bool)

(assert (=> b!304958 (= c!48883 (= lt!150606 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191563 () SeekEntryResult!2494)

(assert (=> b!304958 (= e!191564 e!191563)))

(declare-fun b!304959 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15517 (_ BitVec 32)) SeekEntryResult!2494)

(assert (=> b!304959 (= e!191563 (seekKeyOrZeroReturnVacant!0 (x!30371 lt!150604) (index!12154 lt!150604) (index!12154 lt!150604) k0!2441 a!3293 mask!3709))))

(declare-fun b!304960 () Bool)

(assert (=> b!304960 (= e!191563 (MissingZero!2494 (index!12154 lt!150604)))))

(declare-fun b!304961 () Bool)

(assert (=> b!304961 (= e!191562 Undefined!2494)))

(declare-fun d!68009 () Bool)

(declare-fun lt!150605 () SeekEntryResult!2494)

(assert (=> d!68009 (and (or ((_ is Undefined!2494) lt!150605) (not ((_ is Found!2494) lt!150605)) (and (bvsge (index!12153 lt!150605) #b00000000000000000000000000000000) (bvslt (index!12153 lt!150605) (size!7695 a!3293)))) (or ((_ is Undefined!2494) lt!150605) ((_ is Found!2494) lt!150605) (not ((_ is MissingZero!2494) lt!150605)) (and (bvsge (index!12152 lt!150605) #b00000000000000000000000000000000) (bvslt (index!12152 lt!150605) (size!7695 a!3293)))) (or ((_ is Undefined!2494) lt!150605) ((_ is Found!2494) lt!150605) ((_ is MissingZero!2494) lt!150605) (not ((_ is MissingVacant!2494) lt!150605)) (and (bvsge (index!12155 lt!150605) #b00000000000000000000000000000000) (bvslt (index!12155 lt!150605) (size!7695 a!3293)))) (or ((_ is Undefined!2494) lt!150605) (ite ((_ is Found!2494) lt!150605) (= (select (arr!7343 a!3293) (index!12153 lt!150605)) k0!2441) (ite ((_ is MissingZero!2494) lt!150605) (= (select (arr!7343 a!3293) (index!12152 lt!150605)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2494) lt!150605) (= (select (arr!7343 a!3293) (index!12155 lt!150605)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68009 (= lt!150605 e!191562)))

(declare-fun c!48884 () Bool)

(assert (=> d!68009 (= c!48884 (and ((_ is Intermediate!2494) lt!150604) (undefined!3306 lt!150604)))))

(assert (=> d!68009 (= lt!150604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68009 (validMask!0 mask!3709)))

(assert (=> d!68009 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!150605)))

(declare-fun b!304962 () Bool)

(assert (=> b!304962 (= e!191564 (Found!2494 (index!12154 lt!150604)))))

(assert (= (and d!68009 c!48884) b!304961))

(assert (= (and d!68009 (not c!48884)) b!304957))

(assert (= (and b!304957 c!48882) b!304962))

(assert (= (and b!304957 (not c!48882)) b!304958))

(assert (= (and b!304958 c!48883) b!304960))

(assert (= (and b!304958 (not c!48883)) b!304959))

(declare-fun m!316027 () Bool)

(assert (=> b!304957 m!316027))

(declare-fun m!316029 () Bool)

(assert (=> b!304959 m!316029))

(declare-fun m!316031 () Bool)

(assert (=> d!68009 m!316031))

(assert (=> d!68009 m!315957))

(assert (=> d!68009 m!315961))

(assert (=> d!68009 m!315963))

(declare-fun m!316033 () Bool)

(assert (=> d!68009 m!316033))

(assert (=> d!68009 m!315961))

(declare-fun m!316035 () Bool)

(assert (=> d!68009 m!316035))

(assert (=> b!304823 d!68009))

(declare-fun b!304963 () Bool)

(declare-fun lt!150608 () SeekEntryResult!2494)

(assert (=> b!304963 (and (bvsge (index!12154 lt!150608) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150608) (size!7695 a!3293)))))

(declare-fun res!162395 () Bool)

(assert (=> b!304963 (= res!162395 (= (select (arr!7343 a!3293) (index!12154 lt!150608)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191566 () Bool)

(assert (=> b!304963 (=> res!162395 e!191566)))

(declare-fun b!304964 () Bool)

(declare-fun e!191568 () SeekEntryResult!2494)

(assert (=> b!304964 (= e!191568 (Intermediate!2494 true index!1781 x!1427))))

(declare-fun b!304965 () Bool)

(assert (=> b!304965 (and (bvsge (index!12154 lt!150608) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150608) (size!7695 a!3293)))))

(assert (=> b!304965 (= e!191566 (= (select (arr!7343 a!3293) (index!12154 lt!150608)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!304966 () Bool)

(declare-fun e!191565 () SeekEntryResult!2494)

(assert (=> b!304966 (= e!191565 (Intermediate!2494 false index!1781 x!1427))))

(declare-fun d!68011 () Bool)

(declare-fun e!191567 () Bool)

(assert (=> d!68011 e!191567))

(declare-fun c!48887 () Bool)

(assert (=> d!68011 (= c!48887 (and ((_ is Intermediate!2494) lt!150608) (undefined!3306 lt!150608)))))

(assert (=> d!68011 (= lt!150608 e!191568)))

(declare-fun c!48885 () Bool)

(assert (=> d!68011 (= c!48885 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!150607 () (_ BitVec 64))

(assert (=> d!68011 (= lt!150607 (select (arr!7343 a!3293) index!1781))))

(assert (=> d!68011 (validMask!0 mask!3709)))

(assert (=> d!68011 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150608)))

(declare-fun b!304967 () Bool)

(assert (=> b!304967 (= e!191568 e!191565)))

(declare-fun c!48886 () Bool)

(assert (=> b!304967 (= c!48886 (or (= lt!150607 k0!2441) (= (bvadd lt!150607 lt!150607) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!304968 () Bool)

(assert (=> b!304968 (= e!191567 (bvsge (x!30371 lt!150608) #b01111111111111111111111111111110))))

(declare-fun b!304969 () Bool)

(assert (=> b!304969 (= e!191565 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304970 () Bool)

(assert (=> b!304970 (and (bvsge (index!12154 lt!150608) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150608) (size!7695 a!3293)))))

(declare-fun res!162396 () Bool)

(assert (=> b!304970 (= res!162396 (= (select (arr!7343 a!3293) (index!12154 lt!150608)) k0!2441))))

(assert (=> b!304970 (=> res!162396 e!191566)))

(declare-fun e!191569 () Bool)

(assert (=> b!304970 (= e!191569 e!191566)))

(declare-fun b!304971 () Bool)

(assert (=> b!304971 (= e!191567 e!191569)))

(declare-fun res!162397 () Bool)

(assert (=> b!304971 (= res!162397 (and ((_ is Intermediate!2494) lt!150608) (not (undefined!3306 lt!150608)) (bvslt (x!30371 lt!150608) #b01111111111111111111111111111110) (bvsge (x!30371 lt!150608) #b00000000000000000000000000000000) (bvsge (x!30371 lt!150608) x!1427)))))

(assert (=> b!304971 (=> (not res!162397) (not e!191569))))

(assert (= (and d!68011 c!48885) b!304964))

(assert (= (and d!68011 (not c!48885)) b!304967))

(assert (= (and b!304967 c!48886) b!304966))

(assert (= (and b!304967 (not c!48886)) b!304969))

(assert (= (and d!68011 c!48887) b!304968))

(assert (= (and d!68011 (not c!48887)) b!304971))

(assert (= (and b!304971 res!162397) b!304970))

(assert (= (and b!304970 (not res!162396)) b!304963))

(assert (= (and b!304963 (not res!162395)) b!304965))

(declare-fun m!316037 () Bool)

(assert (=> b!304963 m!316037))

(assert (=> b!304969 m!315953))

(assert (=> b!304969 m!315953))

(declare-fun m!316039 () Bool)

(assert (=> b!304969 m!316039))

(assert (=> b!304965 m!316037))

(assert (=> d!68011 m!315945))

(assert (=> d!68011 m!315957))

(assert (=> b!304970 m!316037))

(assert (=> b!304827 d!68011))

(declare-fun d!68013 () Bool)

(assert (=> d!68013 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304826 d!68013))

(declare-fun d!68019 () Bool)

(declare-fun res!162405 () Bool)

(declare-fun e!191582 () Bool)

(assert (=> d!68019 (=> res!162405 e!191582)))

(assert (=> d!68019 (= res!162405 (= (select (arr!7343 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68019 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!191582)))

(declare-fun b!304991 () Bool)

(declare-fun e!191583 () Bool)

(assert (=> b!304991 (= e!191582 e!191583)))

(declare-fun res!162406 () Bool)

(assert (=> b!304991 (=> (not res!162406) (not e!191583))))

(assert (=> b!304991 (= res!162406 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7695 a!3293)))))

(declare-fun b!304992 () Bool)

(assert (=> b!304992 (= e!191583 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68019 (not res!162405)) b!304991))

(assert (= (and b!304991 res!162406) b!304992))

(assert (=> d!68019 m!316017))

(declare-fun m!316059 () Bool)

(assert (=> b!304992 m!316059))

(assert (=> b!304825 d!68019))

(declare-fun b!304993 () Bool)

(declare-fun lt!150617 () SeekEntryResult!2494)

(assert (=> b!304993 (and (bvsge (index!12154 lt!150617) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150617) (size!7695 a!3293)))))

(declare-fun res!162407 () Bool)

(assert (=> b!304993 (= res!162407 (= (select (arr!7343 a!3293) (index!12154 lt!150617)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191585 () Bool)

(assert (=> b!304993 (=> res!162407 e!191585)))

(declare-fun b!304994 () Bool)

(declare-fun e!191587 () SeekEntryResult!2494)

(assert (=> b!304994 (= e!191587 (Intermediate!2494 true lt!150547 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!304995 () Bool)

(assert (=> b!304995 (and (bvsge (index!12154 lt!150617) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150617) (size!7695 a!3293)))))

(assert (=> b!304995 (= e!191585 (= (select (arr!7343 a!3293) (index!12154 lt!150617)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!304996 () Bool)

(declare-fun e!191584 () SeekEntryResult!2494)

(assert (=> b!304996 (= e!191584 (Intermediate!2494 false lt!150547 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!68021 () Bool)

(declare-fun e!191586 () Bool)

(assert (=> d!68021 e!191586))

(declare-fun c!48896 () Bool)

(assert (=> d!68021 (= c!48896 (and ((_ is Intermediate!2494) lt!150617) (undefined!3306 lt!150617)))))

(assert (=> d!68021 (= lt!150617 e!191587)))

(declare-fun c!48894 () Bool)

(assert (=> d!68021 (= c!48894 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!150616 () (_ BitVec 64))

(assert (=> d!68021 (= lt!150616 (select (arr!7343 a!3293) lt!150547))))

(assert (=> d!68021 (validMask!0 mask!3709)))

(assert (=> d!68021 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150547 k0!2441 a!3293 mask!3709) lt!150617)))

(declare-fun b!304997 () Bool)

(assert (=> b!304997 (= e!191587 e!191584)))

(declare-fun c!48895 () Bool)

(assert (=> b!304997 (= c!48895 (or (= lt!150616 k0!2441) (= (bvadd lt!150616 lt!150616) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!304998 () Bool)

(assert (=> b!304998 (= e!191586 (bvsge (x!30371 lt!150617) #b01111111111111111111111111111110))))

(declare-fun b!304999 () Bool)

(assert (=> b!304999 (= e!191584 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!150547 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!305000 () Bool)

(assert (=> b!305000 (and (bvsge (index!12154 lt!150617) #b00000000000000000000000000000000) (bvslt (index!12154 lt!150617) (size!7695 a!3293)))))

(declare-fun res!162408 () Bool)

(assert (=> b!305000 (= res!162408 (= (select (arr!7343 a!3293) (index!12154 lt!150617)) k0!2441))))

(assert (=> b!305000 (=> res!162408 e!191585)))

(declare-fun e!191588 () Bool)

(assert (=> b!305000 (= e!191588 e!191585)))

(declare-fun b!305001 () Bool)

(assert (=> b!305001 (= e!191586 e!191588)))

(declare-fun res!162409 () Bool)

(assert (=> b!305001 (= res!162409 (and ((_ is Intermediate!2494) lt!150617) (not (undefined!3306 lt!150617)) (bvslt (x!30371 lt!150617) #b01111111111111111111111111111110) (bvsge (x!30371 lt!150617) #b00000000000000000000000000000000) (bvsge (x!30371 lt!150617) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!305001 (=> (not res!162409) (not e!191588))))

(assert (= (and d!68021 c!48894) b!304994))

(assert (= (and d!68021 (not c!48894)) b!304997))

(assert (= (and b!304997 c!48895) b!304996))

(assert (= (and b!304997 (not c!48895)) b!304999))

(assert (= (and d!68021 c!48896) b!304998))

(assert (= (and d!68021 (not c!48896)) b!305001))

(assert (= (and b!305001 res!162409) b!305000))

(assert (= (and b!305000 (not res!162408)) b!304993))

(assert (= (and b!304993 (not res!162407)) b!304995))

(declare-fun m!316063 () Bool)

(assert (=> b!304993 m!316063))

(declare-fun m!316065 () Bool)

(assert (=> b!304999 m!316065))

(assert (=> b!304999 m!316065))

(declare-fun m!316067 () Bool)

(assert (=> b!304999 m!316067))

(assert (=> b!304995 m!316063))

(declare-fun m!316069 () Bool)

(assert (=> d!68021 m!316069))

(assert (=> d!68021 m!315957))

(assert (=> b!305000 m!316063))

(assert (=> b!304830 d!68021))

(declare-fun d!68025 () Bool)

(declare-fun lt!150621 () (_ BitVec 32))

(assert (=> d!68025 (and (bvsge lt!150621 #b00000000000000000000000000000000) (bvslt lt!150621 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68025 (= lt!150621 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68025 (validMask!0 mask!3709)))

(assert (=> d!68025 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!150621)))

(declare-fun bs!10739 () Bool)

(assert (= bs!10739 d!68025))

(declare-fun m!316071 () Bool)

(assert (=> bs!10739 m!316071))

(assert (=> bs!10739 m!315957))

(assert (=> b!304830 d!68025))

(declare-fun d!68027 () Bool)

(assert (=> d!68027 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30464 d!68027))

(declare-fun d!68031 () Bool)

(assert (=> d!68031 (= (array_inv!5297 a!3293) (bvsge (size!7695 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30464 d!68031))

(check-sat (not d!68011) (not d!68025) (not d!67995) (not b!304999) (not b!304914) (not bm!25898) (not d!68021) (not b!304888) (not b!304911) (not b!304969) (not b!304992) (not b!304959) (not d!68009))
(check-sat)
