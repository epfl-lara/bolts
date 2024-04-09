; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31390 () Bool)

(assert start!31390)

(declare-fun b!314381 () Bool)

(declare-fun res!170289 () Bool)

(declare-fun e!195780 () Bool)

(assert (=> b!314381 (=> (not res!170289) (not e!195780))))

(declare-datatypes ((array!16059 0))(
  ( (array!16060 (arr!7602 (Array (_ BitVec 32) (_ BitVec 64))) (size!7954 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16059)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314381 (= res!170289 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!170290 () Bool)

(assert (=> start!31390 (=> (not res!170290) (not e!195780))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31390 (= res!170290 (validMask!0 mask!3709))))

(assert (=> start!31390 e!195780))

(declare-fun array_inv!5556 (array!16059) Bool)

(assert (=> start!31390 (array_inv!5556 a!3293)))

(assert (=> start!31390 true))

(declare-fun b!314382 () Bool)

(declare-fun res!170294 () Bool)

(declare-fun e!195779 () Bool)

(assert (=> b!314382 (=> (not res!170294) (not e!195779))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314382 (= res!170294 (and (= (select (arr!7602 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7954 a!3293))))))

(declare-fun b!314383 () Bool)

(assert (=> b!314383 (= e!195780 e!195779)))

(declare-fun res!170295 () Bool)

(assert (=> b!314383 (=> (not res!170295) (not e!195779))))

(declare-datatypes ((SeekEntryResult!2753 0))(
  ( (MissingZero!2753 (index!13188 (_ BitVec 32))) (Found!2753 (index!13189 (_ BitVec 32))) (Intermediate!2753 (undefined!3565 Bool) (index!13190 (_ BitVec 32)) (x!31378 (_ BitVec 32))) (Undefined!2753) (MissingVacant!2753 (index!13191 (_ BitVec 32))) )
))
(declare-fun lt!153893 () SeekEntryResult!2753)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16059 (_ BitVec 32)) SeekEntryResult!2753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314383 (= res!170295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153893))))

(assert (=> b!314383 (= lt!153893 (Intermediate!2753 false resIndex!52 resX!52))))

(declare-fun b!314384 () Bool)

(declare-fun res!170291 () Bool)

(assert (=> b!314384 (=> (not res!170291) (not e!195780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16059 (_ BitVec 32)) Bool)

(assert (=> b!314384 (= res!170291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314385 () Bool)

(declare-fun res!170288 () Bool)

(assert (=> b!314385 (=> (not res!170288) (not e!195780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314385 (= res!170288 (validKeyInArray!0 k!2441))))

(declare-fun b!314386 () Bool)

(declare-fun res!170293 () Bool)

(assert (=> b!314386 (=> (not res!170293) (not e!195780))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16059 (_ BitVec 32)) SeekEntryResult!2753)

(assert (=> b!314386 (= res!170293 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2753 i!1240)))))

(declare-fun b!314387 () Bool)

(declare-fun lt!153892 () SeekEntryResult!2753)

(assert (=> b!314387 (= e!195779 (and (= lt!153892 lt!153893) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7602 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7602 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7602 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!153892 (Intermediate!2753 false index!1781 resX!52)))))))

(assert (=> b!314387 (= lt!153892 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314388 () Bool)

(declare-fun res!170292 () Bool)

(assert (=> b!314388 (=> (not res!170292) (not e!195780))))

(assert (=> b!314388 (= res!170292 (and (= (size!7954 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7954 a!3293))))))

(assert (= (and start!31390 res!170290) b!314388))

(assert (= (and b!314388 res!170292) b!314385))

(assert (= (and b!314385 res!170288) b!314381))

(assert (= (and b!314381 res!170289) b!314386))

(assert (= (and b!314386 res!170293) b!314384))

(assert (= (and b!314384 res!170291) b!314383))

(assert (= (and b!314383 res!170295) b!314382))

(assert (= (and b!314382 res!170294) b!314387))

(declare-fun m!323961 () Bool)

(assert (=> b!314385 m!323961))

(declare-fun m!323963 () Bool)

(assert (=> start!31390 m!323963))

(declare-fun m!323965 () Bool)

(assert (=> start!31390 m!323965))

(declare-fun m!323967 () Bool)

(assert (=> b!314386 m!323967))

(declare-fun m!323969 () Bool)

(assert (=> b!314387 m!323969))

(declare-fun m!323971 () Bool)

(assert (=> b!314387 m!323971))

(declare-fun m!323973 () Bool)

(assert (=> b!314384 m!323973))

(declare-fun m!323975 () Bool)

(assert (=> b!314383 m!323975))

(assert (=> b!314383 m!323975))

(declare-fun m!323977 () Bool)

(assert (=> b!314383 m!323977))

(declare-fun m!323979 () Bool)

(assert (=> b!314381 m!323979))

(declare-fun m!323981 () Bool)

(assert (=> b!314382 m!323981))

(push 1)

(assert (not start!31390))

(assert (not b!314385))

(assert (not b!314387))

(assert (not b!314381))

(assert (not b!314386))

(assert (not b!314384))

(assert (not b!314383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!314464 () Bool)

(declare-fun e!195834 () SeekEntryResult!2753)

(assert (=> b!314464 (= e!195834 (Intermediate!2753 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!68651 () Bool)

(declare-fun e!195831 () Bool)

(assert (=> d!68651 e!195831))

(declare-fun c!49682 () Bool)

(declare-fun lt!153922 () SeekEntryResult!2753)

(assert (=> d!68651 (= c!49682 (and (is-Intermediate!2753 lt!153922) (undefined!3565 lt!153922)))))

(declare-fun e!195835 () SeekEntryResult!2753)

(assert (=> d!68651 (= lt!153922 e!195835)))

(declare-fun c!49680 () Bool)

(assert (=> d!68651 (= c!49680 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153923 () (_ BitVec 64))

(assert (=> d!68651 (= lt!153923 (select (arr!7602 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68651 (validMask!0 mask!3709)))

(assert (=> d!68651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153922)))

(declare-fun b!314465 () Bool)

(assert (=> b!314465 (and (bvsge (index!13190 lt!153922) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153922) (size!7954 a!3293)))))

(declare-fun e!195833 () Bool)

(assert (=> b!314465 (= e!195833 (= (select (arr!7602 a!3293) (index!13190 lt!153922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314466 () Bool)

(assert (=> b!314466 (= e!195835 e!195834)))

(declare-fun c!49681 () Bool)

(assert (=> b!314466 (= c!49681 (or (= lt!153923 k!2441) (= (bvadd lt!153923 lt!153923) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314467 () Bool)

(assert (=> b!314467 (= e!195835 (Intermediate!2753 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314468 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314468 (= e!195834 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314469 () Bool)

(assert (=> b!314469 (= e!195831 (bvsge (x!31378 lt!153922) #b01111111111111111111111111111110))))

(declare-fun b!314470 () Bool)

(assert (=> b!314470 (and (bvsge (index!13190 lt!153922) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153922) (size!7954 a!3293)))))

(declare-fun res!170330 () Bool)

(assert (=> b!314470 (= res!170330 (= (select (arr!7602 a!3293) (index!13190 lt!153922)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314470 (=> res!170330 e!195833)))

(declare-fun b!314471 () Bool)

(declare-fun e!195832 () Bool)

(assert (=> b!314471 (= e!195831 e!195832)))

(declare-fun res!170331 () Bool)

(assert (=> b!314471 (= res!170331 (and (is-Intermediate!2753 lt!153922) (not (undefined!3565 lt!153922)) (bvslt (x!31378 lt!153922) #b01111111111111111111111111111110) (bvsge (x!31378 lt!153922) #b00000000000000000000000000000000) (bvsge (x!31378 lt!153922) #b00000000000000000000000000000000)))))

(assert (=> b!314471 (=> (not res!170331) (not e!195832))))

(declare-fun b!314472 () Bool)

(assert (=> b!314472 (and (bvsge (index!13190 lt!153922) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153922) (size!7954 a!3293)))))

(declare-fun res!170329 () Bool)

(assert (=> b!314472 (= res!170329 (= (select (arr!7602 a!3293) (index!13190 lt!153922)) k!2441))))

(assert (=> b!314472 (=> res!170329 e!195833)))

(assert (=> b!314472 (= e!195832 e!195833)))

(assert (= (and d!68651 c!49680) b!314467))

(assert (= (and d!68651 (not c!49680)) b!314466))

(assert (= (and b!314466 c!49681) b!314464))

(assert (= (and b!314466 (not c!49681)) b!314468))

(assert (= (and d!68651 c!49682) b!314469))

(assert (= (and d!68651 (not c!49682)) b!314471))

(assert (= (and b!314471 res!170331) b!314472))

(assert (= (and b!314472 (not res!170329)) b!314470))

(assert (= (and b!314470 (not res!170330)) b!314465))

(declare-fun m!324015 () Bool)

(assert (=> b!314472 m!324015))

(assert (=> b!314468 m!323975))

(declare-fun m!324017 () Bool)

(assert (=> b!314468 m!324017))

(assert (=> b!314468 m!324017))

(declare-fun m!324019 () Bool)

(assert (=> b!314468 m!324019))

(assert (=> b!314470 m!324015))

(assert (=> b!314465 m!324015))

(assert (=> d!68651 m!323975))

(declare-fun m!324021 () Bool)

(assert (=> d!68651 m!324021))

(assert (=> d!68651 m!323963))

(assert (=> b!314383 d!68651))

(declare-fun d!68657 () Bool)

(declare-fun lt!153933 () (_ BitVec 32))

(declare-fun lt!153932 () (_ BitVec 32))

(assert (=> d!68657 (= lt!153933 (bvmul (bvxor lt!153932 (bvlshr lt!153932 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68657 (= lt!153932 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68657 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170332 (let ((h!5381 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31382 (bvmul (bvxor h!5381 (bvlshr h!5381 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31382 (bvlshr x!31382 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170332 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170332 #b00000000000000000000000000000000))))))

(assert (=> d!68657 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153933 (bvlshr lt!153933 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314383 d!68657))

(declare-fun bm!25973 () Bool)

(declare-fun call!25976 () Bool)

(assert (=> bm!25973 (= call!25976 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!314529 () Bool)

(declare-fun e!195870 () Bool)

(assert (=> b!314529 (= e!195870 call!25976)))

(declare-fun b!314530 () Bool)

(declare-fun e!195869 () Bool)

(assert (=> b!314530 (= e!195869 call!25976)))

(declare-fun b!314532 () Bool)

(assert (=> b!314532 (= e!195870 e!195869)))

(declare-fun lt!153957 () (_ BitVec 64))

(assert (=> b!314532 (= lt!153957 (select (arr!7602 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9686 0))(
  ( (Unit!9687) )
))
(declare-fun lt!153958 () Unit!9686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16059 (_ BitVec 64) (_ BitVec 32)) Unit!9686)

(assert (=> b!314532 (= lt!153958 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153957 #b00000000000000000000000000000000))))

(assert (=> b!314532 (arrayContainsKey!0 a!3293 lt!153957 #b00000000000000000000000000000000)))

(declare-fun lt!153956 () Unit!9686)

(assert (=> b!314532 (= lt!153956 lt!153958)))

(declare-fun res!170350 () Bool)

(assert (=> b!314532 (= res!170350 (= (seekEntryOrOpen!0 (select (arr!7602 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2753 #b00000000000000000000000000000000)))))

(assert (=> b!314532 (=> (not res!170350) (not e!195869))))

(declare-fun b!314531 () Bool)

(declare-fun e!195868 () Bool)

(assert (=> b!314531 (= e!195868 e!195870)))

(declare-fun c!49703 () Bool)

(assert (=> b!314531 (= c!49703 (validKeyInArray!0 (select (arr!7602 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!68659 () Bool)

(declare-fun res!170351 () Bool)

(assert (=> d!68659 (=> res!170351 e!195868)))

(assert (=> d!68659 (= res!170351 (bvsge #b00000000000000000000000000000000 (size!7954 a!3293)))))

(assert (=> d!68659 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195868)))

(assert (= (and d!68659 (not res!170351)) b!314531))

(assert (= (and b!314531 c!49703) b!314532))

(assert (= (and b!314531 (not c!49703)) b!314529))

(assert (= (and b!314532 res!170350) b!314530))

(assert (= (or b!314530 b!314529) bm!25973))

(declare-fun m!324037 () Bool)

(assert (=> bm!25973 m!324037))

(declare-fun m!324039 () Bool)

(assert (=> b!314532 m!324039))

(declare-fun m!324041 () Bool)

(assert (=> b!314532 m!324041))

(declare-fun m!324043 () Bool)

(assert (=> b!314532 m!324043))

(assert (=> b!314532 m!324039))

(declare-fun m!324045 () Bool)

(assert (=> b!314532 m!324045))

(assert (=> b!314531 m!324039))

(assert (=> b!314531 m!324039))

(declare-fun m!324047 () Bool)

(assert (=> b!314531 m!324047))

(assert (=> b!314384 d!68659))

(declare-fun d!68667 () Bool)

(assert (=> d!68667 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31390 d!68667))

(declare-fun d!68671 () Bool)

(assert (=> d!68671 (= (array_inv!5556 a!3293) (bvsge (size!7954 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31390 d!68671))

(declare-fun b!314539 () Bool)

(declare-fun e!195877 () SeekEntryResult!2753)

(assert (=> b!314539 (= e!195877 (Intermediate!2753 false index!1781 x!1427))))

(declare-fun d!68673 () Bool)

(declare-fun e!195874 () Bool)

(assert (=> d!68673 e!195874))

(declare-fun c!49709 () Bool)

(declare-fun lt!153962 () SeekEntryResult!2753)

(assert (=> d!68673 (= c!49709 (and (is-Intermediate!2753 lt!153962) (undefined!3565 lt!153962)))))

(declare-fun e!195878 () SeekEntryResult!2753)

(assert (=> d!68673 (= lt!153962 e!195878)))

(declare-fun c!49707 () Bool)

(assert (=> d!68673 (= c!49707 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153963 () (_ BitVec 64))

(assert (=> d!68673 (= lt!153963 (select (arr!7602 a!3293) index!1781))))

(assert (=> d!68673 (validMask!0 mask!3709)))

(assert (=> d!68673 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153962)))

(declare-fun b!314540 () Bool)

(assert (=> b!314540 (and (bvsge (index!13190 lt!153962) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153962) (size!7954 a!3293)))))

(declare-fun e!195876 () Bool)

(assert (=> b!314540 (= e!195876 (= (select (arr!7602 a!3293) (index!13190 lt!153962)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314541 () Bool)

(assert (=> b!314541 (= e!195878 e!195877)))

(declare-fun c!49708 () Bool)

(assert (=> b!314541 (= c!49708 (or (= lt!153963 k!2441) (= (bvadd lt!153963 lt!153963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314542 () Bool)

(assert (=> b!314542 (= e!195878 (Intermediate!2753 true index!1781 x!1427))))

(declare-fun b!314543 () Bool)

(assert (=> b!314543 (= e!195877 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314544 () Bool)

(assert (=> b!314544 (= e!195874 (bvsge (x!31378 lt!153962) #b01111111111111111111111111111110))))

(declare-fun b!314545 () Bool)

(assert (=> b!314545 (and (bvsge (index!13190 lt!153962) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153962) (size!7954 a!3293)))))

(declare-fun res!170353 () Bool)

(assert (=> b!314545 (= res!170353 (= (select (arr!7602 a!3293) (index!13190 lt!153962)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314545 (=> res!170353 e!195876)))

(declare-fun b!314546 () Bool)

(declare-fun e!195875 () Bool)

(assert (=> b!314546 (= e!195874 e!195875)))

(declare-fun res!170354 () Bool)

(assert (=> b!314546 (= res!170354 (and (is-Intermediate!2753 lt!153962) (not (undefined!3565 lt!153962)) (bvslt (x!31378 lt!153962) #b01111111111111111111111111111110) (bvsge (x!31378 lt!153962) #b00000000000000000000000000000000) (bvsge (x!31378 lt!153962) x!1427)))))

(assert (=> b!314546 (=> (not res!170354) (not e!195875))))

(declare-fun b!314547 () Bool)

(assert (=> b!314547 (and (bvsge (index!13190 lt!153962) #b00000000000000000000000000000000) (bvslt (index!13190 lt!153962) (size!7954 a!3293)))))

(declare-fun res!170352 () Bool)

(assert (=> b!314547 (= res!170352 (= (select (arr!7602 a!3293) (index!13190 lt!153962)) k!2441))))

(assert (=> b!314547 (=> res!170352 e!195876)))

(assert (=> b!314547 (= e!195875 e!195876)))

(assert (= (and d!68673 c!49707) b!314542))

(assert (= (and d!68673 (not c!49707)) b!314541))

(assert (= (and b!314541 c!49708) b!314539))

(assert (= (and b!314541 (not c!49708)) b!314543))

(assert (= (and d!68673 c!49709) b!314544))

(assert (= (and d!68673 (not c!49709)) b!314546))

(assert (= (and b!314546 res!170354) b!314547))

(assert (= (and b!314547 (not res!170352)) b!314545))

(assert (= (and b!314545 (not res!170353)) b!314540))

(declare-fun m!324059 () Bool)

(assert (=> b!314547 m!324059))

(declare-fun m!324061 () Bool)

(assert (=> b!314543 m!324061))

(assert (=> b!314543 m!324061))

(declare-fun m!324063 () Bool)

(assert (=> b!314543 m!324063))

(assert (=> b!314545 m!324059))

(assert (=> b!314540 m!324059))

(assert (=> d!68673 m!323969))

(assert (=> d!68673 m!323963))

(assert (=> b!314387 d!68673))

(declare-fun b!314593 () Bool)

(declare-fun e!195905 () SeekEntryResult!2753)

(declare-fun lt!153989 () SeekEntryResult!2753)

(assert (=> b!314593 (= e!195905 (Found!2753 (index!13190 lt!153989)))))

(declare-fun b!314594 () Bool)

(declare-fun e!195906 () SeekEntryResult!2753)

(assert (=> b!314594 (= e!195906 e!195905)))

(declare-fun lt!153988 () (_ BitVec 64))

(assert (=> b!314594 (= lt!153988 (select (arr!7602 a!3293) (index!13190 lt!153989)))))

(declare-fun c!49728 () Bool)

(assert (=> b!314594 (= c!49728 (= lt!153988 k!2441))))

(declare-fun d!68675 () Bool)

(declare-fun lt!153987 () SeekEntryResult!2753)

(assert (=> d!68675 (and (or (is-Undefined!2753 lt!153987) (not (is-Found!2753 lt!153987)) (and (bvsge (index!13189 lt!153987) #b00000000000000000000000000000000) (bvslt (index!13189 lt!153987) (size!7954 a!3293)))) (or (is-Undefined!2753 lt!153987) (is-Found!2753 lt!153987) (not (is-MissingZero!2753 lt!153987)) (and (bvsge (index!13188 lt!153987) #b00000000000000000000000000000000) (bvslt (index!13188 lt!153987) (size!7954 a!3293)))) (or (is-Undefined!2753 lt!153987) (is-Found!2753 lt!153987) (is-MissingZero!2753 lt!153987) (not (is-MissingVacant!2753 lt!153987)) (and (bvsge (index!13191 lt!153987) #b00000000000000000000000000000000) (bvslt (index!13191 lt!153987) (size!7954 a!3293)))) (or (is-Undefined!2753 lt!153987) (ite (is-Found!2753 lt!153987) (= (select (arr!7602 a!3293) (index!13189 lt!153987)) k!2441) (ite (is-MissingZero!2753 lt!153987) (= (select (arr!7602 a!3293) (index!13188 lt!153987)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2753 lt!153987) (= (select (arr!7602 a!3293) (index!13191 lt!153987)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68675 (= lt!153987 e!195906)))

(declare-fun c!49730 () Bool)

(assert (=> d!68675 (= c!49730 (and (is-Intermediate!2753 lt!153989) (undefined!3565 lt!153989)))))

(assert (=> d!68675 (= lt!153989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68675 (validMask!0 mask!3709)))

(assert (=> d!68675 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153987)))

(declare-fun b!314595 () Bool)

(assert (=> b!314595 (= e!195906 Undefined!2753)))

(declare-fun b!314596 () Bool)

(declare-fun e!195907 () SeekEntryResult!2753)

(assert (=> b!314596 (= e!195907 (MissingZero!2753 (index!13190 lt!153989)))))

(declare-fun b!314597 () Bool)

(declare-fun c!49729 () Bool)

(assert (=> b!314597 (= c!49729 (= lt!153988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314597 (= e!195905 e!195907)))

(declare-fun b!314598 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16059 (_ BitVec 32)) SeekEntryResult!2753)

(assert (=> b!314598 (= e!195907 (seekKeyOrZeroReturnVacant!0 (x!31378 lt!153989) (index!13190 lt!153989) (index!13190 lt!153989) k!2441 a!3293 mask!3709))))

(assert (= (and d!68675 c!49730) b!314595))

(assert (= (and d!68675 (not c!49730)) b!314594))

(assert (= (and b!314594 c!49728) b!314593))

(assert (= (and b!314594 (not c!49728)) b!314597))

(assert (= (and b!314597 c!49729) b!314596))

(assert (= (and b!314597 (not c!49729)) b!314598))

(declare-fun m!324085 () Bool)

(assert (=> b!314594 m!324085))

(declare-fun m!324087 () Bool)

(assert (=> d!68675 m!324087))

(assert (=> d!68675 m!323975))

(declare-fun m!324089 () Bool)

(assert (=> d!68675 m!324089))

(assert (=> d!68675 m!323963))

