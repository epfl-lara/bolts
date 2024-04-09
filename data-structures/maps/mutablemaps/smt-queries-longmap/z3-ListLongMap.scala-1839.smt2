; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33308 () Bool)

(assert start!33308)

(declare-fun b!330958 () Bool)

(declare-fun res!182521 () Bool)

(declare-fun e!203061 () Bool)

(assert (=> b!330958 (=> (not res!182521) (not e!203061))))

(declare-datatypes ((array!16912 0))(
  ( (array!16913 (arr!7994 (Array (_ BitVec 32) (_ BitVec 64))) (size!8346 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16912)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330958 (= res!182521 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330959 () Bool)

(declare-fun res!182522 () Bool)

(declare-fun e!203060 () Bool)

(assert (=> b!330959 (=> (not res!182522) (not e!203060))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330959 (= res!182522 (and (= (select (arr!7994 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8346 a!3305))))))

(declare-fun b!330960 () Bool)

(declare-fun res!182518 () Bool)

(assert (=> b!330960 (=> (not res!182518) (not e!203061))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3136 0))(
  ( (MissingZero!3136 (index!14720 (_ BitVec 32))) (Found!3136 (index!14721 (_ BitVec 32))) (Intermediate!3136 (undefined!3948 Bool) (index!14722 (_ BitVec 32)) (x!32971 (_ BitVec 32))) (Undefined!3136) (MissingVacant!3136 (index!14723 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16912 (_ BitVec 32)) SeekEntryResult!3136)

(assert (=> b!330960 (= res!182518 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3136 i!1250)))))

(declare-fun b!330961 () Bool)

(declare-fun e!203059 () Bool)

(assert (=> b!330961 (= e!203060 e!203059)))

(declare-fun res!182524 () Bool)

(assert (=> b!330961 (=> (not res!182524) (not e!203059))))

(declare-fun lt!158691 () SeekEntryResult!3136)

(declare-fun lt!158692 () SeekEntryResult!3136)

(assert (=> b!330961 (= res!182524 (and (= lt!158692 lt!158691) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7994 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16912 (_ BitVec 32)) SeekEntryResult!3136)

(assert (=> b!330961 (= lt!158692 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!330962 () Bool)

(assert (=> b!330962 (= e!203059 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)) mask!3777) lt!158692)))))

(declare-datatypes ((Unit!10330 0))(
  ( (Unit!10331) )
))
(declare-fun lt!158693 () Unit!10330)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16912 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10330)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330962 (= lt!158693 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun res!182526 () Bool)

(assert (=> start!33308 (=> (not res!182526) (not e!203061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33308 (= res!182526 (validMask!0 mask!3777))))

(assert (=> start!33308 e!203061))

(declare-fun array_inv!5948 (array!16912) Bool)

(assert (=> start!33308 (array_inv!5948 a!3305)))

(assert (=> start!33308 true))

(declare-fun b!330963 () Bool)

(declare-fun res!182520 () Bool)

(assert (=> b!330963 (=> (not res!182520) (not e!203061))))

(assert (=> b!330963 (= res!182520 (and (= (size!8346 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8346 a!3305))))))

(declare-fun b!330964 () Bool)

(declare-fun res!182525 () Bool)

(assert (=> b!330964 (=> (not res!182525) (not e!203061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16912 (_ BitVec 32)) Bool)

(assert (=> b!330964 (= res!182525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330965 () Bool)

(declare-fun res!182523 () Bool)

(assert (=> b!330965 (=> (not res!182523) (not e!203061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330965 (= res!182523 (validKeyInArray!0 k0!2497))))

(declare-fun b!330966 () Bool)

(assert (=> b!330966 (= e!203061 e!203060)))

(declare-fun res!182519 () Bool)

(assert (=> b!330966 (=> (not res!182519) (not e!203060))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330966 (= res!182519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158691))))

(assert (=> b!330966 (= lt!158691 (Intermediate!3136 false resIndex!58 resX!58))))

(assert (= (and start!33308 res!182526) b!330963))

(assert (= (and b!330963 res!182520) b!330965))

(assert (= (and b!330965 res!182523) b!330958))

(assert (= (and b!330958 res!182521) b!330960))

(assert (= (and b!330960 res!182518) b!330964))

(assert (= (and b!330964 res!182525) b!330966))

(assert (= (and b!330966 res!182519) b!330959))

(assert (= (and b!330959 res!182522) b!330961))

(assert (= (and b!330961 res!182524) b!330962))

(declare-fun m!336001 () Bool)

(assert (=> b!330962 m!336001))

(declare-fun m!336003 () Bool)

(assert (=> b!330962 m!336003))

(declare-fun m!336005 () Bool)

(assert (=> b!330962 m!336005))

(assert (=> b!330962 m!336005))

(declare-fun m!336007 () Bool)

(assert (=> b!330962 m!336007))

(declare-fun m!336009 () Bool)

(assert (=> start!33308 m!336009))

(declare-fun m!336011 () Bool)

(assert (=> start!33308 m!336011))

(declare-fun m!336013 () Bool)

(assert (=> b!330965 m!336013))

(declare-fun m!336015 () Bool)

(assert (=> b!330959 m!336015))

(declare-fun m!336017 () Bool)

(assert (=> b!330958 m!336017))

(declare-fun m!336019 () Bool)

(assert (=> b!330966 m!336019))

(assert (=> b!330966 m!336019))

(declare-fun m!336021 () Bool)

(assert (=> b!330966 m!336021))

(declare-fun m!336023 () Bool)

(assert (=> b!330960 m!336023))

(declare-fun m!336025 () Bool)

(assert (=> b!330964 m!336025))

(declare-fun m!336027 () Bool)

(assert (=> b!330961 m!336027))

(declare-fun m!336029 () Bool)

(assert (=> b!330961 m!336029))

(check-sat (not b!330962) (not b!330961) (not b!330965) (not b!330966) (not b!330964) (not b!330958) (not start!33308) (not b!330960))
(check-sat)
(get-model)

(declare-fun b!331006 () Bool)

(declare-fun e!203082 () SeekEntryResult!3136)

(assert (=> b!331006 (= e!203082 Undefined!3136)))

(declare-fun b!331007 () Bool)

(declare-fun c!51871 () Bool)

(declare-fun lt!158710 () (_ BitVec 64))

(assert (=> b!331007 (= c!51871 (= lt!158710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203083 () SeekEntryResult!3136)

(declare-fun e!203081 () SeekEntryResult!3136)

(assert (=> b!331007 (= e!203083 e!203081)))

(declare-fun d!70241 () Bool)

(declare-fun lt!158711 () SeekEntryResult!3136)

(get-info :version)

(assert (=> d!70241 (and (or ((_ is Undefined!3136) lt!158711) (not ((_ is Found!3136) lt!158711)) (and (bvsge (index!14721 lt!158711) #b00000000000000000000000000000000) (bvslt (index!14721 lt!158711) (size!8346 a!3305)))) (or ((_ is Undefined!3136) lt!158711) ((_ is Found!3136) lt!158711) (not ((_ is MissingZero!3136) lt!158711)) (and (bvsge (index!14720 lt!158711) #b00000000000000000000000000000000) (bvslt (index!14720 lt!158711) (size!8346 a!3305)))) (or ((_ is Undefined!3136) lt!158711) ((_ is Found!3136) lt!158711) ((_ is MissingZero!3136) lt!158711) (not ((_ is MissingVacant!3136) lt!158711)) (and (bvsge (index!14723 lt!158711) #b00000000000000000000000000000000) (bvslt (index!14723 lt!158711) (size!8346 a!3305)))) (or ((_ is Undefined!3136) lt!158711) (ite ((_ is Found!3136) lt!158711) (= (select (arr!7994 a!3305) (index!14721 lt!158711)) k0!2497) (ite ((_ is MissingZero!3136) lt!158711) (= (select (arr!7994 a!3305) (index!14720 lt!158711)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3136) lt!158711) (= (select (arr!7994 a!3305) (index!14723 lt!158711)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70241 (= lt!158711 e!203082)))

(declare-fun c!51872 () Bool)

(declare-fun lt!158709 () SeekEntryResult!3136)

(assert (=> d!70241 (= c!51872 (and ((_ is Intermediate!3136) lt!158709) (undefined!3948 lt!158709)))))

(assert (=> d!70241 (= lt!158709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!70241 (validMask!0 mask!3777)))

(assert (=> d!70241 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!158711)))

(declare-fun b!331008 () Bool)

(assert (=> b!331008 (= e!203082 e!203083)))

(assert (=> b!331008 (= lt!158710 (select (arr!7994 a!3305) (index!14722 lt!158709)))))

(declare-fun c!51870 () Bool)

(assert (=> b!331008 (= c!51870 (= lt!158710 k0!2497))))

(declare-fun b!331009 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16912 (_ BitVec 32)) SeekEntryResult!3136)

(assert (=> b!331009 (= e!203081 (seekKeyOrZeroReturnVacant!0 (x!32971 lt!158709) (index!14722 lt!158709) (index!14722 lt!158709) k0!2497 a!3305 mask!3777))))

(declare-fun b!331010 () Bool)

(assert (=> b!331010 (= e!203081 (MissingZero!3136 (index!14722 lt!158709)))))

(declare-fun b!331011 () Bool)

(assert (=> b!331011 (= e!203083 (Found!3136 (index!14722 lt!158709)))))

(assert (= (and d!70241 c!51872) b!331006))

(assert (= (and d!70241 (not c!51872)) b!331008))

(assert (= (and b!331008 c!51870) b!331011))

(assert (= (and b!331008 (not c!51870)) b!331007))

(assert (= (and b!331007 c!51871) b!331010))

(assert (= (and b!331007 (not c!51871)) b!331009))

(assert (=> d!70241 m!336019))

(assert (=> d!70241 m!336021))

(declare-fun m!336061 () Bool)

(assert (=> d!70241 m!336061))

(assert (=> d!70241 m!336009))

(declare-fun m!336063 () Bool)

(assert (=> d!70241 m!336063))

(assert (=> d!70241 m!336019))

(declare-fun m!336065 () Bool)

(assert (=> d!70241 m!336065))

(declare-fun m!336067 () Bool)

(assert (=> b!331008 m!336067))

(declare-fun m!336069 () Bool)

(assert (=> b!331009 m!336069))

(assert (=> b!330960 d!70241))

(declare-fun d!70243 () Bool)

(assert (=> d!70243 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!330965 d!70243))

(declare-fun b!331066 () Bool)

(declare-fun e!203118 () SeekEntryResult!3136)

(assert (=> b!331066 (= e!203118 (Intermediate!3136 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!331067 () Bool)

(declare-fun e!203115 () Bool)

(declare-fun lt!158724 () SeekEntryResult!3136)

(assert (=> b!331067 (= e!203115 (bvsge (x!32971 lt!158724) #b01111111111111111111111111111110))))

(declare-fun d!70245 () Bool)

(assert (=> d!70245 e!203115))

(declare-fun c!51892 () Bool)

(assert (=> d!70245 (= c!51892 (and ((_ is Intermediate!3136) lt!158724) (undefined!3948 lt!158724)))))

(declare-fun e!203116 () SeekEntryResult!3136)

(assert (=> d!70245 (= lt!158724 e!203116)))

(declare-fun c!51891 () Bool)

(assert (=> d!70245 (= c!51891 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158725 () (_ BitVec 64))

(assert (=> d!70245 (= lt!158725 (select (arr!7994 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!70245 (validMask!0 mask!3777)))

(assert (=> d!70245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158724)))

(declare-fun b!331068 () Bool)

(assert (=> b!331068 (= e!203116 e!203118)))

(declare-fun c!51893 () Bool)

(assert (=> b!331068 (= c!51893 (or (= lt!158725 k0!2497) (= (bvadd lt!158725 lt!158725) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331069 () Bool)

(assert (=> b!331069 (and (bvsge (index!14722 lt!158724) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158724) (size!8346 a!3305)))))

(declare-fun res!182573 () Bool)

(assert (=> b!331069 (= res!182573 (= (select (arr!7994 a!3305) (index!14722 lt!158724)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203114 () Bool)

(assert (=> b!331069 (=> res!182573 e!203114)))

(declare-fun b!331070 () Bool)

(assert (=> b!331070 (and (bvsge (index!14722 lt!158724) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158724) (size!8346 a!3305)))))

(declare-fun res!182572 () Bool)

(assert (=> b!331070 (= res!182572 (= (select (arr!7994 a!3305) (index!14722 lt!158724)) k0!2497))))

(assert (=> b!331070 (=> res!182572 e!203114)))

(declare-fun e!203117 () Bool)

(assert (=> b!331070 (= e!203117 e!203114)))

(declare-fun b!331071 () Bool)

(assert (=> b!331071 (= e!203118 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!331072 () Bool)

(assert (=> b!331072 (and (bvsge (index!14722 lt!158724) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158724) (size!8346 a!3305)))))

(assert (=> b!331072 (= e!203114 (= (select (arr!7994 a!3305) (index!14722 lt!158724)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331073 () Bool)

(assert (=> b!331073 (= e!203116 (Intermediate!3136 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!331074 () Bool)

(assert (=> b!331074 (= e!203115 e!203117)))

(declare-fun res!182574 () Bool)

(assert (=> b!331074 (= res!182574 (and ((_ is Intermediate!3136) lt!158724) (not (undefined!3948 lt!158724)) (bvslt (x!32971 lt!158724) #b01111111111111111111111111111110) (bvsge (x!32971 lt!158724) #b00000000000000000000000000000000) (bvsge (x!32971 lt!158724) #b00000000000000000000000000000000)))))

(assert (=> b!331074 (=> (not res!182574) (not e!203117))))

(assert (= (and d!70245 c!51891) b!331073))

(assert (= (and d!70245 (not c!51891)) b!331068))

(assert (= (and b!331068 c!51893) b!331066))

(assert (= (and b!331068 (not c!51893)) b!331071))

(assert (= (and d!70245 c!51892) b!331067))

(assert (= (and d!70245 (not c!51892)) b!331074))

(assert (= (and b!331074 res!182574) b!331070))

(assert (= (and b!331070 (not res!182572)) b!331069))

(assert (= (and b!331069 (not res!182573)) b!331072))

(declare-fun m!336071 () Bool)

(assert (=> b!331070 m!336071))

(assert (=> b!331069 m!336071))

(assert (=> b!331072 m!336071))

(assert (=> d!70245 m!336019))

(declare-fun m!336073 () Bool)

(assert (=> d!70245 m!336073))

(assert (=> d!70245 m!336009))

(assert (=> b!331071 m!336019))

(declare-fun m!336075 () Bool)

(assert (=> b!331071 m!336075))

(assert (=> b!331071 m!336075))

(declare-fun m!336077 () Bool)

(assert (=> b!331071 m!336077))

(assert (=> b!330966 d!70245))

(declare-fun d!70251 () Bool)

(declare-fun lt!158735 () (_ BitVec 32))

(declare-fun lt!158734 () (_ BitVec 32))

(assert (=> d!70251 (= lt!158735 (bvmul (bvxor lt!158734 (bvlshr lt!158734 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70251 (= lt!158734 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70251 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!182581 (let ((h!5444 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32976 (bvmul (bvxor h!5444 (bvlshr h!5444 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32976 (bvlshr x!32976 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!182581 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!182581 #b00000000000000000000000000000000))))))

(assert (=> d!70251 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!158735 (bvlshr lt!158735 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!330966 d!70251))

(declare-fun d!70257 () Bool)

(assert (=> d!70257 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33308 d!70257))

(declare-fun d!70267 () Bool)

(assert (=> d!70267 (= (array_inv!5948 a!3305) (bvsge (size!8346 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33308 d!70267))

(declare-fun b!331127 () Bool)

(declare-fun e!203154 () Bool)

(declare-fun call!26170 () Bool)

(assert (=> b!331127 (= e!203154 call!26170)))

(declare-fun b!331128 () Bool)

(declare-fun e!203155 () Bool)

(assert (=> b!331128 (= e!203155 e!203154)))

(declare-fun c!51910 () Bool)

(assert (=> b!331128 (= c!51910 (validKeyInArray!0 (select (arr!7994 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26167 () Bool)

(assert (=> bm!26167 (= call!26170 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!331129 () Bool)

(declare-fun e!203153 () Bool)

(assert (=> b!331129 (= e!203154 e!203153)))

(declare-fun lt!158761 () (_ BitVec 64))

(assert (=> b!331129 (= lt!158761 (select (arr!7994 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158762 () Unit!10330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16912 (_ BitVec 64) (_ BitVec 32)) Unit!10330)

(assert (=> b!331129 (= lt!158762 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158761 #b00000000000000000000000000000000))))

(assert (=> b!331129 (arrayContainsKey!0 a!3305 lt!158761 #b00000000000000000000000000000000)))

(declare-fun lt!158760 () Unit!10330)

(assert (=> b!331129 (= lt!158760 lt!158762)))

(declare-fun res!182597 () Bool)

(assert (=> b!331129 (= res!182597 (= (seekEntryOrOpen!0 (select (arr!7994 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3136 #b00000000000000000000000000000000)))))

(assert (=> b!331129 (=> (not res!182597) (not e!203153))))

(declare-fun d!70269 () Bool)

(declare-fun res!182598 () Bool)

(assert (=> d!70269 (=> res!182598 e!203155)))

(assert (=> d!70269 (= res!182598 (bvsge #b00000000000000000000000000000000 (size!8346 a!3305)))))

(assert (=> d!70269 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!203155)))

(declare-fun b!331130 () Bool)

(assert (=> b!331130 (= e!203153 call!26170)))

(assert (= (and d!70269 (not res!182598)) b!331128))

(assert (= (and b!331128 c!51910) b!331129))

(assert (= (and b!331128 (not c!51910)) b!331127))

(assert (= (and b!331129 res!182597) b!331130))

(assert (= (or b!331130 b!331127) bm!26167))

(declare-fun m!336095 () Bool)

(assert (=> b!331128 m!336095))

(assert (=> b!331128 m!336095))

(declare-fun m!336097 () Bool)

(assert (=> b!331128 m!336097))

(declare-fun m!336099 () Bool)

(assert (=> bm!26167 m!336099))

(assert (=> b!331129 m!336095))

(declare-fun m!336101 () Bool)

(assert (=> b!331129 m!336101))

(declare-fun m!336103 () Bool)

(assert (=> b!331129 m!336103))

(assert (=> b!331129 m!336095))

(declare-fun m!336105 () Bool)

(assert (=> b!331129 m!336105))

(assert (=> b!330964 d!70269))

(declare-fun d!70273 () Bool)

(declare-fun res!182612 () Bool)

(declare-fun e!203176 () Bool)

(assert (=> d!70273 (=> res!182612 e!203176)))

(assert (=> d!70273 (= res!182612 (= (select (arr!7994 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!70273 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!203176)))

(declare-fun b!331163 () Bool)

(declare-fun e!203177 () Bool)

(assert (=> b!331163 (= e!203176 e!203177)))

(declare-fun res!182613 () Bool)

(assert (=> b!331163 (=> (not res!182613) (not e!203177))))

(assert (=> b!331163 (= res!182613 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8346 a!3305)))))

(declare-fun b!331164 () Bool)

(assert (=> b!331164 (= e!203177 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70273 (not res!182612)) b!331163))

(assert (= (and b!331163 res!182613) b!331164))

(assert (=> d!70273 m!336095))

(declare-fun m!336135 () Bool)

(assert (=> b!331164 m!336135))

(assert (=> b!330958 d!70273))

(declare-fun b!331165 () Bool)

(declare-fun e!203182 () SeekEntryResult!3136)

(assert (=> b!331165 (= e!203182 (Intermediate!3136 false index!1840 x!1490))))

(declare-fun b!331166 () Bool)

(declare-fun e!203179 () Bool)

(declare-fun lt!158773 () SeekEntryResult!3136)

(assert (=> b!331166 (= e!203179 (bvsge (x!32971 lt!158773) #b01111111111111111111111111111110))))

(declare-fun d!70281 () Bool)

(assert (=> d!70281 e!203179))

(declare-fun c!51922 () Bool)

(assert (=> d!70281 (= c!51922 (and ((_ is Intermediate!3136) lt!158773) (undefined!3948 lt!158773)))))

(declare-fun e!203180 () SeekEntryResult!3136)

(assert (=> d!70281 (= lt!158773 e!203180)))

(declare-fun c!51921 () Bool)

(assert (=> d!70281 (= c!51921 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158774 () (_ BitVec 64))

(assert (=> d!70281 (= lt!158774 (select (arr!7994 a!3305) index!1840))))

(assert (=> d!70281 (validMask!0 mask!3777)))

(assert (=> d!70281 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158773)))

(declare-fun b!331167 () Bool)

(assert (=> b!331167 (= e!203180 e!203182)))

(declare-fun c!51923 () Bool)

(assert (=> b!331167 (= c!51923 (or (= lt!158774 k0!2497) (= (bvadd lt!158774 lt!158774) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331168 () Bool)

(assert (=> b!331168 (and (bvsge (index!14722 lt!158773) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158773) (size!8346 a!3305)))))

(declare-fun res!182615 () Bool)

(assert (=> b!331168 (= res!182615 (= (select (arr!7994 a!3305) (index!14722 lt!158773)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203178 () Bool)

(assert (=> b!331168 (=> res!182615 e!203178)))

(declare-fun b!331169 () Bool)

(assert (=> b!331169 (and (bvsge (index!14722 lt!158773) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158773) (size!8346 a!3305)))))

(declare-fun res!182614 () Bool)

(assert (=> b!331169 (= res!182614 (= (select (arr!7994 a!3305) (index!14722 lt!158773)) k0!2497))))

(assert (=> b!331169 (=> res!182614 e!203178)))

(declare-fun e!203181 () Bool)

(assert (=> b!331169 (= e!203181 e!203178)))

(declare-fun b!331170 () Bool)

(assert (=> b!331170 (= e!203182 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!331171 () Bool)

(assert (=> b!331171 (and (bvsge (index!14722 lt!158773) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158773) (size!8346 a!3305)))))

(assert (=> b!331171 (= e!203178 (= (select (arr!7994 a!3305) (index!14722 lt!158773)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331172 () Bool)

(assert (=> b!331172 (= e!203180 (Intermediate!3136 true index!1840 x!1490))))

(declare-fun b!331173 () Bool)

(assert (=> b!331173 (= e!203179 e!203181)))

(declare-fun res!182616 () Bool)

(assert (=> b!331173 (= res!182616 (and ((_ is Intermediate!3136) lt!158773) (not (undefined!3948 lt!158773)) (bvslt (x!32971 lt!158773) #b01111111111111111111111111111110) (bvsge (x!32971 lt!158773) #b00000000000000000000000000000000) (bvsge (x!32971 lt!158773) x!1490)))))

(assert (=> b!331173 (=> (not res!182616) (not e!203181))))

(assert (= (and d!70281 c!51921) b!331172))

(assert (= (and d!70281 (not c!51921)) b!331167))

(assert (= (and b!331167 c!51923) b!331165))

(assert (= (and b!331167 (not c!51923)) b!331170))

(assert (= (and d!70281 c!51922) b!331166))

(assert (= (and d!70281 (not c!51922)) b!331173))

(assert (= (and b!331173 res!182616) b!331169))

(assert (= (and b!331169 (not res!182614)) b!331168))

(assert (= (and b!331168 (not res!182615)) b!331171))

(declare-fun m!336143 () Bool)

(assert (=> b!331169 m!336143))

(assert (=> b!331168 m!336143))

(assert (=> b!331171 m!336143))

(assert (=> d!70281 m!336027))

(assert (=> d!70281 m!336009))

(assert (=> b!331170 m!336005))

(assert (=> b!331170 m!336005))

(declare-fun m!336145 () Bool)

(assert (=> b!331170 m!336145))

(assert (=> b!330961 d!70281))

(declare-fun b!331174 () Bool)

(declare-fun e!203187 () SeekEntryResult!3136)

(assert (=> b!331174 (= e!203187 (Intermediate!3136 false index!1840 x!1490))))

(declare-fun b!331175 () Bool)

(declare-fun e!203184 () Bool)

(declare-fun lt!158775 () SeekEntryResult!3136)

(assert (=> b!331175 (= e!203184 (bvsge (x!32971 lt!158775) #b01111111111111111111111111111110))))

(declare-fun d!70285 () Bool)

(assert (=> d!70285 e!203184))

(declare-fun c!51925 () Bool)

(assert (=> d!70285 (= c!51925 (and ((_ is Intermediate!3136) lt!158775) (undefined!3948 lt!158775)))))

(declare-fun e!203185 () SeekEntryResult!3136)

(assert (=> d!70285 (= lt!158775 e!203185)))

(declare-fun c!51924 () Bool)

(assert (=> d!70285 (= c!51924 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158776 () (_ BitVec 64))

(assert (=> d!70285 (= lt!158776 (select (arr!7994 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305))) index!1840))))

(assert (=> d!70285 (validMask!0 mask!3777)))

(assert (=> d!70285 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)) mask!3777) lt!158775)))

(declare-fun b!331176 () Bool)

(assert (=> b!331176 (= e!203185 e!203187)))

(declare-fun c!51926 () Bool)

(assert (=> b!331176 (= c!51926 (or (= lt!158776 k0!2497) (= (bvadd lt!158776 lt!158776) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331177 () Bool)

(assert (=> b!331177 (and (bvsge (index!14722 lt!158775) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158775) (size!8346 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)))))))

(declare-fun res!182618 () Bool)

(assert (=> b!331177 (= res!182618 (= (select (arr!7994 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305))) (index!14722 lt!158775)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203183 () Bool)

(assert (=> b!331177 (=> res!182618 e!203183)))

(declare-fun b!331178 () Bool)

(assert (=> b!331178 (and (bvsge (index!14722 lt!158775) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158775) (size!8346 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)))))))

(declare-fun res!182617 () Bool)

(assert (=> b!331178 (= res!182617 (= (select (arr!7994 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305))) (index!14722 lt!158775)) k0!2497))))

(assert (=> b!331178 (=> res!182617 e!203183)))

(declare-fun e!203186 () Bool)

(assert (=> b!331178 (= e!203186 e!203183)))

(declare-fun b!331179 () Bool)

(assert (=> b!331179 (= e!203187 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)) mask!3777))))

(declare-fun b!331180 () Bool)

(assert (=> b!331180 (and (bvsge (index!14722 lt!158775) #b00000000000000000000000000000000) (bvslt (index!14722 lt!158775) (size!8346 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)))))))

(assert (=> b!331180 (= e!203183 (= (select (arr!7994 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305))) (index!14722 lt!158775)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331181 () Bool)

(assert (=> b!331181 (= e!203185 (Intermediate!3136 true index!1840 x!1490))))

(declare-fun b!331182 () Bool)

(assert (=> b!331182 (= e!203184 e!203186)))

(declare-fun res!182619 () Bool)

(assert (=> b!331182 (= res!182619 (and ((_ is Intermediate!3136) lt!158775) (not (undefined!3948 lt!158775)) (bvslt (x!32971 lt!158775) #b01111111111111111111111111111110) (bvsge (x!32971 lt!158775) #b00000000000000000000000000000000) (bvsge (x!32971 lt!158775) x!1490)))))

(assert (=> b!331182 (=> (not res!182619) (not e!203186))))

(assert (= (and d!70285 c!51924) b!331181))

(assert (= (and d!70285 (not c!51924)) b!331176))

(assert (= (and b!331176 c!51926) b!331174))

(assert (= (and b!331176 (not c!51926)) b!331179))

(assert (= (and d!70285 c!51925) b!331175))

(assert (= (and d!70285 (not c!51925)) b!331182))

(assert (= (and b!331182 res!182619) b!331178))

(assert (= (and b!331178 (not res!182617)) b!331177))

(assert (= (and b!331177 (not res!182618)) b!331180))

(declare-fun m!336147 () Bool)

(assert (=> b!331178 m!336147))

(assert (=> b!331177 m!336147))

(assert (=> b!331180 m!336147))

(declare-fun m!336149 () Bool)

(assert (=> d!70285 m!336149))

(assert (=> d!70285 m!336009))

(assert (=> b!331179 m!336005))

(assert (=> b!331179 m!336005))

(declare-fun m!336151 () Bool)

(assert (=> b!331179 m!336151))

(assert (=> b!330962 d!70285))

(declare-fun b!331265 () Bool)

(declare-fun e!203236 () Unit!10330)

(declare-fun Unit!10335 () Unit!10330)

(assert (=> b!331265 (= e!203236 Unit!10335)))

(declare-fun b!331266 () Bool)

(declare-fun e!203237 () Unit!10330)

(declare-fun Unit!10337 () Unit!10330)

(assert (=> b!331266 (= e!203237 Unit!10337)))

(declare-fun b!331267 () Bool)

(assert (=> b!331267 false))

(declare-fun Unit!10339 () Unit!10330)

(assert (=> b!331267 (= e!203236 Unit!10339)))

(declare-fun b!331268 () Bool)

(declare-fun e!203234 () (_ BitVec 32))

(assert (=> b!331268 (= e!203234 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun call!26182 () (_ BitVec 32))

(declare-fun b!331269 () Bool)

(declare-fun e!203232 () Unit!10330)

(assert (=> b!331269 (= e!203232 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) call!26182 resIndex!58 resX!58 mask!3777))))

(declare-fun d!70287 () Bool)

(declare-fun e!203235 () Bool)

(assert (=> d!70287 e!203235))

(declare-fun res!182628 () Bool)

(assert (=> d!70287 (=> (not res!182628) (not e!203235))))

(assert (=> d!70287 (= res!182628 (and (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8346 a!3305))))))

(declare-fun lt!158821 () Unit!10330)

(assert (=> d!70287 (= lt!158821 e!203232)))

(declare-fun c!51965 () Bool)

(assert (=> d!70287 (= c!51965 (= (bvadd #b00000000000000000000000000000001 x!1490) resX!58))))

(assert (=> d!70287 (validMask!0 mask!3777)))

(assert (=> d!70287 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777) lt!158821)))

(declare-fun b!331270 () Bool)

(declare-fun e!203233 () Unit!10330)

(declare-fun Unit!10343 () Unit!10330)

(assert (=> b!331270 (= e!203233 Unit!10343)))

(declare-fun call!26183 () SeekEntryResult!3136)

(assert (=> b!331270 (= call!26183 (Intermediate!3136 false (nextIndex!0 index!1840 x!1490 mask!3777) resX!58))))

(declare-fun lt!158823 () Unit!10330)

(declare-fun Unit!10344 () Unit!10330)

(assert (=> b!331270 (= lt!158823 Unit!10344)))

(assert (=> b!331270 false))

(declare-fun b!331271 () Bool)

(declare-fun Unit!10345 () Unit!10330)

(assert (=> b!331271 (= e!203233 Unit!10345)))

(declare-fun c!51966 () Bool)

(assert (=> b!331271 (= c!51966 ((_ is Intermediate!3136) call!26183))))

(declare-fun lt!158822 () Unit!10330)

(assert (=> b!331271 (= lt!158822 e!203236)))

(assert (=> b!331271 false))

(declare-fun bm!26179 () Bool)

(assert (=> bm!26179 (= call!26182 (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777))))

(declare-fun b!331272 () Bool)

(declare-fun c!51964 () Bool)

(assert (=> b!331272 (= c!51964 (or (= (select (arr!7994 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7994 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!331272 (= e!203237 e!203233)))

(declare-fun b!331273 () Bool)

(assert (=> b!331273 (= e!203234 call!26182)))

(declare-fun b!331274 () Bool)

(declare-fun Unit!10347 () Unit!10330)

(assert (=> b!331274 (= e!203232 Unit!10347)))

(declare-fun c!51968 () Bool)

(assert (=> b!331274 (= c!51968 (not (= resIndex!58 (nextIndex!0 index!1840 x!1490 mask!3777))))))

(declare-fun lt!158820 () Unit!10330)

(assert (=> b!331274 (= lt!158820 e!203237)))

(assert (=> b!331274 (= (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58)))

(declare-fun lt!158819 () Unit!10330)

(declare-fun Unit!10349 () Unit!10330)

(assert (=> b!331274 (= lt!158819 Unit!10349)))

(assert (=> b!331274 (= (select (arr!7994 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun bm!26180 () Bool)

(assert (=> bm!26180 (= call!26183 (seekKeyOrZeroOrLongMinValue!0 (ite c!51964 (bvadd #b00000000000000000000000000000001 x!1490) (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001)) e!203234 k0!2497 a!3305 mask!3777))))

(declare-fun c!51967 () Bool)

(assert (=> bm!26180 (= c!51967 c!51964)))

(declare-fun b!331275 () Bool)

(assert (=> b!331275 (= e!203235 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 (array!16913 (store (arr!7994 a!3305) i!1250 k0!2497) (size!8346 a!3305)) mask!3777) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(assert (= (and d!70287 c!51965) b!331274))

(assert (= (and d!70287 (not c!51965)) b!331269))

(assert (= (and b!331274 c!51968) b!331272))

(assert (= (and b!331274 (not c!51968)) b!331266))

(assert (= (and b!331272 c!51964) b!331270))

(assert (= (and b!331272 (not c!51964)) b!331271))

(assert (= (and b!331271 c!51966) b!331265))

(assert (= (and b!331271 (not c!51966)) b!331267))

(assert (= (or b!331270 b!331271) bm!26180))

(assert (= (and bm!26180 c!51967) b!331268))

(assert (= (and bm!26180 (not c!51967)) b!331273))

(assert (= (or b!331273 b!331269) bm!26179))

(assert (= (and d!70287 res!182628) b!331275))

(declare-fun m!336181 () Bool)

(assert (=> b!331269 m!336181))

(assert (=> b!331272 m!336005))

(declare-fun m!336183 () Bool)

(assert (=> b!331272 m!336183))

(assert (=> b!331274 m!336005))

(assert (=> b!331274 m!336183))

(assert (=> bm!26179 m!336005))

(declare-fun m!336185 () Bool)

(assert (=> bm!26179 m!336185))

(assert (=> b!331275 m!336001))

(assert (=> b!331275 m!336005))

(declare-fun m!336187 () Bool)

(assert (=> b!331275 m!336187))

(assert (=> b!331275 m!336005))

(declare-fun m!336189 () Bool)

(assert (=> b!331275 m!336189))

(assert (=> d!70287 m!336009))

(declare-fun m!336191 () Bool)

(assert (=> bm!26180 m!336191))

(assert (=> b!330962 d!70287))

(declare-fun d!70297 () Bool)

(declare-fun lt!158829 () (_ BitVec 32))

(assert (=> d!70297 (and (bvsge lt!158829 #b00000000000000000000000000000000) (bvslt lt!158829 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70297 (= lt!158829 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70297 (validMask!0 mask!3777)))

(assert (=> d!70297 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158829)))

(declare-fun bs!11441 () Bool)

(assert (= bs!11441 d!70297))

(declare-fun m!336195 () Bool)

(assert (=> bs!11441 m!336195))

(assert (=> bs!11441 m!336009))

(assert (=> b!330962 d!70297))

(check-sat (not d!70245) (not bm!26167) (not b!331170) (not bm!26180) (not b!331128) (not d!70281) (not d!70297) (not d!70285) (not d!70241) (not d!70287) (not b!331164) (not b!331071) (not b!331009) (not b!331275) (not b!331179) (not bm!26179) (not b!331269) (not b!331129))
(check-sat)
