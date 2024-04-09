; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33152 () Bool)

(assert start!33152)

(declare-fun res!181627 () Bool)

(declare-fun e!202375 () Bool)

(assert (=> start!33152 (=> (not res!181627) (not e!202375))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33152 (= res!181627 (validMask!0 mask!3777))))

(assert (=> start!33152 e!202375))

(declare-datatypes ((array!16858 0))(
  ( (array!16859 (arr!7970 (Array (_ BitVec 32) (_ BitVec 64))) (size!8322 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16858)

(declare-fun array_inv!5924 (array!16858) Bool)

(assert (=> start!33152 (array_inv!5924 a!3305)))

(assert (=> start!33152 true))

(declare-fun b!329452 () Bool)

(declare-fun res!181629 () Bool)

(declare-fun e!202373 () Bool)

(assert (=> b!329452 (=> (not res!181629) (not e!202373))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3112 0))(
  ( (MissingZero!3112 (index!14624 (_ BitVec 32))) (Found!3112 (index!14625 (_ BitVec 32))) (Intermediate!3112 (undefined!3924 Bool) (index!14626 (_ BitVec 32)) (x!32865 (_ BitVec 32))) (Undefined!3112) (MissingVacant!3112 (index!14627 (_ BitVec 32))) )
))
(declare-fun lt!158260 () SeekEntryResult!3112)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16858 (_ BitVec 32)) SeekEntryResult!3112)

(assert (=> b!329452 (= res!181629 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158260))))

(declare-fun b!329453 () Bool)

(declare-fun res!181635 () Bool)

(assert (=> b!329453 (=> (not res!181635) (not e!202375))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329453 (= res!181635 (and (= (size!8322 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8322 a!3305))))))

(declare-fun b!329454 () Bool)

(assert (=> b!329454 (= e!202373 true)))

(declare-datatypes ((Unit!10209 0))(
  ( (Unit!10210) )
))
(declare-fun lt!158261 () Unit!10209)

(declare-fun e!202374 () Unit!10209)

(assert (=> b!329454 (= lt!158261 e!202374)))

