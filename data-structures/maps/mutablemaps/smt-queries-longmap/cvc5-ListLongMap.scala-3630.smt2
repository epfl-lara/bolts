; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50084 () Bool)

(assert start!50084)

(declare-fun b!548419 () Bool)

(declare-fun res!341892 () Bool)

(declare-fun e!316819 () Bool)

(assert (=> b!548419 (=> (not res!341892) (not e!316819))))

(declare-datatypes ((array!34575 0))(
  ( (array!34576 (arr!16602 (Array (_ BitVec 32) (_ BitVec 64))) (size!16966 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34575)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548419 (= res!341892 (validKeyInArray!0 (select (arr!16602 a!3118) j!142)))))

(declare-fun b!548420 () Bool)

(declare-fun res!341895 () Bool)

(assert (=> b!548420 (=> (not res!341895) (not e!316819))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!548420 (= res!341895 (validKeyInArray!0 k!1914))))

(declare-fun b!548421 () Bool)

(declare-fun e!316817 () Bool)

(assert (=> b!548421 (= e!316819 e!316817)))

(declare-fun res!341890 () Bool)

(assert (=> b!548421 (=> (not res!341890) (not e!316817))))

(declare-datatypes ((SeekEntryResult!5058 0))(
  ( (MissingZero!5058 (index!22459 (_ BitVec 32))) (Found!5058 (index!22460 (_ BitVec 32))) (Intermediate!5058 (undefined!5870 Bool) (index!22461 (_ BitVec 32)) (x!51428 (_ BitVec 32))) (Undefined!5058) (MissingVacant!5058 (index!22462 (_ BitVec 32))) )
))
(declare-fun lt!249836 () SeekEntryResult!5058)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548421 (= res!341890 (or (= lt!249836 (MissingZero!5058 i!1132)) (= lt!249836 (MissingVacant!5058 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34575 (_ BitVec 32)) SeekEntryResult!5058)

(assert (=> b!548421 (= lt!249836 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548422 () Bool)

(declare-fun res!341891 () Bool)

(assert (=> b!548422 (=> (not res!341891) (not e!316817))))

(declare-datatypes ((List!10735 0))(
  ( (Nil!10732) (Cons!10731 (h!11701 (_ BitVec 64)) (t!16971 List!10735)) )
))
(declare-fun arrayNoDuplicates!0 (array!34575 (_ BitVec 32) List!10735) Bool)

(assert (=> b!548422 (= res!341891 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10732))))

(declare-fun b!548423 () Bool)

(declare-fun res!341893 () Bool)

(assert (=> b!548423 (=> (not res!341893) (not e!316819))))

(assert (=> b!548423 (= res!341893 (and (= (size!16966 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16966 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16966 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341894 () Bool)

(assert (=> start!50084 (=> (not res!341894) (not e!316819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50084 (= res!341894 (validMask!0 mask!3119))))

(assert (=> start!50084 e!316819))

(assert (=> start!50084 true))

(declare-fun array_inv!12376 (array!34575) Bool)

(assert (=> start!50084 (array_inv!12376 a!3118)))

(declare-fun b!548424 () Bool)

(declare-fun res!341897 () Bool)

(assert (=> b!548424 (=> (not res!341897) (not e!316817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34575 (_ BitVec 32)) Bool)

(assert (=> b!548424 (= res!341897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548425 () Bool)

(declare-fun res!341896 () Bool)

(assert (=> b!548425 (=> (not res!341896) (not e!316819))))

(declare-fun arrayContainsKey!0 (array!34575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548425 (= res!341896 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548426 () Bool)

(assert (=> b!548426 (= e!316817 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(assert (= (and start!50084 res!341894) b!548423))

(assert (= (and b!548423 res!341893) b!548419))

(assert (= (and b!548419 res!341892) b!548420))

(assert (= (and b!548420 res!341895) b!548425))

(assert (= (and b!548425 res!341896) b!548421))

(assert (= (and b!548421 res!341890) b!548424))

(assert (= (and b!548424 res!341897) b!548422))

(assert (= (and b!548422 res!341891) b!548426))

(declare-fun m!525439 () Bool)

(assert (=> b!548421 m!525439))

(declare-fun m!525441 () Bool)

(assert (=> b!548422 m!525441))

(declare-fun m!525443 () Bool)

(assert (=> b!548425 m!525443))

(declare-fun m!525445 () Bool)

(assert (=> b!548419 m!525445))

(assert (=> b!548419 m!525445))

(declare-fun m!525447 () Bool)

(assert (=> b!548419 m!525447))

(declare-fun m!525449 () Bool)

(assert (=> start!50084 m!525449))

(declare-fun m!525451 () Bool)

(assert (=> start!50084 m!525451))

(declare-fun m!525453 () Bool)

(assert (=> b!548424 m!525453))

(declare-fun m!525455 () Bool)

(assert (=> b!548420 m!525455))

(push 1)

(assert (not b!548424))

(assert (not b!548420))

(assert (not start!50084))

(assert (not b!548419))

(assert (not b!548422))

(assert (not b!548421))

(assert (not b!548425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82567 () Bool)

(declare-fun res!341961 () Bool)

(declare-fun e!316856 () Bool)

(assert (=> d!82567 (=> res!341961 e!316856)))

(assert (=> d!82567 (= res!341961 (bvsge #b00000000000000000000000000000000 (size!16966 a!3118)))))

(assert (=> d!82567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316856)))

(declare-fun b!548497 () Bool)

(declare-fun e!316857 () Bool)

(assert (=> b!548497 (= e!316856 e!316857)))

(declare-fun c!63598 () Bool)

(assert (=> b!548497 (= c!63598 (validKeyInArray!0 (select (arr!16602 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548498 () Bool)

(declare-fun e!316858 () Bool)

(declare-fun call!32212 () Bool)

(assert (=> b!548498 (= e!316858 call!32212)))

(declare-fun b!548499 () Bool)

(assert (=> b!548499 (= e!316857 e!316858)))

(declare-fun lt!249857 () (_ BitVec 64))

(assert (=> b!548499 (= lt!249857 (select (arr!16602 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16950 0))(
  ( (Unit!16951) )
))
(declare-fun lt!249856 () Unit!16950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34575 (_ BitVec 64) (_ BitVec 32)) Unit!16950)

(assert (=> b!548499 (= lt!249856 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249857 #b00000000000000000000000000000000))))

(assert (=> b!548499 (arrayContainsKey!0 a!3118 lt!249857 #b00000000000000000000000000000000)))

(declare-fun lt!249855 () Unit!16950)

(assert (=> b!548499 (= lt!249855 lt!249856)))

(declare-fun res!341960 () Bool)

(assert (=> b!548499 (= res!341960 (= (seekEntryOrOpen!0 (select (arr!16602 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5058 #b00000000000000000000000000000000)))))

(assert (=> b!548499 (=> (not res!341960) (not e!316858))))

(declare-fun b!548500 () Bool)

(assert (=> b!548500 (= e!316857 call!32212)))

(declare-fun bm!32209 () Bool)

(assert (=> bm!32209 (= call!32212 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82567 (not res!341961)) b!548497))

(assert (= (and b!548497 c!63598) b!548499))

(assert (= (and b!548497 (not c!63598)) b!548500))

(assert (= (and b!548499 res!341960) b!548498))

(assert (= (or b!548498 b!548500) bm!32209))

(declare-fun m!525497 () Bool)

(assert (=> b!548497 m!525497))

(assert (=> b!548497 m!525497))

(declare-fun m!525499 () Bool)

(assert (=> b!548497 m!525499))

(assert (=> b!548499 m!525497))

(declare-fun m!525501 () Bool)

(assert (=> b!548499 m!525501))

(declare-fun m!525503 () Bool)

(assert (=> b!548499 m!525503))

(assert (=> b!548499 m!525497))

(declare-fun m!525505 () Bool)

(assert (=> b!548499 m!525505))

(declare-fun m!525507 () Bool)

(assert (=> bm!32209 m!525507))

(assert (=> b!548424 d!82567))

(declare-fun d!82577 () Bool)

(assert (=> d!82577 (= (validKeyInArray!0 (select (arr!16602 a!3118) j!142)) (and (not (= (select (arr!16602 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16602 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548419 d!82577))

(declare-fun d!82579 () Bool)

(assert (=> d!82579 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50084 d!82579))

(declare-fun d!82587 () Bool)

(assert (=> d!82587 (= (array_inv!12376 a!3118) (bvsge (size!16966 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50084 d!82587))

(declare-fun d!82589 () Bool)

(declare-fun res!341983 () Bool)

(declare-fun e!316890 () Bool)

(assert (=> d!82589 (=> res!341983 e!316890)))

(assert (=> d!82589 (= res!341983 (= (select (arr!16602 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82589 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316890)))

(declare-fun b!548542 () Bool)

(declare-fun e!316891 () Bool)

(assert (=> b!548542 (= e!316890 e!316891)))

(declare-fun res!341984 () Bool)

(assert (=> b!548542 (=> (not res!341984) (not e!316891))))

(assert (=> b!548542 (= res!341984 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16966 a!3118)))))

(declare-fun b!548543 () Bool)

(assert (=> b!548543 (= e!316891 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82589 (not res!341983)) b!548542))

(assert (= (and b!548542 res!341984) b!548543))

(assert (=> d!82589 m!525497))

(declare-fun m!525527 () Bool)

(assert (=> b!548543 m!525527))

(assert (=> b!548425 d!82589))

(declare-fun d!82593 () Bool)

(assert (=> d!82593 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548420 d!82593))

(declare-fun b!548589 () Bool)

(declare-fun c!63625 () Bool)

(declare-fun lt!249887 () (_ BitVec 64))

(assert (=> b!548589 (= c!63625 (= lt!249887 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316924 () SeekEntryResult!5058)

(declare-fun e!316922 () SeekEntryResult!5058)

(assert (=> b!548589 (= e!316924 e!316922)))

(declare-fun b!548590 () Bool)

(declare-fun lt!249886 () SeekEntryResult!5058)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34575 (_ BitVec 32)) SeekEntryResult!5058)

(assert (=> b!548590 (= e!316922 (seekKeyOrZeroReturnVacant!0 (x!51428 lt!249886) (index!22461 lt!249886) (index!22461 lt!249886) k!1914 a!3118 mask!3119))))

(declare-fun b!548591 () Bool)

(declare-fun e!316923 () SeekEntryResult!5058)

(assert (=> b!548591 (= e!316923 Undefined!5058)))

(declare-fun b!548593 () Bool)

(assert (=> b!548593 (= e!316923 e!316924)))

(assert (=> b!548593 (= lt!249887 (select (arr!16602 a!3118) (index!22461 lt!249886)))))

(declare-fun c!63624 () Bool)

(assert (=> b!548593 (= c!63624 (= lt!249887 k!1914))))

(declare-fun b!548594 () Bool)

(assert (=> b!548594 (= e!316924 (Found!5058 (index!22461 lt!249886)))))

(declare-fun d!82595 () Bool)

(declare-fun lt!249885 () SeekEntryResult!5058)

(assert (=> d!82595 (and (or (is-Undefined!5058 lt!249885) (not (is-Found!5058 lt!249885)) (and (bvsge (index!22460 lt!249885) #b00000000000000000000000000000000) (bvslt (index!22460 lt!249885) (size!16966 a!3118)))) (or (is-Undefined!5058 lt!249885) (is-Found!5058 lt!249885) (not (is-MissingZero!5058 lt!249885)) (and (bvsge (index!22459 lt!249885) #b00000000000000000000000000000000) (bvslt (index!22459 lt!249885) (size!16966 a!3118)))) (or (is-Undefined!5058 lt!249885) (is-Found!5058 lt!249885) (is-MissingZero!5058 lt!249885) (not (is-MissingVacant!5058 lt!249885)) (and (bvsge (index!22462 lt!249885) #b00000000000000000000000000000000) (bvslt (index!22462 lt!249885) (size!16966 a!3118)))) (or (is-Undefined!5058 lt!249885) (ite (is-Found!5058 lt!249885) (= (select (arr!16602 a!3118) (index!22460 lt!249885)) k!1914) (ite (is-MissingZero!5058 lt!249885) (= (select (arr!16602 a!3118) (index!22459 lt!249885)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5058 lt!249885) (= (select (arr!16602 a!3118) (index!22462 lt!249885)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82595 (= lt!249885 e!316923)))

(declare-fun c!63626 () Bool)

(assert (=> d!82595 (= c!63626 (and (is-Intermediate!5058 lt!249886) (undefined!5870 lt!249886)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34575 (_ BitVec 32)) SeekEntryResult!5058)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82595 (= lt!249886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82595 (validMask!0 mask!3119)))

(assert (=> d!82595 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249885)))

(declare-fun b!548592 () Bool)

(assert (=> b!548592 (= e!316922 (MissingZero!5058 (index!22461 lt!249886)))))

(assert (= (and d!82595 c!63626) b!548591))

(assert (= (and d!82595 (not c!63626)) b!548593))

(assert (= (and b!548593 c!63624) b!548594))

(assert (= (and b!548593 (not c!63624)) b!548589))

(assert (= (and b!548589 c!63625) b!548592))

(assert (= (and b!548589 (not c!63625)) b!548590))

(declare-fun m!525557 () Bool)

(assert (=> b!548590 m!525557))

(declare-fun m!525559 () Bool)

(assert (=> b!548593 m!525559))

(declare-fun m!525561 () Bool)

(assert (=> d!82595 m!525561))

(assert (=> d!82595 m!525449))

(declare-fun m!525563 () Bool)

(assert (=> d!82595 m!525563))

(declare-fun m!525565 () Bool)

(assert (=> d!82595 m!525565))

(declare-fun m!525567 () Bool)

(assert (=> d!82595 m!525567))

(assert (=> d!82595 m!525565))

(declare-fun m!525569 () Bool)

(assert (=> d!82595 m!525569))

(assert (=> b!548421 d!82595))

(declare-fun b!548617 () Bool)

(declare-fun e!316941 () Bool)

(declare-fun call!32225 () Bool)

(assert (=> b!548617 (= e!316941 call!32225)))

(declare-fun bm!32222 () Bool)

(declare-fun c!63635 () Bool)

(assert (=> bm!32222 (= call!32225 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63635 (Cons!10731 (select (arr!16602 a!3118) #b00000000000000000000000000000000) Nil!10732) Nil!10732)))))

(declare-fun b!548618 () Bool)

(assert (=> b!548618 (= e!316941 call!32225)))

(declare-fun b!548619 () Bool)

(declare-fun e!316940 () Bool)

(assert (=> b!548619 (= e!316940 e!316941)))

(assert (=> b!548619 (= c!63635 (validKeyInArray!0 (select (arr!16602 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82605 () Bool)

(declare-fun res!342006 () Bool)

(declare-fun e!316942 () Bool)

(assert (=> d!82605 (=> res!342006 e!316942)))

(assert (=> d!82605 (= res!342006 (bvsge #b00000000000000000000000000000000 (size!16966 a!3118)))))

(assert (=> d!82605 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10732) e!316942)))

(declare-fun b!548620 () Bool)

(declare-fun e!316939 () Bool)

(declare-fun contains!2833 (List!10735 (_ BitVec 64)) Bool)

