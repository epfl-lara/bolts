; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32164 () Bool)

(assert start!32164)

(declare-fun b!320277 () Bool)

(declare-fun res!174678 () Bool)

(declare-fun e!198715 () Bool)

(assert (=> b!320277 (=> (not res!174678) (not e!198715))))

(declare-datatypes ((array!16395 0))(
  ( (array!16396 (arr!7755 (Array (_ BitVec 32) (_ BitVec 64))) (size!8107 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16395)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16395 (_ BitVec 32)) Bool)

(assert (=> b!320277 (= res!174678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320278 () Bool)

(declare-fun res!174683 () Bool)

(assert (=> b!320278 (=> (not res!174683) (not e!198715))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320278 (= res!174683 (and (= (size!8107 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8107 a!3305))))))

(declare-fun res!174682 () Bool)

(assert (=> start!32164 (=> (not res!174682) (not e!198715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32164 (= res!174682 (validMask!0 mask!3777))))

(assert (=> start!32164 e!198715))

(declare-fun array_inv!5709 (array!16395) Bool)

(assert (=> start!32164 (array_inv!5709 a!3305)))

(assert (=> start!32164 true))

(declare-fun b!320279 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320279 (= e!198715 (and (= (select (arr!7755 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8107 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!320280 () Bool)

(declare-fun res!174684 () Bool)

(assert (=> b!320280 (=> (not res!174684) (not e!198715))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320280 (= res!174684 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320281 () Bool)

(declare-fun res!174680 () Bool)

(assert (=> b!320281 (=> (not res!174680) (not e!198715))))

(declare-datatypes ((SeekEntryResult!2897 0))(
  ( (MissingZero!2897 (index!13764 (_ BitVec 32))) (Found!2897 (index!13765 (_ BitVec 32))) (Intermediate!2897 (undefined!3709 Bool) (index!13766 (_ BitVec 32)) (x!31993 (_ BitVec 32))) (Undefined!2897) (MissingVacant!2897 (index!13767 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16395 (_ BitVec 32)) SeekEntryResult!2897)

(assert (=> b!320281 (= res!174680 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2897 i!1250)))))

(declare-fun b!320282 () Bool)

(declare-fun res!174679 () Bool)

(assert (=> b!320282 (=> (not res!174679) (not e!198715))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16395 (_ BitVec 32)) SeekEntryResult!2897)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320282 (= res!174679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2897 false resIndex!58 resX!58)))))

(declare-fun b!320283 () Bool)

(declare-fun res!174681 () Bool)

(assert (=> b!320283 (=> (not res!174681) (not e!198715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320283 (= res!174681 (validKeyInArray!0 k!2497))))

(assert (= (and start!32164 res!174682) b!320278))

(assert (= (and b!320278 res!174683) b!320283))

(assert (= (and b!320283 res!174681) b!320280))

(assert (= (and b!320280 res!174684) b!320281))

(assert (= (and b!320281 res!174680) b!320277))

(assert (= (and b!320277 res!174678) b!320282))

(assert (= (and b!320282 res!174679) b!320279))

(declare-fun m!328693 () Bool)

(assert (=> start!32164 m!328693))

(declare-fun m!328695 () Bool)

(assert (=> start!32164 m!328695))

(declare-fun m!328697 () Bool)

(assert (=> b!320281 m!328697))

(declare-fun m!328699 () Bool)

(assert (=> b!320277 m!328699))

(declare-fun m!328701 () Bool)

(assert (=> b!320279 m!328701))

(declare-fun m!328703 () Bool)

(assert (=> b!320283 m!328703))

(declare-fun m!328705 () Bool)

(assert (=> b!320282 m!328705))

(assert (=> b!320282 m!328705))

(declare-fun m!328707 () Bool)

(assert (=> b!320282 m!328707))

(declare-fun m!328709 () Bool)

(assert (=> b!320280 m!328709))

(push 1)

(assert (not start!32164))

(assert (not b!320280))

(assert (not b!320281))

(assert (not b!320282))

(assert (not b!320277))

(assert (not b!320283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!320356 () Bool)

(declare-fun lt!156001 () SeekEntryResult!2897)

(assert (=> b!320356 (and (bvsge (index!13766 lt!156001) #b00000000000000000000000000000000) (bvslt (index!13766 lt!156001) (size!8107 a!3305)))))

(declare-fun e!198764 () Bool)

(assert (=> b!320356 (= e!198764 (= (select (arr!7755 a!3305) (index!13766 lt!156001)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!320357 () Bool)

(declare-fun e!198763 () SeekEntryResult!2897)

(assert (=> b!320357 (= e!198763 (Intermediate!2897 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320358 () Bool)

(assert (=> b!320358 (and (bvsge (index!13766 lt!156001) #b00000000000000000000000000000000) (bvslt (index!13766 lt!156001) (size!8107 a!3305)))))

(declare-fun res!174711 () Bool)

(assert (=> b!320358 (= res!174711 (= (select (arr!7755 a!3305) (index!13766 lt!156001)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!320358 (=> res!174711 e!198764)))

(declare-fun b!320359 () Bool)

(declare-fun e!198766 () SeekEntryResult!2897)

(assert (=> b!320359 (= e!198766 (Intermediate!2897 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320360 () Bool)

(assert (=> b!320360 (and (bvsge (index!13766 lt!156001) #b00000000000000000000000000000000) (bvslt (index!13766 lt!156001) (size!8107 a!3305)))))

(declare-fun res!174710 () Bool)

(assert (=> b!320360 (= res!174710 (= (select (arr!7755 a!3305) (index!13766 lt!156001)) k!2497))))

(assert (=> b!320360 (=> res!174710 e!198764)))

(declare-fun e!198765 () Bool)

(assert (=> b!320360 (= e!198765 e!198764)))

(declare-fun b!320361 () Bool)

(assert (=> b!320361 (= e!198763 e!198766)))

(declare-fun c!50450 () Bool)

(declare-fun lt!156002 () (_ BitVec 64))

(assert (=> b!320361 (= c!50450 (or (= lt!156002 k!2497) (= (bvadd lt!156002 lt!156002) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!320362 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320362 (= e!198766 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320363 () Bool)

(declare-fun e!198762 () Bool)

(assert (=> b!320363 (= e!198762 (bvsge (x!31993 lt!156001) #b01111111111111111111111111111110))))

(declare-fun b!320364 () Bool)

(assert (=> b!320364 (= e!198762 e!198765)))

(declare-fun res!174709 () Bool)

(assert (=> b!320364 (= res!174709 (and (is-Intermediate!2897 lt!156001) (not (undefined!3709 lt!156001)) (bvslt (x!31993 lt!156001) #b01111111111111111111111111111110) (bvsge (x!31993 lt!156001) #b00000000000000000000000000000000) (bvsge (x!31993 lt!156001) #b00000000000000000000000000000000)))))

(assert (=> b!320364 (=> (not res!174709) (not e!198765))))

(declare-fun d!69319 () Bool)

(assert (=> d!69319 e!198762))

(declare-fun c!50449 () Bool)

(assert (=> d!69319 (= c!50449 (and (is-Intermediate!2897 lt!156001) (undefined!3709 lt!156001)))))

(assert (=> d!69319 (= lt!156001 e!198763)))

(declare-fun c!50448 () Bool)

(assert (=> d!69319 (= c!50448 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69319 (= lt!156002 (select (arr!7755 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69319 (validMask!0 mask!3777)))

(assert (=> d!69319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156001)))

(assert (= (and d!69319 c!50448) b!320357))

(assert (= (and d!69319 (not c!50448)) b!320361))

(assert (= (and b!320361 c!50450) b!320359))

(assert (= (and b!320361 (not c!50450)) b!320362))

(assert (= (and d!69319 c!50449) b!320363))

(assert (= (and d!69319 (not c!50449)) b!320364))

(assert (= (and b!320364 res!174709) b!320360))

(assert (= (and b!320360 (not res!174710)) b!320358))

(assert (= (and b!320358 (not res!174711)) b!320356))

(declare-fun m!328739 () Bool)

(assert (=> b!320358 m!328739))

(assert (=> d!69319 m!328705))

(declare-fun m!328741 () Bool)

(assert (=> d!69319 m!328741))

(assert (=> d!69319 m!328693))

(assert (=> b!320360 m!328739))

(assert (=> b!320362 m!328705))

(declare-fun m!328743 () Bool)

(assert (=> b!320362 m!328743))

(assert (=> b!320362 m!328743))

(declare-fun m!328745 () Bool)

(assert (=> b!320362 m!328745))

(assert (=> b!320356 m!328739))

(assert (=> b!320282 d!69319))

(declare-fun d!69327 () Bool)

(declare-fun lt!156011 () (_ BitVec 32))

(declare-fun lt!156010 () (_ BitVec 32))

(assert (=> d!69327 (= lt!156011 (bvmul (bvxor lt!156010 (bvlshr lt!156010 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69327 (= lt!156010 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69327 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174712 (let ((h!5405 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31995 (bvmul (bvxor h!5405 (bvlshr h!5405 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31995 (bvlshr x!31995 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174712 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174712 #b00000000000000000000000000000000))))))

(assert (=> d!69327 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!156011 (bvlshr lt!156011 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!320282 d!69327))

(declare-fun b!320379 () Bool)

(declare-fun e!198777 () Bool)

(declare-fun e!198778 () Bool)

(assert (=> b!320379 (= e!198777 e!198778)))

(declare-fun c!50456 () Bool)

(assert (=> b!320379 (= c!50456 (validKeyInArray!0 (select (arr!7755 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69333 () Bool)

(declare-fun res!174718 () Bool)

(assert (=> d!69333 (=> res!174718 e!198777)))

(assert (=> d!69333 (= res!174718 (bvsge #b00000000000000000000000000000000 (size!8107 a!3305)))))

(assert (=> d!69333 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198777)))

(declare-fun bm!26051 () Bool)

(declare-fun call!26054 () Bool)

(assert (=> bm!26051 (= call!26054 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!320380 () Bool)

(assert (=> b!320380 (= e!198778 call!26054)))

(declare-fun b!320381 () Bool)

(declare-fun e!198776 () Bool)

(assert (=> b!320381 (= e!198776 call!26054)))

(declare-fun b!320382 () Bool)

(assert (=> b!320382 (= e!198778 e!198776)))

(declare-fun lt!156020 () (_ BitVec 64))

(assert (=> b!320382 (= lt!156020 (select (arr!7755 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9819 0))(
  ( (Unit!9820) )
))
(declare-fun lt!156018 () Unit!9819)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16395 (_ BitVec 64) (_ BitVec 32)) Unit!9819)

(assert (=> b!320382 (= lt!156018 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!156020 #b00000000000000000000000000000000))))

(assert (=> b!320382 (arrayContainsKey!0 a!3305 lt!156020 #b00000000000000000000000000000000)))

(declare-fun lt!156019 () Unit!9819)

(assert (=> b!320382 (= lt!156019 lt!156018)))

(declare-fun res!174717 () Bool)

(assert (=> b!320382 (= res!174717 (= (seekEntryOrOpen!0 (select (arr!7755 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2897 #b00000000000000000000000000000000)))))

(assert (=> b!320382 (=> (not res!174717) (not e!198776))))

(assert (= (and d!69333 (not res!174718)) b!320379))

(assert (= (and b!320379 c!50456) b!320382))

(assert (= (and b!320379 (not c!50456)) b!320380))

(assert (= (and b!320382 res!174717) b!320381))

(assert (= (or b!320381 b!320380) bm!26051))

(declare-fun m!328757 () Bool)

(assert (=> b!320379 m!328757))

(assert (=> b!320379 m!328757))

(declare-fun m!328759 () Bool)

(assert (=> b!320379 m!328759))

(declare-fun m!328761 () Bool)

(assert (=> bm!26051 m!328761))

(assert (=> b!320382 m!328757))

(declare-fun m!328763 () Bool)

(assert (=> b!320382 m!328763))

(declare-fun m!328765 () Bool)

(assert (=> b!320382 m!328765))

(assert (=> b!320382 m!328757))

(declare-fun m!328767 () Bool)

(assert (=> b!320382 m!328767))

(assert (=> b!320277 d!69333))

(declare-fun b!320450 () Bool)

(declare-fun c!50481 () Bool)

(declare-fun lt!156045 () (_ BitVec 64))

(assert (=> b!320450 (= c!50481 (= lt!156045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!198816 () SeekEntryResult!2897)

(declare-fun e!198817 () SeekEntryResult!2897)

(assert (=> b!320450 (= e!198816 e!198817)))

(declare-fun b!320451 () Bool)

(declare-fun lt!156046 () SeekEntryResult!2897)

(assert (=> b!320451 (= e!198817 (MissingZero!2897 (index!13766 lt!156046)))))

(declare-fun b!320452 () Bool)

(declare-fun e!198815 () SeekEntryResult!2897)

(assert (=> b!320452 (= e!198815 e!198816)))

(assert (=> b!320452 (= lt!156045 (select (arr!7755 a!3305) (index!13766 lt!156046)))))

(declare-fun c!50482 () Bool)

(assert (=> b!320452 (= c!50482 (= lt!156045 k!2497))))

(declare-fun b!320453 () Bool)

(assert (=> b!320453 (= e!198815 Undefined!2897)))

(declare-fun b!320454 () Bool)

(assert (=> b!320454 (= e!198816 (Found!2897 (index!13766 lt!156046)))))

(declare-fun d!69339 () Bool)

(declare-fun lt!156047 () SeekEntryResult!2897)

(assert (=> d!69339 (and (or (is-Undefined!2897 lt!156047) (not (is-Found!2897 lt!156047)) (and (bvsge (index!13765 lt!156047) #b00000000000000000000000000000000) (bvslt (index!13765 lt!156047) (size!8107 a!3305)))) (or (is-Undefined!2897 lt!156047) (is-Found!2897 lt!156047) (not (is-MissingZero!2897 lt!156047)) (and (bvsge (index!13764 lt!156047) #b00000000000000000000000000000000) (bvslt (index!13764 lt!156047) (size!8107 a!3305)))) (or (is-Undefined!2897 lt!156047) (is-Found!2897 lt!156047) (is-MissingZero!2897 lt!156047) (not (is-MissingVacant!2897 lt!156047)) (and (bvsge (index!13767 lt!156047) #b00000000000000000000000000000000) (bvslt (index!13767 lt!156047) (size!8107 a!3305)))) (or (is-Undefined!2897 lt!156047) (ite (is-Found!2897 lt!156047) (= (select (arr!7755 a!3305) (index!13765 lt!156047)) k!2497) (ite (is-MissingZero!2897 lt!156047) (= (select (arr!7755 a!3305) (index!13764 lt!156047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2897 lt!156047) (= (select (arr!7755 a!3305) (index!13767 lt!156047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69339 (= lt!156047 e!198815)))

(declare-fun c!50483 () Bool)

(assert (=> d!69339 (= c!50483 (and (is-Intermediate!2897 lt!156046) (undefined!3709 lt!156046)))))

(assert (=> d!69339 (= lt!156046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69339 (validMask!0 mask!3777)))

(assert (=> d!69339 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!156047)))

(declare-fun b!320449 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16395 (_ BitVec 32)) SeekEntryResult!2897)

(assert (=> b!320449 (= e!198817 (seekKeyOrZeroReturnVacant!0 (x!31993 lt!156046) (index!13766 lt!156046) (index!13766 lt!156046) k!2497 a!3305 mask!3777))))

(assert (= (and d!69339 c!50483) b!320453))

(assert (= (and d!69339 (not c!50483)) b!320452))

(assert (= (and b!320452 c!50482) b!320454))

(assert (= (and b!320452 (not c!50482)) b!320450))

(assert (= (and b!320450 c!50481) b!320451))

(assert (= (and b!320450 (not c!50481)) b!320449))

(declare-fun m!328785 () Bool)

(assert (=> b!320452 m!328785))

(declare-fun m!328787 () Bool)

(assert (=> d!69339 m!328787))

(declare-fun m!328789 () Bool)

(assert (=> d!69339 m!328789))

(assert (=> d!69339 m!328705))

(assert (=> d!69339 m!328707))

(declare-fun m!328791 () Bool)

(assert (=> d!69339 m!328791))

(assert (=> d!69339 m!328705))

(assert (=> d!69339 m!328693))

(declare-fun m!328793 () Bool)

(assert (=> b!320449 m!328793))

(assert (=> b!320281 d!69339))

(declare-fun d!69347 () Bool)

(declare-fun res!174743 () Bool)

(declare-fun e!198822 () Bool)

(assert (=> d!69347 (=> res!174743 e!198822)))

(assert (=> d!69347 (= res!174743 (= (select (arr!7755 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69347 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!198822)))

(declare-fun b!320459 () Bool)

(declare-fun e!198823 () Bool)

(assert (=> b!320459 (= e!198822 e!198823)))

(declare-fun res!174744 () Bool)

(assert (=> b!320459 (=> (not res!174744) (not e!198823))))

(assert (=> b!320459 (= res!174744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8107 a!3305)))))

(declare-fun b!320460 () Bool)

(assert (=> b!320460 (= e!198823 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69347 (not res!174743)) b!320459))

(assert (= (and b!320459 res!174744) b!320460))

(assert (=> d!69347 m!328757))

(declare-fun m!328795 () Bool)

(assert (=> b!320460 m!328795))

(assert (=> b!320280 d!69347))

(declare-fun d!69355 () Bool)

(assert (=> d!69355 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!320283 d!69355))

(declare-fun d!69357 () Bool)