(declare-fun c!51554 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329454 (= c!51554 ((_ is Intermediate!3112) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun b!329455 () Bool)

(declare-fun res!181631 () Bool)

(assert (=> b!329455 (=> (not res!181631) (not e!202375))))

(declare-fun arrayContainsKey!0 (array!16858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329455 (= res!181631 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329456 () Bool)

(declare-fun res!181632 () Bool)

(assert (=> b!329456 (=> (not res!181632) (not e!202373))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329456 (= res!181632 (and (= (select (arr!7970 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8322 a!3305))))))

(declare-fun b!329457 () Bool)

(assert (=> b!329457 (= e!202375 e!202373)))

(declare-fun res!181630 () Bool)

(assert (=> b!329457 (=> (not res!181630) (not e!202373))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329457 (= res!181630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158260))))

(assert (=> b!329457 (= lt!158260 (Intermediate!3112 false resIndex!58 resX!58))))

(declare-fun b!329458 () Bool)

(declare-fun res!181626 () Bool)

(assert (=> b!329458 (=> (not res!181626) (not e!202375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16858 (_ BitVec 32)) Bool)

(assert (=> b!329458 (= res!181626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329459 () Bool)

(declare-fun res!181628 () Bool)

(assert (=> b!329459 (=> (not res!181628) (not e!202375))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16858 (_ BitVec 32)) SeekEntryResult!3112)

(assert (=> b!329459 (= res!181628 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3112 i!1250)))))

(declare-fun b!329460 () Bool)

(declare-fun res!181633 () Bool)

(assert (=> b!329460 (=> (not res!181633) (not e!202375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329460 (= res!181633 (validKeyInArray!0 k0!2497))))

(declare-fun b!329461 () Bool)

(declare-fun Unit!10211 () Unit!10209)

(assert (=> b!329461 (= e!202374 Unit!10211)))

(assert (=> b!329461 false))

(declare-fun b!329462 () Bool)

(declare-fun Unit!10212 () Unit!10209)

(assert (=> b!329462 (= e!202374 Unit!10212)))

(declare-fun b!329463 () Bool)

(declare-fun res!181634 () Bool)

(assert (=> b!329463 (=> (not res!181634) (not e!202373))))

(assert (=> b!329463 (= res!181634 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7970 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7970 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7970 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!33152 res!181627) b!329453))

(assert (= (and b!329453 res!181635) b!329460))

(assert (= (and b!329460 res!181633) b!329455))

(assert (= (and b!329455 res!181631) b!329459))

(assert (= (and b!329459 res!181628) b!329458))

(assert (= (and b!329458 res!181626) b!329457))

(assert (= (and b!329457 res!181630) b!329456))

(assert (= (and b!329456 res!181632) b!329452))

(assert (= (and b!329452 res!181629) b!329463))

(assert (= (and b!329463 res!181634) b!329454))

(assert (= (and b!329454 c!51554) b!329462))

(assert (= (and b!329454 (not c!51554)) b!329461))

(declare-fun m!335073 () Bool)

(assert (=> start!33152 m!335073))

(declare-fun m!335075 () Bool)

(assert (=> start!33152 m!335075))

(declare-fun m!335077 () Bool)

(assert (=> b!329460 m!335077))

(declare-fun m!335079 () Bool)

(assert (=> b!329456 m!335079))

(declare-fun m!335081 () Bool)

(assert (=> b!329459 m!335081))

(declare-fun m!335083 () Bool)

(assert (=> b!329458 m!335083))

(declare-fun m!335085 () Bool)

(assert (=> b!329454 m!335085))

(assert (=> b!329454 m!335085))

(declare-fun m!335087 () Bool)

(assert (=> b!329454 m!335087))

(declare-fun m!335089 () Bool)

(assert (=> b!329455 m!335089))

(declare-fun m!335091 () Bool)

(assert (=> b!329463 m!335091))

(declare-fun m!335093 () Bool)

(assert (=> b!329452 m!335093))

(declare-fun m!335095 () Bool)

(assert (=> b!329457 m!335095))

(assert (=> b!329457 m!335095))

(declare-fun m!335097 () Bool)

(assert (=> b!329457 m!335097))

(check-sat (not b!329458) (not start!33152) (not b!329454) (not b!329457) (not b!329459) (not b!329460) (not b!329455) (not b!329452))
(check-sat)
(get-model)

(declare-fun b!329526 () Bool)

(declare-fun e!202407 () SeekEntryResult!3112)

(declare-fun e!202405 () SeekEntryResult!3112)

(assert (=> b!329526 (= e!202407 e!202405)))

(declare-fun c!51566 () Bool)

(declare-fun lt!158279 () (_ BitVec 64))

(assert (=> b!329526 (= c!51566 (or (= lt!158279 k0!2497) (= (bvadd lt!158279 lt!158279) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329527 () Bool)

(assert (=> b!329527 (= e!202405 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329528 () Bool)

(declare-fun e!202404 () Bool)

(declare-fun e!202406 () Bool)

(assert (=> b!329528 (= e!202404 e!202406)))

(declare-fun res!181678 () Bool)

(declare-fun lt!158278 () SeekEntryResult!3112)

(assert (=> b!329528 (= res!181678 (and ((_ is Intermediate!3112) lt!158278) (not (undefined!3924 lt!158278)) (bvslt (x!32865 lt!158278) #b01111111111111111111111111111110) (bvsge (x!32865 lt!158278) #b00000000000000000000000000000000) (bvsge (x!32865 lt!158278) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329528 (=> (not res!181678) (not e!202406))))

(declare-fun b!329529 () Bool)

(assert (=> b!329529 (= e!202407 (Intermediate!3112 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun d!70087 () Bool)

(assert (=> d!70087 e!202404))

(declare-fun c!51567 () Bool)

(assert (=> d!70087 (= c!51567 (and ((_ is Intermediate!3112) lt!158278) (undefined!3924 lt!158278)))))

(assert (=> d!70087 (= lt!158278 e!202407)))

(declare-fun c!51568 () Bool)

(assert (=> d!70087 (= c!51568 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(assert (=> d!70087 (= lt!158279 (select (arr!7970 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70087 (validMask!0 mask!3777)))

(assert (=> d!70087 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777) lt!158278)))

(declare-fun b!329530 () Bool)

(assert (=> b!329530 (= e!202404 (bvsge (x!32865 lt!158278) #b01111111111111111111111111111110))))

(declare-fun b!329531 () Bool)

(assert (=> b!329531 (and (bvsge (index!14626 lt!158278) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158278) (size!8322 a!3305)))))

(declare-fun e!202408 () Bool)

(assert (=> b!329531 (= e!202408 (= (select (arr!7970 a!3305) (index!14626 lt!158278)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329532 () Bool)

(assert (=> b!329532 (and (bvsge (index!14626 lt!158278) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158278) (size!8322 a!3305)))))

(declare-fun res!181677 () Bool)

(assert (=> b!329532 (= res!181677 (= (select (arr!7970 a!3305) (index!14626 lt!158278)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329532 (=> res!181677 e!202408)))

(declare-fun b!329533 () Bool)

(assert (=> b!329533 (and (bvsge (index!14626 lt!158278) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158278) (size!8322 a!3305)))))

(declare-fun res!181676 () Bool)

(assert (=> b!329533 (= res!181676 (= (select (arr!7970 a!3305) (index!14626 lt!158278)) k0!2497))))

(assert (=> b!329533 (=> res!181676 e!202408)))

(assert (=> b!329533 (= e!202406 e!202408)))

(declare-fun b!329534 () Bool)

(assert (=> b!329534 (= e!202405 (Intermediate!3112 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(assert (= (and d!70087 c!51568) b!329529))

(assert (= (and d!70087 (not c!51568)) b!329526))

(assert (= (and b!329526 c!51566) b!329534))

(assert (= (and b!329526 (not c!51566)) b!329527))

(assert (= (and d!70087 c!51567) b!329530))

(assert (= (and d!70087 (not c!51567)) b!329528))

(assert (= (and b!329528 res!181678) b!329533))

(assert (= (and b!329533 (not res!181676)) b!329532))

(assert (= (and b!329532 (not res!181677)) b!329531))

(declare-fun m!335125 () Bool)

(assert (=> b!329532 m!335125))

(assert (=> b!329533 m!335125))

(assert (=> b!329527 m!335085))

(declare-fun m!335127 () Bool)

(assert (=> b!329527 m!335127))

(assert (=> b!329527 m!335127))

(declare-fun m!335129 () Bool)

(assert (=> b!329527 m!335129))

(assert (=> b!329531 m!335125))

(assert (=> d!70087 m!335085))

(declare-fun m!335131 () Bool)

(assert (=> d!70087 m!335131))

(assert (=> d!70087 m!335073))

(assert (=> b!329454 d!70087))

(declare-fun d!70095 () Bool)

(declare-fun lt!158285 () (_ BitVec 32))

(assert (=> d!70095 (and (bvsge lt!158285 #b00000000000000000000000000000000) (bvslt lt!158285 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70095 (= lt!158285 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70095 (validMask!0 mask!3777)))

(assert (=> d!70095 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158285)))

(declare-fun bs!11410 () Bool)

(assert (= bs!11410 d!70095))

(declare-fun m!335145 () Bool)

(assert (=> bs!11410 m!335145))

(assert (=> bs!11410 m!335073))

(assert (=> b!329454 d!70095))

(declare-fun b!329602 () Bool)

(declare-fun c!51591 () Bool)

(declare-fun lt!158303 () (_ BitVec 64))

(assert (=> b!329602 (= c!51591 (= lt!158303 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202450 () SeekEntryResult!3112)

(declare-fun e!202451 () SeekEntryResult!3112)

(assert (=> b!329602 (= e!202450 e!202451)))

(declare-fun b!329603 () Bool)

(declare-fun e!202449 () SeekEntryResult!3112)

(assert (=> b!329603 (= e!202449 e!202450)))

(declare-fun lt!158302 () SeekEntryResult!3112)

(assert (=> b!329603 (= lt!158303 (select (arr!7970 a!3305) (index!14626 lt!158302)))))

(declare-fun c!51593 () Bool)

(assert (=> b!329603 (= c!51593 (= lt!158303 k0!2497))))

(declare-fun b!329604 () Bool)

(assert (=> b!329604 (= e!202451 (MissingZero!3112 (index!14626 lt!158302)))))

(declare-fun b!329605 () Bool)

(assert (=> b!329605 (= e!202449 Undefined!3112)))

(declare-fun b!329606 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16858 (_ BitVec 32)) SeekEntryResult!3112)

(assert (=> b!329606 (= e!202451 (seekKeyOrZeroReturnVacant!0 (x!32865 lt!158302) (index!14626 lt!158302) (index!14626 lt!158302) k0!2497 a!3305 mask!3777))))

(declare-fun d!70099 () Bool)

(declare-fun lt!158304 () SeekEntryResult!3112)

(assert (=> d!70099 (and (or ((_ is Undefined!3112) lt!158304) (not ((_ is Found!3112) lt!158304)) (and (bvsge (index!14625 lt!158304) #b00000000000000000000000000000000) (bvslt (index!14625 lt!158304) (size!8322 a!3305)))) (or ((_ is Undefined!3112) lt!158304) ((_ is Found!3112) lt!158304) (not ((_ is MissingZero!3112) lt!158304)) (and (bvsge (index!14624 lt!158304) #b00000000000000000000000000000000) (bvslt (index!14624 lt!158304) (size!8322 a!3305)))) (or ((_ is Undefined!3112) lt!158304) ((_ is Found!3112) lt!158304) ((_ is MissingZero!3112) lt!158304) (not ((_ is MissingVacant!3112) lt!158304)) (and (bvsge (index!14627 lt!158304) #b00000000000000000000000000000000) (bvslt (index!14627 lt!158304) (size!8322 a!3305)))) (or ((_ is Undefined!3112) lt!158304) (ite ((_ is Found!3112) lt!158304) (= (select (arr!7970 a!3305) (index!14625 lt!158304)) k0!2497) (ite ((_ is MissingZero!3112) lt!158304) (= (select (arr!7970 a!3305) (index!14624 lt!158304)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3112) lt!158304) (= (select (arr!7970 a!3305) (index!14627 lt!158304)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70099 (= lt!158304 e!202449)))

(declare-fun c!51592 () Bool)

(assert (=> d!70099 (= c!51592 (and ((_ is Intermediate!3112) lt!158302) (undefined!3924 lt!158302)))))

(assert (=> d!70099 (= lt!158302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!70099 (validMask!0 mask!3777)))

(assert (=> d!70099 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!158304)))

(declare-fun b!329607 () Bool)

(assert (=> b!329607 (= e!202450 (Found!3112 (index!14626 lt!158302)))))

(assert (= (and d!70099 c!51592) b!329605))

(assert (= (and d!70099 (not c!51592)) b!329603))

(assert (= (and b!329603 c!51593) b!329607))

(assert (= (and b!329603 (not c!51593)) b!329602))

(assert (= (and b!329602 c!51591) b!329604))

(assert (= (and b!329602 (not c!51591)) b!329606))

(declare-fun m!335153 () Bool)

(assert (=> b!329603 m!335153))

(declare-fun m!335155 () Bool)

(assert (=> b!329606 m!335155))

(assert (=> d!70099 m!335073))

(assert (=> d!70099 m!335095))

(assert (=> d!70099 m!335097))

(assert (=> d!70099 m!335095))

(declare-fun m!335157 () Bool)

(assert (=> d!70099 m!335157))

(declare-fun m!335159 () Bool)

(assert (=> d!70099 m!335159))

(declare-fun m!335161 () Bool)

(assert (=> d!70099 m!335161))

(assert (=> b!329459 d!70099))

(declare-fun d!70105 () Bool)

(declare-fun res!181710 () Bool)

(declare-fun e!202461 () Bool)

(assert (=> d!70105 (=> res!181710 e!202461)))

(assert (=> d!70105 (= res!181710 (= (select (arr!7970 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!70105 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!202461)))

(declare-fun b!329621 () Bool)

(declare-fun e!202462 () Bool)

(assert (=> b!329621 (= e!202461 e!202462)))

(declare-fun res!181711 () Bool)

(assert (=> b!329621 (=> (not res!181711) (not e!202462))))

(assert (=> b!329621 (= res!181711 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8322 a!3305)))))

(declare-fun b!329622 () Bool)

(assert (=> b!329622 (= e!202462 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70105 (not res!181710)) b!329621))

(assert (= (and b!329621 res!181711) b!329622))

(declare-fun m!335171 () Bool)

(assert (=> d!70105 m!335171))

(declare-fun m!335173 () Bool)

(assert (=> b!329622 m!335173))

(assert (=> b!329455 d!70105))

(declare-fun d!70109 () Bool)

(assert (=> d!70109 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329460 d!70109))

(declare-fun d!70111 () Bool)

(assert (=> d!70111 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33152 d!70111))

(declare-fun d!70121 () Bool)

(assert (=> d!70121 (= (array_inv!5924 a!3305) (bvsge (size!8322 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33152 d!70121))

(declare-fun b!329664 () Bool)

(declare-fun e!202490 () Bool)

(declare-fun call!26153 () Bool)

(assert (=> b!329664 (= e!202490 call!26153)))

(declare-fun d!70123 () Bool)

(declare-fun res!181726 () Bool)

(declare-fun e!202489 () Bool)

(assert (=> d!70123 (=> res!181726 e!202489)))

(assert (=> d!70123 (= res!181726 (bvsge #b00000000000000000000000000000000 (size!8322 a!3305)))))

(assert (=> d!70123 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202489)))

(declare-fun b!329665 () Bool)

(declare-fun e!202491 () Bool)

(assert (=> b!329665 (= e!202491 call!26153)))

(declare-fun b!329666 () Bool)

(assert (=> b!329666 (= e!202491 e!202490)))

(declare-fun lt!158334 () (_ BitVec 64))

(assert (=> b!329666 (= lt!158334 (select (arr!7970 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158333 () Unit!10209)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16858 (_ BitVec 64) (_ BitVec 32)) Unit!10209)

(assert (=> b!329666 (= lt!158333 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158334 #b00000000000000000000000000000000))))

(assert (=> b!329666 (arrayContainsKey!0 a!3305 lt!158334 #b00000000000000000000000000000000)))

(declare-fun lt!158335 () Unit!10209)

(assert (=> b!329666 (= lt!158335 lt!158333)))

(declare-fun res!181725 () Bool)

(assert (=> b!329666 (= res!181725 (= (seekEntryOrOpen!0 (select (arr!7970 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3112 #b00000000000000000000000000000000)))))

(assert (=> b!329666 (=> (not res!181725) (not e!202490))))

(declare-fun b!329667 () Bool)

(assert (=> b!329667 (= e!202489 e!202491)))

(declare-fun c!51611 () Bool)

(assert (=> b!329667 (= c!51611 (validKeyInArray!0 (select (arr!7970 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26150 () Bool)

(assert (=> bm!26150 (= call!26153 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!70123 (not res!181726)) b!329667))

(assert (= (and b!329667 c!51611) b!329666))

(assert (= (and b!329667 (not c!51611)) b!329665))

(assert (= (and b!329666 res!181725) b!329664))

(assert (= (or b!329664 b!329665) bm!26150))

(assert (=> b!329666 m!335171))

(declare-fun m!335199 () Bool)

(assert (=> b!329666 m!335199))

(declare-fun m!335201 () Bool)

(assert (=> b!329666 m!335201))

(assert (=> b!329666 m!335171))

(declare-fun m!335203 () Bool)

(assert (=> b!329666 m!335203))

(assert (=> b!329667 m!335171))

(assert (=> b!329667 m!335171))

(declare-fun m!335205 () Bool)

(assert (=> b!329667 m!335205))

(declare-fun m!335207 () Bool)

(assert (=> bm!26150 m!335207))

(assert (=> b!329458 d!70123))

(declare-fun b!329668 () Bool)

(declare-fun e!202495 () SeekEntryResult!3112)

(declare-fun e!202493 () SeekEntryResult!3112)

(assert (=> b!329668 (= e!202495 e!202493)))

(declare-fun c!51612 () Bool)

(declare-fun lt!158337 () (_ BitVec 64))

(assert (=> b!329668 (= c!51612 (or (= lt!158337 k0!2497) (= (bvadd lt!158337 lt!158337) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329669 () Bool)

(assert (=> b!329669 (= e!202493 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329670 () Bool)

(declare-fun e!202492 () Bool)

(declare-fun e!202494 () Bool)

(assert (=> b!329670 (= e!202492 e!202494)))

(declare-fun res!181729 () Bool)

(declare-fun lt!158336 () SeekEntryResult!3112)

(assert (=> b!329670 (= res!181729 (and ((_ is Intermediate!3112) lt!158336) (not (undefined!3924 lt!158336)) (bvslt (x!32865 lt!158336) #b01111111111111111111111111111110) (bvsge (x!32865 lt!158336) #b00000000000000000000000000000000) (bvsge (x!32865 lt!158336) x!1490)))))

(assert (=> b!329670 (=> (not res!181729) (not e!202494))))

(declare-fun b!329671 () Bool)

(assert (=> b!329671 (= e!202495 (Intermediate!3112 true index!1840 x!1490))))

(declare-fun d!70127 () Bool)

(assert (=> d!70127 e!202492))

(declare-fun c!51613 () Bool)

(assert (=> d!70127 (= c!51613 (and ((_ is Intermediate!3112) lt!158336) (undefined!3924 lt!158336)))))

(assert (=> d!70127 (= lt!158336 e!202495)))

(declare-fun c!51614 () Bool)

(assert (=> d!70127 (= c!51614 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70127 (= lt!158337 (select (arr!7970 a!3305) index!1840))))

(assert (=> d!70127 (validMask!0 mask!3777)))

(assert (=> d!70127 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158336)))

(declare-fun b!329672 () Bool)

(assert (=> b!329672 (= e!202492 (bvsge (x!32865 lt!158336) #b01111111111111111111111111111110))))

(declare-fun b!329673 () Bool)

(assert (=> b!329673 (and (bvsge (index!14626 lt!158336) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158336) (size!8322 a!3305)))))

(declare-fun e!202496 () Bool)

(assert (=> b!329673 (= e!202496 (= (select (arr!7970 a!3305) (index!14626 lt!158336)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329674 () Bool)

(assert (=> b!329674 (and (bvsge (index!14626 lt!158336) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158336) (size!8322 a!3305)))))

(declare-fun res!181728 () Bool)

(assert (=> b!329674 (= res!181728 (= (select (arr!7970 a!3305) (index!14626 lt!158336)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329674 (=> res!181728 e!202496)))

(declare-fun b!329675 () Bool)

(assert (=> b!329675 (and (bvsge (index!14626 lt!158336) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158336) (size!8322 a!3305)))))

(declare-fun res!181727 () Bool)

(assert (=> b!329675 (= res!181727 (= (select (arr!7970 a!3305) (index!14626 lt!158336)) k0!2497))))

(assert (=> b!329675 (=> res!181727 e!202496)))

(assert (=> b!329675 (= e!202494 e!202496)))

(declare-fun b!329676 () Bool)

(assert (=> b!329676 (= e!202493 (Intermediate!3112 false index!1840 x!1490))))

(assert (= (and d!70127 c!51614) b!329671))

(assert (= (and d!70127 (not c!51614)) b!329668))

(assert (= (and b!329668 c!51612) b!329676))

(assert (= (and b!329668 (not c!51612)) b!329669))

(assert (= (and d!70127 c!51613) b!329672))

(assert (= (and d!70127 (not c!51613)) b!329670))

(assert (= (and b!329670 res!181729) b!329675))

(assert (= (and b!329675 (not res!181727)) b!329674))

(assert (= (and b!329674 (not res!181728)) b!329673))

(declare-fun m!335209 () Bool)

(assert (=> b!329674 m!335209))

(assert (=> b!329675 m!335209))

(assert (=> b!329669 m!335085))

(assert (=> b!329669 m!335085))

(declare-fun m!335211 () Bool)

(assert (=> b!329669 m!335211))

(assert (=> b!329673 m!335209))

(assert (=> d!70127 m!335091))

(assert (=> d!70127 m!335073))

(assert (=> b!329452 d!70127))

(declare-fun b!329677 () Bool)

(declare-fun e!202500 () SeekEntryResult!3112)

(declare-fun e!202498 () SeekEntryResult!3112)

(assert (=> b!329677 (= e!202500 e!202498)))

(declare-fun c!51615 () Bool)

(declare-fun lt!158339 () (_ BitVec 64))

(assert (=> b!329677 (= c!51615 (or (= lt!158339 k0!2497) (= (bvadd lt!158339 lt!158339) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329678 () Bool)

(assert (=> b!329678 (= e!202498 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!329679 () Bool)

(declare-fun e!202497 () Bool)

(declare-fun e!202499 () Bool)

(assert (=> b!329679 (= e!202497 e!202499)))

(declare-fun res!181732 () Bool)

(declare-fun lt!158338 () SeekEntryResult!3112)

(assert (=> b!329679 (= res!181732 (and ((_ is Intermediate!3112) lt!158338) (not (undefined!3924 lt!158338)) (bvslt (x!32865 lt!158338) #b01111111111111111111111111111110) (bvsge (x!32865 lt!158338) #b00000000000000000000000000000000) (bvsge (x!32865 lt!158338) #b00000000000000000000000000000000)))))

(assert (=> b!329679 (=> (not res!181732) (not e!202499))))

(declare-fun b!329680 () Bool)

(assert (=> b!329680 (= e!202500 (Intermediate!3112 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!70131 () Bool)

(assert (=> d!70131 e!202497))

(declare-fun c!51616 () Bool)

(assert (=> d!70131 (= c!51616 (and ((_ is Intermediate!3112) lt!158338) (undefined!3924 lt!158338)))))

(assert (=> d!70131 (= lt!158338 e!202500)))

(declare-fun c!51617 () Bool)

(assert (=> d!70131 (= c!51617 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!70131 (= lt!158339 (select (arr!7970 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!70131 (validMask!0 mask!3777)))

(assert (=> d!70131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158338)))

(declare-fun b!329681 () Bool)

(assert (=> b!329681 (= e!202497 (bvsge (x!32865 lt!158338) #b01111111111111111111111111111110))))

(declare-fun b!329682 () Bool)

(assert (=> b!329682 (and (bvsge (index!14626 lt!158338) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158338) (size!8322 a!3305)))))

(declare-fun e!202501 () Bool)

(assert (=> b!329682 (= e!202501 (= (select (arr!7970 a!3305) (index!14626 lt!158338)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329683 () Bool)

(assert (=> b!329683 (and (bvsge (index!14626 lt!158338) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158338) (size!8322 a!3305)))))

(declare-fun res!181731 () Bool)

(assert (=> b!329683 (= res!181731 (= (select (arr!7970 a!3305) (index!14626 lt!158338)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329683 (=> res!181731 e!202501)))

(declare-fun b!329684 () Bool)

(assert (=> b!329684 (and (bvsge (index!14626 lt!158338) #b00000000000000000000000000000000) (bvslt (index!14626 lt!158338) (size!8322 a!3305)))))

(declare-fun res!181730 () Bool)

(assert (=> b!329684 (= res!181730 (= (select (arr!7970 a!3305) (index!14626 lt!158338)) k0!2497))))

(assert (=> b!329684 (=> res!181730 e!202501)))

(assert (=> b!329684 (= e!202499 e!202501)))

(declare-fun b!329685 () Bool)

(assert (=> b!329685 (= e!202498 (Intermediate!3112 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!70131 c!51617) b!329680))

(assert (= (and d!70131 (not c!51617)) b!329677))

(assert (= (and b!329677 c!51615) b!329685))

(assert (= (and b!329677 (not c!51615)) b!329678))

(assert (= (and d!70131 c!51616) b!329681))

(assert (= (and d!70131 (not c!51616)) b!329679))

(assert (= (and b!329679 res!181732) b!329684))

(assert (= (and b!329684 (not res!181730)) b!329683))

(assert (= (and b!329683 (not res!181731)) b!329682))

(declare-fun m!335213 () Bool)

(assert (=> b!329683 m!335213))

(assert (=> b!329684 m!335213))

(assert (=> b!329678 m!335095))

(declare-fun m!335215 () Bool)

(assert (=> b!329678 m!335215))

(assert (=> b!329678 m!335215))

(declare-fun m!335217 () Bool)

(assert (=> b!329678 m!335217))

(assert (=> b!329682 m!335213))

(assert (=> d!70131 m!335095))

(declare-fun m!335219 () Bool)

(assert (=> d!70131 m!335219))

(assert (=> d!70131 m!335073))

(assert (=> b!329457 d!70131))

(declare-fun d!70135 () Bool)

(declare-fun lt!158359 () (_ BitVec 32))

(declare-fun lt!158358 () (_ BitVec 32))

(assert (=> d!70135 (= lt!158359 (bvmul (bvxor lt!158358 (bvlshr lt!158358 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70135 (= lt!158358 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70135 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181736 (let ((h!5439 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32873 (bvmul (bvxor h!5439 (bvlshr h!5439 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32873 (bvlshr x!32873 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181736 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181736 #b00000000000000000000000000000000))))))

(assert (=> d!70135 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!158359 (bvlshr lt!158359 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329457 d!70135))

(check-sat (not d!70095) (not b!329527) (not d!70127) (not d!70099) (not bm!26150) (not b!329678) (not d!70131) (not b!329622) (not b!329606) (not b!329669) (not b!329667) (not b!329666) (not d!70087))
(check-sat)
