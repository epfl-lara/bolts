; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31598 () Bool)

(assert start!31598)

(declare-fun b!315989 () Bool)

(declare-fun e!196570 () Bool)

(declare-fun e!196569 () Bool)

(assert (=> b!315989 (= e!196570 e!196569)))

(declare-fun res!171275 () Bool)

(assert (=> b!315989 (=> (not res!171275) (not e!196569))))

(declare-datatypes ((array!16120 0))(
  ( (array!16121 (arr!7628 (Array (_ BitVec 32) (_ BitVec 64))) (size!7980 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16120)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2779 0))(
  ( (MissingZero!2779 (index!13292 (_ BitVec 32))) (Found!2779 (index!13293 (_ BitVec 32))) (Intermediate!2779 (undefined!3591 Bool) (index!13294 (_ BitVec 32)) (x!31500 (_ BitVec 32))) (Undefined!2779) (MissingVacant!2779 (index!13295 (_ BitVec 32))) )
))
(declare-fun lt!154430 () SeekEntryResult!2779)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16120 (_ BitVec 32)) SeekEntryResult!2779)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315989 (= res!171275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154430))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315989 (= lt!154430 (Intermediate!2779 false resIndex!52 resX!52))))

(declare-fun b!315990 () Bool)

(declare-fun res!171282 () Bool)

