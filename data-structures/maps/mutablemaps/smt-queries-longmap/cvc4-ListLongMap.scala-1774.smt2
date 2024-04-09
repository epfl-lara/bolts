; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32302 () Bool)

(assert start!32302)

(declare-fun b!321651 () Bool)

(declare-fun res!175929 () Bool)

(declare-fun e!199191 () Bool)

(assert (=> b!321651 (=> (not res!175929) (not e!199191))))

(declare-datatypes ((array!16488 0))(
  ( (array!16489 (arr!7800 (Array (_ BitVec 32) (_ BitVec 64))) (size!8152 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16488)

(declare-datatypes ((SeekEntryResult!2942 0))(
  ( (MissingZero!2942 (index!13944 (_ BitVec 32))) (Found!2942 (index!13945 (_ BitVec 32))) (Intermediate!2942 (undefined!3754 Bool) (index!13946 (_ BitVec 32)) (x!32164 (_ BitVec 32))) (Undefined!2942) (MissingVacant!2942 (index!13947 (_ BitVec 32))) )
))
(declare-fun lt!156232 () SeekEntryResult!2942)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16488 (_ BitVec 32)) SeekEntryResult!2942)

(assert (=> b!321651 (= res!175929 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156232))))

(declare-fun b!321652 () Bool)

(declare-fun res!175932 () Bool)

(declare-fun e!199190 () Bool)

(assert (=> b!321652 (=> (not res!175932) (not e!199190))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16488 (_ BitVec 32)) SeekEntryResult!2942)

(assert (=> b!321652 (= res!175932 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2942 i!1250)))))

(declare-fun b!321653 () Bool)

(declare-fun res!175935 () Bool)

(assert (=> b!321653 (=> (not res!175935) (not e!199190))))

(assert (=> b!321653 (= res!175935 (and (= (size!8152 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8152 a!3305))))))

(declare-fun res!175930 () Bool)

