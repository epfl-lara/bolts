; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33238 () Bool)

(assert start!33238)

(declare-fun b!330447 () Bool)

(declare-datatypes ((Unit!10315 0))(
  ( (Unit!10316) )
))
(declare-fun e!202819 () Unit!10315)

(declare-fun Unit!10317 () Unit!10315)

(assert (=> b!330447 (= e!202819 Unit!10317)))

(declare-fun b!330448 () Bool)

(declare-fun e!202820 () Unit!10315)

(assert (=> b!330448 (= e!202819 e!202820)))

(declare-fun c!51773 () Bool)

(declare-datatypes ((array!16893 0))(
  ( (array!16894 (arr!7986 (Array (_ BitVec 32) (_ BitVec 64))) (size!8338 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16893)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!330448 (= c!51773 (or (= (select (arr!7986 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7986 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330449 () Bool)

(declare-fun res!182195 () Bool)

(declare-fun e!202818 () Bool)

(assert (=> b!330449 (=> (not res!182195) (not e!202818))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330449 (= res!182195 (and (= (size!8338 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8338 a!3305))))))

(declare-fun b!330450 () Bool)

(declare-fun res!182194 () Bool)

(assert (=> b!330450 (=> (not res!182194) (not e!202818))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330450 (= res!182194 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330451 () Bool)

(declare-fun e!202822 () Bool)

(declare-fun e!202816 () Bool)

(assert (=> b!330451 (= e!202822 (not e!202816))))

(declare-fun res!182196 () Bool)

(assert (=> b!330451 (=> res!182196 e!202816)))

(assert (=> b!330451 (= res!182196 (not (= (select (arr!7986 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330451 (= index!1840 resIndex!58)))

(declare-fun lt!158521 () Unit!10315)

(assert (=> b!330451 (= lt!158521 e!202819)))

(declare-fun c!51772 () Bool)

(assert (=> b!330451 (= c!51772 (not (= resIndex!58 index!1840)))))

(declare-fun b!330452 () Bool)

(assert (=> b!330452 false))

(declare-fun Unit!10318 () Unit!10315)

(assert (=> b!330452 (= e!202820 Unit!10318)))

(declare-fun b!330453 () Bool)

(declare-fun e!202821 () Bool)

(assert (=> b!330453 (= e!202821 e!202822)))

(declare-fun res!182190 () Bool)

(assert (=> b!330453 (=> (not res!182190) (not e!202822))))

(declare-datatypes ((SeekEntryResult!3128 0))(
  ( (MissingZero!3128 (index!14688 (_ BitVec 32))) (Found!3128 (index!14689 (_ BitVec 32))) (Intermediate!3128 (undefined!3940 Bool) (index!14690 (_ BitVec 32)) (x!32930 (_ BitVec 32))) (Undefined!3128) (MissingVacant!3128 (index!14691 (_ BitVec 32))) )
))
(declare-fun lt!158522 () SeekEntryResult!3128)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!158519 () SeekEntryResult!3128)

(assert (=> b!330453 (= res!182190 (and (= lt!158522 lt!158519) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7986 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16893 (_ BitVec 32)) SeekEntryResult!3128)

(assert (=> b!330453 (= lt!158522 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!330454 () Bool)

(assert (=> b!330454 (= e!202818 e!202821)))

(declare-fun res!182191 () Bool)

(assert (=> b!330454 (=> (not res!182191) (not e!202821))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330454 (= res!182191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158519))))

(assert (=> b!330454 (= lt!158519 (Intermediate!3128 false resIndex!58 resX!58))))

(declare-fun b!330455 () Bool)

(declare-fun res!182192 () Bool)

(assert (=> b!330455 (=> (not res!182192) (not e!202818))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16893 (_ BitVec 32)) SeekEntryResult!3128)

(assert (=> b!330455 (= res!182192 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3128 i!1250)))))

(declare-fun res!182198 () Bool)

(assert (=> start!33238 (=> (not res!182198) (not e!202818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33238 (= res!182198 (validMask!0 mask!3777))))

(assert (=> start!33238 e!202818))

(declare-fun array_inv!5940 (array!16893) Bool)

(assert (=> start!33238 (array_inv!5940 a!3305)))

(assert (=> start!33238 true))

(declare-fun b!330456 () Bool)

(declare-fun e!202815 () Unit!10315)

(declare-fun Unit!10319 () Unit!10315)

(assert (=> b!330456 (= e!202815 Unit!10319)))

(assert (=> b!330456 false))

(declare-fun b!330457 () Bool)

(assert (=> b!330457 false))

(declare-fun lt!158520 () Unit!10315)

(assert (=> b!330457 (= lt!158520 e!202815)))

(declare-fun c!51771 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330457 (= c!51771 (is-Intermediate!3128 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10320 () Unit!10315)

(assert (=> b!330457 (= e!202820 Unit!10320)))

(declare-fun b!330458 () Bool)

(declare-fun res!182193 () Bool)

(assert (=> b!330458 (=> (not res!182193) (not e!202818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16893 (_ BitVec 32)) Bool)

(assert (=> b!330458 (= res!182193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330459 () Bool)

(assert (=> b!330459 (= e!202816 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)) mask!3777) lt!158522))))

(declare-fun b!330460 () Bool)

(declare-fun Unit!10321 () Unit!10315)

(assert (=> b!330460 (= e!202815 Unit!10321)))

(declare-fun b!330461 () Bool)

(declare-fun res!182199 () Bool)

(assert (=> b!330461 (=> (not res!182199) (not e!202821))))

(assert (=> b!330461 (= res!182199 (and (= (select (arr!7986 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8338 a!3305))))))

(declare-fun b!330462 () Bool)

(declare-fun res!182197 () Bool)

(assert (=> b!330462 (=> (not res!182197) (not e!202818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330462 (= res!182197 (validKeyInArray!0 k!2497))))

(assert (= (and start!33238 res!182198) b!330449))

(assert (= (and b!330449 res!182195) b!330462))

(assert (= (and b!330462 res!182197) b!330450))

(assert (= (and b!330450 res!182194) b!330455))

(assert (= (and b!330455 res!182192) b!330458))

(assert (= (and b!330458 res!182193) b!330454))

(assert (= (and b!330454 res!182191) b!330461))

(assert (= (and b!330461 res!182199) b!330453))

(assert (= (and b!330453 res!182190) b!330451))

(assert (= (and b!330451 c!51772) b!330448))

(assert (= (and b!330451 (not c!51772)) b!330447))

(assert (= (and b!330448 c!51773) b!330452))

(assert (= (and b!330448 (not c!51773)) b!330457))

(assert (= (and b!330457 c!51771) b!330460))

(assert (= (and b!330457 (not c!51771)) b!330456))

(assert (= (and b!330451 (not res!182196)) b!330459))

(declare-fun m!335635 () Bool)

(assert (=> b!330455 m!335635))

(declare-fun m!335637 () Bool)

(assert (=> b!330458 m!335637))

(declare-fun m!335639 () Bool)

(assert (=> b!330462 m!335639))

(declare-fun m!335641 () Bool)

(assert (=> b!330461 m!335641))

(declare-fun m!335643 () Bool)

(assert (=> b!330457 m!335643))

(assert (=> b!330457 m!335643))

(declare-fun m!335645 () Bool)

(assert (=> b!330457 m!335645))

(declare-fun m!335647 () Bool)

(assert (=> b!330454 m!335647))

(assert (=> b!330454 m!335647))

(declare-fun m!335649 () Bool)

(assert (=> b!330454 m!335649))

(declare-fun m!335651 () Bool)

(assert (=> b!330448 m!335651))

(assert (=> b!330453 m!335651))

(declare-fun m!335653 () Bool)

(assert (=> b!330453 m!335653))

(declare-fun m!335655 () Bool)

(assert (=> start!33238 m!335655))

(declare-fun m!335657 () Bool)

(assert (=> start!33238 m!335657))

(assert (=> b!330451 m!335651))

(declare-fun m!335659 () Bool)

(assert (=> b!330450 m!335659))

(declare-fun m!335661 () Bool)

(assert (=> b!330459 m!335661))

(declare-fun m!335663 () Bool)

(assert (=> b!330459 m!335663))

(push 1)

(assert (not b!330454))

(assert (not b!330459))

(assert (not b!330450))

(assert (not b!330453))

(assert (not start!33238))

(assert (not b!330455))

(assert (not b!330457))

(assert (not b!330462))

(assert (not b!330458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!330520 () Bool)

(declare-fun lt!158545 () SeekEntryResult!3128)

(assert (=> b!330520 (and (bvsge (index!14690 lt!158545) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158545) (size!8338 a!3305)))))

(declare-fun e!202861 () Bool)

(assert (=> b!330520 (= e!202861 (= (select (arr!7986 a!3305) (index!14690 lt!158545)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330521 () Bool)

(declare-fun e!202860 () SeekEntryResult!3128)

(declare-fun e!202857 () SeekEntryResult!3128)

(assert (=> b!330521 (= e!202860 e!202857)))

(declare-fun c!51793 () Bool)

(declare-fun lt!158544 () (_ BitVec 64))

(assert (=> b!330521 (= c!51793 (or (= lt!158544 k!2497) (= (bvadd lt!158544 lt!158544) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330522 () Bool)

(declare-fun e!202859 () Bool)

(assert (=> b!330522 (= e!202859 (bvsge (x!32930 lt!158545) #b01111111111111111111111111111110))))

(declare-fun b!330523 () Bool)

(assert (=> b!330523 (and (bvsge (index!14690 lt!158545) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158545) (size!8338 a!3305)))))

(declare-fun res!182221 () Bool)

(assert (=> b!330523 (= res!182221 (= (select (arr!7986 a!3305) (index!14690 lt!158545)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330523 (=> res!182221 e!202861)))

(declare-fun d!70167 () Bool)

(assert (=> d!70167 e!202859))

(declare-fun c!51794 () Bool)

(assert (=> d!70167 (= c!51794 (and (is-Intermediate!3128 lt!158545) (undefined!3940 lt!158545)))))

(assert (=> d!70167 (= lt!158545 e!202860)))

(declare-fun c!51792 () Bool)

(assert (=> d!70167 (= c!51792 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70167 (= lt!158544 (select (arr!7986 a!3305) index!1840))))

(assert (=> d!70167 (validMask!0 mask!3777)))

(assert (=> d!70167 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158545)))

(declare-fun b!330524 () Bool)

(assert (=> b!330524 (= e!202860 (Intermediate!3128 true index!1840 x!1490))))

(declare-fun b!330525 () Bool)

(assert (=> b!330525 (= e!202857 (Intermediate!3128 false index!1840 x!1490))))

(declare-fun b!330526 () Bool)

(assert (=> b!330526 (= e!202857 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!330527 () Bool)

(assert (=> b!330527 (and (bvsge (index!14690 lt!158545) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158545) (size!8338 a!3305)))))

(declare-fun res!182222 () Bool)

(assert (=> b!330527 (= res!182222 (= (select (arr!7986 a!3305) (index!14690 lt!158545)) k!2497))))

(assert (=> b!330527 (=> res!182222 e!202861)))

(declare-fun e!202858 () Bool)

(assert (=> b!330527 (= e!202858 e!202861)))

(declare-fun b!330528 () Bool)

(assert (=> b!330528 (= e!202859 e!202858)))

(declare-fun res!182223 () Bool)

(assert (=> b!330528 (= res!182223 (and (is-Intermediate!3128 lt!158545) (not (undefined!3940 lt!158545)) (bvslt (x!32930 lt!158545) #b01111111111111111111111111111110) (bvsge (x!32930 lt!158545) #b00000000000000000000000000000000) (bvsge (x!32930 lt!158545) x!1490)))))

(assert (=> b!330528 (=> (not res!182223) (not e!202858))))

(assert (= (and d!70167 c!51792) b!330524))

(assert (= (and d!70167 (not c!51792)) b!330521))

(assert (= (and b!330521 c!51793) b!330525))

(assert (= (and b!330521 (not c!51793)) b!330526))

(assert (= (and d!70167 c!51794) b!330522))

(assert (= (and d!70167 (not c!51794)) b!330528))

(assert (= (and b!330528 res!182223) b!330527))

(assert (= (and b!330527 (not res!182222)) b!330523))

(assert (= (and b!330523 (not res!182221)) b!330520))

(assert (=> d!70167 m!335651))

(assert (=> d!70167 m!335655))

(declare-fun m!335687 () Bool)

(assert (=> b!330520 m!335687))

(assert (=> b!330526 m!335643))

(assert (=> b!330526 m!335643))

(declare-fun m!335689 () Bool)

(assert (=> b!330526 m!335689))

(assert (=> b!330523 m!335687))

(assert (=> b!330527 m!335687))

(assert (=> b!330453 d!70167))

(declare-fun bm!26159 () Bool)

(declare-fun call!26162 () Bool)

(assert (=> bm!26159 (= call!26162 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun d!70179 () Bool)

(declare-fun res!182232 () Bool)

(declare-fun e!202874 () Bool)

(assert (=> d!70179 (=> res!182232 e!202874)))

(assert (=> d!70179 (= res!182232 (bvsge #b00000000000000000000000000000000 (size!8338 a!3305)))))

(assert (=> d!70179 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202874)))

(declare-fun b!330546 () Bool)

(declare-fun e!202873 () Bool)

(assert (=> b!330546 (= e!202874 e!202873)))

(declare-fun c!51800 () Bool)

(assert (=> b!330546 (= c!51800 (validKeyInArray!0 (select (arr!7986 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!330547 () Bool)

(assert (=> b!330547 (= e!202873 call!26162)))

(declare-fun b!330548 () Bool)

(declare-fun e!202875 () Bool)

(assert (=> b!330548 (= e!202873 e!202875)))

(declare-fun lt!158557 () (_ BitVec 64))

(assert (=> b!330548 (= lt!158557 (select (arr!7986 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158556 () Unit!10315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16893 (_ BitVec 64) (_ BitVec 32)) Unit!10315)

(assert (=> b!330548 (= lt!158556 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158557 #b00000000000000000000000000000000))))

(assert (=> b!330548 (arrayContainsKey!0 a!3305 lt!158557 #b00000000000000000000000000000000)))

(declare-fun lt!158555 () Unit!10315)

(assert (=> b!330548 (= lt!158555 lt!158556)))

(declare-fun res!182231 () Bool)

(assert (=> b!330548 (= res!182231 (= (seekEntryOrOpen!0 (select (arr!7986 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3128 #b00000000000000000000000000000000)))))

(assert (=> b!330548 (=> (not res!182231) (not e!202875))))

(declare-fun b!330549 () Bool)

(assert (=> b!330549 (= e!202875 call!26162)))

(assert (= (and d!70179 (not res!182232)) b!330546))

(assert (= (and b!330546 c!51800) b!330548))

(assert (= (and b!330546 (not c!51800)) b!330547))

(assert (= (and b!330548 res!182231) b!330549))

(assert (= (or b!330549 b!330547) bm!26159))

(declare-fun m!335697 () Bool)

(assert (=> bm!26159 m!335697))

(declare-fun m!335699 () Bool)

(assert (=> b!330546 m!335699))

(assert (=> b!330546 m!335699))

(declare-fun m!335701 () Bool)

(assert (=> b!330546 m!335701))

(assert (=> b!330548 m!335699))

(declare-fun m!335703 () Bool)

(assert (=> b!330548 m!335703))

(declare-fun m!335705 () Bool)

(assert (=> b!330548 m!335705))

(assert (=> b!330548 m!335699))

(declare-fun m!335707 () Bool)

(assert (=> b!330548 m!335707))

(assert (=> b!330458 d!70179))

(declare-fun b!330550 () Bool)

(declare-fun lt!158559 () SeekEntryResult!3128)

(assert (=> b!330550 (and (bvsge (index!14690 lt!158559) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158559) (size!8338 a!3305)))))

(declare-fun e!202880 () Bool)

(assert (=> b!330550 (= e!202880 (= (select (arr!7986 a!3305) (index!14690 lt!158559)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330551 () Bool)

(declare-fun e!202879 () SeekEntryResult!3128)

(declare-fun e!202876 () SeekEntryResult!3128)

(assert (=> b!330551 (= e!202879 e!202876)))

(declare-fun c!51802 () Bool)

(declare-fun lt!158558 () (_ BitVec 64))

(assert (=> b!330551 (= c!51802 (or (= lt!158558 k!2497) (= (bvadd lt!158558 lt!158558) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330552 () Bool)

(declare-fun e!202878 () Bool)

(assert (=> b!330552 (= e!202878 (bvsge (x!32930 lt!158559) #b01111111111111111111111111111110))))

(declare-fun b!330553 () Bool)

(assert (=> b!330553 (and (bvsge (index!14690 lt!158559) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158559) (size!8338 a!3305)))))

(declare-fun res!182233 () Bool)

(assert (=> b!330553 (= res!182233 (= (select (arr!7986 a!3305) (index!14690 lt!158559)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330553 (=> res!182233 e!202880)))

(declare-fun d!70183 () Bool)

(assert (=> d!70183 e!202878))

(declare-fun c!51803 () Bool)

(assert (=> d!70183 (= c!51803 (and (is-Intermediate!3128 lt!158559) (undefined!3940 lt!158559)))))

(assert (=> d!70183 (= lt!158559 e!202879)))

(declare-fun c!51801 () Bool)

(assert (=> d!70183 (= c!51801 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(assert (=> d!70183 (= lt!158558 (select (arr!7986 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70183 (validMask!0 mask!3777)))

(assert (=> d!70183 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!158559)))

(declare-fun b!330554 () Bool)

(assert (=> b!330554 (= e!202879 (Intermediate!3128 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!330555 () Bool)

(assert (=> b!330555 (= e!202876 (Intermediate!3128 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!330556 () Bool)

(assert (=> b!330556 (= e!202876 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!330557 () Bool)

(assert (=> b!330557 (and (bvsge (index!14690 lt!158559) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158559) (size!8338 a!3305)))))

(declare-fun res!182234 () Bool)

(assert (=> b!330557 (= res!182234 (= (select (arr!7986 a!3305) (index!14690 lt!158559)) k!2497))))

(assert (=> b!330557 (=> res!182234 e!202880)))

(declare-fun e!202877 () Bool)

(assert (=> b!330557 (= e!202877 e!202880)))

(declare-fun b!330558 () Bool)

(assert (=> b!330558 (= e!202878 e!202877)))

(declare-fun res!182235 () Bool)

(assert (=> b!330558 (= res!182235 (and (is-Intermediate!3128 lt!158559) (not (undefined!3940 lt!158559)) (bvslt (x!32930 lt!158559) #b01111111111111111111111111111110) (bvsge (x!32930 lt!158559) #b00000000000000000000000000000000) (bvsge (x!32930 lt!158559) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!330558 (=> (not res!182235) (not e!202877))))

(assert (= (and d!70183 c!51801) b!330554))

(assert (= (and d!70183 (not c!51801)) b!330551))

(assert (= (and b!330551 c!51802) b!330555))

(assert (= (and b!330551 (not c!51802)) b!330556))

(assert (= (and d!70183 c!51803) b!330552))

(assert (= (and d!70183 (not c!51803)) b!330558))

(assert (= (and b!330558 res!182235) b!330557))

(assert (= (and b!330557 (not res!182234)) b!330553))

(assert (= (and b!330553 (not res!182233)) b!330550))

(assert (=> d!70183 m!335643))

(declare-fun m!335709 () Bool)

(assert (=> d!70183 m!335709))

(assert (=> d!70183 m!335655))

(declare-fun m!335711 () Bool)

(assert (=> b!330550 m!335711))

(assert (=> b!330556 m!335643))

(declare-fun m!335713 () Bool)

(assert (=> b!330556 m!335713))

(assert (=> b!330556 m!335713))

(declare-fun m!335715 () Bool)

(assert (=> b!330556 m!335715))

(assert (=> b!330553 m!335711))

(assert (=> b!330557 m!335711))

(assert (=> b!330457 d!70183))

(declare-fun d!70187 () Bool)

(declare-fun lt!158568 () (_ BitVec 32))

(assert (=> d!70187 (and (bvsge lt!158568 #b00000000000000000000000000000000) (bvslt lt!158568 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70187 (= lt!158568 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70187 (validMask!0 mask!3777)))

(assert (=> d!70187 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158568)))

(declare-fun bs!11429 () Bool)

(assert (= bs!11429 d!70187))

(declare-fun m!335717 () Bool)

(assert (=> bs!11429 m!335717))

(assert (=> bs!11429 m!335655))

(assert (=> b!330457 d!70187))

(declare-fun d!70191 () Bool)

(assert (=> d!70191 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!330462 d!70191))

(declare-fun d!70193 () Bool)

(assert (=> d!70193 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33238 d!70193))

(declare-fun d!70199 () Bool)

(assert (=> d!70199 (= (array_inv!5940 a!3305) (bvsge (size!8338 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33238 d!70199))

(declare-fun d!70201 () Bool)

(declare-fun res!182246 () Bool)

(declare-fun e!202903 () Bool)

(assert (=> d!70201 (=> res!182246 e!202903)))

(assert (=> d!70201 (= res!182246 (= (select (arr!7986 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70201 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202903)))

(declare-fun b!330593 () Bool)

(declare-fun e!202904 () Bool)

(assert (=> b!330593 (= e!202903 e!202904)))

(declare-fun res!182247 () Bool)

(assert (=> b!330593 (=> (not res!182247) (not e!202904))))

(assert (=> b!330593 (= res!182247 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8338 a!3305)))))

(declare-fun b!330594 () Bool)

(assert (=> b!330594 (= e!202904 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70201 (not res!182246)) b!330593))

(assert (= (and b!330593 res!182247) b!330594))

(assert (=> d!70201 m!335699))

(declare-fun m!335741 () Bool)

(assert (=> b!330594 m!335741))

(assert (=> b!330450 d!70201))

(declare-fun d!70203 () Bool)

(declare-fun lt!158614 () SeekEntryResult!3128)

(assert (=> d!70203 (and (or (is-Undefined!3128 lt!158614) (not (is-Found!3128 lt!158614)) (and (bvsge (index!14689 lt!158614) #b00000000000000000000000000000000) (bvslt (index!14689 lt!158614) (size!8338 a!3305)))) (or (is-Undefined!3128 lt!158614) (is-Found!3128 lt!158614) (not (is-MissingZero!3128 lt!158614)) (and (bvsge (index!14688 lt!158614) #b00000000000000000000000000000000) (bvslt (index!14688 lt!158614) (size!8338 a!3305)))) (or (is-Undefined!3128 lt!158614) (is-Found!3128 lt!158614) (is-MissingZero!3128 lt!158614) (not (is-MissingVacant!3128 lt!158614)) (and (bvsge (index!14691 lt!158614) #b00000000000000000000000000000000) (bvslt (index!14691 lt!158614) (size!8338 a!3305)))) (or (is-Undefined!3128 lt!158614) (ite (is-Found!3128 lt!158614) (= (select (arr!7986 a!3305) (index!14689 lt!158614)) k!2497) (ite (is-MissingZero!3128 lt!158614) (= (select (arr!7986 a!3305) (index!14688 lt!158614)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3128 lt!158614) (= (select (arr!7986 a!3305) (index!14691 lt!158614)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!202962 () SeekEntryResult!3128)

(assert (=> d!70203 (= lt!158614 e!202962)))

(declare-fun c!51850 () Bool)

(declare-fun lt!158616 () SeekEntryResult!3128)

(assert (=> d!70203 (= c!51850 (and (is-Intermediate!3128 lt!158616) (undefined!3940 lt!158616)))))

(assert (=> d!70203 (= lt!158616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70203 (validMask!0 mask!3777)))

(assert (=> d!70203 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158614)))

(declare-fun b!330691 () Bool)

(declare-fun c!51851 () Bool)

(declare-fun lt!158615 () (_ BitVec 64))

(assert (=> b!330691 (= c!51851 (= lt!158615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202963 () SeekEntryResult!3128)

(declare-fun e!202964 () SeekEntryResult!3128)

(assert (=> b!330691 (= e!202963 e!202964)))

(declare-fun b!330692 () Bool)

(assert (=> b!330692 (= e!202964 (MissingZero!3128 (index!14690 lt!158616)))))

(declare-fun b!330693 () Bool)

(assert (=> b!330693 (= e!202963 (Found!3128 (index!14690 lt!158616)))))

(declare-fun b!330694 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16893 (_ BitVec 32)) SeekEntryResult!3128)

(assert (=> b!330694 (= e!202964 (seekKeyOrZeroReturnVacant!0 (x!32930 lt!158616) (index!14690 lt!158616) (index!14690 lt!158616) k!2497 a!3305 mask!3777))))

(declare-fun b!330695 () Bool)

(assert (=> b!330695 (= e!202962 e!202963)))

(assert (=> b!330695 (= lt!158615 (select (arr!7986 a!3305) (index!14690 lt!158616)))))

(declare-fun c!51849 () Bool)

(assert (=> b!330695 (= c!51849 (= lt!158615 k!2497))))

(declare-fun b!330696 () Bool)

(assert (=> b!330696 (= e!202962 Undefined!3128)))

(assert (= (and d!70203 c!51850) b!330696))

(assert (= (and d!70203 (not c!51850)) b!330695))

(assert (= (and b!330695 c!51849) b!330693))

(assert (= (and b!330695 (not c!51849)) b!330691))

(assert (= (and b!330691 c!51851) b!330692))

(assert (= (and b!330691 (not c!51851)) b!330694))

(declare-fun m!335783 () Bool)

(assert (=> d!70203 m!335783))

(assert (=> d!70203 m!335647))

(assert (=> d!70203 m!335649))

(declare-fun m!335785 () Bool)

(assert (=> d!70203 m!335785))

(declare-fun m!335787 () Bool)

(assert (=> d!70203 m!335787))

(assert (=> d!70203 m!335655))

(assert (=> d!70203 m!335647))

(declare-fun m!335791 () Bool)

(assert (=> b!330694 m!335791))

(declare-fun m!335793 () Bool)

(assert (=> b!330695 m!335793))

(assert (=> b!330455 d!70203))

(declare-fun b!330706 () Bool)

(declare-fun lt!158620 () SeekEntryResult!3128)

(assert (=> b!330706 (and (bvsge (index!14690 lt!158620) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158620) (size!8338 a!3305)))))

(declare-fun e!202974 () Bool)

(assert (=> b!330706 (= e!202974 (= (select (arr!7986 a!3305) (index!14690 lt!158620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330707 () Bool)

(declare-fun e!202973 () SeekEntryResult!3128)

(declare-fun e!202970 () SeekEntryResult!3128)

(assert (=> b!330707 (= e!202973 e!202970)))

(declare-fun c!51856 () Bool)

(declare-fun lt!158619 () (_ BitVec 64))

(assert (=> b!330707 (= c!51856 (or (= lt!158619 k!2497) (= (bvadd lt!158619 lt!158619) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330708 () Bool)

(declare-fun e!202972 () Bool)

(assert (=> b!330708 (= e!202972 (bvsge (x!32930 lt!158620) #b01111111111111111111111111111110))))

(declare-fun b!330709 () Bool)

(assert (=> b!330709 (and (bvsge (index!14690 lt!158620) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158620) (size!8338 a!3305)))))

(declare-fun res!182283 () Bool)

(assert (=> b!330709 (= res!182283 (= (select (arr!7986 a!3305) (index!14690 lt!158620)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330709 (=> res!182283 e!202974)))

(declare-fun d!70223 () Bool)

(assert (=> d!70223 e!202972))

(declare-fun c!51857 () Bool)

(assert (=> d!70223 (= c!51857 (and (is-Intermediate!3128 lt!158620) (undefined!3940 lt!158620)))))

(assert (=> d!70223 (= lt!158620 e!202973)))

(declare-fun c!51855 () Bool)

(assert (=> d!70223 (= c!51855 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!70223 (= lt!158619 (select (arr!7986 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70223 (validMask!0 mask!3777)))

(assert (=> d!70223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158620)))

(declare-fun b!330710 () Bool)

(assert (=> b!330710 (= e!202973 (Intermediate!3128 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!330711 () Bool)

(assert (=> b!330711 (= e!202970 (Intermediate!3128 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!330712 () Bool)

(assert (=> b!330712 (= e!202970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!330713 () Bool)

(assert (=> b!330713 (and (bvsge (index!14690 lt!158620) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158620) (size!8338 a!3305)))))

(declare-fun res!182284 () Bool)

(assert (=> b!330713 (= res!182284 (= (select (arr!7986 a!3305) (index!14690 lt!158620)) k!2497))))

(assert (=> b!330713 (=> res!182284 e!202974)))

(declare-fun e!202971 () Bool)

(assert (=> b!330713 (= e!202971 e!202974)))

(declare-fun b!330714 () Bool)

(assert (=> b!330714 (= e!202972 e!202971)))

(declare-fun res!182285 () Bool)

(assert (=> b!330714 (= res!182285 (and (is-Intermediate!3128 lt!158620) (not (undefined!3940 lt!158620)) (bvslt (x!32930 lt!158620) #b01111111111111111111111111111110) (bvsge (x!32930 lt!158620) #b00000000000000000000000000000000) (bvsge (x!32930 lt!158620) #b00000000000000000000000000000000)))))

(assert (=> b!330714 (=> (not res!182285) (not e!202971))))

(assert (= (and d!70223 c!51855) b!330710))

(assert (= (and d!70223 (not c!51855)) b!330707))

(assert (= (and b!330707 c!51856) b!330711))

(assert (= (and b!330707 (not c!51856)) b!330712))

(assert (= (and d!70223 c!51857) b!330708))

(assert (= (and d!70223 (not c!51857)) b!330714))

(assert (= (and b!330714 res!182285) b!330713))

(assert (= (and b!330713 (not res!182284)) b!330709))

(assert (= (and b!330709 (not res!182283)) b!330706))

(assert (=> d!70223 m!335647))

(declare-fun m!335797 () Bool)

(assert (=> d!70223 m!335797))

(assert (=> d!70223 m!335655))

(declare-fun m!335801 () Bool)

(assert (=> b!330706 m!335801))

(assert (=> b!330712 m!335647))

(declare-fun m!335803 () Bool)

(assert (=> b!330712 m!335803))

(assert (=> b!330712 m!335803))

(declare-fun m!335807 () Bool)

(assert (=> b!330712 m!335807))

(assert (=> b!330709 m!335801))

(assert (=> b!330713 m!335801))

(assert (=> b!330454 d!70223))

(declare-fun d!70227 () Bool)

(declare-fun lt!158637 () (_ BitVec 32))

(declare-fun lt!158636 () (_ BitVec 32))

(assert (=> d!70227 (= lt!158637 (bvmul (bvxor lt!158636 (bvlshr lt!158636 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70227 (= lt!158636 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70227 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!182289 (let ((h!5443 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32938 (bvmul (bvxor h!5443 (bvlshr h!5443 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32938 (bvlshr x!32938 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!182289 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!182289 #b00000000000000000000000000000000))))))

(assert (=> d!70227 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158637 (bvlshr lt!158637 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!330454 d!70227))

(declare-fun b!330724 () Bool)

(declare-fun lt!158639 () SeekEntryResult!3128)

(assert (=> b!330724 (and (bvsge (index!14690 lt!158639) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158639) (size!8338 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)))))))

(declare-fun e!202984 () Bool)

(assert (=> b!330724 (= e!202984 (= (select (arr!7986 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305))) (index!14690 lt!158639)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330725 () Bool)

(declare-fun e!202983 () SeekEntryResult!3128)

(declare-fun e!202980 () SeekEntryResult!3128)

(assert (=> b!330725 (= e!202983 e!202980)))

(declare-fun c!51862 () Bool)

(declare-fun lt!158638 () (_ BitVec 64))

(assert (=> b!330725 (= c!51862 (or (= lt!158638 k!2497) (= (bvadd lt!158638 lt!158638) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330726 () Bool)

(declare-fun e!202982 () Bool)

(assert (=> b!330726 (= e!202982 (bvsge (x!32930 lt!158639) #b01111111111111111111111111111110))))

(declare-fun b!330727 () Bool)

(assert (=> b!330727 (and (bvsge (index!14690 lt!158639) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158639) (size!8338 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)))))))

(declare-fun res!182290 () Bool)

(assert (=> b!330727 (= res!182290 (= (select (arr!7986 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305))) (index!14690 lt!158639)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330727 (=> res!182290 e!202984)))

(declare-fun d!70233 () Bool)

(assert (=> d!70233 e!202982))

(declare-fun c!51863 () Bool)

(assert (=> d!70233 (= c!51863 (and (is-Intermediate!3128 lt!158639) (undefined!3940 lt!158639)))))

(assert (=> d!70233 (= lt!158639 e!202983)))

(declare-fun c!51861 () Bool)

(assert (=> d!70233 (= c!51861 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70233 (= lt!158638 (select (arr!7986 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305))) index!1840))))

(assert (=> d!70233 (validMask!0 mask!3777)))

(assert (=> d!70233 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)) mask!3777) lt!158639)))

(declare-fun b!330728 () Bool)

(assert (=> b!330728 (= e!202983 (Intermediate!3128 true index!1840 x!1490))))

(declare-fun b!330729 () Bool)

(assert (=> b!330729 (= e!202980 (Intermediate!3128 false index!1840 x!1490))))

(declare-fun b!330730 () Bool)

(assert (=> b!330730 (= e!202980 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)) mask!3777))))

(declare-fun b!330731 () Bool)

(assert (=> b!330731 (and (bvsge (index!14690 lt!158639) #b00000000000000000000000000000000) (bvslt (index!14690 lt!158639) (size!8338 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305)))))))

(declare-fun res!182291 () Bool)

(assert (=> b!330731 (= res!182291 (= (select (arr!7986 (array!16894 (store (arr!7986 a!3305) i!1250 k!2497) (size!8338 a!3305))) (index!14690 lt!158639)) k!2497))))

(assert (=> b!330731 (=> res!182291 e!202984)))

(declare-fun e!202981 () Bool)

(assert (=> b!330731 (= e!202981 e!202984)))

(declare-fun b!330732 () Bool)

(assert (=> b!330732 (= e!202982 e!202981)))

(declare-fun res!182292 () Bool)

(assert (=> b!330732 (= res!182292 (and (is-Intermediate!3128 lt!158639) (not (undefined!3940 lt!158639)) (bvslt (x!32930 lt!158639) #b01111111111111111111111111111110) (bvsge (x!32930 lt!158639) #b00000000000000000000000000000000) (bvsge (x!32930 lt!158639) x!1490)))))

(assert (=> b!330732 (=> (not res!182292) (not e!202981))))

(assert (= (and d!70233 c!51861) b!330728))

(assert (= (and d!70233 (not c!51861)) b!330725))

(assert (= (and b!330725 c!51862) b!330729))

(assert (= (and b!330725 (not c!51862)) b!330730))

(assert (= (and d!70233 c!51863) b!330726))

(assert (= (and d!70233 (not c!51863)) b!330732))

(assert (= (and b!330732 res!182292) b!330731))

(assert (= (and b!330731 (not res!182291)) b!330727))

(assert (= (and b!330727 (not res!182290)) b!330724))

