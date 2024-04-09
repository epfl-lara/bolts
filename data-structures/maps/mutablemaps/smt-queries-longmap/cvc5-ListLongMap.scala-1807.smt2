; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32604 () Bool)

(assert start!32604)

(declare-fun b!325598 () Bool)

(declare-fun res!178949 () Bool)

(declare-fun e!200646 () Bool)

(assert (=> b!325598 (=> (not res!178949) (not e!200646))))

(declare-datatypes ((array!16688 0))(
  ( (array!16689 (arr!7897 (Array (_ BitVec 32) (_ BitVec 64))) (size!8249 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16688)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16688 (_ BitVec 32)) Bool)

(assert (=> b!325598 (= res!178949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325599 () Bool)

(declare-fun res!178948 () Bool)

(declare-fun e!200644 () Bool)

(assert (=> b!325599 (=> (not res!178948) (not e!200644))))

(declare-datatypes ((SeekEntryResult!3039 0))(
  ( (MissingZero!3039 (index!14332 (_ BitVec 32))) (Found!3039 (index!14333 (_ BitVec 32))) (Intermediate!3039 (undefined!3851 Bool) (index!14334 (_ BitVec 32)) (x!32543 (_ BitVec 32))) (Undefined!3039) (MissingVacant!3039 (index!14335 (_ BitVec 32))) )
))
(declare-fun lt!157096 () SeekEntryResult!3039)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16688 (_ BitVec 32)) SeekEntryResult!3039)

(assert (=> b!325599 (= res!178948 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157096))))

(declare-fun b!325600 () Bool)

(assert (=> b!325600 (= e!200646 e!200644)))

(declare-fun res!178947 () Bool)

(assert (=> b!325600 (=> (not res!178947) (not e!200644))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325600 (= res!178947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157096))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!325600 (= lt!157096 (Intermediate!3039 false resIndex!58 resX!58))))

(declare-fun b!325601 () Bool)

(declare-fun e!200647 () Bool)

(declare-fun lt!157097 () (_ BitVec 32))

(assert (=> b!325601 (= e!200647 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157097 k!2497 a!3305 mask!3777) lt!157096)))))

(declare-fun res!178952 () Bool)

