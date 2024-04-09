; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33154 () Bool)

(assert start!33154)

(declare-fun b!329488 () Bool)

(declare-fun res!181660 () Bool)

(declare-fun e!202387 () Bool)

(assert (=> b!329488 (=> (not res!181660) (not e!202387))))

(declare-datatypes ((array!16860 0))(
  ( (array!16861 (arr!7971 (Array (_ BitVec 32) (_ BitVec 64))) (size!8323 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16860)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16860 (_ BitVec 32)) Bool)

(assert (=> b!329488 (= res!181660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329489 () Bool)

(declare-fun e!202385 () Bool)

(assert (=> b!329489 (= e!202385 true)))

(declare-datatypes ((Unit!10213 0))(
  ( (Unit!10214) )
))
(declare-fun lt!158266 () Unit!10213)

(declare-fun e!202386 () Unit!10213)

(assert (=> b!329489 (= lt!158266 e!202386)))

(declare-fun c!51557 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3113 0))(
  ( (MissingZero!3113 (index!14628 (_ BitVec 32))) (Found!3113 (index!14629 (_ BitVec 32))) (Intermediate!3113 (undefined!3925 Bool) (index!14630 (_ BitVec 32)) (x!32866 (_ BitVec 32))) (Undefined!3113) (MissingVacant!3113 (index!14631 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16860 (_ BitVec 32)) SeekEntryResult!3113)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329489 (= c!51557 (is-Intermediate!3113 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun b!329491 () Bool)

(declare-fun res!181662 () Bool)

(assert (=> b!329491 (=> (not res!181662) (not e!202387))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16860 (_ BitVec 32)) SeekEntryResult!3113)

(assert (=> b!329491 (= res!181662 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3113 i!1250)))))

(declare-fun b!329492 () Bool)

(declare-fun Unit!10215 () Unit!10213)

(assert (=> b!329492 (= e!202386 Unit!10215)))

(assert (=> b!329492 false))

(declare-fun b!329493 () Bool)

(declare-fun Unit!10216 () Unit!10213)

(assert (=> b!329493 (= e!202386 Unit!10216)))

(declare-fun b!329494 () Bool)

(declare-fun res!181665 () Bool)

(assert (=> b!329494 (=> (not res!181665) (not e!202385))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!329494 (= res!181665 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7971 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7971 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7971 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!329495 () Bool)

(declare-fun res!181664 () Bool)

(assert (=> b!329495 (=> (not res!181664) (not e!202387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329495 (= res!181664 (validKeyInArray!0 k!2497))))

(declare-fun b!329496 () Bool)

(declare-fun res!181663 () Bool)

(assert (=> b!329496 (=> (not res!181663) (not e!202387))))

(declare-fun arrayContainsKey!0 (array!16860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329496 (= res!181663 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329497 () Bool)

(declare-fun res!181657 () Bool)

(assert (=> b!329497 (=> (not res!181657) (not e!202385))))

(declare-fun lt!158267 () SeekEntryResult!3113)

(assert (=> b!329497 (= res!181657 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158267))))

(declare-fun b!329490 () Bool)

(assert (=> b!329490 (= e!202387 e!202385)))

(declare-fun res!181659 () Bool)

(assert (=> b!329490 (=> (not res!181659) (not e!202385))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329490 (= res!181659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158267))))

(assert (=> b!329490 (= lt!158267 (Intermediate!3113 false resIndex!58 resX!58))))

(declare-fun res!181656 () Bool)

(assert (=> start!33154 (=> (not res!181656) (not e!202387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33154 (= res!181656 (validMask!0 mask!3777))))

(assert (=> start!33154 e!202387))

(declare-fun array_inv!5925 (array!16860) Bool)

(assert (=> start!33154 (array_inv!5925 a!3305)))

(assert (=> start!33154 true))

(declare-fun b!329498 () Bool)

(declare-fun res!181658 () Bool)

(assert (=> b!329498 (=> (not res!181658) (not e!202385))))

(assert (=> b!329498 (= res!181658 (and (= (select (arr!7971 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8323 a!3305))))))

(declare-fun b!329499 () Bool)

(declare-fun res!181661 () Bool)

(assert (=> b!329499 (=> (not res!181661) (not e!202387))))

(assert (=> b!329499 (= res!181661 (and (= (size!8323 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8323 a!3305))))))

(assert (= (and start!33154 res!181656) b!329499))

(assert (= (and b!329499 res!181661) b!329495))

(assert (= (and b!329495 res!181664) b!329496))

(assert (= (and b!329496 res!181663) b!329491))

(assert (= (and b!329491 res!181662) b!329488))

(assert (= (and b!329488 res!181660) b!329490))

(assert (= (and b!329490 res!181659) b!329498))

(assert (= (and b!329498 res!181658) b!329497))

(assert (= (and b!329497 res!181657) b!329494))

(assert (= (and b!329494 res!181665) b!329489))

(assert (= (and b!329489 c!51557) b!329493))

(assert (= (and b!329489 (not c!51557)) b!329492))

(declare-fun m!335099 () Bool)

(assert (=> b!329498 m!335099))

(declare-fun m!335101 () Bool)

(assert (=> b!329497 m!335101))

(declare-fun m!335103 () Bool)

(assert (=> b!329494 m!335103))

(declare-fun m!335105 () Bool)

(assert (=> b!329488 m!335105))

(declare-fun m!335107 () Bool)

(assert (=> b!329489 m!335107))

(assert (=> b!329489 m!335107))

(declare-fun m!335109 () Bool)

(assert (=> b!329489 m!335109))

(declare-fun m!335111 () Bool)

(assert (=> b!329491 m!335111))

(declare-fun m!335113 () Bool)

(assert (=> b!329490 m!335113))

(assert (=> b!329490 m!335113))

(declare-fun m!335115 () Bool)

(assert (=> b!329490 m!335115))

(declare-fun m!335117 () Bool)

(assert (=> b!329496 m!335117))

(declare-fun m!335119 () Bool)

(assert (=> b!329495 m!335119))

(declare-fun m!335121 () Bool)

(assert (=> start!33154 m!335121))

(declare-fun m!335123 () Bool)

(assert (=> start!33154 m!335123))

(push 1)

(assert (not b!329488))

(assert (not b!329489))

(assert (not b!329490))

(assert (not b!329491))

(assert (not b!329496))

(assert (not b!329497))

(assert (not b!329495))

(assert (not start!33154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!329563 () Bool)

(declare-fun e!202432 () SeekEntryResult!3113)

(assert (=> b!329563 (= e!202432 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70093 () Bool)

(declare-fun e!202430 () Bool)

(assert (=> d!70093 e!202430))

(declare-fun c!51578 () Bool)

(declare-fun lt!158290 () SeekEntryResult!3113)

(assert (=> d!70093 (= c!51578 (and (is-Intermediate!3113 lt!158290) (undefined!3925 lt!158290)))))

(declare-fun e!202429 () SeekEntryResult!3113)

(assert (=> d!70093 (= lt!158290 e!202429)))

(declare-fun c!51576 () Bool)

(assert (=> d!70093 (= c!51576 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158291 () (_ BitVec 64))

(assert (=> d!70093 (= lt!158291 (select (arr!7971 a!3305) index!1840))))

(assert (=> d!70093 (validMask!0 mask!3777)))

(assert (=> d!70093 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158290)))

(declare-fun b!329564 () Bool)

(assert (=> b!329564 (and (bvsge (index!14630 lt!158290) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158290) (size!8323 a!3305)))))

(declare-fun e!202431 () Bool)

(assert (=> b!329564 (= e!202431 (= (select (arr!7971 a!3305) (index!14630 lt!158290)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329565 () Bool)

(assert (=> b!329565 (= e!202432 (Intermediate!3113 false index!1840 x!1490))))

(declare-fun b!329566 () Bool)

(assert (=> b!329566 (= e!202429 e!202432)))

(declare-fun c!51577 () Bool)

(assert (=> b!329566 (= c!51577 (or (= lt!158291 k!2497) (= (bvadd lt!158291 lt!158291) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329567 () Bool)

(assert (=> b!329567 (and (bvsge (index!14630 lt!158290) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158290) (size!8323 a!3305)))))

(declare-fun res!181695 () Bool)

(assert (=> b!329567 (= res!181695 (= (select (arr!7971 a!3305) (index!14630 lt!158290)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329567 (=> res!181695 e!202431)))

(declare-fun b!329568 () Bool)

(assert (=> b!329568 (and (bvsge (index!14630 lt!158290) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158290) (size!8323 a!3305)))))

(declare-fun res!181694 () Bool)

(assert (=> b!329568 (= res!181694 (= (select (arr!7971 a!3305) (index!14630 lt!158290)) k!2497))))

(assert (=> b!329568 (=> res!181694 e!202431)))

(declare-fun e!202428 () Bool)

(assert (=> b!329568 (= e!202428 e!202431)))

(declare-fun b!329569 () Bool)

(assert (=> b!329569 (= e!202430 e!202428)))

(declare-fun res!181693 () Bool)

(assert (=> b!329569 (= res!181693 (and (is-Intermediate!3113 lt!158290) (not (undefined!3925 lt!158290)) (bvslt (x!32866 lt!158290) #b01111111111111111111111111111110) (bvsge (x!32866 lt!158290) #b00000000000000000000000000000000) (bvsge (x!32866 lt!158290) x!1490)))))

(assert (=> b!329569 (=> (not res!181693) (not e!202428))))

(declare-fun b!329570 () Bool)

(assert (=> b!329570 (= e!202429 (Intermediate!3113 true index!1840 x!1490))))

(declare-fun b!329571 () Bool)

(assert (=> b!329571 (= e!202430 (bvsge (x!32866 lt!158290) #b01111111111111111111111111111110))))

(assert (= (and d!70093 c!51576) b!329570))

(assert (= (and d!70093 (not c!51576)) b!329566))

(assert (= (and b!329566 c!51577) b!329565))

(assert (= (and b!329566 (not c!51577)) b!329563))

(assert (= (and d!70093 c!51578) b!329571))

(assert (= (and d!70093 (not c!51578)) b!329569))

(assert (= (and b!329569 res!181693) b!329568))

(assert (= (and b!329568 (not res!181694)) b!329567))

(assert (= (and b!329567 (not res!181695)) b!329564))

(declare-fun m!335149 () Bool)

(assert (=> b!329564 m!335149))

(assert (=> b!329563 m!335107))

(assert (=> b!329563 m!335107))

(declare-fun m!335151 () Bool)

(assert (=> b!329563 m!335151))

(assert (=> b!329568 m!335149))

(assert (=> d!70093 m!335103))

(assert (=> d!70093 m!335121))

(assert (=> b!329567 m!335149))

(assert (=> b!329497 d!70093))

(declare-fun b!329645 () Bool)

(declare-fun e!202475 () SeekEntryResult!3113)

(assert (=> b!329645 (= e!202475 Undefined!3113)))

(declare-fun b!329646 () Bool)

(declare-fun e!202474 () SeekEntryResult!3113)

(declare-fun lt!158326 () SeekEntryResult!3113)

(assert (=> b!329646 (= e!202474 (MissingZero!3113 (index!14630 lt!158326)))))

(declare-fun b!329647 () Bool)

(declare-fun e!202476 () SeekEntryResult!3113)

(assert (=> b!329647 (= e!202476 (Found!3113 (index!14630 lt!158326)))))

(declare-fun b!329648 () Bool)

(declare-fun c!51606 () Bool)

(declare-fun lt!158325 () (_ BitVec 64))

(assert (=> b!329648 (= c!51606 (= lt!158325 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329648 (= e!202476 e!202474)))

(declare-fun b!329649 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16860 (_ BitVec 32)) SeekEntryResult!3113)

(assert (=> b!329649 (= e!202474 (seekKeyOrZeroReturnVacant!0 (x!32866 lt!158326) (index!14630 lt!158326) (index!14630 lt!158326) k!2497 a!3305 mask!3777))))

(declare-fun d!70103 () Bool)

(declare-fun lt!158324 () SeekEntryResult!3113)

(assert (=> d!70103 (and (or (is-Undefined!3113 lt!158324) (not (is-Found!3113 lt!158324)) (and (bvsge (index!14629 lt!158324) #b00000000000000000000000000000000) (bvslt (index!14629 lt!158324) (size!8323 a!3305)))) (or (is-Undefined!3113 lt!158324) (is-Found!3113 lt!158324) (not (is-MissingZero!3113 lt!158324)) (and (bvsge (index!14628 lt!158324) #b00000000000000000000000000000000) (bvslt (index!14628 lt!158324) (size!8323 a!3305)))) (or (is-Undefined!3113 lt!158324) (is-Found!3113 lt!158324) (is-MissingZero!3113 lt!158324) (not (is-MissingVacant!3113 lt!158324)) (and (bvsge (index!14631 lt!158324) #b00000000000000000000000000000000) (bvslt (index!14631 lt!158324) (size!8323 a!3305)))) (or (is-Undefined!3113 lt!158324) (ite (is-Found!3113 lt!158324) (= (select (arr!7971 a!3305) (index!14629 lt!158324)) k!2497) (ite (is-MissingZero!3113 lt!158324) (= (select (arr!7971 a!3305) (index!14628 lt!158324)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3113 lt!158324) (= (select (arr!7971 a!3305) (index!14631 lt!158324)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70103 (= lt!158324 e!202475)))

(declare-fun c!51608 () Bool)

(assert (=> d!70103 (= c!51608 (and (is-Intermediate!3113 lt!158326) (undefined!3925 lt!158326)))))

(assert (=> d!70103 (= lt!158326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70103 (validMask!0 mask!3777)))

(assert (=> d!70103 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158324)))

(declare-fun b!329644 () Bool)

(assert (=> b!329644 (= e!202475 e!202476)))

(assert (=> b!329644 (= lt!158325 (select (arr!7971 a!3305) (index!14630 lt!158326)))))

(declare-fun c!51607 () Bool)

(assert (=> b!329644 (= c!51607 (= lt!158325 k!2497))))

(assert (= (and d!70103 c!51608) b!329645))

(assert (= (and d!70103 (not c!51608)) b!329644))

(assert (= (and b!329644 c!51607) b!329647))

(assert (= (and b!329644 (not c!51607)) b!329648))

(assert (= (and b!329648 c!51606) b!329646))

(assert (= (and b!329648 (not c!51606)) b!329649))

(declare-fun m!335185 () Bool)

(assert (=> b!329649 m!335185))

(assert (=> d!70103 m!335121))

(declare-fun m!335187 () Bool)

(assert (=> d!70103 m!335187))

(assert (=> d!70103 m!335113))

(declare-fun m!335189 () Bool)

(assert (=> d!70103 m!335189))

(declare-fun m!335191 () Bool)

(assert (=> d!70103 m!335191))

(assert (=> d!70103 m!335113))

(assert (=> d!70103 m!335115))

(declare-fun m!335193 () Bool)

(assert (=> b!329644 m!335193))

(assert (=> b!329491 d!70103))

(declare-fun d!70119 () Bool)

(declare-fun res!181719 () Bool)

(declare-fun e!202481 () Bool)

(assert (=> d!70119 (=> res!181719 e!202481)))

(assert (=> d!70119 (= res!181719 (= (select (arr!7971 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70119 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202481)))

(declare-fun b!329654 () Bool)

(declare-fun e!202482 () Bool)

(assert (=> b!329654 (= e!202481 e!202482)))

(declare-fun res!181720 () Bool)

(assert (=> b!329654 (=> (not res!181720) (not e!202482))))

(assert (=> b!329654 (= res!181720 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8323 a!3305)))))

(declare-fun b!329655 () Bool)

(assert (=> b!329655 (= e!202482 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70119 (not res!181719)) b!329654))

(assert (= (and b!329654 res!181720) b!329655))

(declare-fun m!335195 () Bool)

(assert (=> d!70119 m!335195))

(declare-fun m!335197 () Bool)

(assert (=> b!329655 m!335197))

(assert (=> b!329496 d!70119))

(declare-fun d!70125 () Bool)

(assert (=> d!70125 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33154 d!70125))

(declare-fun d!70129 () Bool)

(assert (=> d!70129 (= (array_inv!5925 a!3305) (bvsge (size!8323 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33154 d!70129))

(declare-fun e!202506 () SeekEntryResult!3113)

(declare-fun b!329686 () Bool)

(assert (=> b!329686 (= e!202506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70133 () Bool)

(declare-fun e!202504 () Bool)

(assert (=> d!70133 e!202504))

(declare-fun c!51620 () Bool)

(declare-fun lt!158340 () SeekEntryResult!3113)

(assert (=> d!70133 (= c!51620 (and (is-Intermediate!3113 lt!158340) (undefined!3925 lt!158340)))))

(declare-fun e!202503 () SeekEntryResult!3113)

(assert (=> d!70133 (= lt!158340 e!202503)))

(declare-fun c!51618 () Bool)

(assert (=> d!70133 (= c!51618 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!158341 () (_ BitVec 64))

(assert (=> d!70133 (= lt!158341 (select (arr!7971 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70133 (validMask!0 mask!3777)))

(assert (=> d!70133 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!158340)))

(declare-fun b!329687 () Bool)

(assert (=> b!329687 (and (bvsge (index!14630 lt!158340) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158340) (size!8323 a!3305)))))

(declare-fun e!202505 () Bool)

(assert (=> b!329687 (= e!202505 (= (select (arr!7971 a!3305) (index!14630 lt!158340)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329688 () Bool)

(assert (=> b!329688 (= e!202506 (Intermediate!3113 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329689 () Bool)

(assert (=> b!329689 (= e!202503 e!202506)))

(declare-fun c!51619 () Bool)

(assert (=> b!329689 (= c!51619 (or (= lt!158341 k!2497) (= (bvadd lt!158341 lt!158341) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329690 () Bool)

(assert (=> b!329690 (and (bvsge (index!14630 lt!158340) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158340) (size!8323 a!3305)))))

(declare-fun res!181735 () Bool)

(assert (=> b!329690 (= res!181735 (= (select (arr!7971 a!3305) (index!14630 lt!158340)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329690 (=> res!181735 e!202505)))

(declare-fun b!329691 () Bool)

(assert (=> b!329691 (and (bvsge (index!14630 lt!158340) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158340) (size!8323 a!3305)))))

(declare-fun res!181734 () Bool)

(assert (=> b!329691 (= res!181734 (= (select (arr!7971 a!3305) (index!14630 lt!158340)) k!2497))))

(assert (=> b!329691 (=> res!181734 e!202505)))

(declare-fun e!202502 () Bool)

(assert (=> b!329691 (= e!202502 e!202505)))

(declare-fun b!329692 () Bool)

(assert (=> b!329692 (= e!202504 e!202502)))

(declare-fun res!181733 () Bool)

(assert (=> b!329692 (= res!181733 (and (is-Intermediate!3113 lt!158340) (not (undefined!3925 lt!158340)) (bvslt (x!32866 lt!158340) #b01111111111111111111111111111110) (bvsge (x!32866 lt!158340) #b00000000000000000000000000000000) (bvsge (x!32866 lt!158340) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329692 (=> (not res!181733) (not e!202502))))

(declare-fun b!329693 () Bool)

(assert (=> b!329693 (= e!202503 (Intermediate!3113 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329694 () Bool)

(assert (=> b!329694 (= e!202504 (bvsge (x!32866 lt!158340) #b01111111111111111111111111111110))))

(assert (= (and d!70133 c!51618) b!329693))

(assert (= (and d!70133 (not c!51618)) b!329689))

(assert (= (and b!329689 c!51619) b!329688))

(assert (= (and b!329689 (not c!51619)) b!329686))

(assert (= (and d!70133 c!51620) b!329694))

(assert (= (and d!70133 (not c!51620)) b!329692))

(assert (= (and b!329692 res!181733) b!329691))

(assert (= (and b!329691 (not res!181734)) b!329690))

(assert (= (and b!329690 (not res!181735)) b!329687))

(declare-fun m!335221 () Bool)

(assert (=> b!329687 m!335221))

(assert (=> b!329686 m!335107))

(declare-fun m!335223 () Bool)

(assert (=> b!329686 m!335223))

(assert (=> b!329686 m!335223))

(declare-fun m!335225 () Bool)

(assert (=> b!329686 m!335225))

(assert (=> b!329691 m!335221))

(assert (=> d!70133 m!335107))

(declare-fun m!335227 () Bool)

(assert (=> d!70133 m!335227))

(assert (=> d!70133 m!335121))

(assert (=> b!329690 m!335221))

(assert (=> b!329489 d!70133))

(declare-fun d!70137 () Bool)

(declare-fun lt!158350 () (_ BitVec 32))

(assert (=> d!70137 (and (bvsge lt!158350 #b00000000000000000000000000000000) (bvslt lt!158350 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70137 (= lt!158350 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70137 (validMask!0 mask!3777)))

(assert (=> d!70137 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158350)))

(declare-fun bs!11412 () Bool)

(assert (= bs!11412 d!70137))

(declare-fun m!335229 () Bool)

(assert (=> bs!11412 m!335229))

(assert (=> bs!11412 m!335121))

(assert (=> b!329489 d!70137))

(declare-fun b!329730 () Bool)

(declare-fun e!202527 () Bool)

(declare-fun call!26156 () Bool)

(assert (=> b!329730 (= e!202527 call!26156)))

(declare-fun b!329731 () Bool)

(declare-fun e!202529 () Bool)

(assert (=> b!329731 (= e!202527 e!202529)))

(declare-fun lt!158370 () (_ BitVec 64))

(assert (=> b!329731 (= lt!158370 (select (arr!7971 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158369 () Unit!10213)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16860 (_ BitVec 64) (_ BitVec 32)) Unit!10213)

(assert (=> b!329731 (= lt!158369 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158370 #b00000000000000000000000000000000))))

(assert (=> b!329731 (arrayContainsKey!0 a!3305 lt!158370 #b00000000000000000000000000000000)))

(declare-fun lt!158368 () Unit!10213)

(assert (=> b!329731 (= lt!158368 lt!158369)))

(declare-fun res!181744 () Bool)

(assert (=> b!329731 (= res!181744 (= (seekEntryOrOpen!0 (select (arr!7971 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3113 #b00000000000000000000000000000000)))))

(assert (=> b!329731 (=> (not res!181744) (not e!202529))))

(declare-fun bm!26153 () Bool)

(assert (=> bm!26153 (= call!26156 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!329732 () Bool)

(assert (=> b!329732 (= e!202529 call!26156)))

(declare-fun d!70139 () Bool)

(declare-fun res!181745 () Bool)

(declare-fun e!202528 () Bool)

(assert (=> d!70139 (=> res!181745 e!202528)))

(assert (=> d!70139 (= res!181745 (bvsge #b00000000000000000000000000000000 (size!8323 a!3305)))))

(assert (=> d!70139 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202528)))

(declare-fun b!329733 () Bool)

(assert (=> b!329733 (= e!202528 e!202527)))

(declare-fun c!51635 () Bool)

(assert (=> b!329733 (= c!51635 (validKeyInArray!0 (select (arr!7971 a!3305) #b00000000000000000000000000000000)))))

(assert (= (and d!70139 (not res!181745)) b!329733))

(assert (= (and b!329733 c!51635) b!329731))

(assert (= (and b!329733 (not c!51635)) b!329730))

(assert (= (and b!329731 res!181744) b!329732))

(assert (= (or b!329732 b!329730) bm!26153))

(assert (=> b!329731 m!335195))

(declare-fun m!335245 () Bool)

(assert (=> b!329731 m!335245))

(declare-fun m!335247 () Bool)

(assert (=> b!329731 m!335247))

(assert (=> b!329731 m!335195))

(declare-fun m!335249 () Bool)

(assert (=> b!329731 m!335249))

(declare-fun m!335251 () Bool)

(assert (=> bm!26153 m!335251))

(assert (=> b!329733 m!335195))

(assert (=> b!329733 m!335195))

(declare-fun m!335253 () Bool)

(assert (=> b!329733 m!335253))

(assert (=> b!329488 d!70139))

(declare-fun e!202534 () SeekEntryResult!3113)

(declare-fun b!329734 () Bool)

(assert (=> b!329734 (= e!202534 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70145 () Bool)

(declare-fun e!202532 () Bool)

(assert (=> d!70145 e!202532))

(declare-fun c!51638 () Bool)

(declare-fun lt!158371 () SeekEntryResult!3113)

(assert (=> d!70145 (= c!51638 (and (is-Intermediate!3113 lt!158371) (undefined!3925 lt!158371)))))

(declare-fun e!202531 () SeekEntryResult!3113)

(assert (=> d!70145 (= lt!158371 e!202531)))

(declare-fun c!51636 () Bool)

(assert (=> d!70145 (= c!51636 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158372 () (_ BitVec 64))

(assert (=> d!70145 (= lt!158372 (select (arr!7971 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70145 (validMask!0 mask!3777)))

(assert (=> d!70145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158371)))

(declare-fun b!329735 () Bool)

(assert (=> b!329735 (and (bvsge (index!14630 lt!158371) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158371) (size!8323 a!3305)))))

(declare-fun e!202533 () Bool)

(assert (=> b!329735 (= e!202533 (= (select (arr!7971 a!3305) (index!14630 lt!158371)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329736 () Bool)

(assert (=> b!329736 (= e!202534 (Intermediate!3113 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329737 () Bool)

(assert (=> b!329737 (= e!202531 e!202534)))

(declare-fun c!51637 () Bool)

(assert (=> b!329737 (= c!51637 (or (= lt!158372 k!2497) (= (bvadd lt!158372 lt!158372) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329738 () Bool)

(assert (=> b!329738 (and (bvsge (index!14630 lt!158371) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158371) (size!8323 a!3305)))))

(declare-fun res!181748 () Bool)

(assert (=> b!329738 (= res!181748 (= (select (arr!7971 a!3305) (index!14630 lt!158371)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329738 (=> res!181748 e!202533)))

(declare-fun b!329739 () Bool)

(assert (=> b!329739 (and (bvsge (index!14630 lt!158371) #b00000000000000000000000000000000) (bvslt (index!14630 lt!158371) (size!8323 a!3305)))))

(declare-fun res!181747 () Bool)

(assert (=> b!329739 (= res!181747 (= (select (arr!7971 a!3305) (index!14630 lt!158371)) k!2497))))

(assert (=> b!329739 (=> res!181747 e!202533)))

(declare-fun e!202530 () Bool)

(assert (=> b!329739 (= e!202530 e!202533)))

(declare-fun b!329740 () Bool)

(assert (=> b!329740 (= e!202532 e!202530)))

(declare-fun res!181746 () Bool)

(assert (=> b!329740 (= res!181746 (and (is-Intermediate!3113 lt!158371) (not (undefined!3925 lt!158371)) (bvslt (x!32866 lt!158371) #b01111111111111111111111111111110) (bvsge (x!32866 lt!158371) #b00000000000000000000000000000000) (bvsge (x!32866 lt!158371) #b00000000000000000000000000000000)))))

(assert (=> b!329740 (=> (not res!181746) (not e!202530))))

(declare-fun b!329741 () Bool)

(assert (=> b!329741 (= e!202531 (Intermediate!3113 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329742 () Bool)

(assert (=> b!329742 (= e!202532 (bvsge (x!32866 lt!158371) #b01111111111111111111111111111110))))

(assert (= (and d!70145 c!51636) b!329741))

(assert (= (and d!70145 (not c!51636)) b!329737))

(assert (= (and b!329737 c!51637) b!329736))

(assert (= (and b!329737 (not c!51637)) b!329734))

(assert (= (and d!70145 c!51638) b!329742))

(assert (= (and d!70145 (not c!51638)) b!329740))

(assert (= (and b!329740 res!181746) b!329739))

(assert (= (and b!329739 (not res!181747)) b!329738))

(assert (= (and b!329738 (not res!181748)) b!329735))

(declare-fun m!335255 () Bool)

(assert (=> b!329735 m!335255))

(assert (=> b!329734 m!335113))

(declare-fun m!335257 () Bool)

(assert (=> b!329734 m!335257))

(assert (=> b!329734 m!335257))

(declare-fun m!335259 () Bool)

(assert (=> b!329734 m!335259))

(assert (=> b!329739 m!335255))

(assert (=> d!70145 m!335113))

(declare-fun m!335261 () Bool)

(assert (=> d!70145 m!335261))

(assert (=> d!70145 m!335121))

(assert (=> b!329738 m!335255))

(assert (=> b!329490 d!70145))

(declare-fun d!70147 () Bool)

(declare-fun lt!158378 () (_ BitVec 32))

(declare-fun lt!158377 () (_ BitVec 32))

(assert (=> d!70147 (= lt!158378 (bvmul (bvxor lt!158377 (bvlshr lt!158377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70147 (= lt!158377 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70147 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181749 (let ((h!5440 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32875 (bvmul (bvxor h!5440 (bvlshr h!5440 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32875 (bvlshr x!32875 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181749 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181749 #b00000000000000000000000000000000))))))

(assert (=> d!70147 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158378 (bvlshr lt!158378 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329490 d!70147))

(declare-fun d!70149 () Bool)

(assert (=> d!70149 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329495 d!70149))

(push 1)

(assert (not d!70133))

(assert (not d!70145))

(assert (not b!329655))

(assert (not b!329649))

(assert (not d!70137))

(assert (not b!329731))

(assert (not b!329563))

(assert (not d!70103))

(assert (not d!70093))

(assert (not b!329686))

(assert (not b!329733))

(assert (not bm!26153))

(assert (not b!329734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

