; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32794 () Bool)

(assert start!32794)

(declare-fun b!327367 () Bool)

(declare-fun res!180423 () Bool)

(declare-fun e!201326 () Bool)

(assert (=> b!327367 (=> (not res!180423) (not e!201326))))

(declare-datatypes ((array!16782 0))(
  ( (array!16783 (arr!7941 (Array (_ BitVec 32) (_ BitVec 64))) (size!8293 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16782)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!327367 (= res!180423 (and (= (select (arr!7941 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8293 a!3305))))))

(declare-fun b!327368 () Bool)

(declare-fun res!180418 () Bool)

(declare-fun e!201327 () Bool)

(assert (=> b!327368 (=> (not res!180418) (not e!201327))))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!327368 (= res!180418 (and (= (size!8293 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8293 a!3305))))))

(declare-fun b!327369 () Bool)

(declare-fun res!180416 () Bool)

(assert (=> b!327369 (=> (not res!180416) (not e!201327))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3083 0))(
  ( (MissingZero!3083 (index!14508 (_ BitVec 32))) (Found!3083 (index!14509 (_ BitVec 32))) (Intermediate!3083 (undefined!3895 Bool) (index!14510 (_ BitVec 32)) (x!32714 (_ BitVec 32))) (Undefined!3083) (MissingVacant!3083 (index!14511 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16782 (_ BitVec 32)) SeekEntryResult!3083)

(assert (=> b!327369 (= res!180416 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3083 i!1250)))))

(declare-fun b!327370 () Bool)

(declare-fun res!180415 () Bool)

(assert (=> b!327370 (=> (not res!180415) (not e!201326))))

(declare-fun lt!157550 () SeekEntryResult!3083)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16782 (_ BitVec 32)) SeekEntryResult!3083)

(assert (=> b!327370 (= res!180415 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157550))))

(declare-fun b!327371 () Bool)

(assert (=> b!327371 (= e!201327 e!201326)))

(declare-fun res!180420 () Bool)

(assert (=> b!327371 (=> (not res!180420) (not e!201326))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327371 (= res!180420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157550))))

(assert (=> b!327371 (= lt!157550 (Intermediate!3083 false resIndex!58 resX!58))))

(declare-fun b!327372 () Bool)