(assert (=> start!32604 (=> (not res!178952) (not e!200646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32604 (= res!178952 (validMask!0 mask!3777))))

(assert (=> start!32604 e!200646))

(declare-fun array_inv!5851 (array!16688) Bool)

(assert (=> start!32604 (array_inv!5851 a!3305)))

(assert (=> start!32604 true))

(declare-fun b!325602 () Bool)

(declare-fun res!178946 () Bool)

(assert (=> b!325602 (=> (not res!178946) (not e!200646))))

(declare-fun arrayContainsKey!0 (array!16688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325602 (= res!178946 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325603 () Bool)

(declare-fun res!178954 () Bool)

(assert (=> b!325603 (=> (not res!178954) (not e!200646))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16688 (_ BitVec 32)) SeekEntryResult!3039)

(assert (=> b!325603 (= res!178954 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3039 i!1250)))))

(declare-fun b!325604 () Bool)

(declare-fun res!178955 () Bool)

(assert (=> b!325604 (=> (not res!178955) (not e!200644))))

(assert (=> b!325604 (= res!178955 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7897 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325605 () Bool)

(assert (=> b!325605 (= e!200644 e!200647)))

(declare-fun res!178953 () Bool)

(assert (=> b!325605 (=> (not res!178953) (not e!200647))))

(assert (=> b!325605 (= res!178953 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (bvsge lt!157097 #b00000000000000000000000000000000) (bvslt lt!157097 (size!8249 a!3305))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325605 (= lt!157097 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325606 () Bool)

(declare-fun res!178956 () Bool)

(assert (=> b!325606 (=> (not res!178956) (not e!200646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325606 (= res!178956 (validKeyInArray!0 k!2497))))

(declare-fun b!325607 () Bool)

(declare-fun res!178951 () Bool)

(assert (=> b!325607 (=> (not res!178951) (not e!200646))))

(assert (=> b!325607 (= res!178951 (and (= (size!8249 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8249 a!3305))))))

(declare-fun b!325608 () Bool)

(declare-fun res!178950 () Bool)

(assert (=> b!325608 (=> (not res!178950) (not e!200644))))

(assert (=> b!325608 (= res!178950 (and (= (select (arr!7897 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8249 a!3305))))))

(assert (= (and start!32604 res!178952) b!325607))

(assert (= (and b!325607 res!178951) b!325606))

(assert (= (and b!325606 res!178956) b!325602))

(assert (= (and b!325602 res!178946) b!325603))

(assert (= (and b!325603 res!178954) b!325598))

(assert (= (and b!325598 res!178949) b!325600))

(assert (= (and b!325600 res!178947) b!325608))

(assert (= (and b!325608 res!178950) b!325599))

(assert (= (and b!325599 res!178948) b!325604))

(assert (= (and b!325604 res!178955) b!325605))

(assert (= (and b!325605 res!178953) b!325601))

(declare-fun m!332353 () Bool)

(assert (=> start!32604 m!332353))

(declare-fun m!332355 () Bool)

(assert (=> start!32604 m!332355))

(declare-fun m!332357 () Bool)

(assert (=> b!325604 m!332357))

(declare-fun m!332359 () Bool)

(assert (=> b!325601 m!332359))

(declare-fun m!332361 () Bool)

(assert (=> b!325600 m!332361))

(assert (=> b!325600 m!332361))

(declare-fun m!332363 () Bool)

(assert (=> b!325600 m!332363))

(declare-fun m!332365 () Bool)

(assert (=> b!325608 m!332365))

(declare-fun m!332367 () Bool)

(assert (=> b!325606 m!332367))

(declare-fun m!332369 () Bool)

(assert (=> b!325598 m!332369))

(declare-fun m!332371 () Bool)

(assert (=> b!325603 m!332371))

(declare-fun m!332373 () Bool)

(assert (=> b!325599 m!332373))

(declare-fun m!332375 () Bool)

(assert (=> b!325602 m!332375))

(declare-fun m!332377 () Bool)

(assert (=> b!325605 m!332377))

(push 1)

(assert (not b!325600))

(assert (not b!325598))

(assert (not b!325601))

(assert (not start!32604))

(assert (not b!325603))

(assert (not b!325605))

(assert (not b!325606))

(assert (not b!325602))

(assert (not b!325599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69579 () Bool)

(assert (=> d!69579 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32604 d!69579))

(declare-fun d!69585 () Bool)

(assert (=> d!69585 (= (array_inv!5851 a!3305) (bvsge (size!8249 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32604 d!69585))

(declare-fun e!200733 () SeekEntryResult!3039)

(declare-fun b!325774 () Bool)

(assert (=> b!325774 (= e!200733 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325775 () Bool)

(assert (=> b!325775 (= e!200733 (Intermediate!3039 false index!1840 x!1490))))

(declare-fun b!325776 () Bool)

(declare-fun e!200734 () Bool)

(declare-fun lt!157152 () SeekEntryResult!3039)

(assert (=> b!325776 (= e!200734 (bvsge (x!32543 lt!157152) #b01111111111111111111111111111110))))

(declare-fun b!325777 () Bool)

(assert (=> b!325777 (and (bvsge (index!14334 lt!157152) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157152) (size!8249 a!3305)))))

(declare-fun res!179057 () Bool)

(assert (=> b!325777 (= res!179057 (= (select (arr!7897 a!3305) (index!14334 lt!157152)) k!2497))))

(declare-fun e!200735 () Bool)

(assert (=> b!325777 (=> res!179057 e!200735)))

(declare-fun e!200731 () Bool)

(assert (=> b!325777 (= e!200731 e!200735)))

(declare-fun b!325779 () Bool)

(declare-fun e!200732 () SeekEntryResult!3039)

(assert (=> b!325779 (= e!200732 (Intermediate!3039 true index!1840 x!1490))))

(declare-fun b!325780 () Bool)

(assert (=> b!325780 (= e!200734 e!200731)))

(declare-fun res!179059 () Bool)

(assert (=> b!325780 (= res!179059 (and (is-Intermediate!3039 lt!157152) (not (undefined!3851 lt!157152)) (bvslt (x!32543 lt!157152) #b01111111111111111111111111111110) (bvsge (x!32543 lt!157152) #b00000000000000000000000000000000) (bvsge (x!32543 lt!157152) x!1490)))))

(assert (=> b!325780 (=> (not res!179059) (not e!200731))))

(declare-fun b!325778 () Bool)

(assert (=> b!325778 (and (bvsge (index!14334 lt!157152) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157152) (size!8249 a!3305)))))

(declare-fun res!179058 () Bool)

(assert (=> b!325778 (= res!179058 (= (select (arr!7897 a!3305) (index!14334 lt!157152)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325778 (=> res!179058 e!200735)))

(declare-fun d!69587 () Bool)

(assert (=> d!69587 e!200734))

(declare-fun c!50989 () Bool)

(assert (=> d!69587 (= c!50989 (and (is-Intermediate!3039 lt!157152) (undefined!3851 lt!157152)))))

(assert (=> d!69587 (= lt!157152 e!200732)))

(declare-fun c!50988 () Bool)

(assert (=> d!69587 (= c!50988 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157151 () (_ BitVec 64))

(assert (=> d!69587 (= lt!157151 (select (arr!7897 a!3305) index!1840))))

(assert (=> d!69587 (validMask!0 mask!3777)))

(assert (=> d!69587 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157152)))

(declare-fun b!325781 () Bool)

(assert (=> b!325781 (= e!200732 e!200733)))

(declare-fun c!50990 () Bool)

(assert (=> b!325781 (= c!50990 (or (= lt!157151 k!2497) (= (bvadd lt!157151 lt!157151) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325782 () Bool)

(assert (=> b!325782 (and (bvsge (index!14334 lt!157152) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157152) (size!8249 a!3305)))))

(assert (=> b!325782 (= e!200735 (= (select (arr!7897 a!3305) (index!14334 lt!157152)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69587 c!50988) b!325779))

(assert (= (and d!69587 (not c!50988)) b!325781))

(assert (= (and b!325781 c!50990) b!325775))

(assert (= (and b!325781 (not c!50990)) b!325774))

(assert (= (and d!69587 c!50989) b!325776))

(assert (= (and d!69587 (not c!50989)) b!325780))

(assert (= (and b!325780 res!179059) b!325777))

(assert (= (and b!325777 (not res!179057)) b!325778))

(assert (= (and b!325778 (not res!179058)) b!325782))

(assert (=> b!325774 m!332377))

(assert (=> b!325774 m!332377))

(declare-fun m!332477 () Bool)

(assert (=> b!325774 m!332477))

(assert (=> d!69587 m!332357))

(assert (=> d!69587 m!332353))

(declare-fun m!332479 () Bool)

(assert (=> b!325782 m!332479))

(assert (=> b!325777 m!332479))

(assert (=> b!325778 m!332479))

(assert (=> b!325599 d!69587))

(declare-fun b!325791 () Bool)

(declare-fun e!200744 () Bool)

(declare-fun e!200743 () Bool)

(assert (=> b!325791 (= e!200744 e!200743)))

(declare-fun c!50993 () Bool)

(assert (=> b!325791 (= c!50993 (validKeyInArray!0 (select (arr!7897 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!325792 () Bool)

(declare-fun call!26081 () Bool)

(assert (=> b!325792 (= e!200743 call!26081)))

(declare-fun b!325793 () Bool)

(declare-fun e!200742 () Bool)

(assert (=> b!325793 (= e!200742 call!26081)))

(declare-fun b!325794 () Bool)

(assert (=> b!325794 (= e!200743 e!200742)))

(declare-fun lt!157161 () (_ BitVec 64))

(assert (=> b!325794 (= lt!157161 (select (arr!7897 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10089 0))(
  ( (Unit!10090) )
))
(declare-fun lt!157159 () Unit!10089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16688 (_ BitVec 64) (_ BitVec 32)) Unit!10089)

(assert (=> b!325794 (= lt!157159 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157161 #b00000000000000000000000000000000))))

(assert (=> b!325794 (arrayContainsKey!0 a!3305 lt!157161 #b00000000000000000000000000000000)))

(declare-fun lt!157160 () Unit!10089)

(assert (=> b!325794 (= lt!157160 lt!157159)))

(declare-fun res!179065 () Bool)

(assert (=> b!325794 (= res!179065 (= (seekEntryOrOpen!0 (select (arr!7897 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3039 #b00000000000000000000000000000000)))))

(assert (=> b!325794 (=> (not res!179065) (not e!200742))))

(declare-fun d!69605 () Bool)

(declare-fun res!179064 () Bool)

(assert (=> d!69605 (=> res!179064 e!200744)))

(assert (=> d!69605 (= res!179064 (bvsge #b00000000000000000000000000000000 (size!8249 a!3305)))))

(assert (=> d!69605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200744)))

(declare-fun bm!26078 () Bool)

(assert (=> bm!26078 (= call!26081 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69605 (not res!179064)) b!325791))

(assert (= (and b!325791 c!50993) b!325794))

(assert (= (and b!325791 (not c!50993)) b!325792))

(assert (= (and b!325794 res!179065) b!325793))

(assert (= (or b!325793 b!325792) bm!26078))

(declare-fun m!332481 () Bool)

(assert (=> b!325791 m!332481))

(assert (=> b!325791 m!332481))

(declare-fun m!332483 () Bool)

(assert (=> b!325791 m!332483))

(assert (=> b!325794 m!332481))

(declare-fun m!332485 () Bool)

(assert (=> b!325794 m!332485))

(declare-fun m!332487 () Bool)

(assert (=> b!325794 m!332487))

(assert (=> b!325794 m!332481))

(declare-fun m!332489 () Bool)

(assert (=> b!325794 m!332489))

(declare-fun m!332491 () Bool)

(assert (=> bm!26078 m!332491))

(assert (=> b!325598 d!69605))

(declare-fun b!325866 () Bool)

(declare-fun e!200787 () SeekEntryResult!3039)

(assert (=> b!325866 (= e!200787 Undefined!3039)))

(declare-fun lt!157194 () SeekEntryResult!3039)

(declare-fun b!325867 () Bool)

(declare-fun e!200788 () SeekEntryResult!3039)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16688 (_ BitVec 32)) SeekEntryResult!3039)

(assert (=> b!325867 (= e!200788 (seekKeyOrZeroReturnVacant!0 (x!32543 lt!157194) (index!14334 lt!157194) (index!14334 lt!157194) k!2497 a!3305 mask!3777))))

(declare-fun b!325868 () Bool)

(declare-fun c!51022 () Bool)

(declare-fun lt!157193 () (_ BitVec 64))

(assert (=> b!325868 (= c!51022 (= lt!157193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200789 () SeekEntryResult!3039)

(assert (=> b!325868 (= e!200789 e!200788)))

(declare-fun d!69611 () Bool)

(declare-fun lt!157192 () SeekEntryResult!3039)

(assert (=> d!69611 (and (or (is-Undefined!3039 lt!157192) (not (is-Found!3039 lt!157192)) (and (bvsge (index!14333 lt!157192) #b00000000000000000000000000000000) (bvslt (index!14333 lt!157192) (size!8249 a!3305)))) (or (is-Undefined!3039 lt!157192) (is-Found!3039 lt!157192) (not (is-MissingZero!3039 lt!157192)) (and (bvsge (index!14332 lt!157192) #b00000000000000000000000000000000) (bvslt (index!14332 lt!157192) (size!8249 a!3305)))) (or (is-Undefined!3039 lt!157192) (is-Found!3039 lt!157192) (is-MissingZero!3039 lt!157192) (not (is-MissingVacant!3039 lt!157192)) (and (bvsge (index!14335 lt!157192) #b00000000000000000000000000000000) (bvslt (index!14335 lt!157192) (size!8249 a!3305)))) (or (is-Undefined!3039 lt!157192) (ite (is-Found!3039 lt!157192) (= (select (arr!7897 a!3305) (index!14333 lt!157192)) k!2497) (ite (is-MissingZero!3039 lt!157192) (= (select (arr!7897 a!3305) (index!14332 lt!157192)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3039 lt!157192) (= (select (arr!7897 a!3305) (index!14335 lt!157192)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69611 (= lt!157192 e!200787)))

(declare-fun c!51021 () Bool)

(assert (=> d!69611 (= c!51021 (and (is-Intermediate!3039 lt!157194) (undefined!3851 lt!157194)))))

(assert (=> d!69611 (= lt!157194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69611 (validMask!0 mask!3777)))

(assert (=> d!69611 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157192)))

(declare-fun b!325869 () Bool)

(assert (=> b!325869 (= e!200787 e!200789)))

(assert (=> b!325869 (= lt!157193 (select (arr!7897 a!3305) (index!14334 lt!157194)))))

(declare-fun c!51020 () Bool)

(assert (=> b!325869 (= c!51020 (= lt!157193 k!2497))))

(declare-fun b!325870 () Bool)

(assert (=> b!325870 (= e!200788 (MissingZero!3039 (index!14334 lt!157194)))))

(declare-fun b!325871 () Bool)

(assert (=> b!325871 (= e!200789 (Found!3039 (index!14334 lt!157194)))))

(assert (= (and d!69611 c!51021) b!325866))

(assert (= (and d!69611 (not c!51021)) b!325869))

(assert (= (and b!325869 c!51020) b!325871))

(assert (= (and b!325869 (not c!51020)) b!325868))

(assert (= (and b!325868 c!51022) b!325870))

(assert (= (and b!325868 (not c!51022)) b!325867))

(declare-fun m!332513 () Bool)

(assert (=> b!325867 m!332513))

(assert (=> d!69611 m!332353))

(declare-fun m!332515 () Bool)

(assert (=> d!69611 m!332515))

(assert (=> d!69611 m!332361))

(assert (=> d!69611 m!332363))

(assert (=> d!69611 m!332361))

(declare-fun m!332517 () Bool)

(assert (=> d!69611 m!332517))

(declare-fun m!332519 () Bool)

(assert (=> d!69611 m!332519))

(declare-fun m!332521 () Bool)

(assert (=> b!325869 m!332521))

(assert (=> b!325603 d!69611))

(declare-fun b!325872 () Bool)

(declare-fun e!200792 () SeekEntryResult!3039)

(assert (=> b!325872 (= e!200792 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 lt!157097 (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325873 () Bool)

(assert (=> b!325873 (= e!200792 (Intermediate!3039 false lt!157097 (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!325874 () Bool)

(declare-fun e!200793 () Bool)

(declare-fun lt!157196 () SeekEntryResult!3039)

(assert (=> b!325874 (= e!200793 (bvsge (x!32543 lt!157196) #b01111111111111111111111111111110))))

(declare-fun b!325875 () Bool)

(assert (=> b!325875 (and (bvsge (index!14334 lt!157196) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157196) (size!8249 a!3305)))))

(declare-fun res!179085 () Bool)

(assert (=> b!325875 (= res!179085 (= (select (arr!7897 a!3305) (index!14334 lt!157196)) k!2497))))

(declare-fun e!200794 () Bool)

(assert (=> b!325875 (=> res!179085 e!200794)))

(declare-fun e!200790 () Bool)

(assert (=> b!325875 (= e!200790 e!200794)))

(declare-fun b!325877 () Bool)

(declare-fun e!200791 () SeekEntryResult!3039)

(assert (=> b!325877 (= e!200791 (Intermediate!3039 true lt!157097 (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!325878 () Bool)

(assert (=> b!325878 (= e!200793 e!200790)))

(declare-fun res!179087 () Bool)

(assert (=> b!325878 (= res!179087 (and (is-Intermediate!3039 lt!157196) (not (undefined!3851 lt!157196)) (bvslt (x!32543 lt!157196) #b01111111111111111111111111111110) (bvsge (x!32543 lt!157196) #b00000000000000000000000000000000) (bvsge (x!32543 lt!157196) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!325878 (=> (not res!179087) (not e!200790))))

(declare-fun b!325876 () Bool)

(assert (=> b!325876 (and (bvsge (index!14334 lt!157196) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157196) (size!8249 a!3305)))))

(declare-fun res!179086 () Bool)

(assert (=> b!325876 (= res!179086 (= (select (arr!7897 a!3305) (index!14334 lt!157196)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325876 (=> res!179086 e!200794)))

(declare-fun d!69619 () Bool)

(assert (=> d!69619 e!200793))

(declare-fun c!51024 () Bool)

(assert (=> d!69619 (= c!51024 (and (is-Intermediate!3039 lt!157196) (undefined!3851 lt!157196)))))

(assert (=> d!69619 (= lt!157196 e!200791)))

(declare-fun c!51023 () Bool)

(assert (=> d!69619 (= c!51023 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!157195 () (_ BitVec 64))

(assert (=> d!69619 (= lt!157195 (select (arr!7897 a!3305) lt!157097))))

(assert (=> d!69619 (validMask!0 mask!3777)))

(assert (=> d!69619 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157097 k!2497 a!3305 mask!3777) lt!157196)))

(declare-fun b!325879 () Bool)

(assert (=> b!325879 (= e!200791 e!200792)))

(declare-fun c!51025 () Bool)

(assert (=> b!325879 (= c!51025 (or (= lt!157195 k!2497) (= (bvadd lt!157195 lt!157195) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325880 () Bool)

(assert (=> b!325880 (and (bvsge (index!14334 lt!157196) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157196) (size!8249 a!3305)))))

(assert (=> b!325880 (= e!200794 (= (select (arr!7897 a!3305) (index!14334 lt!157196)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69619 c!51023) b!325877))

(assert (= (and d!69619 (not c!51023)) b!325879))

(assert (= (and b!325879 c!51025) b!325873))

(assert (= (and b!325879 (not c!51025)) b!325872))

(assert (= (and d!69619 c!51024) b!325874))

(assert (= (and d!69619 (not c!51024)) b!325878))

(assert (= (and b!325878 res!179087) b!325875))

(assert (= (and b!325875 (not res!179085)) b!325876))

(assert (= (and b!325876 (not res!179086)) b!325880))

(declare-fun m!332523 () Bool)

(assert (=> b!325872 m!332523))

(assert (=> b!325872 m!332523))

(declare-fun m!332525 () Bool)

(assert (=> b!325872 m!332525))

(declare-fun m!332527 () Bool)

(assert (=> d!69619 m!332527))

(assert (=> d!69619 m!332353))

(declare-fun m!332529 () Bool)

(assert (=> b!325880 m!332529))

(assert (=> b!325875 m!332529))

(assert (=> b!325876 m!332529))

(assert (=> b!325601 d!69619))

(declare-fun d!69621 () Bool)

(declare-fun res!179097 () Bool)

(declare-fun e!200807 () Bool)

(assert (=> d!69621 (=> res!179097 e!200807)))

(assert (=> d!69621 (= res!179097 (= (select (arr!7897 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69621 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!200807)))

(declare-fun b!325898 () Bool)

(declare-fun e!200808 () Bool)

(assert (=> b!325898 (= e!200807 e!200808)))

(declare-fun res!179098 () Bool)

(assert (=> b!325898 (=> (not res!179098) (not e!200808))))

(assert (=> b!325898 (= res!179098 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8249 a!3305)))))

(declare-fun b!325899 () Bool)

(assert (=> b!325899 (= e!200808 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69621 (not res!179097)) b!325898))

(assert (= (and b!325898 res!179098) b!325899))

(assert (=> d!69621 m!332481))

(declare-fun m!332549 () Bool)

(assert (=> b!325899 m!332549))

(assert (=> b!325602 d!69621))

(declare-fun e!200811 () SeekEntryResult!3039)

(declare-fun b!325900 () Bool)

(assert (=> b!325900 (= e!200811 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325901 () Bool)

(assert (=> b!325901 (= e!200811 (Intermediate!3039 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325902 () Bool)

(declare-fun e!200812 () Bool)

(declare-fun lt!157203 () SeekEntryResult!3039)

(assert (=> b!325902 (= e!200812 (bvsge (x!32543 lt!157203) #b01111111111111111111111111111110))))

(declare-fun b!325903 () Bool)

(assert (=> b!325903 (and (bvsge (index!14334 lt!157203) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157203) (size!8249 a!3305)))))

(declare-fun res!179099 () Bool)

(assert (=> b!325903 (= res!179099 (= (select (arr!7897 a!3305) (index!14334 lt!157203)) k!2497))))

(declare-fun e!200813 () Bool)

(assert (=> b!325903 (=> res!179099 e!200813)))

(declare-fun e!200809 () Bool)

(assert (=> b!325903 (= e!200809 e!200813)))

(declare-fun b!325905 () Bool)

(declare-fun e!200810 () SeekEntryResult!3039)

(assert (=> b!325905 (= e!200810 (Intermediate!3039 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325906 () Bool)

(assert (=> b!325906 (= e!200812 e!200809)))

(declare-fun res!179101 () Bool)

(assert (=> b!325906 (= res!179101 (and (is-Intermediate!3039 lt!157203) (not (undefined!3851 lt!157203)) (bvslt (x!32543 lt!157203) #b01111111111111111111111111111110) (bvsge (x!32543 lt!157203) #b00000000000000000000000000000000) (bvsge (x!32543 lt!157203) #b00000000000000000000000000000000)))))

(assert (=> b!325906 (=> (not res!179101) (not e!200809))))

(declare-fun b!325904 () Bool)

(assert (=> b!325904 (and (bvsge (index!14334 lt!157203) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157203) (size!8249 a!3305)))))

(declare-fun res!179100 () Bool)

(assert (=> b!325904 (= res!179100 (= (select (arr!7897 a!3305) (index!14334 lt!157203)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325904 (=> res!179100 e!200813)))

(declare-fun d!69627 () Bool)

(assert (=> d!69627 e!200812))

(declare-fun c!51031 () Bool)

(assert (=> d!69627 (= c!51031 (and (is-Intermediate!3039 lt!157203) (undefined!3851 lt!157203)))))

(assert (=> d!69627 (= lt!157203 e!200810)))

(declare-fun c!51030 () Bool)

(assert (=> d!69627 (= c!51030 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157202 () (_ BitVec 64))

(assert (=> d!69627 (= lt!157202 (select (arr!7897 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69627 (validMask!0 mask!3777)))

(assert (=> d!69627 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157203)))

(declare-fun b!325907 () Bool)

(assert (=> b!325907 (= e!200810 e!200811)))

(declare-fun c!51032 () Bool)

(assert (=> b!325907 (= c!51032 (or (= lt!157202 k!2497) (= (bvadd lt!157202 lt!157202) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325908 () Bool)

(assert (=> b!325908 (and (bvsge (index!14334 lt!157203) #b00000000000000000000000000000000) (bvslt (index!14334 lt!157203) (size!8249 a!3305)))))

(assert (=> b!325908 (= e!200813 (= (select (arr!7897 a!3305) (index!14334 lt!157203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69627 c!51030) b!325905))

(assert (= (and d!69627 (not c!51030)) b!325907))

(assert (= (and b!325907 c!51032) b!325901))

(assert (= (and b!325907 (not c!51032)) b!325900))

(assert (= (and d!69627 c!51031) b!325902))

(assert (= (and d!69627 (not c!51031)) b!325906))

(assert (= (and b!325906 res!179101) b!325903))

(assert (= (and b!325903 (not res!179099)) b!325904))

(assert (= (and b!325904 (not res!179100)) b!325908))

(assert (=> b!325900 m!332361))

(declare-fun m!332551 () Bool)

(assert (=> b!325900 m!332551))

(assert (=> b!325900 m!332551))

(declare-fun m!332554 () Bool)

(assert (=> b!325900 m!332554))

(assert (=> d!69627 m!332361))

(declare-fun m!332557 () Bool)

(assert (=> d!69627 m!332557))

(assert (=> d!69627 m!332353))

(declare-fun m!332561 () Bool)

(assert (=> b!325908 m!332561))

(assert (=> b!325903 m!332561))

(assert (=> b!325904 m!332561))

(assert (=> b!325600 d!69627))

(declare-fun d!69631 () Bool)

(declare-fun lt!157217 () (_ BitVec 32))

(declare-fun lt!157216 () (_ BitVec 32))

(assert (=> d!69631 (= lt!157217 (bvmul (bvxor lt!157216 (bvlshr lt!157216 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69631 (= lt!157216 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69631 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!179105 (let ((h!5415 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32552 (bvmul (bvxor h!5415 (bvlshr h!5415 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32552 (bvlshr x!32552 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!179105 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!179105 #b00000000000000000000000000000000))))))

(assert (=> d!69631 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157217 (bvlshr lt!157217 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!325600 d!69631))

(declare-fun d!69637 () Bool)

(declare-fun lt!157220 () (_ BitVec 32))

(assert (=> d!69637 (and (bvsge lt!157220 #b00000000000000000000000000000000) (bvslt lt!157220 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69637 (= lt!157220 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69637 (validMask!0 mask!3777)))

(assert (=> d!69637 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157220)))

(declare-fun bs!11331 () Bool)

(assert (= bs!11331 d!69637))

(declare-fun m!332567 () Bool)

(assert (=> bs!11331 m!332567))

(assert (=> bs!11331 m!332353))

(assert (=> b!325605 d!69637))

(declare-fun d!69639 () Bool)

(assert (=> d!69639 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!325606 d!69639))

(push 1)

