; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32904 () Bool)

(assert start!32904)

(declare-fun res!180692 () Bool)

(declare-fun e!201640 () Bool)

(assert (=> start!32904 (=> (not res!180692) (not e!201640))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32904 (= res!180692 (validMask!0 mask!3777))))

(assert (=> start!32904 e!201640))

(declare-datatypes ((array!16796 0))(
  ( (array!16797 (arr!7945 (Array (_ BitVec 32) (_ BitVec 64))) (size!8297 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16796)

(declare-fun array_inv!5899 (array!16796) Bool)

(assert (=> start!32904 (array_inv!5899 a!3305)))

(assert (=> start!32904 true))

(declare-fun b!327939 () Bool)

(declare-fun res!180691 () Bool)

(assert (=> b!327939 (=> (not res!180691) (not e!201640))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3087 0))(
  ( (MissingZero!3087 (index!14524 (_ BitVec 32))) (Found!3087 (index!14525 (_ BitVec 32))) (Intermediate!3087 (undefined!3899 Bool) (index!14526 (_ BitVec 32)) (x!32749 (_ BitVec 32))) (Undefined!3087) (MissingVacant!3087 (index!14527 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16796 (_ BitVec 32)) SeekEntryResult!3087)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327939 (= res!180691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3087 false resIndex!58 resX!58)))))

(declare-fun b!327940 () Bool)

(assert (=> b!327940 (= e!201640 (or (bvslt resIndex!58 #b00000000000000000000000000000000) (bvsge resIndex!58 (size!8297 a!3305))))))

(declare-fun b!327941 () Bool)

(declare-fun res!180689 () Bool)

(assert (=> b!327941 (=> (not res!180689) (not e!201640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327941 (= res!180689 (validKeyInArray!0 k!2497))))

(declare-fun b!327942 () Bool)

(declare-fun res!180688 () Bool)

(assert (=> b!327942 (=> (not res!180688) (not e!201640))))

(declare-fun arrayContainsKey!0 (array!16796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327942 (= res!180688 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327943 () Bool)

(declare-fun res!180690 () Bool)

(assert (=> b!327943 (=> (not res!180690) (not e!201640))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16796 (_ BitVec 32)) SeekEntryResult!3087)

(assert (=> b!327943 (= res!180690 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3087 i!1250)))))

(declare-fun b!327944 () Bool)

(declare-fun res!180687 () Bool)

(assert (=> b!327944 (=> (not res!180687) (not e!201640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16796 (_ BitVec 32)) Bool)

(assert (=> b!327944 (= res!180687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327945 () Bool)

(declare-fun res!180693 () Bool)

(assert (=> b!327945 (=> (not res!180693) (not e!201640))))

(assert (=> b!327945 (= res!180693 (and (= (size!8297 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8297 a!3305))))))

(assert (= (and start!32904 res!180692) b!327945))

(assert (= (and b!327945 res!180693) b!327941))

(assert (= (and b!327941 res!180689) b!327942))

(assert (= (and b!327942 res!180688) b!327943))

(assert (= (and b!327943 res!180690) b!327944))

(assert (= (and b!327944 res!180687) b!327939))

(assert (= (and b!327939 res!180691) b!327940))

(declare-fun m!334081 () Bool)

(assert (=> b!327941 m!334081))

(declare-fun m!334083 () Bool)

(assert (=> b!327942 m!334083))

(declare-fun m!334085 () Bool)

(assert (=> start!32904 m!334085))

(declare-fun m!334087 () Bool)

(assert (=> start!32904 m!334087))

(declare-fun m!334089 () Bool)

(assert (=> b!327943 m!334089))

(declare-fun m!334091 () Bool)

(assert (=> b!327944 m!334091))

(declare-fun m!334093 () Bool)

(assert (=> b!327939 m!334093))

(assert (=> b!327939 m!334093))

(declare-fun m!334095 () Bool)

(assert (=> b!327939 m!334095))

(push 1)

(assert (not start!32904))

(assert (not b!327939))

(assert (not b!327941))

(assert (not b!327944))

(assert (not b!327942))

(assert (not b!327943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!328041 () Bool)

(declare-fun lt!157790 () SeekEntryResult!3087)

(assert (=> b!328041 (and (bvsge (index!14526 lt!157790) #b00000000000000000000000000000000) (bvslt (index!14526 lt!157790) (size!8297 a!3305)))))

(declare-fun res!180758 () Bool)

(assert (=> b!328041 (= res!180758 (= (select (arr!7945 a!3305) (index!14526 lt!157790)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201687 () Bool)

(assert (=> b!328041 (=> res!180758 e!201687)))

(declare-fun b!328042 () Bool)

(declare-fun e!201688 () SeekEntryResult!3087)

(declare-fun e!201686 () SeekEntryResult!3087)

(assert (=> b!328042 (= e!201688 e!201686)))

(declare-fun c!51278 () Bool)

(declare-fun lt!157791 () (_ BitVec 64))

(assert (=> b!328042 (= c!51278 (or (= lt!157791 k!2497) (= (bvadd lt!157791 lt!157791) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328043 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328043 (= e!201686 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328044 () Bool)

(assert (=> b!328044 (= e!201686 (Intermediate!3087 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!69851 () Bool)

(declare-fun e!201685 () Bool)

(assert (=> d!69851 e!201685))

(declare-fun c!51276 () Bool)

(assert (=> d!69851 (= c!51276 (and (is-Intermediate!3087 lt!157790) (undefined!3899 lt!157790)))))

(assert (=> d!69851 (= lt!157790 e!201688)))

(declare-fun c!51277 () Bool)

(assert (=> d!69851 (= c!51277 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69851 (= lt!157791 (select (arr!7945 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69851 (validMask!0 mask!3777)))

(assert (=> d!69851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157790)))

(declare-fun b!328045 () Bool)

(assert (=> b!328045 (= e!201685 (bvsge (x!32749 lt!157790) #b01111111111111111111111111111110))))

(declare-fun b!328046 () Bool)

(declare-fun e!201684 () Bool)

(assert (=> b!328046 (= e!201685 e!201684)))

(declare-fun res!180759 () Bool)

(assert (=> b!328046 (= res!180759 (and (is-Intermediate!3087 lt!157790) (not (undefined!3899 lt!157790)) (bvslt (x!32749 lt!157790) #b01111111111111111111111111111110) (bvsge (x!32749 lt!157790) #b00000000000000000000000000000000) (bvsge (x!32749 lt!157790) #b00000000000000000000000000000000)))))

(assert (=> b!328046 (=> (not res!180759) (not e!201684))))

(declare-fun b!328047 () Bool)

(assert (=> b!328047 (= e!201688 (Intermediate!3087 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328048 () Bool)

(assert (=> b!328048 (and (bvsge (index!14526 lt!157790) #b00000000000000000000000000000000) (bvslt (index!14526 lt!157790) (size!8297 a!3305)))))

(assert (=> b!328048 (= e!201687 (= (select (arr!7945 a!3305) (index!14526 lt!157790)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328049 () Bool)

(assert (=> b!328049 (and (bvsge (index!14526 lt!157790) #b00000000000000000000000000000000) (bvslt (index!14526 lt!157790) (size!8297 a!3305)))))

(declare-fun res!180760 () Bool)

(assert (=> b!328049 (= res!180760 (= (select (arr!7945 a!3305) (index!14526 lt!157790)) k!2497))))

(assert (=> b!328049 (=> res!180760 e!201687)))

(assert (=> b!328049 (= e!201684 e!201687)))

(assert (= (and d!69851 c!51277) b!328047))

(assert (= (and d!69851 (not c!51277)) b!328042))

(assert (= (and b!328042 c!51278) b!328044))

(assert (= (and b!328042 (not c!51278)) b!328043))

(assert (= (and d!69851 c!51276) b!328045))

(assert (= (and d!69851 (not c!51276)) b!328046))

(assert (= (and b!328046 res!180759) b!328049))

(assert (= (and b!328049 (not res!180760)) b!328041))

(assert (= (and b!328041 (not res!180758)) b!328048))

(declare-fun m!334141 () Bool)

(assert (=> b!328041 m!334141))

(assert (=> b!328049 m!334141))

(assert (=> b!328043 m!334093))

(declare-fun m!334143 () Bool)

(assert (=> b!328043 m!334143))

(assert (=> b!328043 m!334143))

(declare-fun m!334145 () Bool)

(assert (=> b!328043 m!334145))

(assert (=> b!328048 m!334141))

(assert (=> d!69851 m!334093))

(declare-fun m!334147 () Bool)

(assert (=> d!69851 m!334147))

(assert (=> d!69851 m!334085))

(assert (=> b!327939 d!69851))

(declare-fun d!69859 () Bool)

(declare-fun lt!157805 () (_ BitVec 32))

(declare-fun lt!157804 () (_ BitVec 32))

(assert (=> d!69859 (= lt!157805 (bvmul (bvxor lt!157804 (bvlshr lt!157804 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69859 (= lt!157804 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69859 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180763 (let ((h!5427 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32756 (bvmul (bvxor h!5427 (bvlshr h!5427 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32756 (bvlshr x!32756 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180763 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180763 #b00000000000000000000000000000000))))))

(assert (=> d!69859 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157805 (bvlshr lt!157805 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327939 d!69859))

(declare-fun b!328083 () Bool)

(declare-fun e!201711 () Bool)

(declare-fun e!201710 () Bool)

(assert (=> b!328083 (= e!201711 e!201710)))

(declare-fun lt!157818 () (_ BitVec 64))

(assert (=> b!328083 (= lt!157818 (select (arr!7945 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10181 0))(
  ( (Unit!10182) )
))
(declare-fun lt!157819 () Unit!10181)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16796 (_ BitVec 64) (_ BitVec 32)) Unit!10181)

(assert (=> b!328083 (= lt!157819 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157818 #b00000000000000000000000000000000))))

(assert (=> b!328083 (arrayContainsKey!0 a!3305 lt!157818 #b00000000000000000000000000000000)))

(declare-fun lt!157820 () Unit!10181)

(assert (=> b!328083 (= lt!157820 lt!157819)))

(declare-fun res!180776 () Bool)

(assert (=> b!328083 (= res!180776 (= (seekEntryOrOpen!0 (select (arr!7945 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3087 #b00000000000000000000000000000000)))))

(assert (=> b!328083 (=> (not res!180776) (not e!201710))))

(declare-fun bm!26111 () Bool)

(declare-fun call!26114 () Bool)

(assert (=> bm!26111 (= call!26114 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328084 () Bool)

(declare-fun e!201712 () Bool)

(assert (=> b!328084 (= e!201712 e!201711)))

(declare-fun c!51290 () Bool)

(assert (=> b!328084 (= c!51290 (validKeyInArray!0 (select (arr!7945 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69863 () Bool)

(declare-fun res!180777 () Bool)

(assert (=> d!69863 (=> res!180777 e!201712)))

(assert (=> d!69863 (= res!180777 (bvsge #b00000000000000000000000000000000 (size!8297 a!3305)))))

(assert (=> d!69863 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201712)))

(declare-fun b!328085 () Bool)

(assert (=> b!328085 (= e!201710 call!26114)))

(declare-fun b!328086 () Bool)

(assert (=> b!328086 (= e!201711 call!26114)))

(assert (= (and d!69863 (not res!180777)) b!328084))

(assert (= (and b!328084 c!51290) b!328083))

(assert (= (and b!328084 (not c!51290)) b!328086))

(assert (= (and b!328083 res!180776) b!328085))

(assert (= (or b!328085 b!328086) bm!26111))

(declare-fun m!334157 () Bool)

(assert (=> b!328083 m!334157))

(declare-fun m!334159 () Bool)

(assert (=> b!328083 m!334159))

(declare-fun m!334161 () Bool)

(assert (=> b!328083 m!334161))

(assert (=> b!328083 m!334157))

(declare-fun m!334163 () Bool)

(assert (=> b!328083 m!334163))

(declare-fun m!334165 () Bool)

(assert (=> bm!26111 m!334165))

(assert (=> b!328084 m!334157))

(assert (=> b!328084 m!334157))

(declare-fun m!334167 () Bool)

(assert (=> b!328084 m!334167))

(assert (=> b!327944 d!69863))

(declare-fun d!69869 () Bool)

(assert (=> d!69869 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32904 d!69869))

(declare-fun d!69877 () Bool)

(assert (=> d!69877 (= (array_inv!5899 a!3305) (bvsge (size!8297 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32904 d!69877))

(declare-fun d!69881 () Bool)

(declare-fun res!180792 () Bool)

(declare-fun e!201738 () Bool)

(assert (=> d!69881 (=> res!180792 e!201738)))

(assert (=> d!69881 (= res!180792 (= (select (arr!7945 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69881 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201738)))

(declare-fun b!328123 () Bool)

(declare-fun e!201739 () Bool)

(assert (=> b!328123 (= e!201738 e!201739)))

(declare-fun res!180793 () Bool)

(assert (=> b!328123 (=> (not res!180793) (not e!201739))))

(assert (=> b!328123 (= res!180793 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8297 a!3305)))))

(declare-fun b!328124 () Bool)

(assert (=> b!328124 (= e!201739 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69881 (not res!180792)) b!328123))

(assert (= (and b!328123 res!180793) b!328124))

(assert (=> d!69881 m!334157))

(declare-fun m!334183 () Bool)

(assert (=> b!328124 m!334183))

(assert (=> b!327942 d!69881))

(declare-fun d!69883 () Bool)

(assert (=> d!69883 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327941 d!69883))

(declare-fun d!69885 () Bool)

(declare-fun lt!157860 () SeekEntryResult!3087)

(assert (=> d!69885 (and (or (is-Undefined!3087 lt!157860) (not (is-Found!3087 lt!157860)) (and (bvsge (index!14525 lt!157860) #b00000000000000000000000000000000) (bvslt (index!14525 lt!157860) (size!8297 a!3305)))) (or (is-Undefined!3087 lt!157860) (is-Found!3087 lt!157860) (not (is-MissingZero!3087 lt!157860)) (and (bvsge (index!14524 lt!157860) #b00000000000000000000000000000000) (bvslt (index!14524 lt!157860) (size!8297 a!3305)))) (or (is-Undefined!3087 lt!157860) (is-Found!3087 lt!157860) (is-MissingZero!3087 lt!157860) (not (is-MissingVacant!3087 lt!157860)) (and (bvsge (index!14527 lt!157860) #b00000000000000000000000000000000) (bvslt (index!14527 lt!157860) (size!8297 a!3305)))) (or (is-Undefined!3087 lt!157860) (ite (is-Found!3087 lt!157860) (= (select (arr!7945 a!3305) (index!14525 lt!157860)) k!2497) (ite (is-MissingZero!3087 lt!157860) (= (select (arr!7945 a!3305) (index!14524 lt!157860)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3087 lt!157860) (= (select (arr!7945 a!3305) (index!14527 lt!157860)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!201765 () SeekEntryResult!3087)

(assert (=> d!69885 (= lt!157860 e!201765)))

(declare-fun c!51318 () Bool)

(declare-fun lt!157862 () SeekEntryResult!3087)

(assert (=> d!69885 (= c!51318 (and (is-Intermediate!3087 lt!157862) (undefined!3899 lt!157862)))))

(assert (=> d!69885 (= lt!157862 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69885 (validMask!0 mask!3777)))

(assert (=> d!69885 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157860)))

(declare-fun b!328165 () Bool)

(declare-fun e!201766 () SeekEntryResult!3087)

(assert (=> b!328165 (= e!201765 e!201766)))

(declare-fun lt!157861 () (_ BitVec 64))

(assert (=> b!328165 (= lt!157861 (select (arr!7945 a!3305) (index!14526 lt!157862)))))

(declare-fun c!51320 () Bool)

(assert (=> b!328165 (= c!51320 (= lt!157861 k!2497))))

(declare-fun b!328166 () Bool)

(declare-fun e!201764 () SeekEntryResult!3087)

(assert (=> b!328166 (= e!201764 (MissingZero!3087 (index!14526 lt!157862)))))

(declare-fun b!328167 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16796 (_ BitVec 32)) SeekEntryResult!3087)

(assert (=> b!328167 (= e!201764 (seekKeyOrZeroReturnVacant!0 (x!32749 lt!157862) (index!14526 lt!157862) (index!14526 lt!157862) k!2497 a!3305 mask!3777))))

(declare-fun b!328168 () Bool)

(assert (=> b!328168 (= e!201766 (Found!3087 (index!14526 lt!157862)))))

(declare-fun b!328169 () Bool)

(assert (=> b!328169 (= e!201765 Undefined!3087)))

(declare-fun b!328170 () Bool)

(declare-fun c!51319 () Bool)

(assert (=> b!328170 (= c!51319 (= lt!157861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328170 (= e!201766 e!201764)))

(assert (= (and d!69885 c!51318) b!328169))

(assert (= (and d!69885 (not c!51318)) b!328165))

(assert (= (and b!328165 c!51320) b!328168))

(assert (= (and b!328165 (not c!51320)) b!328170))

(assert (= (and b!328170 c!51319) b!328166))

(assert (= (and b!328170 (not c!51319)) b!328167))

(assert (=> d!69885 m!334093))

(assert (=> d!69885 m!334095))

(assert (=> d!69885 m!334093))

(declare-fun m!334205 () Bool)

(assert (=> d!69885 m!334205))

(assert (=> d!69885 m!334085))

(declare-fun m!334207 () Bool)

(assert (=> d!69885 m!334207))

(declare-fun m!334209 () Bool)

(assert (=> d!69885 m!334209))

(declare-fun m!334211 () Bool)

(assert (=> b!328165 m!334211))

(declare-fun m!334213 () Bool)

(assert (=> b!328167 m!334213))

(assert (=> b!327943 d!69885))

(push 1)

(assert (not b!328124))

(assert (not b!328084))

(assert (not d!69885))

(assert (not b!328043))

(assert (not b!328083))

(assert (not b!328167))

(assert (not d!69851))

(assert (not bm!26111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