(assert (=> start!32302 (=> (not res!175930) (not e!199190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32302 (= res!175930 (validMask!0 mask!3777))))

(assert (=> start!32302 e!199190))

(declare-fun array_inv!5754 (array!16488) Bool)

(assert (=> start!32302 (array_inv!5754 a!3305)))

(assert (=> start!32302 true))

(declare-fun b!321654 () Bool)

(declare-fun res!175936 () Bool)

(assert (=> b!321654 (=> (not res!175936) (not e!199191))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321654 (= res!175936 (and (= (select (arr!7800 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8152 a!3305))))))

(declare-fun b!321655 () Bool)

(assert (=> b!321655 (= e!199190 e!199191)))

(declare-fun res!175931 () Bool)

(assert (=> b!321655 (=> (not res!175931) (not e!199191))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321655 (= res!175931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156232))))

(assert (=> b!321655 (= lt!156232 (Intermediate!2942 false resIndex!58 resX!58))))

(declare-fun b!321656 () Bool)

(declare-fun res!175934 () Bool)

(assert (=> b!321656 (=> (not res!175934) (not e!199190))))

(declare-fun arrayContainsKey!0 (array!16488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321656 (= res!175934 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321657 () Bool)

(declare-fun res!175938 () Bool)

(assert (=> b!321657 (=> (not res!175938) (not e!199191))))

(assert (=> b!321657 (= res!175938 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7800 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7800 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7800 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321658 () Bool)

(declare-fun res!175933 () Bool)

(assert (=> b!321658 (=> (not res!175933) (not e!199190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16488 (_ BitVec 32)) Bool)

(assert (=> b!321658 (= res!175933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321659 () Bool)

(declare-fun lt!156233 () (_ BitVec 32))

(assert (=> b!321659 (= e!199191 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!156233 #b00000000000000000000000000000000) (bvsge lt!156233 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321659 (= lt!156233 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321660 () Bool)

(declare-fun res!175937 () Bool)

(assert (=> b!321660 (=> (not res!175937) (not e!199190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321660 (= res!175937 (validKeyInArray!0 k!2497))))

(assert (= (and start!32302 res!175930) b!321653))

(assert (= (and b!321653 res!175935) b!321660))

(assert (= (and b!321660 res!175937) b!321656))

(assert (= (and b!321656 res!175934) b!321652))

(assert (= (and b!321652 res!175932) b!321658))

(assert (= (and b!321658 res!175933) b!321655))

(assert (= (and b!321655 res!175931) b!321654))

(assert (= (and b!321654 res!175936) b!321651))

(assert (= (and b!321651 res!175929) b!321657))

(assert (= (and b!321657 res!175938) b!321659))

(declare-fun m!329755 () Bool)

(assert (=> b!321658 m!329755))

(declare-fun m!329757 () Bool)

(assert (=> b!321659 m!329757))

(declare-fun m!329759 () Bool)

(assert (=> start!32302 m!329759))

(declare-fun m!329761 () Bool)

(assert (=> start!32302 m!329761))

(declare-fun m!329763 () Bool)

(assert (=> b!321654 m!329763))

(declare-fun m!329765 () Bool)

(assert (=> b!321657 m!329765))

(declare-fun m!329767 () Bool)

(assert (=> b!321655 m!329767))

(assert (=> b!321655 m!329767))

(declare-fun m!329769 () Bool)

(assert (=> b!321655 m!329769))

(declare-fun m!329771 () Bool)

(assert (=> b!321652 m!329771))

(declare-fun m!329773 () Bool)

(assert (=> b!321656 m!329773))

(declare-fun m!329775 () Bool)

(assert (=> b!321660 m!329775))

(declare-fun m!329777 () Bool)

(assert (=> b!321651 m!329777))

(push 1)

(assert (not b!321652))

(assert (not b!321655))

(assert (not start!32302))

(assert (not b!321659))

(assert (not b!321660))

(assert (not b!321658))

(assert (not b!321651))

(assert (not b!321656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!321681 () Bool)

(declare-fun e!199208 () Bool)

(declare-fun call!26063 () Bool)

(assert (=> b!321681 (= e!199208 call!26063)))

(declare-fun b!321682 () Bool)

(declare-fun e!199210 () Bool)

(assert (=> b!321682 (= e!199210 e!199208)))

(declare-fun c!50492 () Bool)

(assert (=> b!321682 (= c!50492 (validKeyInArray!0 (select (arr!7800 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26060 () Bool)

(assert (=> bm!26060 (= call!26063 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun d!69397 () Bool)

(declare-fun res!175949 () Bool)

(assert (=> d!69397 (=> res!175949 e!199210)))

(assert (=> d!69397 (= res!175949 (bvsge #b00000000000000000000000000000000 (size!8152 a!3305)))))

(assert (=> d!69397 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!199210)))

(declare-fun b!321683 () Bool)

(declare-fun e!199209 () Bool)

(assert (=> b!321683 (= e!199209 call!26063)))

(declare-fun b!321684 () Bool)

(assert (=> b!321684 (= e!199208 e!199209)))

(declare-fun lt!156253 () (_ BitVec 64))

(assert (=> b!321684 (= lt!156253 (select (arr!7800 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9827 0))(
  ( (Unit!9828) )
))
(declare-fun lt!156254 () Unit!9827)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16488 (_ BitVec 64) (_ BitVec 32)) Unit!9827)

(assert (=> b!321684 (= lt!156254 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!156253 #b00000000000000000000000000000000))))

(assert (=> b!321684 (arrayContainsKey!0 a!3305 lt!156253 #b00000000000000000000000000000000)))

(declare-fun lt!156252 () Unit!9827)

(assert (=> b!321684 (= lt!156252 lt!156254)))

(declare-fun res!175950 () Bool)

(assert (=> b!321684 (= res!175950 (= (seekEntryOrOpen!0 (select (arr!7800 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2942 #b00000000000000000000000000000000)))))

(assert (=> b!321684 (=> (not res!175950) (not e!199209))))

(assert (= (and d!69397 (not res!175949)) b!321682))

(assert (= (and b!321682 c!50492) b!321684))

(assert (= (and b!321682 (not c!50492)) b!321681))

(assert (= (and b!321684 res!175950) b!321683))

(assert (= (or b!321683 b!321681) bm!26060))

(declare-fun m!329793 () Bool)

(assert (=> b!321682 m!329793))

(assert (=> b!321682 m!329793))

(declare-fun m!329795 () Bool)

(assert (=> b!321682 m!329795))

(declare-fun m!329797 () Bool)

(assert (=> bm!26060 m!329797))

(assert (=> b!321684 m!329793))

(declare-fun m!329799 () Bool)

(assert (=> b!321684 m!329799))

(declare-fun m!329801 () Bool)

(assert (=> b!321684 m!329801))

(assert (=> b!321684 m!329793))

(declare-fun m!329803 () Bool)

(assert (=> b!321684 m!329803))

(assert (=> b!321658 d!69397))

(declare-fun b!321742 () Bool)

(declare-fun c!50511 () Bool)

(declare-fun lt!156278 () (_ BitVec 64))

(assert (=> b!321742 (= c!50511 (= lt!156278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!199248 () SeekEntryResult!2942)

(declare-fun e!199249 () SeekEntryResult!2942)

(assert (=> b!321742 (= e!199248 e!199249)))

(declare-fun d!69405 () Bool)

(declare-fun lt!156276 () SeekEntryResult!2942)

(assert (=> d!69405 (and (or (is-Undefined!2942 lt!156276) (not (is-Found!2942 lt!156276)) (and (bvsge (index!13945 lt!156276) #b00000000000000000000000000000000) (bvslt (index!13945 lt!156276) (size!8152 a!3305)))) (or (is-Undefined!2942 lt!156276) (is-Found!2942 lt!156276) (not (is-MissingZero!2942 lt!156276)) (and (bvsge (index!13944 lt!156276) #b00000000000000000000000000000000) (bvslt (index!13944 lt!156276) (size!8152 a!3305)))) (or (is-Undefined!2942 lt!156276) (is-Found!2942 lt!156276) (is-MissingZero!2942 lt!156276) (not (is-MissingVacant!2942 lt!156276)) (and (bvsge (index!13947 lt!156276) #b00000000000000000000000000000000) (bvslt (index!13947 lt!156276) (size!8152 a!3305)))) (or (is-Undefined!2942 lt!156276) (ite (is-Found!2942 lt!156276) (= (select (arr!7800 a!3305) (index!13945 lt!156276)) k!2497) (ite (is-MissingZero!2942 lt!156276) (= (select (arr!7800 a!3305) (index!13944 lt!156276)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2942 lt!156276) (= (select (arr!7800 a!3305) (index!13947 lt!156276)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!199247 () SeekEntryResult!2942)

(assert (=> d!69405 (= lt!156276 e!199247)))

(declare-fun c!50513 () Bool)

(declare-fun lt!156277 () SeekEntryResult!2942)

(assert (=> d!69405 (= c!50513 (and (is-Intermediate!2942 lt!156277) (undefined!3754 lt!156277)))))

(assert (=> d!69405 (= lt!156277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69405 (validMask!0 mask!3777)))

(assert (=> d!69405 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!156276)))

(declare-fun b!321743 () Bool)

(assert (=> b!321743 (= e!199248 (Found!2942 (index!13946 lt!156277)))))

(declare-fun b!321744 () Bool)

(assert (=> b!321744 (= e!199247 e!199248)))

(assert (=> b!321744 (= lt!156278 (select (arr!7800 a!3305) (index!13946 lt!156277)))))

(declare-fun c!50512 () Bool)

(assert (=> b!321744 (= c!50512 (= lt!156278 k!2497))))

(declare-fun b!321745 () Bool)

(assert (=> b!321745 (= e!199247 Undefined!2942)))

(declare-fun b!321746 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16488 (_ BitVec 32)) SeekEntryResult!2942)

(assert (=> b!321746 (= e!199249 (seekKeyOrZeroReturnVacant!0 (x!32164 lt!156277) (index!13946 lt!156277) (index!13946 lt!156277) k!2497 a!3305 mask!3777))))

(declare-fun b!321747 () Bool)

(assert (=> b!321747 (= e!199249 (MissingZero!2942 (index!13946 lt!156277)))))

(assert (= (and d!69405 c!50513) b!321745))

(assert (= (and d!69405 (not c!50513)) b!321744))

(assert (= (and b!321744 c!50512) b!321743))

(assert (= (and b!321744 (not c!50512)) b!321742))

(assert (= (and b!321742 c!50511) b!321747))

(assert (= (and b!321742 (not c!50511)) b!321746))

(assert (=> d!69405 m!329767))

(assert (=> d!69405 m!329769))

(declare-fun m!329827 () Bool)

(assert (=> d!69405 m!329827))

(assert (=> d!69405 m!329767))

(assert (=> d!69405 m!329759))

(declare-fun m!329829 () Bool)

(assert (=> d!69405 m!329829))

(declare-fun m!329831 () Bool)

(assert (=> d!69405 m!329831))

(declare-fun m!329833 () Bool)

(assert (=> b!321744 m!329833))

(declare-fun m!329835 () Bool)

(assert (=> b!321746 m!329835))

(assert (=> b!321652 d!69405))

(declare-fun b!321799 () Bool)

(declare-fun e!199283 () SeekEntryResult!2942)

(assert (=> b!321799 (= e!199283 (Intermediate!2942 true index!1840 x!1490))))

(declare-fun d!69413 () Bool)

(declare-fun e!199281 () Bool)

(assert (=> d!69413 e!199281))

(declare-fun c!50531 () Bool)

(declare-fun lt!156295 () SeekEntryResult!2942)

(assert (=> d!69413 (= c!50531 (and (is-Intermediate!2942 lt!156295) (undefined!3754 lt!156295)))))

(assert (=> d!69413 (= lt!156295 e!199283)))

(declare-fun c!50530 () Bool)

(assert (=> d!69413 (= c!50530 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!156296 () (_ BitVec 64))

(assert (=> d!69413 (= lt!156296 (select (arr!7800 a!3305) index!1840))))

(assert (=> d!69413 (validMask!0 mask!3777)))

(assert (=> d!69413 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156295)))

(declare-fun b!321800 () Bool)

(assert (=> b!321800 (= e!199281 (bvsge (x!32164 lt!156295) #b01111111111111111111111111111110))))

(declare-fun b!321801 () Bool)

(declare-fun e!199285 () Bool)

(assert (=> b!321801 (= e!199281 e!199285)))

(declare-fun res!175995 () Bool)

(assert (=> b!321801 (= res!175995 (and (is-Intermediate!2942 lt!156295) (not (undefined!3754 lt!156295)) (bvslt (x!32164 lt!156295) #b01111111111111111111111111111110) (bvsge (x!32164 lt!156295) #b00000000000000000000000000000000) (bvsge (x!32164 lt!156295) x!1490)))))

(assert (=> b!321801 (=> (not res!175995) (not e!199285))))

(declare-fun b!321802 () Bool)

(assert (=> b!321802 (and (bvsge (index!13946 lt!156295) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156295) (size!8152 a!3305)))))

(declare-fun e!199284 () Bool)

(assert (=> b!321802 (= e!199284 (= (select (arr!7800 a!3305) (index!13946 lt!156295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321803 () Bool)

(declare-fun e!199282 () SeekEntryResult!2942)

(assert (=> b!321803 (= e!199282 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!321804 () Bool)

(assert (=> b!321804 (= e!199283 e!199282)))

(declare-fun c!50529 () Bool)

(assert (=> b!321804 (= c!50529 (or (= lt!156296 k!2497) (= (bvadd lt!156296 lt!156296) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321805 () Bool)

(assert (=> b!321805 (= e!199282 (Intermediate!2942 false index!1840 x!1490))))

(declare-fun b!321806 () Bool)

(assert (=> b!321806 (and (bvsge (index!13946 lt!156295) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156295) (size!8152 a!3305)))))

(declare-fun res!175996 () Bool)

(assert (=> b!321806 (= res!175996 (= (select (arr!7800 a!3305) (index!13946 lt!156295)) k!2497))))

(assert (=> b!321806 (=> res!175996 e!199284)))

(assert (=> b!321806 (= e!199285 e!199284)))

(declare-fun b!321807 () Bool)

(assert (=> b!321807 (and (bvsge (index!13946 lt!156295) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156295) (size!8152 a!3305)))))

(declare-fun res!175994 () Bool)

(assert (=> b!321807 (= res!175994 (= (select (arr!7800 a!3305) (index!13946 lt!156295)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!321807 (=> res!175994 e!199284)))

(assert (= (and d!69413 c!50530) b!321799))

(assert (= (and d!69413 (not c!50530)) b!321804))

(assert (= (and b!321804 c!50529) b!321805))

(assert (= (and b!321804 (not c!50529)) b!321803))

(assert (= (and d!69413 c!50531) b!321800))

(assert (= (and d!69413 (not c!50531)) b!321801))

(assert (= (and b!321801 res!175995) b!321806))

(assert (= (and b!321806 (not res!175996)) b!321807))

(assert (= (and b!321807 (not res!175994)) b!321802))

(assert (=> b!321803 m!329757))

(assert (=> b!321803 m!329757))

(declare-fun m!329843 () Bool)

(assert (=> b!321803 m!329843))

(declare-fun m!329845 () Bool)

(assert (=> b!321807 m!329845))

(assert (=> b!321806 m!329845))

(assert (=> d!69413 m!329765))

(assert (=> d!69413 m!329759))

(assert (=> b!321802 m!329845))

(assert (=> b!321651 d!69413))

(declare-fun d!69423 () Bool)

(declare-fun res!176001 () Bool)

(declare-fun e!199296 () Bool)

(assert (=> d!69423 (=> res!176001 e!199296)))

(assert (=> d!69423 (= res!176001 (= (select (arr!7800 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69423 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!199296)))

(declare-fun b!321824 () Bool)

(declare-fun e!199297 () Bool)

(assert (=> b!321824 (= e!199296 e!199297)))

(declare-fun res!176002 () Bool)

(assert (=> b!321824 (=> (not res!176002) (not e!199297))))

(assert (=> b!321824 (= res!176002 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8152 a!3305)))))

(declare-fun b!321825 () Bool)

(assert (=> b!321825 (= e!199297 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69423 (not res!176001)) b!321824))

(assert (= (and b!321824 res!176002) b!321825))

(assert (=> d!69423 m!329793))

(declare-fun m!329847 () Bool)

(assert (=> b!321825 m!329847))

(assert (=> b!321656 d!69423))

(declare-fun b!321826 () Bool)

(declare-fun e!199300 () SeekEntryResult!2942)

(assert (=> b!321826 (= e!199300 (Intermediate!2942 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!69425 () Bool)

(declare-fun e!199298 () Bool)

(assert (=> d!69425 e!199298))

(declare-fun c!50540 () Bool)

(declare-fun lt!156303 () SeekEntryResult!2942)

(assert (=> d!69425 (= c!50540 (and (is-Intermediate!2942 lt!156303) (undefined!3754 lt!156303)))))

(assert (=> d!69425 (= lt!156303 e!199300)))

(declare-fun c!50539 () Bool)

(assert (=> d!69425 (= c!50539 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!156304 () (_ BitVec 64))

(assert (=> d!69425 (= lt!156304 (select (arr!7800 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69425 (validMask!0 mask!3777)))

(assert (=> d!69425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156303)))

(declare-fun b!321827 () Bool)

(assert (=> b!321827 (= e!199298 (bvsge (x!32164 lt!156303) #b01111111111111111111111111111110))))

(declare-fun b!321828 () Bool)

(declare-fun e!199302 () Bool)

(assert (=> b!321828 (= e!199298 e!199302)))

(declare-fun res!176004 () Bool)

(assert (=> b!321828 (= res!176004 (and (is-Intermediate!2942 lt!156303) (not (undefined!3754 lt!156303)) (bvslt (x!32164 lt!156303) #b01111111111111111111111111111110) (bvsge (x!32164 lt!156303) #b00000000000000000000000000000000) (bvsge (x!32164 lt!156303) #b00000000000000000000000000000000)))))

(assert (=> b!321828 (=> (not res!176004) (not e!199302))))

(declare-fun b!321829 () Bool)

(assert (=> b!321829 (and (bvsge (index!13946 lt!156303) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156303) (size!8152 a!3305)))))

(declare-fun e!199301 () Bool)

(assert (=> b!321829 (= e!199301 (= (select (arr!7800 a!3305) (index!13946 lt!156303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321830 () Bool)

(declare-fun e!199299 () SeekEntryResult!2942)

(assert (=> b!321830 (= e!199299 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!321831 () Bool)

(assert (=> b!321831 (= e!199300 e!199299)))

(declare-fun c!50538 () Bool)

(assert (=> b!321831 (= c!50538 (or (= lt!156304 k!2497) (= (bvadd lt!156304 lt!156304) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321832 () Bool)

(assert (=> b!321832 (= e!199299 (Intermediate!2942 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!321833 () Bool)

(assert (=> b!321833 (and (bvsge (index!13946 lt!156303) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156303) (size!8152 a!3305)))))

(declare-fun res!176005 () Bool)

(assert (=> b!321833 (= res!176005 (= (select (arr!7800 a!3305) (index!13946 lt!156303)) k!2497))))

(assert (=> b!321833 (=> res!176005 e!199301)))

(assert (=> b!321833 (= e!199302 e!199301)))

(declare-fun b!321834 () Bool)

(assert (=> b!321834 (and (bvsge (index!13946 lt!156303) #b00000000000000000000000000000000) (bvslt (index!13946 lt!156303) (size!8152 a!3305)))))

(declare-fun res!176003 () Bool)

(assert (=> b!321834 (= res!176003 (= (select (arr!7800 a!3305) (index!13946 lt!156303)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!321834 (=> res!176003 e!199301)))

(assert (= (and d!69425 c!50539) b!321826))

(assert (= (and d!69425 (not c!50539)) b!321831))

(assert (= (and b!321831 c!50538) b!321832))

(assert (= (and b!321831 (not c!50538)) b!321830))

(assert (= (and d!69425 c!50540) b!321827))

(assert (= (and d!69425 (not c!50540)) b!321828))

(assert (= (and b!321828 res!176004) b!321833))

(assert (= (and b!321833 (not res!176005)) b!321834))

(assert (= (and b!321834 (not res!176003)) b!321829))

(assert (=> b!321830 m!329767))

(declare-fun m!329849 () Bool)

(assert (=> b!321830 m!329849))

(assert (=> b!321830 m!329849))

(declare-fun m!329851 () Bool)

(assert (=> b!321830 m!329851))

(declare-fun m!329853 () Bool)

(assert (=> b!321834 m!329853))

(assert (=> b!321833 m!329853))

(assert (=> d!69425 m!329767))

(declare-fun m!329855 () Bool)

(assert (=> d!69425 m!329855))

(assert (=> d!69425 m!329759))

(assert (=> b!321829 m!329853))

(assert (=> b!321655 d!69425))

(declare-fun d!69427 () Bool)

(declare-fun lt!156319 () (_ BitVec 32))

(declare-fun lt!156318 () (_ BitVec 32))

(assert (=> d!69427 (= lt!156319 (bvmul (bvxor lt!156318 (bvlshr lt!156318 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69427 (= lt!156318 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69427 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!176006 (let ((h!5409 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32170 (bvmul (bvxor h!5409 (bvlshr h!5409 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32170 (bvlshr x!32170 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!176006 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!176006 #b00000000000000000000000000000000))))))

(assert (=> d!69427 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!156319 (bvlshr lt!156319 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!321655 d!69427))

(declare-fun d!69431 () Bool)

(assert (=> d!69431 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!321660 d!69431))

(declare-fun d!69433 () Bool)

(assert (=> d!69433 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32302 d!69433))

(declare-fun d!69447 () Bool)

(assert (=> d!69447 (= (array_inv!5754 a!3305) (bvsge (size!8152 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32302 d!69447))

(declare-fun d!69449 () Bool)

(declare-fun lt!156338 () (_ BitVec 32))

(assert (=> d!69449 (and (bvsge lt!156338 #b00000000000000000000000000000000) (bvslt lt!156338 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69449 (= lt!156338 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69449 (validMask!0 mask!3777)))

(assert (=> d!69449 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!156338)))

(declare-fun bs!11226 () Bool)

(assert (= bs!11226 d!69449))

(declare-fun m!329891 () Bool)

(assert (=> bs!11226 m!329891))

(assert (=> bs!11226 m!329759))

(assert (=> b!321659 d!69449))

(push 1)

