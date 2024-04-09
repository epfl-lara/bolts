; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52334 () Bool)

(assert start!52334)

(declare-fun b!570829 () Bool)

(declare-fun e!328299 () Bool)

(declare-fun e!328306 () Bool)

(assert (=> b!570829 (= e!328299 e!328306)))

(declare-fun res!360771 () Bool)

(assert (=> b!570829 (=> res!360771 e!328306)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260327 () (_ BitVec 64))

(declare-datatypes ((array!35748 0))(
  ( (array!35749 (arr!17160 (Array (_ BitVec 32) (_ BitVec 64))) (size!17524 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35748)

(assert (=> b!570829 (= res!360771 (or (= lt!260327 (select (arr!17160 a!3118) j!142)) (= lt!260327 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5616 0))(
  ( (MissingZero!5616 (index!24691 (_ BitVec 32))) (Found!5616 (index!24692 (_ BitVec 32))) (Intermediate!5616 (undefined!6428 Bool) (index!24693 (_ BitVec 32)) (x!53591 (_ BitVec 32))) (Undefined!5616) (MissingVacant!5616 (index!24694 (_ BitVec 32))) )
))
(declare-fun lt!260321 () SeekEntryResult!5616)

(assert (=> b!570829 (= lt!260327 (select (arr!17160 a!3118) (index!24693 lt!260321)))))

(declare-fun res!360766 () Bool)

(declare-fun e!328302 () Bool)

(assert (=> start!52334 (=> (not res!360766) (not e!328302))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52334 (= res!360766 (validMask!0 mask!3119))))

(assert (=> start!52334 e!328302))

(assert (=> start!52334 true))

(declare-fun array_inv!12934 (array!35748) Bool)

(assert (=> start!52334 (array_inv!12934 a!3118)))

(declare-fun b!570830 () Bool)

(declare-fun e!328300 () Bool)

(declare-fun e!328304 () Bool)

(assert (=> b!570830 (= e!328300 e!328304)))

(declare-fun res!360770 () Bool)

(assert (=> b!570830 (=> (not res!360770) (not e!328304))))

(declare-fun lt!260326 () (_ BitVec 64))

(declare-fun lt!260323 () (_ BitVec 32))

(declare-fun lt!260322 () array!35748)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35748 (_ BitVec 32)) SeekEntryResult!5616)

(assert (=> b!570830 (= res!360770 (= lt!260321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260323 lt!260326 lt!260322 mask!3119)))))

(declare-fun lt!260324 () (_ BitVec 32))

(assert (=> b!570830 (= lt!260321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260324 (select (arr!17160 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570830 (= lt!260323 (toIndex!0 lt!260326 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570830 (= lt!260326 (select (store (arr!17160 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!570830 (= lt!260324 (toIndex!0 (select (arr!17160 a!3118) j!142) mask!3119))))

(assert (=> b!570830 (= lt!260322 (array!35749 (store (arr!17160 a!3118) i!1132 k!1914) (size!17524 a!3118)))))

(declare-fun b!570831 () Bool)

(assert (=> b!570831 (= e!328302 e!328300)))

(declare-fun res!360773 () Bool)

(assert (=> b!570831 (=> (not res!360773) (not e!328300))))

(declare-fun lt!260320 () SeekEntryResult!5616)

(assert (=> b!570831 (= res!360773 (or (= lt!260320 (MissingZero!5616 i!1132)) (= lt!260320 (MissingVacant!5616 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35748 (_ BitVec 32)) SeekEntryResult!5616)

(assert (=> b!570831 (= lt!260320 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570832 () Bool)

(declare-fun e!328303 () Bool)

(declare-fun e!328305 () Bool)

(assert (=> b!570832 (= e!328303 e!328305)))

(declare-fun res!360762 () Bool)

(assert (=> b!570832 (=> res!360762 e!328305)))

(declare-fun lt!260319 () (_ BitVec 64))

(assert (=> b!570832 (= res!360762 (or (= lt!260319 (select (arr!17160 a!3118) j!142)) (= lt!260319 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!570832 (= lt!260319 (select (arr!17160 a!3118) (index!24693 lt!260321)))))

(declare-fun b!570833 () Bool)

(declare-fun res!360772 () Bool)

(assert (=> b!570833 (=> (not res!360772) (not e!328302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570833 (= res!360772 (validKeyInArray!0 k!1914))))

(declare-fun b!570834 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35748 (_ BitVec 32)) SeekEntryResult!5616)

(assert (=> b!570834 (= e!328305 (= (seekEntryOrOpen!0 lt!260326 lt!260322 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260321) (index!24693 lt!260321) (index!24693 lt!260321) lt!260326 lt!260322 mask!3119)))))

(declare-fun b!570835 () Bool)

(declare-fun lt!260325 () SeekEntryResult!5616)

(assert (=> b!570835 (= e!328306 (= lt!260325 (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260321) (index!24693 lt!260321) (index!24693 lt!260321) (select (arr!17160 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570836 () Bool)

(declare-fun e!328301 () Bool)

(assert (=> b!570836 (= e!328301 e!328299)))

(declare-fun res!360769 () Bool)

(assert (=> b!570836 (=> res!360769 e!328299)))

(assert (=> b!570836 (= res!360769 (or (undefined!6428 lt!260321) (not (is-Intermediate!5616 lt!260321))))))

(declare-fun b!570837 () Bool)

(declare-fun res!360765 () Bool)

(assert (=> b!570837 (=> (not res!360765) (not e!328302))))

(assert (=> b!570837 (= res!360765 (and (= (size!17524 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17524 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17524 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570838 () Bool)

(declare-fun res!360767 () Bool)

(assert (=> b!570838 (=> (not res!360767) (not e!328300))))

(declare-datatypes ((List!11293 0))(
  ( (Nil!11290) (Cons!11289 (h!12313 (_ BitVec 64)) (t!17529 List!11293)) )
))
(declare-fun arrayNoDuplicates!0 (array!35748 (_ BitVec 32) List!11293) Bool)

(assert (=> b!570838 (= res!360767 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11290))))

(declare-fun b!570839 () Bool)

(declare-fun res!360763 () Bool)

(assert (=> b!570839 (=> (not res!360763) (not e!328302))))

(assert (=> b!570839 (= res!360763 (validKeyInArray!0 (select (arr!17160 a!3118) j!142)))))

(declare-fun b!570840 () Bool)

(declare-fun res!360768 () Bool)

(assert (=> b!570840 (=> (not res!360768) (not e!328300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35748 (_ BitVec 32)) Bool)

(assert (=> b!570840 (= res!360768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570841 () Bool)

(assert (=> b!570841 (= e!328304 (not e!328303))))

(declare-fun res!360764 () Bool)

(assert (=> b!570841 (=> res!360764 e!328303)))

(assert (=> b!570841 (= res!360764 (or (undefined!6428 lt!260321) (not (is-Intermediate!5616 lt!260321))))))

(assert (=> b!570841 e!328301))

(declare-fun res!360761 () Bool)

(assert (=> b!570841 (=> (not res!360761) (not e!328301))))

(assert (=> b!570841 (= res!360761 (= lt!260325 (Found!5616 j!142)))))

(assert (=> b!570841 (= lt!260325 (seekEntryOrOpen!0 (select (arr!17160 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570841 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17934 0))(
  ( (Unit!17935) )
))
(declare-fun lt!260318 () Unit!17934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17934)

(assert (=> b!570841 (= lt!260318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570842 () Bool)

(declare-fun res!360760 () Bool)

(assert (=> b!570842 (=> (not res!360760) (not e!328302))))

(declare-fun arrayContainsKey!0 (array!35748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570842 (= res!360760 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52334 res!360766) b!570837))

(assert (= (and b!570837 res!360765) b!570839))

(assert (= (and b!570839 res!360763) b!570833))

(assert (= (and b!570833 res!360772) b!570842))

(assert (= (and b!570842 res!360760) b!570831))

(assert (= (and b!570831 res!360773) b!570840))

(assert (= (and b!570840 res!360768) b!570838))

(assert (= (and b!570838 res!360767) b!570830))

(assert (= (and b!570830 res!360770) b!570841))

(assert (= (and b!570841 res!360761) b!570836))

(assert (= (and b!570836 (not res!360769)) b!570829))

(assert (= (and b!570829 (not res!360771)) b!570835))

(assert (= (and b!570841 (not res!360764)) b!570832))

(assert (= (and b!570832 (not res!360762)) b!570834))

(declare-fun m!549811 () Bool)

(assert (=> b!570833 m!549811))

(declare-fun m!549813 () Bool)

(assert (=> b!570830 m!549813))

(declare-fun m!549815 () Bool)

(assert (=> b!570830 m!549815))

(declare-fun m!549817 () Bool)

(assert (=> b!570830 m!549817))

(assert (=> b!570830 m!549815))

(assert (=> b!570830 m!549815))

(declare-fun m!549819 () Bool)

(assert (=> b!570830 m!549819))

(declare-fun m!549821 () Bool)

(assert (=> b!570830 m!549821))

(declare-fun m!549823 () Bool)

(assert (=> b!570830 m!549823))

(declare-fun m!549825 () Bool)

(assert (=> b!570830 m!549825))

(assert (=> b!570841 m!549815))

(assert (=> b!570841 m!549815))

(declare-fun m!549827 () Bool)

(assert (=> b!570841 m!549827))

(declare-fun m!549829 () Bool)

(assert (=> b!570841 m!549829))

(declare-fun m!549831 () Bool)

(assert (=> b!570841 m!549831))

(declare-fun m!549833 () Bool)

(assert (=> b!570838 m!549833))

(declare-fun m!549835 () Bool)

(assert (=> b!570840 m!549835))

(assert (=> b!570832 m!549815))

(declare-fun m!549837 () Bool)

(assert (=> b!570832 m!549837))

(declare-fun m!549839 () Bool)

(assert (=> b!570834 m!549839))

(declare-fun m!549841 () Bool)

(assert (=> b!570834 m!549841))

(assert (=> b!570829 m!549815))

(assert (=> b!570829 m!549837))

(declare-fun m!549843 () Bool)

(assert (=> b!570842 m!549843))

(declare-fun m!549845 () Bool)

(assert (=> start!52334 m!549845))

(declare-fun m!549847 () Bool)

(assert (=> start!52334 m!549847))

(declare-fun m!549849 () Bool)

(assert (=> b!570831 m!549849))

(assert (=> b!570839 m!549815))

(assert (=> b!570839 m!549815))

(declare-fun m!549851 () Bool)

(assert (=> b!570839 m!549851))

(assert (=> b!570835 m!549815))

(assert (=> b!570835 m!549815))

(declare-fun m!549853 () Bool)

(assert (=> b!570835 m!549853))

(push 1)

(assert (not b!570840))

(assert (not start!52334))

(assert (not b!570833))

(assert (not b!570839))

(assert (not b!570831))

(assert (not b!570830))

(assert (not b!570841))

(assert (not b!570835))

(assert (not b!570842))

(assert (not b!570834))

(assert (not b!570838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84615 () Bool)

(assert (=> d!84615 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52334 d!84615))

(declare-fun d!84621 () Bool)

(assert (=> d!84621 (= (array_inv!12934 a!3118) (bvsge (size!17524 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52334 d!84621))

(declare-fun b!570979 () Bool)

(declare-fun e!328397 () Bool)

(declare-fun call!32603 () Bool)

(assert (=> b!570979 (= e!328397 call!32603)))

(declare-fun b!570980 () Bool)

(assert (=> b!570980 (= e!328397 call!32603)))

(declare-fun d!84623 () Bool)

(declare-fun res!360883 () Bool)

(declare-fun e!328396 () Bool)

(assert (=> d!84623 (=> res!360883 e!328396)))

(assert (=> d!84623 (= res!360883 (bvsge #b00000000000000000000000000000000 (size!17524 a!3118)))))

(assert (=> d!84623 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11290) e!328396)))

(declare-fun b!570981 () Bool)

(declare-fun e!328398 () Bool)

(assert (=> b!570981 (= e!328396 e!328398)))

(declare-fun res!360885 () Bool)

(assert (=> b!570981 (=> (not res!360885) (not e!328398))))

(declare-fun e!328395 () Bool)

(assert (=> b!570981 (= res!360885 (not e!328395))))

(declare-fun res!360884 () Bool)

(assert (=> b!570981 (=> (not res!360884) (not e!328395))))

(assert (=> b!570981 (= res!360884 (validKeyInArray!0 (select (arr!17160 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570982 () Bool)

(assert (=> b!570982 (= e!328398 e!328397)))

(declare-fun c!65405 () Bool)

(assert (=> b!570982 (= c!65405 (validKeyInArray!0 (select (arr!17160 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32600 () Bool)

(assert (=> bm!32600 (= call!32603 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65405 (Cons!11289 (select (arr!17160 a!3118) #b00000000000000000000000000000000) Nil!11290) Nil!11290)))))

(declare-fun b!570983 () Bool)

(declare-fun contains!2886 (List!11293 (_ BitVec 64)) Bool)

(assert (=> b!570983 (= e!328395 (contains!2886 Nil!11290 (select (arr!17160 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84623 (not res!360883)) b!570981))

(assert (= (and b!570981 res!360884) b!570983))

(assert (= (and b!570981 res!360885) b!570982))

(assert (= (and b!570982 c!65405) b!570980))

(assert (= (and b!570982 (not c!65405)) b!570979))

(assert (= (or b!570980 b!570979) bm!32600))

(declare-fun m!549963 () Bool)

(assert (=> b!570981 m!549963))

(assert (=> b!570981 m!549963))

(declare-fun m!549965 () Bool)

(assert (=> b!570981 m!549965))

(assert (=> b!570982 m!549963))

(assert (=> b!570982 m!549963))

(assert (=> b!570982 m!549965))

(assert (=> bm!32600 m!549963))

(declare-fun m!549967 () Bool)

(assert (=> bm!32600 m!549967))

(assert (=> b!570983 m!549963))

(assert (=> b!570983 m!549963))

(declare-fun m!549969 () Bool)

(assert (=> b!570983 m!549969))

(assert (=> b!570838 d!84623))

(declare-fun b!571044 () Bool)

(declare-fun e!328431 () SeekEntryResult!5616)

(declare-fun lt!260432 () SeekEntryResult!5616)

(assert (=> b!571044 (= e!328431 (Found!5616 (index!24693 lt!260432)))))

(declare-fun b!571045 () Bool)

(declare-fun e!328429 () SeekEntryResult!5616)

(assert (=> b!571045 (= e!328429 e!328431)))

(declare-fun lt!260433 () (_ BitVec 64))

(assert (=> b!571045 (= lt!260433 (select (arr!17160 lt!260322) (index!24693 lt!260432)))))

(declare-fun c!65438 () Bool)

(assert (=> b!571045 (= c!65438 (= lt!260433 lt!260326))))

(declare-fun b!571046 () Bool)

(declare-fun e!328430 () SeekEntryResult!5616)

(assert (=> b!571046 (= e!328430 (MissingZero!5616 (index!24693 lt!260432)))))

(declare-fun b!571047 () Bool)

(assert (=> b!571047 (= e!328430 (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260432) (index!24693 lt!260432) (index!24693 lt!260432) lt!260326 lt!260322 mask!3119))))

(declare-fun d!84625 () Bool)

(declare-fun lt!260434 () SeekEntryResult!5616)

(assert (=> d!84625 (and (or (is-Undefined!5616 lt!260434) (not (is-Found!5616 lt!260434)) (and (bvsge (index!24692 lt!260434) #b00000000000000000000000000000000) (bvslt (index!24692 lt!260434) (size!17524 lt!260322)))) (or (is-Undefined!5616 lt!260434) (is-Found!5616 lt!260434) (not (is-MissingZero!5616 lt!260434)) (and (bvsge (index!24691 lt!260434) #b00000000000000000000000000000000) (bvslt (index!24691 lt!260434) (size!17524 lt!260322)))) (or (is-Undefined!5616 lt!260434) (is-Found!5616 lt!260434) (is-MissingZero!5616 lt!260434) (not (is-MissingVacant!5616 lt!260434)) (and (bvsge (index!24694 lt!260434) #b00000000000000000000000000000000) (bvslt (index!24694 lt!260434) (size!17524 lt!260322)))) (or (is-Undefined!5616 lt!260434) (ite (is-Found!5616 lt!260434) (= (select (arr!17160 lt!260322) (index!24692 lt!260434)) lt!260326) (ite (is-MissingZero!5616 lt!260434) (= (select (arr!17160 lt!260322) (index!24691 lt!260434)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5616 lt!260434) (= (select (arr!17160 lt!260322) (index!24694 lt!260434)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84625 (= lt!260434 e!328429)))

(declare-fun c!65436 () Bool)

(assert (=> d!84625 (= c!65436 (and (is-Intermediate!5616 lt!260432) (undefined!6428 lt!260432)))))

(assert (=> d!84625 (= lt!260432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!260326 mask!3119) lt!260326 lt!260322 mask!3119))))

(assert (=> d!84625 (validMask!0 mask!3119)))

(assert (=> d!84625 (= (seekEntryOrOpen!0 lt!260326 lt!260322 mask!3119) lt!260434)))

(declare-fun b!571048 () Bool)

(declare-fun c!65437 () Bool)

(assert (=> b!571048 (= c!65437 (= lt!260433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!571048 (= e!328431 e!328430)))

(declare-fun b!571049 () Bool)

(assert (=> b!571049 (= e!328429 Undefined!5616)))

(assert (= (and d!84625 c!65436) b!571049))

(assert (= (and d!84625 (not c!65436)) b!571045))

(assert (= (and b!571045 c!65438) b!571044))

(assert (= (and b!571045 (not c!65438)) b!571048))

(assert (= (and b!571048 c!65437) b!571046))

(assert (= (and b!571048 (not c!65437)) b!571047))

(declare-fun m!549995 () Bool)

(assert (=> b!571045 m!549995))

(declare-fun m!549997 () Bool)

(assert (=> b!571047 m!549997))

(declare-fun m!549999 () Bool)

(assert (=> d!84625 m!549999))

(assert (=> d!84625 m!549823))

(assert (=> d!84625 m!549845))

(declare-fun m!550001 () Bool)

(assert (=> d!84625 m!550001))

(declare-fun m!550003 () Bool)

(assert (=> d!84625 m!550003))

(assert (=> d!84625 m!549823))

(declare-fun m!550005 () Bool)

(assert (=> d!84625 m!550005))

(assert (=> b!570834 d!84625))

(declare-fun b!571110 () Bool)

(declare-fun e!328470 () SeekEntryResult!5616)

(assert (=> b!571110 (= e!328470 (Found!5616 (index!24693 lt!260321)))))

(declare-fun b!571111 () Bool)

(declare-fun e!328468 () SeekEntryResult!5616)

(assert (=> b!571111 (= e!328468 (MissingVacant!5616 (index!24693 lt!260321)))))

(declare-fun b!571112 () Bool)

(declare-fun c!65462 () Bool)

(declare-fun lt!260453 () (_ BitVec 64))

(assert (=> b!571112 (= c!65462 (= lt!260453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!571112 (= e!328470 e!328468)))

(declare-fun lt!260454 () SeekEntryResult!5616)

(declare-fun d!84631 () Bool)

(assert (=> d!84631 (and (or (is-Undefined!5616 lt!260454) (not (is-Found!5616 lt!260454)) (and (bvsge (index!24692 lt!260454) #b00000000000000000000000000000000) (bvslt (index!24692 lt!260454) (size!17524 lt!260322)))) (or (is-Undefined!5616 lt!260454) (is-Found!5616 lt!260454) (not (is-MissingVacant!5616 lt!260454)) (not (= (index!24694 lt!260454) (index!24693 lt!260321))) (and (bvsge (index!24694 lt!260454) #b00000000000000000000000000000000) (bvslt (index!24694 lt!260454) (size!17524 lt!260322)))) (or (is-Undefined!5616 lt!260454) (ite (is-Found!5616 lt!260454) (= (select (arr!17160 lt!260322) (index!24692 lt!260454)) lt!260326) (and (is-MissingVacant!5616 lt!260454) (= (index!24694 lt!260454) (index!24693 lt!260321)) (= (select (arr!17160 lt!260322) (index!24694 lt!260454)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!328469 () SeekEntryResult!5616)

(assert (=> d!84631 (= lt!260454 e!328469)))

(declare-fun c!65464 () Bool)

(assert (=> d!84631 (= c!65464 (bvsge (x!53591 lt!260321) #b01111111111111111111111111111110))))

(assert (=> d!84631 (= lt!260453 (select (arr!17160 lt!260322) (index!24693 lt!260321)))))

(assert (=> d!84631 (validMask!0 mask!3119)))

(assert (=> d!84631 (= (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260321) (index!24693 lt!260321) (index!24693 lt!260321) lt!260326 lt!260322 mask!3119) lt!260454)))

(declare-fun b!571109 () Bool)

(assert (=> b!571109 (= e!328469 Undefined!5616)))

(declare-fun b!571113 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571113 (= e!328468 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53591 lt!260321) #b00000000000000000000000000000001) (nextIndex!0 (index!24693 lt!260321) (x!53591 lt!260321) mask!3119) (index!24693 lt!260321) lt!260326 lt!260322 mask!3119))))

(declare-fun b!571114 () Bool)

(assert (=> b!571114 (= e!328469 e!328470)))

(declare-fun c!65463 () Bool)

(assert (=> b!571114 (= c!65463 (= lt!260453 lt!260326))))

(assert (= (and d!84631 c!65464) b!571109))

(assert (= (and d!84631 (not c!65464)) b!571114))

(assert (= (and b!571114 c!65463) b!571110))

(assert (= (and b!571114 (not c!65463)) b!571112))

(assert (= (and b!571112 c!65462) b!571111))

(assert (= (and b!571112 (not c!65462)) b!571113))

(declare-fun m!550033 () Bool)

(assert (=> d!84631 m!550033))

(declare-fun m!550035 () Bool)

(assert (=> d!84631 m!550035))

(declare-fun m!550037 () Bool)

(assert (=> d!84631 m!550037))

(assert (=> d!84631 m!549845))

(declare-fun m!550039 () Bool)

(assert (=> b!571113 m!550039))

(assert (=> b!571113 m!550039))

(declare-fun m!550041 () Bool)

(assert (=> b!571113 m!550041))

(assert (=> b!570834 d!84631))

(declare-fun b!571116 () Bool)

(declare-fun e!328473 () SeekEntryResult!5616)

(assert (=> b!571116 (= e!328473 (Found!5616 (index!24693 lt!260321)))))

(declare-fun b!571117 () Bool)

(declare-fun e!328471 () SeekEntryResult!5616)

(assert (=> b!571117 (= e!328471 (MissingVacant!5616 (index!24693 lt!260321)))))

(declare-fun b!571118 () Bool)

(declare-fun c!65465 () Bool)

(declare-fun lt!260455 () (_ BitVec 64))

(assert (=> b!571118 (= c!65465 (= lt!260455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!571118 (= e!328473 e!328471)))

(declare-fun d!84641 () Bool)

(declare-fun lt!260456 () SeekEntryResult!5616)

(assert (=> d!84641 (and (or (is-Undefined!5616 lt!260456) (not (is-Found!5616 lt!260456)) (and (bvsge (index!24692 lt!260456) #b00000000000000000000000000000000) (bvslt (index!24692 lt!260456) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260456) (is-Found!5616 lt!260456) (not (is-MissingVacant!5616 lt!260456)) (not (= (index!24694 lt!260456) (index!24693 lt!260321))) (and (bvsge (index!24694 lt!260456) #b00000000000000000000000000000000) (bvslt (index!24694 lt!260456) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260456) (ite (is-Found!5616 lt!260456) (= (select (arr!17160 a!3118) (index!24692 lt!260456)) (select (arr!17160 a!3118) j!142)) (and (is-MissingVacant!5616 lt!260456) (= (index!24694 lt!260456) (index!24693 lt!260321)) (= (select (arr!17160 a!3118) (index!24694 lt!260456)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!328472 () SeekEntryResult!5616)

(assert (=> d!84641 (= lt!260456 e!328472)))

(declare-fun c!65467 () Bool)

(assert (=> d!84641 (= c!65467 (bvsge (x!53591 lt!260321) #b01111111111111111111111111111110))))

(assert (=> d!84641 (= lt!260455 (select (arr!17160 a!3118) (index!24693 lt!260321)))))

(assert (=> d!84641 (validMask!0 mask!3119)))

(assert (=> d!84641 (= (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260321) (index!24693 lt!260321) (index!24693 lt!260321) (select (arr!17160 a!3118) j!142) a!3118 mask!3119) lt!260456)))

(declare-fun b!571115 () Bool)

(assert (=> b!571115 (= e!328472 Undefined!5616)))

(declare-fun b!571119 () Bool)

(assert (=> b!571119 (= e!328471 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53591 lt!260321) #b00000000000000000000000000000001) (nextIndex!0 (index!24693 lt!260321) (x!53591 lt!260321) mask!3119) (index!24693 lt!260321) (select (arr!17160 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!571120 () Bool)

(assert (=> b!571120 (= e!328472 e!328473)))

(declare-fun c!65466 () Bool)

(assert (=> b!571120 (= c!65466 (= lt!260455 (select (arr!17160 a!3118) j!142)))))

(assert (= (and d!84641 c!65467) b!571115))

(assert (= (and d!84641 (not c!65467)) b!571120))

(assert (= (and b!571120 c!65466) b!571116))

(assert (= (and b!571120 (not c!65466)) b!571118))

(assert (= (and b!571118 c!65465) b!571117))

(assert (= (and b!571118 (not c!65465)) b!571119))

(declare-fun m!550043 () Bool)

(assert (=> d!84641 m!550043))

(declare-fun m!550045 () Bool)

(assert (=> d!84641 m!550045))

(assert (=> d!84641 m!549837))

(assert (=> d!84641 m!549845))

(assert (=> b!571119 m!550039))

(assert (=> b!571119 m!550039))

(assert (=> b!571119 m!549815))

(declare-fun m!550047 () Bool)

(assert (=> b!571119 m!550047))

(assert (=> b!570835 d!84641))

(declare-fun b!571121 () Bool)

(declare-fun e!328476 () SeekEntryResult!5616)

(declare-fun lt!260457 () SeekEntryResult!5616)

(assert (=> b!571121 (= e!328476 (Found!5616 (index!24693 lt!260457)))))

(declare-fun b!571122 () Bool)

(declare-fun e!328474 () SeekEntryResult!5616)

(assert (=> b!571122 (= e!328474 e!328476)))

(declare-fun lt!260458 () (_ BitVec 64))

(assert (=> b!571122 (= lt!260458 (select (arr!17160 a!3118) (index!24693 lt!260457)))))

(declare-fun c!65470 () Bool)

(assert (=> b!571122 (= c!65470 (= lt!260458 k!1914))))

(declare-fun b!571123 () Bool)

(declare-fun e!328475 () SeekEntryResult!5616)

(assert (=> b!571123 (= e!328475 (MissingZero!5616 (index!24693 lt!260457)))))

(declare-fun b!571124 () Bool)

(assert (=> b!571124 (= e!328475 (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260457) (index!24693 lt!260457) (index!24693 lt!260457) k!1914 a!3118 mask!3119))))

(declare-fun d!84645 () Bool)

(declare-fun lt!260459 () SeekEntryResult!5616)

(assert (=> d!84645 (and (or (is-Undefined!5616 lt!260459) (not (is-Found!5616 lt!260459)) (and (bvsge (index!24692 lt!260459) #b00000000000000000000000000000000) (bvslt (index!24692 lt!260459) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260459) (is-Found!5616 lt!260459) (not (is-MissingZero!5616 lt!260459)) (and (bvsge (index!24691 lt!260459) #b00000000000000000000000000000000) (bvslt (index!24691 lt!260459) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260459) (is-Found!5616 lt!260459) (is-MissingZero!5616 lt!260459) (not (is-MissingVacant!5616 lt!260459)) (and (bvsge (index!24694 lt!260459) #b00000000000000000000000000000000) (bvslt (index!24694 lt!260459) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260459) (ite (is-Found!5616 lt!260459) (= (select (arr!17160 a!3118) (index!24692 lt!260459)) k!1914) (ite (is-MissingZero!5616 lt!260459) (= (select (arr!17160 a!3118) (index!24691 lt!260459)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5616 lt!260459) (= (select (arr!17160 a!3118) (index!24694 lt!260459)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84645 (= lt!260459 e!328474)))

(declare-fun c!65468 () Bool)

(assert (=> d!84645 (= c!65468 (and (is-Intermediate!5616 lt!260457) (undefined!6428 lt!260457)))))

(assert (=> d!84645 (= lt!260457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84645 (validMask!0 mask!3119)))

(assert (=> d!84645 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!260459)))

(declare-fun b!571125 () Bool)

(declare-fun c!65469 () Bool)

(assert (=> b!571125 (= c!65469 (= lt!260458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!571125 (= e!328476 e!328475)))

(declare-fun b!571126 () Bool)

(assert (=> b!571126 (= e!328474 Undefined!5616)))

(assert (= (and d!84645 c!65468) b!571126))

(assert (= (and d!84645 (not c!65468)) b!571122))

(assert (= (and b!571122 c!65470) b!571121))

(assert (= (and b!571122 (not c!65470)) b!571125))

(assert (= (and b!571125 c!65469) b!571123))

(assert (= (and b!571125 (not c!65469)) b!571124))

(declare-fun m!550055 () Bool)

(assert (=> b!571122 m!550055))

(declare-fun m!550059 () Bool)

(assert (=> b!571124 m!550059))

(declare-fun m!550061 () Bool)

(assert (=> d!84645 m!550061))

(declare-fun m!550063 () Bool)

(assert (=> d!84645 m!550063))

(assert (=> d!84645 m!549845))

(declare-fun m!550065 () Bool)

(assert (=> d!84645 m!550065))

(declare-fun m!550067 () Bool)

(assert (=> d!84645 m!550067))

(assert (=> d!84645 m!550063))

(declare-fun m!550069 () Bool)

(assert (=> d!84645 m!550069))

(assert (=> b!570831 d!84645))

(declare-fun d!84653 () Bool)

(declare-fun res!360905 () Bool)

(declare-fun e!328499 () Bool)

(assert (=> d!84653 (=> res!360905 e!328499)))

(assert (=> d!84653 (= res!360905 (= (select (arr!17160 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84653 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!328499)))

(declare-fun b!571165 () Bool)

(declare-fun e!328500 () Bool)

(assert (=> b!571165 (= e!328499 e!328500)))

(declare-fun res!360906 () Bool)

(assert (=> b!571165 (=> (not res!360906) (not e!328500))))

(assert (=> b!571165 (= res!360906 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17524 a!3118)))))

(declare-fun b!571166 () Bool)

(assert (=> b!571166 (= e!328500 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84653 (not res!360905)) b!571165))

(assert (= (and b!571165 res!360906) b!571166))

(assert (=> d!84653 m!549963))

(declare-fun m!550119 () Bool)

(assert (=> b!571166 m!550119))

(assert (=> b!570842 d!84653))

(declare-fun d!84663 () Bool)

(assert (=> d!84663 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!570833 d!84663))

(declare-fun d!84667 () Bool)

(assert (=> d!84667 (= (validKeyInArray!0 (select (arr!17160 a!3118) j!142)) (and (not (= (select (arr!17160 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17160 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!570839 d!84667))

(declare-fun b!571179 () Bool)

(declare-fun e!328511 () Bool)

(declare-fun call!32613 () Bool)

(assert (=> b!571179 (= e!328511 call!32613)))

(declare-fun b!571180 () Bool)

(declare-fun e!328510 () Bool)

(declare-fun e!328512 () Bool)

(assert (=> b!571180 (= e!328510 e!328512)))

(declare-fun c!65490 () Bool)

(assert (=> b!571180 (= c!65490 (validKeyInArray!0 (select (arr!17160 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84671 () Bool)

(declare-fun res!360913 () Bool)

(assert (=> d!84671 (=> res!360913 e!328510)))

(assert (=> d!84671 (= res!360913 (bvsge #b00000000000000000000000000000000 (size!17524 a!3118)))))

(assert (=> d!84671 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!328510)))

(declare-fun bm!32610 () Bool)

(assert (=> bm!32610 (= call!32613 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!571181 () Bool)

(assert (=> b!571181 (= e!328512 e!328511)))

(declare-fun lt!260488 () (_ BitVec 64))

(assert (=> b!571181 (= lt!260488 (select (arr!17160 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!260490 () Unit!17934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35748 (_ BitVec 64) (_ BitVec 32)) Unit!17934)

(assert (=> b!571181 (= lt!260490 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!260488 #b00000000000000000000000000000000))))

(assert (=> b!571181 (arrayContainsKey!0 a!3118 lt!260488 #b00000000000000000000000000000000)))

(declare-fun lt!260489 () Unit!17934)

(assert (=> b!571181 (= lt!260489 lt!260490)))

(declare-fun res!360914 () Bool)

(assert (=> b!571181 (= res!360914 (= (seekEntryOrOpen!0 (select (arr!17160 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5616 #b00000000000000000000000000000000)))))

(assert (=> b!571181 (=> (not res!360914) (not e!328511))))

(declare-fun b!571182 () Bool)

(assert (=> b!571182 (= e!328512 call!32613)))

(assert (= (and d!84671 (not res!360913)) b!571180))

(assert (= (and b!571180 c!65490) b!571181))

(assert (= (and b!571180 (not c!65490)) b!571182))

(assert (= (and b!571181 res!360914) b!571179))

(assert (= (or b!571179 b!571182) bm!32610))

(assert (=> b!571180 m!549963))

(assert (=> b!571180 m!549963))

(assert (=> b!571180 m!549965))

(declare-fun m!550133 () Bool)

(assert (=> bm!32610 m!550133))

(assert (=> b!571181 m!549963))

(declare-fun m!550135 () Bool)

(assert (=> b!571181 m!550135))

(declare-fun m!550137 () Bool)

(assert (=> b!571181 m!550137))

(assert (=> b!571181 m!549963))

(declare-fun m!550139 () Bool)

(assert (=> b!571181 m!550139))

(assert (=> b!570840 d!84671))

(declare-fun b!571183 () Bool)

(declare-fun e!328515 () SeekEntryResult!5616)

(declare-fun lt!260491 () SeekEntryResult!5616)

(assert (=> b!571183 (= e!328515 (Found!5616 (index!24693 lt!260491)))))

(declare-fun b!571184 () Bool)

(declare-fun e!328513 () SeekEntryResult!5616)

(assert (=> b!571184 (= e!328513 e!328515)))

(declare-fun lt!260492 () (_ BitVec 64))

(assert (=> b!571184 (= lt!260492 (select (arr!17160 a!3118) (index!24693 lt!260491)))))

(declare-fun c!65493 () Bool)

(assert (=> b!571184 (= c!65493 (= lt!260492 (select (arr!17160 a!3118) j!142)))))

(declare-fun b!571185 () Bool)

(declare-fun e!328514 () SeekEntryResult!5616)

(assert (=> b!571185 (= e!328514 (MissingZero!5616 (index!24693 lt!260491)))))

(declare-fun b!571186 () Bool)

(assert (=> b!571186 (= e!328514 (seekKeyOrZeroReturnVacant!0 (x!53591 lt!260491) (index!24693 lt!260491) (index!24693 lt!260491) (select (arr!17160 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84673 () Bool)

(declare-fun lt!260493 () SeekEntryResult!5616)

(assert (=> d!84673 (and (or (is-Undefined!5616 lt!260493) (not (is-Found!5616 lt!260493)) (and (bvsge (index!24692 lt!260493) #b00000000000000000000000000000000) (bvslt (index!24692 lt!260493) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260493) (is-Found!5616 lt!260493) (not (is-MissingZero!5616 lt!260493)) (and (bvsge (index!24691 lt!260493) #b00000000000000000000000000000000) (bvslt (index!24691 lt!260493) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260493) (is-Found!5616 lt!260493) (is-MissingZero!5616 lt!260493) (not (is-MissingVacant!5616 lt!260493)) (and (bvsge (index!24694 lt!260493) #b00000000000000000000000000000000) (bvslt (index!24694 lt!260493) (size!17524 a!3118)))) (or (is-Undefined!5616 lt!260493) (ite (is-Found!5616 lt!260493) (= (select (arr!17160 a!3118) (index!24692 lt!260493)) (select (arr!17160 a!3118) j!142)) (ite (is-MissingZero!5616 lt!260493) (= (select (arr!17160 a!3118) (index!24691 lt!260493)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5616 lt!260493) (= (select (arr!17160 a!3118) (index!24694 lt!260493)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84673 (= lt!260493 e!328513)))

(declare-fun c!65491 () Bool)

(assert (=> d!84673 (= c!65491 (and (is-Intermediate!5616 lt!260491) (undefined!6428 lt!260491)))))

(assert (=> d!84673 (= lt!260491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17160 a!3118) j!142) mask!3119) (select (arr!17160 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84673 (validMask!0 mask!3119)))

(assert (=> d!84673 (= (seekEntryOrOpen!0 (select (arr!17160 a!3118) j!142) a!3118 mask!3119) lt!260493)))

(declare-fun b!571187 () Bool)

(declare-fun c!65492 () Bool)

(assert (=> b!571187 (= c!65492 (= lt!260492 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!571187 (= e!328515 e!328514)))

(declare-fun b!571188 () Bool)

(assert (=> b!571188 (= e!328513 Undefined!5616)))

(assert (= (and d!84673 c!65491) b!571188))

(assert (= (and d!84673 (not c!65491)) b!571184))

(assert (= (and b!571184 c!65493) b!571183))

(assert (= (and b!571184 (not c!65493)) b!571187))

(assert (= (and b!571187 c!65492) b!571185))

(assert (= (and b!571187 (not c!65492)) b!571186))

(declare-fun m!550141 () Bool)

(assert (=> b!571184 m!550141))

(assert (=> b!571186 m!549815))

(declare-fun m!550143 () Bool)

(assert (=> b!571186 m!550143))

(declare-fun m!550145 () Bool)

(assert (=> d!84673 m!550145))

(assert (=> d!84673 m!549815))

(assert (=> d!84673 m!549817))

(assert (=> d!84673 m!549845))

(declare-fun m!550147 () Bool)

(assert (=> d!84673 m!550147))

(declare-fun m!550149 () Bool)

(assert (=> d!84673 m!550149))

(assert (=> d!84673 m!549817))

(assert (=> d!84673 m!549815))

(declare-fun m!550151 () Bool)

(assert (=> d!84673 m!550151))

(assert (=> b!570841 d!84673))

(declare-fun b!571189 () Bool)

(declare-fun e!328517 () Bool)

(declare-fun call!32614 () Bool)

(assert (=> b!571189 (= e!328517 call!32614)))

(declare-fun b!571190 () Bool)

(declare-fun e!328516 () Bool)

(declare-fun e!328518 () Bool)

(assert (=> b!571190 (= e!328516 e!328518)))

(declare-fun c!65494 () Bool)

(assert (=> b!571190 (= c!65494 (validKeyInArray!0 (select (arr!17160 a!3118) j!142)))))

(declare-fun d!84675 () Bool)

(declare-fun res!360915 () Bool)

(assert (=> d!84675 (=> res!360915 e!328516)))

(assert (=> d!84675 (= res!360915 (bvsge j!142 (size!17524 a!3118)))))

(assert (=> d!84675 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!328516)))

(declare-fun bm!32611 () Bool)

(assert (=> bm!32611 (= call!32614 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!571191 () Bool)

(assert (=> b!571191 (= e!328518 e!328517)))

(declare-fun lt!260494 () (_ BitVec 64))

(assert (=> b!571191 (= lt!260494 (select (arr!17160 a!3118) j!142))))

(declare-fun lt!260496 () Unit!17934)

(assert (=> b!571191 (= lt!260496 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!260494 j!142))))

(assert (=> b!571191 (arrayContainsKey!0 a!3118 lt!260494 #b00000000000000000000000000000000)))

(declare-fun lt!260495 () Unit!17934)

(assert (=> b!571191 (= lt!260495 lt!260496)))

(declare-fun res!360916 () Bool)

(assert (=> b!571191 (= res!360916 (= (seekEntryOrOpen!0 (select (arr!17160 a!3118) j!142) a!3118 mask!3119) (Found!5616 j!142)))))

(assert (=> b!571191 (=> (not res!360916) (not e!328517))))

(declare-fun b!571192 () Bool)

(assert (=> b!571192 (= e!328518 call!32614)))

(assert (= (and d!84675 (not res!360915)) b!571190))

(assert (= (and b!571190 c!65494) b!571191))

(assert (= (and b!571190 (not c!65494)) b!571192))

(assert (= (and b!571191 res!360916) b!571189))

(assert (= (or b!571189 b!571192) bm!32611))

(assert (=> b!571190 m!549815))

(assert (=> b!571190 m!549815))

(assert (=> b!571190 m!549851))

(declare-fun m!550153 () Bool)

(assert (=> bm!32611 m!550153))

(assert (=> b!571191 m!549815))

(declare-fun m!550155 () Bool)

(assert (=> b!571191 m!550155))

(declare-fun m!550157 () Bool)

(assert (=> b!571191 m!550157))

(assert (=> b!571191 m!549815))

(assert (=> b!571191 m!549827))

(assert (=> b!570841 d!84675))

(declare-fun d!84677 () Bool)

(assert (=> d!84677 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!260503 () Unit!17934)

(declare-fun choose!38 (array!35748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17934)

(assert (=> d!84677 (= lt!260503 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84677 (validMask!0 mask!3119)))

(assert (=> d!84677 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!260503)))

(declare-fun bs!17707 () Bool)

(assert (= bs!17707 d!84677))

(assert (=> bs!17707 m!549829))

(declare-fun m!550159 () Bool)

(assert (=> bs!17707 m!550159))

(assert (=> bs!17707 m!549845))

(assert (=> b!570841 d!84677))

(declare-fun b!571269 () Bool)

(declare-fun lt!260529 () SeekEntryResult!5616)

(assert (=> b!571269 (and (bvsge (index!24693 lt!260529) #b00000000000000000000000000000000) (bvslt (index!24693 lt!260529) (size!17524 lt!260322)))))

(declare-fun res!360948 () Bool)

(assert (=> b!571269 (= res!360948 (= (select (arr!17160 lt!260322) (index!24693 lt!260529)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328570 () Bool)

(assert (=> b!571269 (=> res!360948 e!328570)))

(declare-fun b!571270 () Bool)

(assert (=> b!571270 (and (bvsge (index!24693 lt!260529) #b00000000000000000000000000000000) (bvslt (index!24693 lt!260529) (size!17524 lt!260322)))))

(declare-fun res!360950 () Bool)

(assert (=> b!571270 (= res!360950 (= (select (arr!17160 lt!260322) (index!24693 lt!260529)) lt!260326))))

(assert (=> b!571270 (=> res!360950 e!328570)))

(declare-fun e!328568 () Bool)

(assert (=> b!571270 (= e!328568 e!328570)))

(declare-fun b!571271 () Bool)

(assert (=> b!571271 (and (bvsge (index!24693 lt!260529) #b00000000000000000000000000000000) (bvslt (index!24693 lt!260529) (size!17524 lt!260322)))))

(assert (=> b!571271 (= e!328570 (= (select (arr!17160 lt!260322) (index!24693 lt!260529)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!571272 () Bool)

(declare-fun e!328566 () Bool)

(assert (=> b!571272 (= e!328566 e!328568)))

(declare-fun res!360949 () Bool)

(assert (=> b!571272 (= res!360949 (and (is-Intermediate!5616 lt!260529) (not (undefined!6428 lt!260529)) (bvslt (x!53591 lt!260529) #b01111111111111111111111111111110) (bvsge (x!53591 lt!260529) #b00000000000000000000000000000000) (bvsge (x!53591 lt!260529) #b00000000000000000000000000000000)))))

(assert (=> b!571272 (=> (not res!360949) (not e!328568))))

(declare-fun b!571273 () Bool)

(declare-fun e!328569 () SeekEntryResult!5616)

(assert (=> b!571273 (= e!328569 (Intermediate!5616 false lt!260323 #b00000000000000000000000000000000))))

(declare-fun b!571275 () Bool)

(assert (=> b!571275 (= e!328566 (bvsge (x!53591 lt!260529) #b01111111111111111111111111111110))))

(declare-fun b!571276 () Bool)

(declare-fun e!328567 () SeekEntryResult!5616)

(assert (=> b!571276 (= e!328567 (Intermediate!5616 true lt!260323 #b00000000000000000000000000000000))))

(declare-fun b!571277 () Bool)

(assert (=> b!571277 (= e!328567 e!328569)))

(declare-fun c!65519 () Bool)

(declare-fun lt!260530 () (_ BitVec 64))

(assert (=> b!571277 (= c!65519 (or (= lt!260530 lt!260326) (= (bvadd lt!260530 lt!260530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!571274 () Bool)

(assert (=> b!571274 (= e!328569 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!260323 #b00000000000000000000000000000000 mask!3119) lt!260326 lt!260322 mask!3119))))

(declare-fun d!84679 () Bool)

(assert (=> d!84679 e!328566))

(declare-fun c!65520 () Bool)

(assert (=> d!84679 (= c!65520 (and (is-Intermediate!5616 lt!260529) (undefined!6428 lt!260529)))))

(assert (=> d!84679 (= lt!260529 e!328567)))

(declare-fun c!65518 () Bool)

(assert (=> d!84679 (= c!65518 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84679 (= lt!260530 (select (arr!17160 lt!260322) lt!260323))))

(assert (=> d!84679 (validMask!0 mask!3119)))

(assert (=> d!84679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260323 lt!260326 lt!260322 mask!3119) lt!260529)))

(assert (= (and d!84679 c!65518) b!571276))

(assert (= (and d!84679 (not c!65518)) b!571277))

(assert (= (and b!571277 c!65519) b!571273))

(assert (= (and b!571277 (not c!65519)) b!571274))

(assert (= (and d!84679 c!65520) b!571275))

(assert (= (and d!84679 (not c!65520)) b!571272))

(assert (= (and b!571272 res!360949) b!571270))

(assert (= (and b!571270 (not res!360950)) b!571269))

(assert (= (and b!571269 (not res!360948)) b!571271))

(declare-fun m!550189 () Bool)

(assert (=> b!571270 m!550189))

(declare-fun m!550191 () Bool)

(assert (=> b!571274 m!550191))

(assert (=> b!571274 m!550191))

(declare-fun m!550193 () Bool)

(assert (=> b!571274 m!550193))

(assert (=> b!571269 m!550189))

(assert (=> b!571271 m!550189))

(declare-fun m!550195 () Bool)

(assert (=> d!84679 m!550195))

(assert (=> d!84679 m!549845))

(assert (=> b!570830 d!84679))

(declare-fun b!571278 () Bool)

(declare-fun lt!260531 () SeekEntryResult!5616)

(assert (=> b!571278 (and (bvsge (index!24693 lt!260531) #b00000000000000000000000000000000) (bvslt (index!24693 lt!260531) (size!17524 a!3118)))))

(declare-fun res!360951 () Bool)

(assert (=> b!571278 (= res!360951 (= (select (arr!17160 a!3118) (index!24693 lt!260531)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328575 () Bool)

(assert (=> b!571278 (=> res!360951 e!328575)))

(declare-fun b!571279 () Bool)

(assert (=> b!571279 (and (bvsge (index!24693 lt!260531) #b00000000000000000000000000000000) (bvslt (index!24693 lt!260531) (size!17524 a!3118)))))