(assert (=> b!327372 (= e!201326 (and (bvslt resX!58 #b01111111111111111111111111111110) (= (select (arr!7941 a!3305) index!1840) k!2497)))))

(declare-fun b!327373 () Bool)

(declare-fun res!180422 () Bool)

(assert (=> b!327373 (=> (not res!180422) (not e!201327))))

(declare-fun arrayContainsKey!0 (array!16782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327373 (= res!180422 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327374 () Bool)

(declare-fun res!180419 () Bool)

(assert (=> b!327374 (=> (not res!180419) (not e!201327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327374 (= res!180419 (validKeyInArray!0 k!2497))))

(declare-fun res!180417 () Bool)

(assert (=> start!32794 (=> (not res!180417) (not e!201327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32794 (= res!180417 (validMask!0 mask!3777))))

(assert (=> start!32794 e!201327))

(declare-fun array_inv!5895 (array!16782) Bool)

(assert (=> start!32794 (array_inv!5895 a!3305)))

(assert (=> start!32794 true))

(declare-fun b!327375 () Bool)

(declare-fun res!180421 () Bool)

(assert (=> b!327375 (=> (not res!180421) (not e!201327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16782 (_ BitVec 32)) Bool)

(assert (=> b!327375 (= res!180421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32794 res!180417) b!327368))

(assert (= (and b!327368 res!180418) b!327374))

(assert (= (and b!327374 res!180419) b!327373))

(assert (= (and b!327373 res!180422) b!327369))

(assert (= (and b!327369 res!180416) b!327375))

(assert (= (and b!327375 res!180421) b!327371))

(assert (= (and b!327371 res!180420) b!327367))

(assert (= (and b!327367 res!180423) b!327370))

(assert (= (and b!327370 res!180415) b!327372))

(declare-fun m!333729 () Bool)

(assert (=> b!327367 m!333729))

(declare-fun m!333731 () Bool)

(assert (=> b!327373 m!333731))

(declare-fun m!333733 () Bool)

(assert (=> start!32794 m!333733))

(declare-fun m!333735 () Bool)

(assert (=> start!32794 m!333735))

(declare-fun m!333737 () Bool)

(assert (=> b!327372 m!333737))

(declare-fun m!333739 () Bool)

(assert (=> b!327370 m!333739))

(declare-fun m!333741 () Bool)

(assert (=> b!327375 m!333741))

(declare-fun m!333743 () Bool)

(assert (=> b!327374 m!333743))

(declare-fun m!333745 () Bool)

(assert (=> b!327369 m!333745))

(declare-fun m!333747 () Bool)

(assert (=> b!327371 m!333747))

(assert (=> b!327371 m!333747))

(declare-fun m!333749 () Bool)

(assert (=> b!327371 m!333749))

(push 1)

(assert (not b!327369))

(assert (not start!32794))

(assert (not b!327373))

(assert (not b!327375))

(assert (not b!327370))

(assert (not b!327371))

(assert (not b!327374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69731 () Bool)

(assert (=> d!69731 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327374 d!69731))

(declare-fun b!327454 () Bool)

(declare-fun e!201376 () SeekEntryResult!3083)

(declare-fun lt!157586 () SeekEntryResult!3083)

(assert (=> b!327454 (= e!201376 (Found!3083 (index!14510 lt!157586)))))

(declare-fun b!327455 () Bool)

(declare-fun c!51137 () Bool)

(declare-fun lt!157584 () (_ BitVec 64))

(assert (=> b!327455 (= c!51137 (= lt!157584 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201375 () SeekEntryResult!3083)

(assert (=> b!327455 (= e!201376 e!201375)))

(declare-fun b!327456 () Bool)

(declare-fun e!201374 () SeekEntryResult!3083)

(assert (=> b!327456 (= e!201374 Undefined!3083)))

(declare-fun b!327457 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16782 (_ BitVec 32)) SeekEntryResult!3083)

(assert (=> b!327457 (= e!201375 (seekKeyOrZeroReturnVacant!0 (x!32714 lt!157586) (index!14510 lt!157586) (index!14510 lt!157586) k!2497 a!3305 mask!3777))))

(declare-fun d!69733 () Bool)

(declare-fun lt!157585 () SeekEntryResult!3083)

(assert (=> d!69733 (and (or (is-Undefined!3083 lt!157585) (not (is-Found!3083 lt!157585)) (and (bvsge (index!14509 lt!157585) #b00000000000000000000000000000000) (bvslt (index!14509 lt!157585) (size!8293 a!3305)))) (or (is-Undefined!3083 lt!157585) (is-Found!3083 lt!157585) (not (is-MissingZero!3083 lt!157585)) (and (bvsge (index!14508 lt!157585) #b00000000000000000000000000000000) (bvslt (index!14508 lt!157585) (size!8293 a!3305)))) (or (is-Undefined!3083 lt!157585) (is-Found!3083 lt!157585) (is-MissingZero!3083 lt!157585) (not (is-MissingVacant!3083 lt!157585)) (and (bvsge (index!14511 lt!157585) #b00000000000000000000000000000000) (bvslt (index!14511 lt!157585) (size!8293 a!3305)))) (or (is-Undefined!3083 lt!157585) (ite (is-Found!3083 lt!157585) (= (select (arr!7941 a!3305) (index!14509 lt!157585)) k!2497) (ite (is-MissingZero!3083 lt!157585) (= (select (arr!7941 a!3305) (index!14508 lt!157585)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3083 lt!157585) (= (select (arr!7941 a!3305) (index!14511 lt!157585)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69733 (= lt!157585 e!201374)))

(declare-fun c!51136 () Bool)

(assert (=> d!69733 (= c!51136 (and (is-Intermediate!3083 lt!157586) (undefined!3895 lt!157586)))))

(assert (=> d!69733 (= lt!157586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69733 (validMask!0 mask!3777)))

(assert (=> d!69733 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157585)))

(declare-fun b!327458 () Bool)

(assert (=> b!327458 (= e!201374 e!201376)))

(assert (=> b!327458 (= lt!157584 (select (arr!7941 a!3305) (index!14510 lt!157586)))))

(declare-fun c!51135 () Bool)

(assert (=> b!327458 (= c!51135 (= lt!157584 k!2497))))

(declare-fun b!327459 () Bool)

(assert (=> b!327459 (= e!201375 (MissingZero!3083 (index!14510 lt!157586)))))

(assert (= (and d!69733 c!51136) b!327456))

(assert (= (and d!69733 (not c!51136)) b!327458))

(assert (= (and b!327458 c!51135) b!327454))

(assert (= (and b!327458 (not c!51135)) b!327455))

(assert (= (and b!327455 c!51137) b!327459))

(assert (= (and b!327455 (not c!51137)) b!327457))

(declare-fun m!333777 () Bool)

(assert (=> b!327457 m!333777))

(declare-fun m!333779 () Bool)

(assert (=> d!69733 m!333779))

(assert (=> d!69733 m!333747))

(assert (=> d!69733 m!333749))

(declare-fun m!333781 () Bool)

(assert (=> d!69733 m!333781))

(declare-fun m!333783 () Bool)

(assert (=> d!69733 m!333783))

(assert (=> d!69733 m!333747))

(assert (=> d!69733 m!333733))

(declare-fun m!333785 () Bool)

(assert (=> b!327458 m!333785))

(assert (=> b!327369 d!69733))

(declare-fun d!69741 () Bool)

(assert (=> d!69741 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32794 d!69741))

(declare-fun d!69751 () Bool)

(assert (=> d!69751 (= (array_inv!5895 a!3305) (bvsge (size!8293 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32794 d!69751))

(declare-fun d!69753 () Bool)

(declare-fun res!180463 () Bool)

(declare-fun e!201392 () Bool)

(assert (=> d!69753 (=> res!180463 e!201392)))

(assert (=> d!69753 (= res!180463 (= (select (arr!7941 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69753 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201392)))

(declare-fun b!327479 () Bool)

(declare-fun e!201393 () Bool)

(assert (=> b!327479 (= e!201392 e!201393)))

(declare-fun res!180464 () Bool)

(assert (=> b!327479 (=> (not res!180464) (not e!201393))))

(assert (=> b!327479 (= res!180464 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8293 a!3305)))))

(declare-fun b!327480 () Bool)

(assert (=> b!327480 (= e!201393 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69753 (not res!180463)) b!327479))

(assert (= (and b!327479 res!180464) b!327480))

(declare-fun m!333797 () Bool)

(assert (=> d!69753 m!333797))

(declare-fun m!333799 () Bool)

(assert (=> b!327480 m!333799))

(assert (=> b!327373 d!69753))

(declare-fun b!327539 () Bool)

(declare-fun e!201430 () Bool)

(declare-fun lt!157618 () SeekEntryResult!3083)

(assert (=> b!327539 (= e!201430 (bvsge (x!32714 lt!157618) #b01111111111111111111111111111110))))

(declare-fun b!327540 () Bool)

(assert (=> b!327540 (and (bvsge (index!14510 lt!157618) #b00000000000000000000000000000000) (bvslt (index!14510 lt!157618) (size!8293 a!3305)))))

(declare-fun res!180477 () Bool)

(assert (=> b!327540 (= res!180477 (= (select (arr!7941 a!3305) (index!14510 lt!157618)) k!2497))))

(declare-fun e!201427 () Bool)

(assert (=> b!327540 (=> res!180477 e!201427)))

(declare-fun e!201428 () Bool)

(assert (=> b!327540 (= e!201428 e!201427)))

(declare-fun d!69757 () Bool)

(assert (=> d!69757 e!201430))

(declare-fun c!51166 () Bool)

(assert (=> d!69757 (= c!51166 (and (is-Intermediate!3083 lt!157618) (undefined!3895 lt!157618)))))

(declare-fun e!201429 () SeekEntryResult!3083)

(assert (=> d!69757 (= lt!157618 e!201429)))

(declare-fun c!51167 () Bool)

(assert (=> d!69757 (= c!51167 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157617 () (_ BitVec 64))

(assert (=> d!69757 (= lt!157617 (select (arr!7941 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69757 (validMask!0 mask!3777)))

(assert (=> d!69757 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157618)))

(declare-fun b!327541 () Bool)

(declare-fun e!201426 () SeekEntryResult!3083)

(assert (=> b!327541 (= e!201429 e!201426)))

(declare-fun c!51165 () Bool)

(assert (=> b!327541 (= c!51165 (or (= lt!157617 k!2497) (= (bvadd lt!157617 lt!157617) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327542 () Bool)

(assert (=> b!327542 (= e!201426 (Intermediate!3083 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327543 () Bool)

(assert (=> b!327543 (= e!201430 e!201428)))

(declare-fun res!180476 () Bool)

(assert (=> b!327543 (= res!180476 (and (is-Intermediate!3083 lt!157618) (not (undefined!3895 lt!157618)) (bvslt (x!32714 lt!157618) #b01111111111111111111111111111110) (bvsge (x!32714 lt!157618) #b00000000000000000000000000000000) (bvsge (x!32714 lt!157618) #b00000000000000000000000000000000)))))

(assert (=> b!327543 (=> (not res!180476) (not e!201428))))

(declare-fun b!327544 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327544 (= e!201426 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327545 () Bool)

(assert (=> b!327545 (and (bvsge (index!14510 lt!157618) #b00000000000000000000000000000000) (bvslt (index!14510 lt!157618) (size!8293 a!3305)))))

(assert (=> b!327545 (= e!201427 (= (select (arr!7941 a!3305) (index!14510 lt!157618)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327546 () Bool)

(assert (=> b!327546 (= e!201429 (Intermediate!3083 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327547 () Bool)

(assert (=> b!327547 (and (bvsge (index!14510 lt!157618) #b00000000000000000000000000000000) (bvslt (index!14510 lt!157618) (size!8293 a!3305)))))

(declare-fun res!180475 () Bool)

(assert (=> b!327547 (= res!180475 (= (select (arr!7941 a!3305) (index!14510 lt!157618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327547 (=> res!180475 e!201427)))

(assert (= (and d!69757 c!51167) b!327546))

(assert (= (and d!69757 (not c!51167)) b!327541))

(assert (= (and b!327541 c!51165) b!327542))

(assert (= (and b!327541 (not c!51165)) b!327544))

(assert (= (and d!69757 c!51166) b!327539))

(assert (= (and d!69757 (not c!51166)) b!327543))

(assert (= (and b!327543 res!180476) b!327540))

(assert (= (and b!327540 (not res!180477)) b!327547))

(assert (= (and b!327547 (not res!180475)) b!327545))

(declare-fun m!333825 () Bool)

(assert (=> b!327540 m!333825))

(assert (=> b!327544 m!333747))

(declare-fun m!333827 () Bool)

(assert (=> b!327544 m!333827))

(assert (=> b!327544 m!333827))

(declare-fun m!333829 () Bool)

(assert (=> b!327544 m!333829))

(assert (=> b!327547 m!333825))

(assert (=> b!327545 m!333825))

(assert (=> d!69757 m!333747))

(declare-fun m!333831 () Bool)

(assert (=> d!69757 m!333831))

(assert (=> d!69757 m!333733))

(assert (=> b!327371 d!69757))

(declare-fun d!69771 () Bool)

(declare-fun lt!157630 () (_ BitVec 32))

(declare-fun lt!157629 () (_ BitVec 32))

(assert (=> d!69771 (= lt!157630 (bvmul (bvxor lt!157629 (bvlshr lt!157629 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69771 (= lt!157629 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69771 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180480 (let ((h!5422 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32720 (bvmul (bvxor h!5422 (bvlshr h!5422 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32720 (bvlshr x!32720 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180480 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180480 #b00000000000000000000000000000000))))))

(assert (=> d!69771 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157630 (bvlshr lt!157630 #b00000000000000000000000000001101)) mask!3777))))