(assert (=> b!315990 (=> (not res!171282) (not e!196570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315990 (= res!171282 (validKeyInArray!0 k0!2441))))

(declare-fun b!315991 () Bool)

(declare-datatypes ((Unit!9765 0))(
  ( (Unit!9766) )
))
(declare-fun e!196568 () Unit!9765)

(declare-fun Unit!9767 () Unit!9765)

(assert (=> b!315991 (= e!196568 Unit!9767)))

(declare-fun res!171280 () Bool)

(assert (=> start!31598 (=> (not res!171280) (not e!196570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31598 (= res!171280 (validMask!0 mask!3709))))

(assert (=> start!31598 e!196570))

(declare-fun array_inv!5582 (array!16120) Bool)

(assert (=> start!31598 (array_inv!5582 a!3293)))

(assert (=> start!31598 true))

(declare-fun b!315992 () Bool)

(declare-fun e!196571 () Bool)

(declare-fun e!196567 () Bool)

(assert (=> b!315992 (= e!196571 (not e!196567))))

(declare-fun res!171274 () Bool)

(assert (=> b!315992 (=> res!171274 e!196567)))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315992 (= res!171274 (not (= (select (arr!7628 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!315992 (= index!1781 resIndex!52)))

(declare-fun lt!154431 () Unit!9765)

(assert (=> b!315992 (= lt!154431 e!196568)))

(declare-fun c!49975 () Bool)

(assert (=> b!315992 (= c!49975 (not (= resIndex!52 index!1781)))))

(declare-fun b!315993 () Bool)

(assert (=> b!315993 (= e!196569 e!196571)))

(declare-fun res!171279 () Bool)

(assert (=> b!315993 (=> (not res!171279) (not e!196571))))

(declare-fun lt!154432 () SeekEntryResult!2779)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!315993 (= res!171279 (and (= lt!154432 lt!154430) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7628 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(assert (=> b!315993 (= lt!154432 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!315994 () Bool)

(assert (=> b!315994 false))

(declare-fun lt!154433 () SeekEntryResult!2779)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315994 (= lt!154433 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun e!196572 () Unit!9765)

(declare-fun Unit!9768 () Unit!9765)

(assert (=> b!315994 (= e!196572 Unit!9768)))

(declare-fun b!315995 () Bool)

(declare-fun res!171277 () Bool)

(assert (=> b!315995 (=> (not res!171277) (not e!196570))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315995 (= res!171277 (and (= (size!7980 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7980 a!3293))))))

(declare-fun b!315996 () Bool)

(declare-fun res!171276 () Bool)

(assert (=> b!315996 (=> (not res!171276) (not e!196570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16120 (_ BitVec 32)) Bool)

(assert (=> b!315996 (= res!171276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315997 () Bool)

(assert (=> b!315997 (= e!196568 e!196572)))

(declare-fun c!49976 () Bool)

(assert (=> b!315997 (= c!49976 (or (= (select (arr!7628 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7628 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315998 () Bool)

(assert (=> b!315998 false))

(declare-fun Unit!9769 () Unit!9765)

(assert (=> b!315998 (= e!196572 Unit!9769)))

(declare-fun b!315999 () Bool)

(declare-fun res!171278 () Bool)

(assert (=> b!315999 (=> (not res!171278) (not e!196570))))

(declare-fun arrayContainsKey!0 (array!16120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315999 (= res!171278 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316000 () Bool)

(assert (=> b!316000 (= e!196567 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)) mask!3709) lt!154432))))

(declare-fun b!316001 () Bool)

(declare-fun res!171273 () Bool)

(assert (=> b!316001 (=> (not res!171273) (not e!196569))))

(assert (=> b!316001 (= res!171273 (and (= (select (arr!7628 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7980 a!3293))))))

(declare-fun b!316002 () Bool)

(declare-fun res!171281 () Bool)

(assert (=> b!316002 (=> (not res!171281) (not e!196570))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16120 (_ BitVec 32)) SeekEntryResult!2779)

(assert (=> b!316002 (= res!171281 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2779 i!1240)))))

(assert (= (and start!31598 res!171280) b!315995))

(assert (= (and b!315995 res!171277) b!315990))

(assert (= (and b!315990 res!171282) b!315999))

(assert (= (and b!315999 res!171278) b!316002))

(assert (= (and b!316002 res!171281) b!315996))

(assert (= (and b!315996 res!171276) b!315989))

(assert (= (and b!315989 res!171275) b!316001))

(assert (= (and b!316001 res!171273) b!315993))

(assert (= (and b!315993 res!171279) b!315992))

(assert (= (and b!315992 c!49975) b!315997))

(assert (= (and b!315992 (not c!49975)) b!315991))

(assert (= (and b!315997 c!49976) b!315998))

(assert (= (and b!315997 (not c!49976)) b!315994))

(assert (= (and b!315992 (not res!171274)) b!316000))

(declare-fun m!325015 () Bool)

(assert (=> b!316001 m!325015))

(declare-fun m!325017 () Bool)

(assert (=> b!315994 m!325017))

(assert (=> b!315994 m!325017))

(declare-fun m!325019 () Bool)

(assert (=> b!315994 m!325019))

(declare-fun m!325021 () Bool)

(assert (=> b!315990 m!325021))

(declare-fun m!325023 () Bool)

(assert (=> b!315999 m!325023))

(declare-fun m!325025 () Bool)

(assert (=> b!315989 m!325025))

(assert (=> b!315989 m!325025))

(declare-fun m!325027 () Bool)

(assert (=> b!315989 m!325027))

(declare-fun m!325029 () Bool)

(assert (=> b!315997 m!325029))

(declare-fun m!325031 () Bool)

(assert (=> b!316000 m!325031))

(declare-fun m!325033 () Bool)

(assert (=> b!316000 m!325033))

(assert (=> b!315993 m!325029))

(declare-fun m!325035 () Bool)

(assert (=> b!315993 m!325035))

(declare-fun m!325037 () Bool)

(assert (=> b!315996 m!325037))

(assert (=> b!315992 m!325029))

(declare-fun m!325039 () Bool)

(assert (=> b!316002 m!325039))

(declare-fun m!325041 () Bool)

(assert (=> start!31598 m!325041))

(declare-fun m!325043 () Bool)

(assert (=> start!31598 m!325043))

(check-sat (not b!315996) (not b!315989) (not b!315990) (not b!315994) (not b!315999) (not start!31598) (not b!316002) (not b!315993) (not b!316000))
(check-sat)
(get-model)

(declare-fun d!68839 () Bool)

(declare-fun lt!154460 () SeekEntryResult!2779)

(get-info :version)

(assert (=> d!68839 (and (or ((_ is Undefined!2779) lt!154460) (not ((_ is Found!2779) lt!154460)) (and (bvsge (index!13293 lt!154460) #b00000000000000000000000000000000) (bvslt (index!13293 lt!154460) (size!7980 a!3293)))) (or ((_ is Undefined!2779) lt!154460) ((_ is Found!2779) lt!154460) (not ((_ is MissingZero!2779) lt!154460)) (and (bvsge (index!13292 lt!154460) #b00000000000000000000000000000000) (bvslt (index!13292 lt!154460) (size!7980 a!3293)))) (or ((_ is Undefined!2779) lt!154460) ((_ is Found!2779) lt!154460) ((_ is MissingZero!2779) lt!154460) (not ((_ is MissingVacant!2779) lt!154460)) (and (bvsge (index!13295 lt!154460) #b00000000000000000000000000000000) (bvslt (index!13295 lt!154460) (size!7980 a!3293)))) (or ((_ is Undefined!2779) lt!154460) (ite ((_ is Found!2779) lt!154460) (= (select (arr!7628 a!3293) (index!13293 lt!154460)) k0!2441) (ite ((_ is MissingZero!2779) lt!154460) (= (select (arr!7628 a!3293) (index!13292 lt!154460)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2779) lt!154460) (= (select (arr!7628 a!3293) (index!13295 lt!154460)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!196607 () SeekEntryResult!2779)

(assert (=> d!68839 (= lt!154460 e!196607)))

(declare-fun c!49993 () Bool)

(declare-fun lt!154459 () SeekEntryResult!2779)

(assert (=> d!68839 (= c!49993 (and ((_ is Intermediate!2779) lt!154459) (undefined!3591 lt!154459)))))

(assert (=> d!68839 (= lt!154459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68839 (validMask!0 mask!3709)))

(assert (=> d!68839 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!154460)))

(declare-fun b!316065 () Bool)

(declare-fun e!196609 () SeekEntryResult!2779)

(assert (=> b!316065 (= e!196607 e!196609)))

(declare-fun lt!154458 () (_ BitVec 64))

(assert (=> b!316065 (= lt!154458 (select (arr!7628 a!3293) (index!13294 lt!154459)))))

(declare-fun c!49992 () Bool)

(assert (=> b!316065 (= c!49992 (= lt!154458 k0!2441))))

(declare-fun b!316066 () Bool)

(assert (=> b!316066 (= e!196607 Undefined!2779)))

(declare-fun b!316067 () Bool)

(assert (=> b!316067 (= e!196609 (Found!2779 (index!13294 lt!154459)))))

(declare-fun b!316068 () Bool)

(declare-fun e!196608 () SeekEntryResult!2779)

(assert (=> b!316068 (= e!196608 (MissingZero!2779 (index!13294 lt!154459)))))

(declare-fun b!316069 () Bool)

(declare-fun c!49991 () Bool)

(assert (=> b!316069 (= c!49991 (= lt!154458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316069 (= e!196609 e!196608)))

(declare-fun b!316070 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16120 (_ BitVec 32)) SeekEntryResult!2779)

(assert (=> b!316070 (= e!196608 (seekKeyOrZeroReturnVacant!0 (x!31500 lt!154459) (index!13294 lt!154459) (index!13294 lt!154459) k0!2441 a!3293 mask!3709))))

(assert (= (and d!68839 c!49993) b!316066))

(assert (= (and d!68839 (not c!49993)) b!316065))

(assert (= (and b!316065 c!49992) b!316067))

(assert (= (and b!316065 (not c!49992)) b!316069))

(assert (= (and b!316069 c!49991) b!316068))

(assert (= (and b!316069 (not c!49991)) b!316070))

(assert (=> d!68839 m!325025))

(assert (=> d!68839 m!325025))

(assert (=> d!68839 m!325027))

(assert (=> d!68839 m!325041))

(declare-fun m!325075 () Bool)

(assert (=> d!68839 m!325075))

(declare-fun m!325077 () Bool)

(assert (=> d!68839 m!325077))

(declare-fun m!325079 () Bool)

(assert (=> d!68839 m!325079))

(declare-fun m!325083 () Bool)

(assert (=> b!316065 m!325083))

(declare-fun m!325089 () Bool)

(assert (=> b!316070 m!325089))

(assert (=> b!316002 d!68839))

(declare-fun b!316111 () Bool)

(declare-fun e!196634 () Bool)

(declare-fun e!196636 () Bool)

(assert (=> b!316111 (= e!196634 e!196636)))

(declare-fun c!50006 () Bool)

(assert (=> b!316111 (= c!50006 (validKeyInArray!0 (select (arr!7628 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316112 () Bool)

(declare-fun call!26000 () Bool)

(assert (=> b!316112 (= e!196636 call!26000)))

(declare-fun b!316110 () Bool)

(declare-fun e!196635 () Bool)

(assert (=> b!316110 (= e!196636 e!196635)))

(declare-fun lt!154477 () (_ BitVec 64))

(assert (=> b!316110 (= lt!154477 (select (arr!7628 a!3293) #b00000000000000000000000000000000))))

(declare-fun lt!154476 () Unit!9765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16120 (_ BitVec 64) (_ BitVec 32)) Unit!9765)

(assert (=> b!316110 (= lt!154476 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154477 #b00000000000000000000000000000000))))

(assert (=> b!316110 (arrayContainsKey!0 a!3293 lt!154477 #b00000000000000000000000000000000)))

(declare-fun lt!154478 () Unit!9765)

(assert (=> b!316110 (= lt!154478 lt!154476)))

(declare-fun res!171333 () Bool)

(assert (=> b!316110 (= res!171333 (= (seekEntryOrOpen!0 (select (arr!7628 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2779 #b00000000000000000000000000000000)))))

(assert (=> b!316110 (=> (not res!171333) (not e!196635))))

(declare-fun d!68847 () Bool)

(declare-fun res!171332 () Bool)

(assert (=> d!68847 (=> res!171332 e!196634)))

(assert (=> d!68847 (= res!171332 (bvsge #b00000000000000000000000000000000 (size!7980 a!3293)))))

(assert (=> d!68847 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196634)))

(declare-fun bm!25997 () Bool)

(assert (=> bm!25997 (= call!26000 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!316113 () Bool)

(assert (=> b!316113 (= e!196635 call!26000)))

(assert (= (and d!68847 (not res!171332)) b!316111))

(assert (= (and b!316111 c!50006) b!316110))

(assert (= (and b!316111 (not c!50006)) b!316112))

(assert (= (and b!316110 res!171333) b!316113))

(assert (= (or b!316113 b!316112) bm!25997))

(declare-fun m!325103 () Bool)

(assert (=> b!316111 m!325103))

(assert (=> b!316111 m!325103))

(declare-fun m!325105 () Bool)

(assert (=> b!316111 m!325105))

(assert (=> b!316110 m!325103))

(declare-fun m!325107 () Bool)

(assert (=> b!316110 m!325107))

(declare-fun m!325109 () Bool)

(assert (=> b!316110 m!325109))

(assert (=> b!316110 m!325103))

(declare-fun m!325111 () Bool)

(assert (=> b!316110 m!325111))

(declare-fun m!325113 () Bool)

(assert (=> bm!25997 m!325113))

(assert (=> b!315996 d!68847))

(declare-fun d!68853 () Bool)

(assert (=> d!68853 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315990 d!68853))

(declare-fun b!316202 () Bool)

(declare-fun e!196691 () Bool)

(declare-fun e!196693 () Bool)

(assert (=> b!316202 (= e!196691 e!196693)))

(declare-fun res!171368 () Bool)

(declare-fun lt!154507 () SeekEntryResult!2779)

(assert (=> b!316202 (= res!171368 (and ((_ is Intermediate!2779) lt!154507) (not (undefined!3591 lt!154507)) (bvslt (x!31500 lt!154507) #b01111111111111111111111111111110) (bvsge (x!31500 lt!154507) #b00000000000000000000000000000000) (bvsge (x!31500 lt!154507) #b00000000000000000000000000000000)))))

(assert (=> b!316202 (=> (not res!171368) (not e!196693))))

(declare-fun b!316203 () Bool)

(declare-fun e!196692 () SeekEntryResult!2779)

(assert (=> b!316203 (= e!196692 (Intermediate!2779 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316204 () Bool)

(assert (=> b!316204 (= e!196691 (bvsge (x!31500 lt!154507) #b01111111111111111111111111111110))))

(declare-fun b!316205 () Bool)

(declare-fun e!196694 () SeekEntryResult!2779)

(assert (=> b!316205 (= e!196694 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316206 () Bool)

(assert (=> b!316206 (= e!196694 (Intermediate!2779 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316207 () Bool)

(assert (=> b!316207 (and (bvsge (index!13294 lt!154507) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154507) (size!7980 a!3293)))))

(declare-fun res!171370 () Bool)

(assert (=> b!316207 (= res!171370 (= (select (arr!7628 a!3293) (index!13294 lt!154507)) k0!2441))))

(declare-fun e!196690 () Bool)

(assert (=> b!316207 (=> res!171370 e!196690)))

(assert (=> b!316207 (= e!196693 e!196690)))

(declare-fun b!316208 () Bool)

(assert (=> b!316208 (and (bvsge (index!13294 lt!154507) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154507) (size!7980 a!3293)))))

(declare-fun res!171369 () Bool)

(assert (=> b!316208 (= res!171369 (= (select (arr!7628 a!3293) (index!13294 lt!154507)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316208 (=> res!171369 e!196690)))

(declare-fun b!316209 () Bool)

(assert (=> b!316209 (and (bvsge (index!13294 lt!154507) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154507) (size!7980 a!3293)))))

(assert (=> b!316209 (= e!196690 (= (select (arr!7628 a!3293) (index!13294 lt!154507)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68855 () Bool)

(assert (=> d!68855 e!196691))

(declare-fun c!50035 () Bool)

(assert (=> d!68855 (= c!50035 (and ((_ is Intermediate!2779) lt!154507) (undefined!3591 lt!154507)))))

(assert (=> d!68855 (= lt!154507 e!196692)))

(declare-fun c!50034 () Bool)

(assert (=> d!68855 (= c!50034 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154508 () (_ BitVec 64))

(assert (=> d!68855 (= lt!154508 (select (arr!7628 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68855 (validMask!0 mask!3709)))

(assert (=> d!68855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154507)))

(declare-fun b!316210 () Bool)

(assert (=> b!316210 (= e!196692 e!196694)))

(declare-fun c!50036 () Bool)

(assert (=> b!316210 (= c!50036 (or (= lt!154508 k0!2441) (= (bvadd lt!154508 lt!154508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68855 c!50034) b!316203))

(assert (= (and d!68855 (not c!50034)) b!316210))

(assert (= (and b!316210 c!50036) b!316206))

(assert (= (and b!316210 (not c!50036)) b!316205))

(assert (= (and d!68855 c!50035) b!316204))

(assert (= (and d!68855 (not c!50035)) b!316202))

(assert (= (and b!316202 res!171368) b!316207))

(assert (= (and b!316207 (not res!171370)) b!316208))

(assert (= (and b!316208 (not res!171369)) b!316209))

(declare-fun m!325151 () Bool)

(assert (=> b!316209 m!325151))

(assert (=> b!316205 m!325025))

(declare-fun m!325153 () Bool)

(assert (=> b!316205 m!325153))

(assert (=> b!316205 m!325153))

(declare-fun m!325155 () Bool)

(assert (=> b!316205 m!325155))

(assert (=> b!316207 m!325151))

(assert (=> d!68855 m!325025))

(declare-fun m!325157 () Bool)

(assert (=> d!68855 m!325157))

(assert (=> d!68855 m!325041))

(assert (=> b!316208 m!325151))

(assert (=> b!315989 d!68855))

(declare-fun d!68877 () Bool)

(declare-fun lt!154516 () (_ BitVec 32))

(declare-fun lt!154515 () (_ BitVec 32))

(assert (=> d!68877 (= lt!154516 (bvmul (bvxor lt!154515 (bvlshr lt!154515 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68877 (= lt!154515 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68877 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171376 (let ((h!5390 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31506 (bvmul (bvxor h!5390 (bvlshr h!5390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31506 (bvlshr x!31506 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171376 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171376 #b00000000000000000000000000000000))))))

(assert (=> d!68877 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!154516 (bvlshr lt!154516 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!315989 d!68877))

(declare-fun d!68885 () Bool)

(assert (=> d!68885 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31598 d!68885))

(declare-fun d!68889 () Bool)

(assert (=> d!68889 (= (array_inv!5582 a!3293) (bvsge (size!7980 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31598 d!68889))

(declare-fun b!316222 () Bool)

(declare-fun e!196703 () Bool)

(declare-fun e!196705 () Bool)

(assert (=> b!316222 (= e!196703 e!196705)))

(declare-fun res!171378 () Bool)

(declare-fun lt!154523 () SeekEntryResult!2779)

(assert (=> b!316222 (= res!171378 (and ((_ is Intermediate!2779) lt!154523) (not (undefined!3591 lt!154523)) (bvslt (x!31500 lt!154523) #b01111111111111111111111111111110) (bvsge (x!31500 lt!154523) #b00000000000000000000000000000000) (bvsge (x!31500 lt!154523) x!1427)))))

(assert (=> b!316222 (=> (not res!171378) (not e!196705))))

(declare-fun b!316223 () Bool)

(declare-fun e!196704 () SeekEntryResult!2779)

(assert (=> b!316223 (= e!196704 (Intermediate!2779 true index!1781 x!1427))))

(declare-fun b!316224 () Bool)

(assert (=> b!316224 (= e!196703 (bvsge (x!31500 lt!154523) #b01111111111111111111111111111110))))

(declare-fun b!316225 () Bool)

(declare-fun e!196706 () SeekEntryResult!2779)

(assert (=> b!316225 (= e!196706 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)) mask!3709))))

(declare-fun b!316226 () Bool)

(assert (=> b!316226 (= e!196706 (Intermediate!2779 false index!1781 x!1427))))

(declare-fun b!316227 () Bool)

(assert (=> b!316227 (and (bvsge (index!13294 lt!154523) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154523) (size!7980 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)))))))

(declare-fun res!171380 () Bool)

(assert (=> b!316227 (= res!171380 (= (select (arr!7628 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293))) (index!13294 lt!154523)) k0!2441))))

(declare-fun e!196702 () Bool)

(assert (=> b!316227 (=> res!171380 e!196702)))

(assert (=> b!316227 (= e!196705 e!196702)))

(declare-fun b!316228 () Bool)

(assert (=> b!316228 (and (bvsge (index!13294 lt!154523) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154523) (size!7980 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)))))))

(declare-fun res!171379 () Bool)

(assert (=> b!316228 (= res!171379 (= (select (arr!7628 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293))) (index!13294 lt!154523)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316228 (=> res!171379 e!196702)))

(declare-fun b!316229 () Bool)

(assert (=> b!316229 (and (bvsge (index!13294 lt!154523) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154523) (size!7980 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)))))))

(assert (=> b!316229 (= e!196702 (= (select (arr!7628 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293))) (index!13294 lt!154523)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68891 () Bool)

(assert (=> d!68891 e!196703))

(declare-fun c!50041 () Bool)

(assert (=> d!68891 (= c!50041 (and ((_ is Intermediate!2779) lt!154523) (undefined!3591 lt!154523)))))

(assert (=> d!68891 (= lt!154523 e!196704)))

(declare-fun c!50040 () Bool)

(assert (=> d!68891 (= c!50040 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154524 () (_ BitVec 64))

(assert (=> d!68891 (= lt!154524 (select (arr!7628 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293))) index!1781))))

(assert (=> d!68891 (validMask!0 mask!3709)))

(assert (=> d!68891 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 (array!16121 (store (arr!7628 a!3293) i!1240 k0!2441) (size!7980 a!3293)) mask!3709) lt!154523)))

(declare-fun b!316230 () Bool)

(assert (=> b!316230 (= e!196704 e!196706)))

(declare-fun c!50042 () Bool)

(assert (=> b!316230 (= c!50042 (or (= lt!154524 k0!2441) (= (bvadd lt!154524 lt!154524) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68891 c!50040) b!316223))

(assert (= (and d!68891 (not c!50040)) b!316230))

(assert (= (and b!316230 c!50042) b!316226))

(assert (= (and b!316230 (not c!50042)) b!316225))

(assert (= (and d!68891 c!50041) b!316224))

(assert (= (and d!68891 (not c!50041)) b!316222))

(assert (= (and b!316222 res!171378) b!316227))

(assert (= (and b!316227 (not res!171380)) b!316228))

(assert (= (and b!316228 (not res!171379)) b!316229))

(declare-fun m!325169 () Bool)

(assert (=> b!316229 m!325169))

(assert (=> b!316225 m!325017))

(assert (=> b!316225 m!325017))

(declare-fun m!325171 () Bool)

(assert (=> b!316225 m!325171))

(assert (=> b!316227 m!325169))

(declare-fun m!325173 () Bool)

(assert (=> d!68891 m!325173))

(assert (=> d!68891 m!325041))

(assert (=> b!316228 m!325169))

(assert (=> b!316000 d!68891))

(declare-fun d!68893 () Bool)

(declare-fun res!171385 () Bool)

(declare-fun e!196711 () Bool)

(assert (=> d!68893 (=> res!171385 e!196711)))

(assert (=> d!68893 (= res!171385 (= (select (arr!7628 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68893 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!196711)))

(declare-fun b!316235 () Bool)

(declare-fun e!196712 () Bool)

(assert (=> b!316235 (= e!196711 e!196712)))

(declare-fun res!171386 () Bool)

(assert (=> b!316235 (=> (not res!171386) (not e!196712))))

(assert (=> b!316235 (= res!171386 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7980 a!3293)))))

(declare-fun b!316236 () Bool)

(assert (=> b!316236 (= e!196712 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68893 (not res!171385)) b!316235))

(assert (= (and b!316235 res!171386) b!316236))

(assert (=> d!68893 m!325103))

(declare-fun m!325175 () Bool)

(assert (=> b!316236 m!325175))

(assert (=> b!315999 d!68893))

(declare-fun b!316237 () Bool)

(declare-fun e!196714 () Bool)

(declare-fun e!196716 () Bool)

(assert (=> b!316237 (= e!196714 e!196716)))

(declare-fun res!171387 () Bool)

(declare-fun lt!154525 () SeekEntryResult!2779)

(assert (=> b!316237 (= res!171387 (and ((_ is Intermediate!2779) lt!154525) (not (undefined!3591 lt!154525)) (bvslt (x!31500 lt!154525) #b01111111111111111111111111111110) (bvsge (x!31500 lt!154525) #b00000000000000000000000000000000) (bvsge (x!31500 lt!154525) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316237 (=> (not res!171387) (not e!196716))))

(declare-fun e!196715 () SeekEntryResult!2779)

(declare-fun b!316238 () Bool)

(assert (=> b!316238 (= e!196715 (Intermediate!2779 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316239 () Bool)

(assert (=> b!316239 (= e!196714 (bvsge (x!31500 lt!154525) #b01111111111111111111111111111110))))

(declare-fun e!196717 () SeekEntryResult!2779)

(declare-fun b!316240 () Bool)

(assert (=> b!316240 (= e!196717 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316241 () Bool)

(assert (=> b!316241 (= e!196717 (Intermediate!2779 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316242 () Bool)

(assert (=> b!316242 (and (bvsge (index!13294 lt!154525) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154525) (size!7980 a!3293)))))

(declare-fun res!171389 () Bool)

(assert (=> b!316242 (= res!171389 (= (select (arr!7628 a!3293) (index!13294 lt!154525)) k0!2441))))

(declare-fun e!196713 () Bool)

(assert (=> b!316242 (=> res!171389 e!196713)))

(assert (=> b!316242 (= e!196716 e!196713)))

(declare-fun b!316243 () Bool)

(assert (=> b!316243 (and (bvsge (index!13294 lt!154525) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154525) (size!7980 a!3293)))))

(declare-fun res!171388 () Bool)

(assert (=> b!316243 (= res!171388 (= (select (arr!7628 a!3293) (index!13294 lt!154525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316243 (=> res!171388 e!196713)))

(declare-fun b!316244 () Bool)

(assert (=> b!316244 (and (bvsge (index!13294 lt!154525) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154525) (size!7980 a!3293)))))

(assert (=> b!316244 (= e!196713 (= (select (arr!7628 a!3293) (index!13294 lt!154525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68895 () Bool)

(assert (=> d!68895 e!196714))

(declare-fun c!50044 () Bool)

(assert (=> d!68895 (= c!50044 (and ((_ is Intermediate!2779) lt!154525) (undefined!3591 lt!154525)))))

(assert (=> d!68895 (= lt!154525 e!196715)))

(declare-fun c!50043 () Bool)

(assert (=> d!68895 (= c!50043 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154526 () (_ BitVec 64))

(assert (=> d!68895 (= lt!154526 (select (arr!7628 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68895 (validMask!0 mask!3709)))

(assert (=> d!68895 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709) lt!154525)))

(declare-fun b!316245 () Bool)

(assert (=> b!316245 (= e!196715 e!196717)))

(declare-fun c!50045 () Bool)

(assert (=> b!316245 (= c!50045 (or (= lt!154526 k0!2441) (= (bvadd lt!154526 lt!154526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68895 c!50043) b!316238))

(assert (= (and d!68895 (not c!50043)) b!316245))

(assert (= (and b!316245 c!50045) b!316241))

(assert (= (and b!316245 (not c!50045)) b!316240))

(assert (= (and d!68895 c!50044) b!316239))

(assert (= (and d!68895 (not c!50044)) b!316237))

(assert (= (and b!316237 res!171387) b!316242))

(assert (= (and b!316242 (not res!171389)) b!316243))

(assert (= (and b!316243 (not res!171388)) b!316244))

(declare-fun m!325177 () Bool)

(assert (=> b!316244 m!325177))

(assert (=> b!316240 m!325017))

(declare-fun m!325179 () Bool)

(assert (=> b!316240 m!325179))

(assert (=> b!316240 m!325179))

(declare-fun m!325181 () Bool)

(assert (=> b!316240 m!325181))

(assert (=> b!316242 m!325177))

(assert (=> d!68895 m!325017))

(declare-fun m!325183 () Bool)

(assert (=> d!68895 m!325183))

(assert (=> d!68895 m!325041))

(assert (=> b!316243 m!325177))

(assert (=> b!315994 d!68895))

(declare-fun d!68897 () Bool)

(declare-fun lt!154541 () (_ BitVec 32))

(assert (=> d!68897 (and (bvsge lt!154541 #b00000000000000000000000000000000) (bvslt lt!154541 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68897 (= lt!154541 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68897 (validMask!0 mask!3709)))

(assert (=> d!68897 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154541)))

(declare-fun bs!11042 () Bool)

(assert (= bs!11042 d!68897))

(declare-fun m!325185 () Bool)

(assert (=> bs!11042 m!325185))

(assert (=> bs!11042 m!325041))

(assert (=> b!315994 d!68897))

(declare-fun b!316270 () Bool)

(declare-fun e!196731 () Bool)

(declare-fun e!196733 () Bool)

(assert (=> b!316270 (= e!196731 e!196733)))

(declare-fun res!171390 () Bool)

(declare-fun lt!154542 () SeekEntryResult!2779)

(assert (=> b!316270 (= res!171390 (and ((_ is Intermediate!2779) lt!154542) (not (undefined!3591 lt!154542)) (bvslt (x!31500 lt!154542) #b01111111111111111111111111111110) (bvsge (x!31500 lt!154542) #b00000000000000000000000000000000) (bvsge (x!31500 lt!154542) x!1427)))))

(assert (=> b!316270 (=> (not res!171390) (not e!196733))))

(declare-fun b!316271 () Bool)

(declare-fun e!196732 () SeekEntryResult!2779)

(assert (=> b!316271 (= e!196732 (Intermediate!2779 true index!1781 x!1427))))

(declare-fun b!316272 () Bool)

(assert (=> b!316272 (= e!196731 (bvsge (x!31500 lt!154542) #b01111111111111111111111111111110))))

(declare-fun e!196734 () SeekEntryResult!2779)

(declare-fun b!316273 () Bool)

(assert (=> b!316273 (= e!196734 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316274 () Bool)

(assert (=> b!316274 (= e!196734 (Intermediate!2779 false index!1781 x!1427))))

(declare-fun b!316275 () Bool)

(assert (=> b!316275 (and (bvsge (index!13294 lt!154542) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154542) (size!7980 a!3293)))))

(declare-fun res!171392 () Bool)

(assert (=> b!316275 (= res!171392 (= (select (arr!7628 a!3293) (index!13294 lt!154542)) k0!2441))))

(declare-fun e!196730 () Bool)

(assert (=> b!316275 (=> res!171392 e!196730)))

(assert (=> b!316275 (= e!196733 e!196730)))

(declare-fun b!316276 () Bool)

(assert (=> b!316276 (and (bvsge (index!13294 lt!154542) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154542) (size!7980 a!3293)))))

(declare-fun res!171391 () Bool)

(assert (=> b!316276 (= res!171391 (= (select (arr!7628 a!3293) (index!13294 lt!154542)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316276 (=> res!171391 e!196730)))

(declare-fun b!316277 () Bool)

(assert (=> b!316277 (and (bvsge (index!13294 lt!154542) #b00000000000000000000000000000000) (bvslt (index!13294 lt!154542) (size!7980 a!3293)))))

(assert (=> b!316277 (= e!196730 (= (select (arr!7628 a!3293) (index!13294 lt!154542)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68899 () Bool)

(assert (=> d!68899 e!196731))

(declare-fun c!50059 () Bool)

(assert (=> d!68899 (= c!50059 (and ((_ is Intermediate!2779) lt!154542) (undefined!3591 lt!154542)))))

(assert (=> d!68899 (= lt!154542 e!196732)))

(declare-fun c!50058 () Bool)

(assert (=> d!68899 (= c!50058 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154543 () (_ BitVec 64))

(assert (=> d!68899 (= lt!154543 (select (arr!7628 a!3293) index!1781))))

(assert (=> d!68899 (validMask!0 mask!3709)))

(assert (=> d!68899 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154542)))

(declare-fun b!316278 () Bool)

(assert (=> b!316278 (= e!196732 e!196734)))

(declare-fun c!50060 () Bool)

(assert (=> b!316278 (= c!50060 (or (= lt!154543 k0!2441) (= (bvadd lt!154543 lt!154543) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68899 c!50058) b!316271))

(assert (= (and d!68899 (not c!50058)) b!316278))

(assert (= (and b!316278 c!50060) b!316274))

(assert (= (and b!316278 (not c!50060)) b!316273))

(assert (= (and d!68899 c!50059) b!316272))

(assert (= (and d!68899 (not c!50059)) b!316270))

(assert (= (and b!316270 res!171390) b!316275))

(assert (= (and b!316275 (not res!171392)) b!316276))

(assert (= (and b!316276 (not res!171391)) b!316277))

(declare-fun m!325187 () Bool)

(assert (=> b!316277 m!325187))

(assert (=> b!316273 m!325017))

(assert (=> b!316273 m!325017))

(declare-fun m!325189 () Bool)

(assert (=> b!316273 m!325189))

(assert (=> b!316275 m!325187))

(assert (=> d!68899 m!325029))

(assert (=> d!68899 m!325041))

(assert (=> b!316276 m!325187))

(assert (=> b!315993 d!68899))

(check-sat (not b!316111) (not b!316205) (not b!316110) (not b!316070) (not d!68899) (not b!316225) (not b!316240) (not d!68895) (not d!68855) (not bm!25997) (not d!68897) (not d!68839) (not b!316236) (not d!68891) (not b!316273))
(check-sat)
