; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51644 () Bool)

(assert start!51644)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!564804 () Bool)

(declare-datatypes ((array!35463 0))(
  ( (array!35464 (arr!17028 (Array (_ BitVec 32) (_ BitVec 64))) (size!17392 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35463)

(declare-fun e!325212 () Bool)

(declare-datatypes ((SeekEntryResult!5484 0))(
  ( (MissingZero!5484 (index!24163 (_ BitVec 32))) (Found!5484 (index!24164 (_ BitVec 32))) (Intermediate!5484 (undefined!6296 Bool) (index!24165 (_ BitVec 32)) (x!53062 (_ BitVec 32))) (Undefined!5484) (MissingVacant!5484 (index!24166 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35463 (_ BitVec 32)) SeekEntryResult!5484)

(assert (=> b!564804 (= e!325212 (not (= (seekEntryOrOpen!0 (select (arr!17028 a!3118) j!142) a!3118 mask!3119) (Found!5484 j!142))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35463 (_ BitVec 32)) Bool)

(assert (=> b!564804 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17670 0))(
  ( (Unit!17671) )
))
(declare-fun lt!257690 () Unit!17670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17670)

(assert (=> b!564804 (= lt!257690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!564805 () Bool)

(declare-fun res!356112 () Bool)

(declare-fun e!325211 () Bool)

(assert (=> b!564805 (=> (not res!356112) (not e!325211))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564805 (= res!356112 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564806 () Bool)

(declare-fun res!356113 () Bool)

(assert (=> b!564806 (=> (not res!356113) (not e!325211))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564806 (= res!356113 (and (= (size!17392 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17392 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17392 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!356109 () Bool)

(assert (=> start!51644 (=> (not res!356109) (not e!325211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51644 (= res!356109 (validMask!0 mask!3119))))

(assert (=> start!51644 e!325211))

(assert (=> start!51644 true))

(declare-fun array_inv!12802 (array!35463) Bool)

(assert (=> start!51644 (array_inv!12802 a!3118)))

(declare-fun b!564807 () Bool)

(declare-fun res!356110 () Bool)

(assert (=> b!564807 (=> (not res!356110) (not e!325212))))

(declare-datatypes ((List!11161 0))(
  ( (Nil!11158) (Cons!11157 (h!12160 (_ BitVec 64)) (t!17397 List!11161)) )
))
(declare-fun arrayNoDuplicates!0 (array!35463 (_ BitVec 32) List!11161) Bool)

(assert (=> b!564807 (= res!356110 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11158))))

(declare-fun b!564808 () Bool)

(declare-fun res!356114 () Bool)

(assert (=> b!564808 (=> (not res!356114) (not e!325211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564808 (= res!356114 (validKeyInArray!0 (select (arr!17028 a!3118) j!142)))))

(declare-fun b!564809 () Bool)

(declare-fun res!356106 () Bool)

(assert (=> b!564809 (=> (not res!356106) (not e!325211))))

(assert (=> b!564809 (= res!356106 (validKeyInArray!0 k!1914))))

(declare-fun b!564810 () Bool)

(assert (=> b!564810 (= e!325211 e!325212)))

(declare-fun res!356108 () Bool)

(assert (=> b!564810 (=> (not res!356108) (not e!325212))))

(declare-fun lt!257689 () SeekEntryResult!5484)

(assert (=> b!564810 (= res!356108 (or (= lt!257689 (MissingZero!5484 i!1132)) (= lt!257689 (MissingVacant!5484 i!1132))))))

(assert (=> b!564810 (= lt!257689 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564811 () Bool)

(declare-fun res!356107 () Bool)

(assert (=> b!564811 (=> (not res!356107) (not e!325212))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35463 (_ BitVec 32)) SeekEntryResult!5484)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564811 (= res!356107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) (select (arr!17028 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)) mask!3119)))))

(declare-fun b!564812 () Bool)

(declare-fun res!356111 () Bool)

(assert (=> b!564812 (=> (not res!356111) (not e!325212))))

(assert (=> b!564812 (= res!356111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51644 res!356109) b!564806))

(assert (= (and b!564806 res!356113) b!564808))

(assert (= (and b!564808 res!356114) b!564809))

(assert (= (and b!564809 res!356106) b!564805))

(assert (= (and b!564805 res!356112) b!564810))

(assert (= (and b!564810 res!356108) b!564812))

(assert (= (and b!564812 res!356111) b!564807))

(assert (= (and b!564807 res!356110) b!564811))

(assert (= (and b!564811 res!356107) b!564804))

(declare-fun m!543355 () Bool)

(assert (=> b!564809 m!543355))

(declare-fun m!543357 () Bool)

(assert (=> b!564812 m!543357))

(declare-fun m!543359 () Bool)

(assert (=> b!564804 m!543359))

(assert (=> b!564804 m!543359))

(declare-fun m!543361 () Bool)

(assert (=> b!564804 m!543361))

(declare-fun m!543363 () Bool)

(assert (=> b!564804 m!543363))

(declare-fun m!543365 () Bool)

(assert (=> b!564804 m!543365))

(declare-fun m!543367 () Bool)

(assert (=> b!564810 m!543367))

(declare-fun m!543369 () Bool)

(assert (=> b!564805 m!543369))

(assert (=> b!564811 m!543359))

(declare-fun m!543371 () Bool)

(assert (=> b!564811 m!543371))

(assert (=> b!564811 m!543359))

(declare-fun m!543373 () Bool)

(assert (=> b!564811 m!543373))

(declare-fun m!543375 () Bool)

(assert (=> b!564811 m!543375))

(assert (=> b!564811 m!543373))

(declare-fun m!543377 () Bool)

(assert (=> b!564811 m!543377))

(assert (=> b!564811 m!543371))

(assert (=> b!564811 m!543359))

(declare-fun m!543379 () Bool)

(assert (=> b!564811 m!543379))

(declare-fun m!543381 () Bool)

(assert (=> b!564811 m!543381))

(assert (=> b!564811 m!543373))

(assert (=> b!564811 m!543375))

(declare-fun m!543383 () Bool)

(assert (=> b!564807 m!543383))

(assert (=> b!564808 m!543359))

(assert (=> b!564808 m!543359))

(declare-fun m!543385 () Bool)

(assert (=> b!564808 m!543385))

(declare-fun m!543387 () Bool)

(assert (=> start!51644 m!543387))

(declare-fun m!543389 () Bool)

(assert (=> start!51644 m!543389))

(push 1)

(assert (not b!564811))

(assert (not b!564810))

(assert (not b!564812))

(assert (not b!564804))

(assert (not b!564807))

(assert (not start!51644))

(assert (not b!564808))

(assert (not b!564805))

(assert (not b!564809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!564879 () Bool)

(declare-fun e!325239 () SeekEntryResult!5484)

(declare-fun lt!257711 () SeekEntryResult!5484)

(assert (=> b!564879 (= e!325239 (MissingZero!5484 (index!24165 lt!257711)))))

(declare-fun b!564880 () Bool)

(declare-fun c!64703 () Bool)

(declare-fun lt!257709 () (_ BitVec 64))

(assert (=> b!564880 (= c!64703 (= lt!257709 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325240 () SeekEntryResult!5484)

(assert (=> b!564880 (= e!325240 e!325239)))

(declare-fun b!564881 () Bool)

(assert (=> b!564881 (= e!325240 (Found!5484 (index!24165 lt!257711)))))

(declare-fun b!564882 () Bool)

(declare-fun e!325238 () SeekEntryResult!5484)

(assert (=> b!564882 (= e!325238 e!325240)))

(assert (=> b!564882 (= lt!257709 (select (arr!17028 a!3118) (index!24165 lt!257711)))))

(declare-fun c!64701 () Bool)

(assert (=> b!564882 (= c!64701 (= lt!257709 k!1914))))

(declare-fun b!564883 () Bool)

(assert (=> b!564883 (= e!325238 Undefined!5484)))

(declare-fun b!564884 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35463 (_ BitVec 32)) SeekEntryResult!5484)

(assert (=> b!564884 (= e!325239 (seekKeyOrZeroReturnVacant!0 (x!53062 lt!257711) (index!24165 lt!257711) (index!24165 lt!257711) k!1914 a!3118 mask!3119))))

(declare-fun d!83869 () Bool)

(declare-fun lt!257710 () SeekEntryResult!5484)

(assert (=> d!83869 (and (or (is-Undefined!5484 lt!257710) (not (is-Found!5484 lt!257710)) (and (bvsge (index!24164 lt!257710) #b00000000000000000000000000000000) (bvslt (index!24164 lt!257710) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257710) (is-Found!5484 lt!257710) (not (is-MissingZero!5484 lt!257710)) (and (bvsge (index!24163 lt!257710) #b00000000000000000000000000000000) (bvslt (index!24163 lt!257710) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257710) (is-Found!5484 lt!257710) (is-MissingZero!5484 lt!257710) (not (is-MissingVacant!5484 lt!257710)) (and (bvsge (index!24166 lt!257710) #b00000000000000000000000000000000) (bvslt (index!24166 lt!257710) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257710) (ite (is-Found!5484 lt!257710) (= (select (arr!17028 a!3118) (index!24164 lt!257710)) k!1914) (ite (is-MissingZero!5484 lt!257710) (= (select (arr!17028 a!3118) (index!24163 lt!257710)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5484 lt!257710) (= (select (arr!17028 a!3118) (index!24166 lt!257710)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83869 (= lt!257710 e!325238)))

(declare-fun c!64702 () Bool)

(assert (=> d!83869 (= c!64702 (and (is-Intermediate!5484 lt!257711) (undefined!6296 lt!257711)))))

(assert (=> d!83869 (= lt!257711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83869 (validMask!0 mask!3119)))

(assert (=> d!83869 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!257710)))

(assert (= (and d!83869 c!64702) b!564883))

(assert (= (and d!83869 (not c!64702)) b!564882))

(assert (= (and b!564882 c!64701) b!564881))

(assert (= (and b!564882 (not c!64701)) b!564880))

(assert (= (and b!564880 c!64703) b!564879))

(assert (= (and b!564880 (not c!64703)) b!564884))

(declare-fun m!543463 () Bool)

(assert (=> b!564882 m!543463))

(declare-fun m!543465 () Bool)

(assert (=> b!564884 m!543465))

(declare-fun m!543467 () Bool)

(assert (=> d!83869 m!543467))

(declare-fun m!543469 () Bool)

(assert (=> d!83869 m!543469))

(declare-fun m!543471 () Bool)

(assert (=> d!83869 m!543471))

(declare-fun m!543473 () Bool)

(assert (=> d!83869 m!543473))

(assert (=> d!83869 m!543387))

(assert (=> d!83869 m!543467))

(declare-fun m!543475 () Bool)

(assert (=> d!83869 m!543475))

(assert (=> b!564810 d!83869))

(declare-fun d!83879 () Bool)

(assert (=> d!83879 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564809 d!83879))

(declare-fun b!564885 () Bool)

(declare-fun e!325242 () SeekEntryResult!5484)

(declare-fun lt!257714 () SeekEntryResult!5484)

(assert (=> b!564885 (= e!325242 (MissingZero!5484 (index!24165 lt!257714)))))

(declare-fun b!564886 () Bool)

(declare-fun c!64706 () Bool)

(declare-fun lt!257712 () (_ BitVec 64))

(assert (=> b!564886 (= c!64706 (= lt!257712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325243 () SeekEntryResult!5484)

(assert (=> b!564886 (= e!325243 e!325242)))

(declare-fun b!564887 () Bool)

(assert (=> b!564887 (= e!325243 (Found!5484 (index!24165 lt!257714)))))

(declare-fun b!564888 () Bool)

(declare-fun e!325241 () SeekEntryResult!5484)

(assert (=> b!564888 (= e!325241 e!325243)))

(assert (=> b!564888 (= lt!257712 (select (arr!17028 a!3118) (index!24165 lt!257714)))))

(declare-fun c!64704 () Bool)

(assert (=> b!564888 (= c!64704 (= lt!257712 (select (arr!17028 a!3118) j!142)))))

(declare-fun b!564889 () Bool)

(assert (=> b!564889 (= e!325241 Undefined!5484)))

(declare-fun b!564890 () Bool)

(assert (=> b!564890 (= e!325242 (seekKeyOrZeroReturnVacant!0 (x!53062 lt!257714) (index!24165 lt!257714) (index!24165 lt!257714) (select (arr!17028 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!83881 () Bool)

(declare-fun lt!257713 () SeekEntryResult!5484)

(assert (=> d!83881 (and (or (is-Undefined!5484 lt!257713) (not (is-Found!5484 lt!257713)) (and (bvsge (index!24164 lt!257713) #b00000000000000000000000000000000) (bvslt (index!24164 lt!257713) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257713) (is-Found!5484 lt!257713) (not (is-MissingZero!5484 lt!257713)) (and (bvsge (index!24163 lt!257713) #b00000000000000000000000000000000) (bvslt (index!24163 lt!257713) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257713) (is-Found!5484 lt!257713) (is-MissingZero!5484 lt!257713) (not (is-MissingVacant!5484 lt!257713)) (and (bvsge (index!24166 lt!257713) #b00000000000000000000000000000000) (bvslt (index!24166 lt!257713) (size!17392 a!3118)))) (or (is-Undefined!5484 lt!257713) (ite (is-Found!5484 lt!257713) (= (select (arr!17028 a!3118) (index!24164 lt!257713)) (select (arr!17028 a!3118) j!142)) (ite (is-MissingZero!5484 lt!257713) (= (select (arr!17028 a!3118) (index!24163 lt!257713)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5484 lt!257713) (= (select (arr!17028 a!3118) (index!24166 lt!257713)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83881 (= lt!257713 e!325241)))

(declare-fun c!64705 () Bool)

(assert (=> d!83881 (= c!64705 (and (is-Intermediate!5484 lt!257714) (undefined!6296 lt!257714)))))

(assert (=> d!83881 (= lt!257714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) (select (arr!17028 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83881 (validMask!0 mask!3119)))

(assert (=> d!83881 (= (seekEntryOrOpen!0 (select (arr!17028 a!3118) j!142) a!3118 mask!3119) lt!257713)))

(assert (= (and d!83881 c!64705) b!564889))

(assert (= (and d!83881 (not c!64705)) b!564888))

(assert (= (and b!564888 c!64704) b!564887))

(assert (= (and b!564888 (not c!64704)) b!564886))

(assert (= (and b!564886 c!64706) b!564885))

(assert (= (and b!564886 (not c!64706)) b!564890))

(declare-fun m!543477 () Bool)

(assert (=> b!564888 m!543477))

(assert (=> b!564890 m!543359))

(declare-fun m!543479 () Bool)

(assert (=> b!564890 m!543479))

(assert (=> d!83881 m!543371))

(assert (=> d!83881 m!543359))

(assert (=> d!83881 m!543379))

(declare-fun m!543481 () Bool)

(assert (=> d!83881 m!543481))

(declare-fun m!543483 () Bool)

(assert (=> d!83881 m!543483))

(assert (=> d!83881 m!543387))

(assert (=> d!83881 m!543359))

(assert (=> d!83881 m!543371))

(declare-fun m!543485 () Bool)

(assert (=> d!83881 m!543485))

(assert (=> b!564804 d!83881))

(declare-fun b!564911 () Bool)

(declare-fun e!325257 () Bool)

(declare-fun call!32456 () Bool)

(assert (=> b!564911 (= e!325257 call!32456)))

(declare-fun b!564912 () Bool)

(declare-fun e!325256 () Bool)

(declare-fun e!325258 () Bool)

(assert (=> b!564912 (= e!325256 e!325258)))

(declare-fun c!64715 () Bool)

(assert (=> b!564912 (= c!64715 (validKeyInArray!0 (select (arr!17028 a!3118) j!142)))))

(declare-fun d!83883 () Bool)

(declare-fun res!356174 () Bool)

(assert (=> d!83883 (=> res!356174 e!325256)))

(assert (=> d!83883 (= res!356174 (bvsge j!142 (size!17392 a!3118)))))

(assert (=> d!83883 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!325256)))

(declare-fun bm!32453 () Bool)

(assert (=> bm!32453 (= call!32456 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!564913 () Bool)

(assert (=> b!564913 (= e!325258 call!32456)))

(declare-fun b!564914 () Bool)

(assert (=> b!564914 (= e!325258 e!325257)))

(declare-fun lt!257729 () (_ BitVec 64))

(assert (=> b!564914 (= lt!257729 (select (arr!17028 a!3118) j!142))))

(declare-fun lt!257727 () Unit!17670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35463 (_ BitVec 64) (_ BitVec 32)) Unit!17670)

(assert (=> b!564914 (= lt!257727 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!257729 j!142))))

(assert (=> b!564914 (arrayContainsKey!0 a!3118 lt!257729 #b00000000000000000000000000000000)))

(declare-fun lt!257728 () Unit!17670)

(assert (=> b!564914 (= lt!257728 lt!257727)))

(declare-fun res!356173 () Bool)

(assert (=> b!564914 (= res!356173 (= (seekEntryOrOpen!0 (select (arr!17028 a!3118) j!142) a!3118 mask!3119) (Found!5484 j!142)))))

(assert (=> b!564914 (=> (not res!356173) (not e!325257))))

(assert (= (and d!83883 (not res!356174)) b!564912))

(assert (= (and b!564912 c!64715) b!564914))

(assert (= (and b!564912 (not c!64715)) b!564913))

(assert (= (and b!564914 res!356173) b!564911))

(assert (= (or b!564911 b!564913) bm!32453))

(assert (=> b!564912 m!543359))

(assert (=> b!564912 m!543359))

(assert (=> b!564912 m!543385))

(declare-fun m!543487 () Bool)

(assert (=> bm!32453 m!543487))

(assert (=> b!564914 m!543359))

(declare-fun m!543489 () Bool)

(assert (=> b!564914 m!543489))

(declare-fun m!543491 () Bool)

(assert (=> b!564914 m!543491))

(assert (=> b!564914 m!543359))

(assert (=> b!564914 m!543361))

(assert (=> b!564804 d!83883))

(declare-fun d!83885 () Bool)

(assert (=> d!83885 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!257735 () Unit!17670)

(declare-fun choose!38 (array!35463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17670)

(assert (=> d!83885 (= lt!257735 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83885 (validMask!0 mask!3119)))

(assert (=> d!83885 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!257735)))

(declare-fun bs!17553 () Bool)

(assert (= bs!17553 d!83885))

(assert (=> bs!17553 m!543363))

(declare-fun m!543507 () Bool)

(assert (=> bs!17553 m!543507))

(assert (=> bs!17553 m!543387))

(assert (=> b!564804 d!83885))

(declare-fun b!565008 () Bool)

(declare-fun lt!257771 () SeekEntryResult!5484)

(assert (=> b!565008 (and (bvsge (index!24165 lt!257771) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257771) (size!17392 a!3118)))))

(declare-fun res!356211 () Bool)

(assert (=> b!565008 (= res!356211 (= (select (arr!17028 a!3118) (index!24165 lt!257771)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325319 () Bool)

(assert (=> b!565008 (=> res!356211 e!325319)))

(declare-fun b!565009 () Bool)

(declare-fun e!325318 () SeekEntryResult!5484)

(declare-fun e!325317 () SeekEntryResult!5484)

(assert (=> b!565009 (= e!325318 e!325317)))

(declare-fun lt!257772 () (_ BitVec 64))

(declare-fun c!64748 () Bool)

(assert (=> b!565009 (= c!64748 (or (= lt!257772 (select (arr!17028 a!3118) j!142)) (= (bvadd lt!257772 lt!257772) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!565010 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565010 (= e!325317 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!17028 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!565011 () Bool)

(assert (=> b!565011 (= e!325318 (Intermediate!5484 true (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565012 () Bool)

(declare-fun e!325320 () Bool)

(assert (=> b!565012 (= e!325320 (bvsge (x!53062 lt!257771) #b01111111111111111111111111111110))))

(declare-fun b!565013 () Bool)

(assert (=> b!565013 (and (bvsge (index!24165 lt!257771) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257771) (size!17392 a!3118)))))

(assert (=> b!565013 (= e!325319 (= (select (arr!17028 a!3118) (index!24165 lt!257771)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!83889 () Bool)

(assert (=> d!83889 e!325320))

(declare-fun c!64746 () Bool)

(assert (=> d!83889 (= c!64746 (and (is-Intermediate!5484 lt!257771) (undefined!6296 lt!257771)))))

(assert (=> d!83889 (= lt!257771 e!325318)))

(declare-fun c!64747 () Bool)

(assert (=> d!83889 (= c!64747 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83889 (= lt!257772 (select (arr!17028 a!3118) (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119)))))

(assert (=> d!83889 (validMask!0 mask!3119)))

(assert (=> d!83889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) (select (arr!17028 a!3118) j!142) a!3118 mask!3119) lt!257771)))

(declare-fun b!565014 () Bool)

(assert (=> b!565014 (and (bvsge (index!24165 lt!257771) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257771) (size!17392 a!3118)))))

(declare-fun res!356209 () Bool)

(assert (=> b!565014 (= res!356209 (= (select (arr!17028 a!3118) (index!24165 lt!257771)) (select (arr!17028 a!3118) j!142)))))

(assert (=> b!565014 (=> res!356209 e!325319)))

(declare-fun e!325316 () Bool)

(assert (=> b!565014 (= e!325316 e!325319)))

(declare-fun b!565015 () Bool)

(assert (=> b!565015 (= e!325317 (Intermediate!5484 false (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565016 () Bool)

(assert (=> b!565016 (= e!325320 e!325316)))

(declare-fun res!356210 () Bool)

(assert (=> b!565016 (= res!356210 (and (is-Intermediate!5484 lt!257771) (not (undefined!6296 lt!257771)) (bvslt (x!53062 lt!257771) #b01111111111111111111111111111110) (bvsge (x!53062 lt!257771) #b00000000000000000000000000000000) (bvsge (x!53062 lt!257771) #b00000000000000000000000000000000)))))

(assert (=> b!565016 (=> (not res!356210) (not e!325316))))

(assert (= (and d!83889 c!64747) b!565011))

(assert (= (and d!83889 (not c!64747)) b!565009))

(assert (= (and b!565009 c!64748) b!565015))

(assert (= (and b!565009 (not c!64748)) b!565010))

(assert (= (and d!83889 c!64746) b!565012))

(assert (= (and d!83889 (not c!64746)) b!565016))

(assert (= (and b!565016 res!356210) b!565014))

(assert (= (and b!565014 (not res!356209)) b!565008))

(assert (= (and b!565008 (not res!356211)) b!565013))

(assert (=> b!565010 m!543371))

(declare-fun m!543551 () Bool)

(assert (=> b!565010 m!543551))

(assert (=> b!565010 m!543551))

(assert (=> b!565010 m!543359))

(declare-fun m!543553 () Bool)

(assert (=> b!565010 m!543553))

(declare-fun m!543555 () Bool)

(assert (=> b!565013 m!543555))

(assert (=> b!565014 m!543555))

(assert (=> b!565008 m!543555))

(assert (=> d!83889 m!543371))

(declare-fun m!543557 () Bool)

(assert (=> d!83889 m!543557))

(assert (=> d!83889 m!543387))

(assert (=> b!564811 d!83889))

(declare-fun d!83907 () Bool)

(declare-fun lt!257778 () (_ BitVec 32))

(declare-fun lt!257777 () (_ BitVec 32))

(assert (=> d!83907 (= lt!257778 (bvmul (bvxor lt!257777 (bvlshr lt!257777 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83907 (= lt!257777 ((_ extract 31 0) (bvand (bvxor (select (arr!17028 a!3118) j!142) (bvlshr (select (arr!17028 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83907 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356212 (let ((h!12164 ((_ extract 31 0) (bvand (bvxor (select (arr!17028 a!3118) j!142) (bvlshr (select (arr!17028 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53068 (bvmul (bvxor h!12164 (bvlshr h!12164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53068 (bvlshr x!53068 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356212 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356212 #b00000000000000000000000000000000))))))

(assert (=> d!83907 (= (toIndex!0 (select (arr!17028 a!3118) j!142) mask!3119) (bvand (bvxor lt!257778 (bvlshr lt!257778 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564811 d!83907))

(declare-fun lt!257779 () SeekEntryResult!5484)

(declare-fun b!565017 () Bool)

(assert (=> b!565017 (and (bvsge (index!24165 lt!257779) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257779) (size!17392 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)))))))

(declare-fun res!356215 () Bool)

(assert (=> b!565017 (= res!356215 (= (select (arr!17028 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118))) (index!24165 lt!257779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325324 () Bool)

(assert (=> b!565017 (=> res!356215 e!325324)))

(declare-fun b!565018 () Bool)

(declare-fun e!325323 () SeekEntryResult!5484)

(declare-fun e!325322 () SeekEntryResult!5484)

(assert (=> b!565018 (= e!325323 e!325322)))

(declare-fun c!64751 () Bool)

(declare-fun lt!257780 () (_ BitVec 64))

(assert (=> b!565018 (= c!64751 (or (= lt!257780 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!257780 lt!257780) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!565019 () Bool)

(assert (=> b!565019 (= e!325322 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)) mask!3119))))

(declare-fun b!565020 () Bool)

(assert (=> b!565020 (= e!325323 (Intermediate!5484 true (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565021 () Bool)

(declare-fun e!325325 () Bool)

(assert (=> b!565021 (= e!325325 (bvsge (x!53062 lt!257779) #b01111111111111111111111111111110))))

(declare-fun b!565022 () Bool)

(assert (=> b!565022 (and (bvsge (index!24165 lt!257779) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257779) (size!17392 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)))))))

(assert (=> b!565022 (= e!325324 (= (select (arr!17028 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118))) (index!24165 lt!257779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!83909 () Bool)

(assert (=> d!83909 e!325325))

(declare-fun c!64749 () Bool)

(assert (=> d!83909 (= c!64749 (and (is-Intermediate!5484 lt!257779) (undefined!6296 lt!257779)))))

(assert (=> d!83909 (= lt!257779 e!325323)))

(declare-fun c!64750 () Bool)

(assert (=> d!83909 (= c!64750 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83909 (= lt!257780 (select (arr!17028 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118))) (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!83909 (validMask!0 mask!3119)))

(assert (=> d!83909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)) mask!3119) lt!257779)))

(declare-fun b!565023 () Bool)

(assert (=> b!565023 (and (bvsge (index!24165 lt!257779) #b00000000000000000000000000000000) (bvslt (index!24165 lt!257779) (size!17392 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118)))))))

(declare-fun res!356213 () Bool)

(assert (=> b!565023 (= res!356213 (= (select (arr!17028 (array!35464 (store (arr!17028 a!3118) i!1132 k!1914) (size!17392 a!3118))) (index!24165 lt!257779)) (select (store (arr!17028 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!565023 (=> res!356213 e!325324)))

(declare-fun e!325321 () Bool)

(assert (=> b!565023 (= e!325321 e!325324)))

(declare-fun b!565024 () Bool)

(assert (=> b!565024 (= e!325322 (Intermediate!5484 false (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565025 () Bool)

(assert (=> b!565025 (= e!325325 e!325321)))

(declare-fun res!356214 () Bool)

(assert (=> b!565025 (= res!356214 (and (is-Intermediate!5484 lt!257779) (not (undefined!6296 lt!257779)) (bvslt (x!53062 lt!257779) #b01111111111111111111111111111110) (bvsge (x!53062 lt!257779) #b00000000000000000000000000000000) (bvsge (x!53062 lt!257779) #b00000000000000000000000000000000)))))

(assert (=> b!565025 (=> (not res!356214) (not e!325321))))

(assert (= (and d!83909 c!64750) b!565020))

(assert (= (and d!83909 (not c!64750)) b!565018))

(assert (= (and b!565018 c!64751) b!565024))

(assert (= (and b!565018 (not c!64751)) b!565019))

(assert (= (and d!83909 c!64749) b!565021))

(assert (= (and d!83909 (not c!64749)) b!565025))

(assert (= (and b!565025 res!356214) b!565023))

(assert (= (and b!565023 (not res!356213)) b!565017))

(assert (= (and b!565017 (not res!356215)) b!565022))

(assert (=> b!565019 m!543375))

(declare-fun m!543559 () Bool)

(assert (=> b!565019 m!543559))

(assert (=> b!565019 m!543559))

(assert (=> b!565019 m!543373))

(declare-fun m!543561 () Bool)

(assert (=> b!565019 m!543561))

(declare-fun m!543563 () Bool)

(assert (=> b!565022 m!543563))

(assert (=> b!565023 m!543563))

(assert (=> b!565017 m!543563))

(assert (=> d!83909 m!543375))

(declare-fun m!543565 () Bool)

(assert (=> d!83909 m!543565))

(assert (=> d!83909 m!543387))

(assert (=> b!564811 d!83909))

(declare-fun d!83911 () Bool)

(declare-fun lt!257782 () (_ BitVec 32))

(declare-fun lt!257781 () (_ BitVec 32))

(assert (=> d!83911 (= lt!257782 (bvmul (bvxor lt!257781 (bvlshr lt!257781 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83911 (= lt!257781 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83911 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356212 (let ((h!12164 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53068 (bvmul (bvxor h!12164 (bvlshr h!12164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53068 (bvlshr x!53068 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356212 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356212 #b00000000000000000000000000000000))))))

(assert (=> d!83911 (= (toIndex!0 (select (store (arr!17028 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!257782 (bvlshr lt!257782 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564811 d!83911))

(declare-fun d!83913 () Bool)

(declare-fun res!356220 () Bool)

(declare-fun e!325330 () Bool)

(assert (=> d!83913 (=> res!356220 e!325330)))

(assert (=> d!83913 (= res!356220 (= (select (arr!17028 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83913 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!325330)))

(declare-fun b!565030 () Bool)

(declare-fun e!325331 () Bool)

(assert (=> b!565030 (= e!325330 e!325331)))

(declare-fun res!356221 () Bool)

(assert (=> b!565030 (=> (not res!356221) (not e!325331))))

(assert (=> b!565030 (= res!356221 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17392 a!3118)))))

(declare-fun b!565031 () Bool)

(assert (=> b!565031 (= e!325331 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83913 (not res!356220)) b!565030))

(assert (= (and b!565030 res!356221) b!565031))

(declare-fun m!543567 () Bool)

(assert (=> d!83913 m!543567))

(declare-fun m!543569 () Bool)

(assert (=> b!565031 m!543569))

(assert (=> b!564805 d!83913))

(declare-fun b!565072 () Bool)

(declare-fun e!325358 () Bool)

(declare-fun call!32465 () Bool)

(assert (=> b!565072 (= e!325358 call!32465)))

(declare-fun b!565073 () Bool)

(assert (=> b!565073 (= e!325358 call!32465)))

(declare-fun b!565074 () Bool)

(declare-fun e!325359 () Bool)

(declare-fun contains!2867 (List!11161 (_ BitVec 64)) Bool)

(assert (=> b!565074 (= e!325359 (contains!2867 Nil!11158 (select (arr!17028 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!565075 () Bool)

(declare-fun e!325356 () Bool)

(assert (=> b!565075 (= e!325356 e!325358)))

(declare-fun c!64766 () Bool)

(assert (=> b!565075 (= c!64766 (validKeyInArray!0 (select (arr!17028 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!565076 () Bool)

(declare-fun e!325357 () Bool)

(assert (=> b!565076 (= e!325357 e!325356)))

(declare-fun res!356236 () Bool)

(assert (=> b!565076 (=> (not res!356236) (not e!325356))))

(assert (=> b!565076 (= res!356236 (not e!325359))))

(declare-fun res!356234 () Bool)

(assert (=> b!565076 (=> (not res!356234) (not e!325359))))

(assert (=> b!565076 (= res!356234 (validKeyInArray!0 (select (arr!17028 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32462 () Bool)

(assert (=> bm!32462 (= call!32465 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64766 (Cons!11157 (select (arr!17028 a!3118) #b00000000000000000000000000000000) Nil!11158) Nil!11158)))))

(declare-fun d!83915 () Bool)

(declare-fun res!356235 () Bool)

(assert (=> d!83915 (=> res!356235 e!325357)))

(assert (=> d!83915 (= res!356235 (bvsge #b00000000000000000000000000000000 (size!17392 a!3118)))))

(assert (=> d!83915 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11158) e!325357)))

(assert (= (and d!83915 (not res!356235)) b!565076))

(assert (= (and b!565076 res!356234) b!565074))

(assert (= (and b!565076 res!356236) b!565075))

(assert (= (and b!565075 c!64766) b!565073))

(assert (= (and b!565075 (not c!64766)) b!565072))

(assert (= (or b!565073 b!565072) bm!32462))

(assert (=> b!565074 m!543567))

(assert (=> b!565074 m!543567))

(declare-fun m!543571 () Bool)

(assert (=> b!565074 m!543571))

(assert (=> b!565075 m!543567))

(assert (=> b!565075 m!543567))

(declare-fun m!543573 () Bool)

(assert (=> b!565075 m!543573))

(assert (=> b!565076 m!543567))

(assert (=> b!565076 m!543567))

(assert (=> b!565076 m!543573))

(assert (=> bm!32462 m!543567))

(declare-fun m!543575 () Bool)

(assert (=> bm!32462 m!543575))

(assert (=> b!564807 d!83915))

(declare-fun d!83917 () Bool)

(assert (=> d!83917 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51644 d!83917))

(declare-fun d!83929 () Bool)

(assert (=> d!83929 (= (array_inv!12802 a!3118) (bvsge (size!17392 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51644 d!83929))

(declare-fun b!565111 () Bool)

(declare-fun e!325382 () Bool)

(declare-fun call!32468 () Bool)

(assert (=> b!565111 (= e!325382 call!32468)))

(declare-fun b!565112 () Bool)

(declare-fun e!325381 () Bool)

(declare-fun e!325383 () Bool)

(assert (=> b!565112 (= e!325381 e!325383)))

(declare-fun c!64778 () Bool)

(assert (=> b!565112 (= c!64778 (validKeyInArray!0 (select (arr!17028 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83931 () Bool)

(declare-fun res!356251 () Bool)

(assert (=> d!83931 (=> res!356251 e!325381)))

(assert (=> d!83931 (= res!356251 (bvsge #b00000000000000000000000000000000 (size!17392 a!3118)))))

(assert (=> d!83931 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!325381)))

(declare-fun bm!32465 () Bool)

(assert (=> bm!32465 (= call!32468 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!565113 () Bool)

(assert (=> b!565113 (= e!325383 call!32468)))

(declare-fun b!565114 () Bool)

(assert (=> b!565114 (= e!325383 e!325382)))

(declare-fun lt!257816 () (_ BitVec 64))

(assert (=> b!565114 (= lt!257816 (select (arr!17028 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!257814 () Unit!17670)

(assert (=> b!565114 (= lt!257814 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!257816 #b00000000000000000000000000000000))))

(assert (=> b!565114 (arrayContainsKey!0 a!3118 lt!257816 #b00000000000000000000000000000000)))

(declare-fun lt!257815 () Unit!17670)

(assert (=> b!565114 (= lt!257815 lt!257814)))

(declare-fun res!356250 () Bool)

(assert (=> b!565114 (= res!356250 (= (seekEntryOrOpen!0 (select (arr!17028 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5484 #b00000000000000000000000000000000)))))

(assert (=> b!565114 (=> (not res!356250) (not e!325382))))

(assert (= (and d!83931 (not res!356251)) b!565112))

(assert (= (and b!565112 c!64778) b!565114))

(assert (= (and b!565112 (not c!64778)) b!565113))

(assert (= (and b!565114 res!356250) b!565111))

(assert (= (or b!565111 b!565113) bm!32465))

(assert (=> b!565112 m!543567))

(assert (=> b!565112 m!543567))

(assert (=> b!565112 m!543573))

(declare-fun m!543607 () Bool)

(assert (=> bm!32465 m!543607))

(assert (=> b!565114 m!543567))

(declare-fun m!543609 () Bool)

(assert (=> b!565114 m!543609))

(declare-fun m!543611 () Bool)

(assert (=> b!565114 m!543611))

(assert (=> b!565114 m!543567))

(declare-fun m!543613 () Bool)

(assert (=> b!565114 m!543613))

(assert (=> b!564812 d!83931))

(declare-fun d!83933 () Bool)

(assert (=> d!83933 (= (validKeyInArray!0 (select (arr!17028 a!3118) j!142)) (and (not (= (select (arr!17028 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17028 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564808 d!83933))

(push 1)

