; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52008 () Bool)

(assert start!52008)

(declare-datatypes ((SeekEntryResult!5546 0))(
  ( (MissingZero!5546 (index!24411 (_ BitVec 32))) (Found!5546 (index!24412 (_ BitVec 32))) (Intermediate!5546 (undefined!6358 Bool) (index!24413 (_ BitVec 32)) (x!53308 (_ BitVec 32))) (Undefined!5546) (MissingVacant!5546 (index!24414 (_ BitVec 32))) )
))
(declare-fun lt!258756 () SeekEntryResult!5546)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!567857 () Bool)

(declare-fun e!326747 () Bool)

(declare-datatypes ((array!35599 0))(
  ( (array!35600 (arr!17090 (Array (_ BitVec 32) (_ BitVec 64))) (size!17454 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35599)

(assert (=> b!567857 (= e!326747 (not (or (not (is-Intermediate!5546 lt!258756)) (undefined!6358 lt!258756) (= (select (arr!17090 a!3118) (index!24413 lt!258756)) (select (arr!17090 a!3118) j!142)) (and (bvsge (index!24413 lt!258756) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258756) (size!17454 a!3118))))))))

(declare-fun e!326748 () Bool)

(assert (=> b!567857 e!326748))

(declare-fun res!358393 () Bool)

(assert (=> b!567857 (=> (not res!358393) (not e!326748))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35599 (_ BitVec 32)) Bool)

(assert (=> b!567857 (= res!358393 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17794 0))(
  ( (Unit!17795) )
))
(declare-fun lt!258754 () Unit!17794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17794)

(assert (=> b!567857 (= lt!258754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567858 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35599 (_ BitVec 32)) SeekEntryResult!5546)

(assert (=> b!567858 (= e!326748 (= (seekEntryOrOpen!0 (select (arr!17090 a!3118) j!142) a!3118 mask!3119) (Found!5546 j!142)))))

(declare-fun b!567859 () Bool)

(declare-fun res!358398 () Bool)

(declare-fun e!326745 () Bool)

(assert (=> b!567859 (=> (not res!358398) (not e!326745))))

(declare-datatypes ((List!11223 0))(
  ( (Nil!11220) (Cons!11219 (h!12234 (_ BitVec 64)) (t!17459 List!11223)) )
))
(declare-fun arrayNoDuplicates!0 (array!35599 (_ BitVec 32) List!11223) Bool)

(assert (=> b!567859 (= res!358398 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11220))))

(declare-fun b!567861 () Bool)

(declare-fun e!326746 () Bool)

(assert (=> b!567861 (= e!326746 e!326745)))

(declare-fun res!358394 () Bool)

(assert (=> b!567861 (=> (not res!358394) (not e!326745))))

(declare-fun lt!258758 () SeekEntryResult!5546)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567861 (= res!358394 (or (= lt!258758 (MissingZero!5546 i!1132)) (= lt!258758 (MissingVacant!5546 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!567861 (= lt!258758 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567862 () Bool)

(declare-fun res!358391 () Bool)

(assert (=> b!567862 (=> (not res!358391) (not e!326745))))

(assert (=> b!567862 (= res!358391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567863 () Bool)

(declare-fun res!358392 () Bool)

(assert (=> b!567863 (=> (not res!358392) (not e!326746))))

(declare-fun arrayContainsKey!0 (array!35599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567863 (= res!358392 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567864 () Bool)

(declare-fun res!358397 () Bool)

(assert (=> b!567864 (=> (not res!358397) (not e!326746))))

(assert (=> b!567864 (= res!358397 (and (= (size!17454 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17454 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17454 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567860 () Bool)

(declare-fun res!358400 () Bool)

(assert (=> b!567860 (=> (not res!358400) (not e!326746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567860 (= res!358400 (validKeyInArray!0 (select (arr!17090 a!3118) j!142)))))

(declare-fun res!358395 () Bool)

(assert (=> start!52008 (=> (not res!358395) (not e!326746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52008 (= res!358395 (validMask!0 mask!3119))))

(assert (=> start!52008 e!326746))

(assert (=> start!52008 true))

(declare-fun array_inv!12864 (array!35599) Bool)

(assert (=> start!52008 (array_inv!12864 a!3118)))

(declare-fun b!567865 () Bool)

(declare-fun res!358399 () Bool)

(assert (=> b!567865 (=> (not res!358399) (not e!326746))))

(assert (=> b!567865 (= res!358399 (validKeyInArray!0 k!1914))))

(declare-fun b!567866 () Bool)

(assert (=> b!567866 (= e!326745 e!326747)))

(declare-fun res!358396 () Bool)

(assert (=> b!567866 (=> (not res!358396) (not e!326747))))

(declare-fun lt!258755 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35599 (_ BitVec 32)) SeekEntryResult!5546)

(assert (=> b!567866 (= res!358396 (= lt!258756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258755 (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)) mask!3119)))))

(declare-fun lt!258757 () (_ BitVec 32))

(assert (=> b!567866 (= lt!258756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258757 (select (arr!17090 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567866 (= lt!258755 (toIndex!0 (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!567866 (= lt!258757 (toIndex!0 (select (arr!17090 a!3118) j!142) mask!3119))))

(assert (= (and start!52008 res!358395) b!567864))

(assert (= (and b!567864 res!358397) b!567860))

(assert (= (and b!567860 res!358400) b!567865))

(assert (= (and b!567865 res!358399) b!567863))

(assert (= (and b!567863 res!358392) b!567861))

(assert (= (and b!567861 res!358394) b!567862))

(assert (= (and b!567862 res!358391) b!567859))

(assert (= (and b!567859 res!358398) b!567866))

(assert (= (and b!567866 res!358396) b!567857))

(assert (= (and b!567857 res!358393) b!567858))

(declare-fun m!546491 () Bool)

(assert (=> b!567861 m!546491))

(declare-fun m!546493 () Bool)

(assert (=> b!567860 m!546493))

(assert (=> b!567860 m!546493))

(declare-fun m!546495 () Bool)

(assert (=> b!567860 m!546495))

(declare-fun m!546497 () Bool)

(assert (=> start!52008 m!546497))

(declare-fun m!546499 () Bool)

(assert (=> start!52008 m!546499))

(declare-fun m!546501 () Bool)

(assert (=> b!567862 m!546501))

(declare-fun m!546503 () Bool)

(assert (=> b!567865 m!546503))

(declare-fun m!546505 () Bool)

(assert (=> b!567857 m!546505))

(assert (=> b!567857 m!546493))

(declare-fun m!546507 () Bool)

(assert (=> b!567857 m!546507))

(declare-fun m!546509 () Bool)

(assert (=> b!567857 m!546509))

(declare-fun m!546511 () Bool)

(assert (=> b!567863 m!546511))

(assert (=> b!567858 m!546493))

(assert (=> b!567858 m!546493))

(declare-fun m!546513 () Bool)

(assert (=> b!567858 m!546513))

(declare-fun m!546515 () Bool)

(assert (=> b!567859 m!546515))

(assert (=> b!567866 m!546493))

(declare-fun m!546517 () Bool)

(assert (=> b!567866 m!546517))

(assert (=> b!567866 m!546493))

(declare-fun m!546519 () Bool)

(assert (=> b!567866 m!546519))

(declare-fun m!546521 () Bool)

(assert (=> b!567866 m!546521))

(assert (=> b!567866 m!546519))

(declare-fun m!546523 () Bool)

(assert (=> b!567866 m!546523))

(assert (=> b!567866 m!546519))

(declare-fun m!546525 () Bool)

(assert (=> b!567866 m!546525))

(assert (=> b!567866 m!546493))

(declare-fun m!546527 () Bool)

(assert (=> b!567866 m!546527))

(push 1)

(assert (not b!567860))

(assert (not b!567866))

(assert (not b!567863))

(assert (not b!567862))

(assert (not b!567865))

(assert (not b!567861))

(assert (not b!567858))

(assert (not b!567859))

(assert (not start!52008))

(assert (not b!567857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84291 () Bool)

(assert (=> d!84291 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567865 d!84291))

(declare-fun d!84293 () Bool)

(assert (=> d!84293 (= (validKeyInArray!0 (select (arr!17090 a!3118) j!142)) (and (not (= (select (arr!17090 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17090 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567860 d!84293))

(declare-fun b!567922 () Bool)

(declare-fun e!326792 () Bool)

(declare-fun contains!2877 (List!11223 (_ BitVec 64)) Bool)

(assert (=> b!567922 (= e!326792 (contains!2877 Nil!11220 (select (arr!17090 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84295 () Bool)

(declare-fun res!358429 () Bool)

(declare-fun e!326791 () Bool)

(assert (=> d!84295 (=> res!358429 e!326791)))

(assert (=> d!84295 (= res!358429 (bvsge #b00000000000000000000000000000000 (size!17454 a!3118)))))

(assert (=> d!84295 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11220) e!326791)))

(declare-fun b!567923 () Bool)

(declare-fun e!326794 () Bool)

(declare-fun call!32546 () Bool)

(assert (=> b!567923 (= e!326794 call!32546)))

(declare-fun bm!32543 () Bool)

(declare-fun c!65099 () Bool)

(assert (=> bm!32543 (= call!32546 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65099 (Cons!11219 (select (arr!17090 a!3118) #b00000000000000000000000000000000) Nil!11220) Nil!11220)))))

(declare-fun b!567924 () Bool)

(assert (=> b!567924 (= e!326794 call!32546)))

(declare-fun b!567925 () Bool)

(declare-fun e!326793 () Bool)

(assert (=> b!567925 (= e!326791 e!326793)))

(declare-fun res!358430 () Bool)

(assert (=> b!567925 (=> (not res!358430) (not e!326793))))

(assert (=> b!567925 (= res!358430 (not e!326792))))

(declare-fun res!358428 () Bool)

(assert (=> b!567925 (=> (not res!358428) (not e!326792))))

(assert (=> b!567925 (= res!358428 (validKeyInArray!0 (select (arr!17090 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567926 () Bool)

(assert (=> b!567926 (= e!326793 e!326794)))

(assert (=> b!567926 (= c!65099 (validKeyInArray!0 (select (arr!17090 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84295 (not res!358429)) b!567925))

(assert (= (and b!567925 res!358428) b!567922))

(assert (= (and b!567925 res!358430) b!567926))

(assert (= (and b!567926 c!65099) b!567924))

(assert (= (and b!567926 (not c!65099)) b!567923))

(assert (= (or b!567924 b!567923) bm!32543))

(declare-fun m!546547 () Bool)

(assert (=> b!567922 m!546547))

(assert (=> b!567922 m!546547))

(declare-fun m!546549 () Bool)

(assert (=> b!567922 m!546549))

(assert (=> bm!32543 m!546547))

(declare-fun m!546551 () Bool)

(assert (=> bm!32543 m!546551))

(assert (=> b!567925 m!546547))

(assert (=> b!567925 m!546547))

(declare-fun m!546553 () Bool)

(assert (=> b!567925 m!546553))

(assert (=> b!567926 m!546547))

(assert (=> b!567926 m!546547))

(assert (=> b!567926 m!546553))

(assert (=> b!567859 d!84295))

(declare-fun d!84297 () Bool)

(declare-fun lt!258800 () SeekEntryResult!5546)

(assert (=> d!84297 (and (or (is-Undefined!5546 lt!258800) (not (is-Found!5546 lt!258800)) (and (bvsge (index!24412 lt!258800) #b00000000000000000000000000000000) (bvslt (index!24412 lt!258800) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258800) (is-Found!5546 lt!258800) (not (is-MissingZero!5546 lt!258800)) (and (bvsge (index!24411 lt!258800) #b00000000000000000000000000000000) (bvslt (index!24411 lt!258800) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258800) (is-Found!5546 lt!258800) (is-MissingZero!5546 lt!258800) (not (is-MissingVacant!5546 lt!258800)) (and (bvsge (index!24414 lt!258800) #b00000000000000000000000000000000) (bvslt (index!24414 lt!258800) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258800) (ite (is-Found!5546 lt!258800) (= (select (arr!17090 a!3118) (index!24412 lt!258800)) k!1914) (ite (is-MissingZero!5546 lt!258800) (= (select (arr!17090 a!3118) (index!24411 lt!258800)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5546 lt!258800) (= (select (arr!17090 a!3118) (index!24414 lt!258800)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326823 () SeekEntryResult!5546)

(assert (=> d!84297 (= lt!258800 e!326823)))

(declare-fun c!65125 () Bool)

(declare-fun lt!258801 () SeekEntryResult!5546)

(assert (=> d!84297 (= c!65125 (and (is-Intermediate!5546 lt!258801) (undefined!6358 lt!258801)))))

(assert (=> d!84297 (= lt!258801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84297 (validMask!0 mask!3119)))

(assert (=> d!84297 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258800)))

(declare-fun b!567981 () Bool)

(declare-fun e!326825 () SeekEntryResult!5546)

(assert (=> b!567981 (= e!326825 (Found!5546 (index!24413 lt!258801)))))

(declare-fun b!567982 () Bool)

(assert (=> b!567982 (= e!326823 e!326825)))

(declare-fun lt!258799 () (_ BitVec 64))

(assert (=> b!567982 (= lt!258799 (select (arr!17090 a!3118) (index!24413 lt!258801)))))

(declare-fun c!65124 () Bool)

(assert (=> b!567982 (= c!65124 (= lt!258799 k!1914))))

(declare-fun b!567983 () Bool)

(assert (=> b!567983 (= e!326823 Undefined!5546)))

(declare-fun b!567984 () Bool)

(declare-fun c!65126 () Bool)

(assert (=> b!567984 (= c!65126 (= lt!258799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326824 () SeekEntryResult!5546)

(assert (=> b!567984 (= e!326825 e!326824)))

(declare-fun b!567985 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35599 (_ BitVec 32)) SeekEntryResult!5546)

(assert (=> b!567985 (= e!326824 (seekKeyOrZeroReturnVacant!0 (x!53308 lt!258801) (index!24413 lt!258801) (index!24413 lt!258801) k!1914 a!3118 mask!3119))))

(declare-fun b!567986 () Bool)

(assert (=> b!567986 (= e!326824 (MissingZero!5546 (index!24413 lt!258801)))))

(assert (= (and d!84297 c!65125) b!567983))

(assert (= (and d!84297 (not c!65125)) b!567982))

(assert (= (and b!567982 c!65124) b!567981))

(assert (= (and b!567982 (not c!65124)) b!567984))

(assert (= (and b!567984 c!65126) b!567986))

(assert (= (and b!567984 (not c!65126)) b!567985))

(declare-fun m!546579 () Bool)

(assert (=> d!84297 m!546579))

(declare-fun m!546581 () Bool)

(assert (=> d!84297 m!546581))

(assert (=> d!84297 m!546497))

(declare-fun m!546583 () Bool)

(assert (=> d!84297 m!546583))

(declare-fun m!546585 () Bool)

(assert (=> d!84297 m!546585))

(declare-fun m!546587 () Bool)

(assert (=> d!84297 m!546587))

(assert (=> d!84297 m!546585))

(declare-fun m!546589 () Bool)

(assert (=> b!567982 m!546589))

(declare-fun m!546591 () Bool)

(assert (=> b!567985 m!546591))

(assert (=> b!567861 d!84297))

(declare-fun d!84303 () Bool)

(assert (=> d!84303 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52008 d!84303))

(declare-fun d!84309 () Bool)

(assert (=> d!84309 (= (array_inv!12864 a!3118) (bvsge (size!17454 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52008 d!84309))

(declare-fun b!568092 () Bool)

(declare-fun e!326894 () SeekEntryResult!5546)

(assert (=> b!568092 (= e!326894 (Intermediate!5546 false lt!258755 #b00000000000000000000000000000000))))

(declare-fun d!84313 () Bool)

(declare-fun e!326891 () Bool)

(assert (=> d!84313 e!326891))

(declare-fun c!65161 () Bool)

(declare-fun lt!258840 () SeekEntryResult!5546)

(assert (=> d!84313 (= c!65161 (and (is-Intermediate!5546 lt!258840) (undefined!6358 lt!258840)))))

(declare-fun e!326892 () SeekEntryResult!5546)

(assert (=> d!84313 (= lt!258840 e!326892)))

(declare-fun c!65162 () Bool)

(assert (=> d!84313 (= c!65162 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258841 () (_ BitVec 64))

(assert (=> d!84313 (= lt!258841 (select (arr!17090 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118))) lt!258755))))

(assert (=> d!84313 (validMask!0 mask!3119)))

(assert (=> d!84313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258755 (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)) mask!3119) lt!258840)))

(declare-fun b!568093 () Bool)

(assert (=> b!568093 (and (bvsge (index!24413 lt!258840) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258840) (size!17454 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)))))))

(declare-fun e!326890 () Bool)

(assert (=> b!568093 (= e!326890 (= (select (arr!17090 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118))) (index!24413 lt!258840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568094 () Bool)

(assert (=> b!568094 (= e!326892 e!326894)))

(declare-fun c!65160 () Bool)

(assert (=> b!568094 (= c!65160 (or (= lt!258841 (select (store (arr!17090 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!258841 lt!258841) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568095 () Bool)

(assert (=> b!568095 (= e!326891 (bvsge (x!53308 lt!258840) #b01111111111111111111111111111110))))

(declare-fun b!568096 () Bool)

(declare-fun e!326893 () Bool)

(assert (=> b!568096 (= e!326891 e!326893)))

(declare-fun res!358478 () Bool)

(assert (=> b!568096 (= res!358478 (and (is-Intermediate!5546 lt!258840) (not (undefined!6358 lt!258840)) (bvslt (x!53308 lt!258840) #b01111111111111111111111111111110) (bvsge (x!53308 lt!258840) #b00000000000000000000000000000000) (bvsge (x!53308 lt!258840) #b00000000000000000000000000000000)))))

(assert (=> b!568096 (=> (not res!358478) (not e!326893))))

(declare-fun b!568097 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568097 (= e!326894 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258755 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)) mask!3119))))

(declare-fun b!568098 () Bool)

(assert (=> b!568098 (= e!326892 (Intermediate!5546 true lt!258755 #b00000000000000000000000000000000))))

(declare-fun b!568099 () Bool)

(assert (=> b!568099 (and (bvsge (index!24413 lt!258840) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258840) (size!17454 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)))))))

(declare-fun res!358480 () Bool)

(assert (=> b!568099 (= res!358480 (= (select (arr!17090 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118))) (index!24413 lt!258840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568099 (=> res!358480 e!326890)))

(declare-fun b!568100 () Bool)

(assert (=> b!568100 (and (bvsge (index!24413 lt!258840) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258840) (size!17454 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118)))))))

(declare-fun res!358479 () Bool)

(assert (=> b!568100 (= res!358479 (= (select (arr!17090 (array!35600 (store (arr!17090 a!3118) i!1132 k!1914) (size!17454 a!3118))) (index!24413 lt!258840)) (select (store (arr!17090 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!568100 (=> res!358479 e!326890)))

(assert (=> b!568100 (= e!326893 e!326890)))

(assert (= (and d!84313 c!65162) b!568098))

(assert (= (and d!84313 (not c!65162)) b!568094))

(assert (= (and b!568094 c!65160) b!568092))

(assert (= (and b!568094 (not c!65160)) b!568097))

(assert (= (and d!84313 c!65161) b!568095))

(assert (= (and d!84313 (not c!65161)) b!568096))

(assert (= (and b!568096 res!358478) b!568100))

(assert (= (and b!568100 (not res!358479)) b!568099))

(assert (= (and b!568099 (not res!358480)) b!568093))

(declare-fun m!546671 () Bool)

(assert (=> b!568097 m!546671))

(assert (=> b!568097 m!546671))

(assert (=> b!568097 m!546519))

(declare-fun m!546673 () Bool)

(assert (=> b!568097 m!546673))

(declare-fun m!546675 () Bool)

(assert (=> b!568093 m!546675))

(assert (=> b!568100 m!546675))

(assert (=> b!568099 m!546675))

(declare-fun m!546677 () Bool)

(assert (=> d!84313 m!546677))

(assert (=> d!84313 m!546497))

(assert (=> b!567866 d!84313))

(declare-fun b!568105 () Bool)

(declare-fun e!326902 () SeekEntryResult!5546)

(assert (=> b!568105 (= e!326902 (Intermediate!5546 false lt!258757 #b00000000000000000000000000000000))))

(declare-fun d!84341 () Bool)

(declare-fun e!326899 () Bool)

(assert (=> d!84341 e!326899))

(declare-fun c!65165 () Bool)

(declare-fun lt!258845 () SeekEntryResult!5546)

(assert (=> d!84341 (= c!65165 (and (is-Intermediate!5546 lt!258845) (undefined!6358 lt!258845)))))

(declare-fun e!326900 () SeekEntryResult!5546)

(assert (=> d!84341 (= lt!258845 e!326900)))

(declare-fun c!65166 () Bool)

(assert (=> d!84341 (= c!65166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258846 () (_ BitVec 64))

(assert (=> d!84341 (= lt!258846 (select (arr!17090 a!3118) lt!258757))))

(assert (=> d!84341 (validMask!0 mask!3119)))

(assert (=> d!84341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258757 (select (arr!17090 a!3118) j!142) a!3118 mask!3119) lt!258845)))

(declare-fun b!568106 () Bool)

(assert (=> b!568106 (and (bvsge (index!24413 lt!258845) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258845) (size!17454 a!3118)))))

(declare-fun e!326898 () Bool)

(assert (=> b!568106 (= e!326898 (= (select (arr!17090 a!3118) (index!24413 lt!258845)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568107 () Bool)

(assert (=> b!568107 (= e!326900 e!326902)))

(declare-fun c!65164 () Bool)

(assert (=> b!568107 (= c!65164 (or (= lt!258846 (select (arr!17090 a!3118) j!142)) (= (bvadd lt!258846 lt!258846) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568108 () Bool)

(assert (=> b!568108 (= e!326899 (bvsge (x!53308 lt!258845) #b01111111111111111111111111111110))))

(declare-fun b!568109 () Bool)

(declare-fun e!326901 () Bool)

(assert (=> b!568109 (= e!326899 e!326901)))

(declare-fun res!358483 () Bool)

(assert (=> b!568109 (= res!358483 (and (is-Intermediate!5546 lt!258845) (not (undefined!6358 lt!258845)) (bvslt (x!53308 lt!258845) #b01111111111111111111111111111110) (bvsge (x!53308 lt!258845) #b00000000000000000000000000000000) (bvsge (x!53308 lt!258845) #b00000000000000000000000000000000)))))

(assert (=> b!568109 (=> (not res!358483) (not e!326901))))

(declare-fun b!568110 () Bool)

(assert (=> b!568110 (= e!326902 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258757 #b00000000000000000000000000000000 mask!3119) (select (arr!17090 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568111 () Bool)

(assert (=> b!568111 (= e!326900 (Intermediate!5546 true lt!258757 #b00000000000000000000000000000000))))

(declare-fun b!568112 () Bool)

(assert (=> b!568112 (and (bvsge (index!24413 lt!258845) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258845) (size!17454 a!3118)))))

(declare-fun res!358485 () Bool)

(assert (=> b!568112 (= res!358485 (= (select (arr!17090 a!3118) (index!24413 lt!258845)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568112 (=> res!358485 e!326898)))

(declare-fun b!568113 () Bool)

(assert (=> b!568113 (and (bvsge (index!24413 lt!258845) #b00000000000000000000000000000000) (bvslt (index!24413 lt!258845) (size!17454 a!3118)))))

(declare-fun res!358484 () Bool)

(assert (=> b!568113 (= res!358484 (= (select (arr!17090 a!3118) (index!24413 lt!258845)) (select (arr!17090 a!3118) j!142)))))

(assert (=> b!568113 (=> res!358484 e!326898)))

(assert (=> b!568113 (= e!326901 e!326898)))

(assert (= (and d!84341 c!65166) b!568111))

(assert (= (and d!84341 (not c!65166)) b!568107))

(assert (= (and b!568107 c!65164) b!568105))

(assert (= (and b!568107 (not c!65164)) b!568110))

(assert (= (and d!84341 c!65165) b!568108))

(assert (= (and d!84341 (not c!65165)) b!568109))

(assert (= (and b!568109 res!358483) b!568113))

(assert (= (and b!568113 (not res!358484)) b!568112))

(assert (= (and b!568112 (not res!358485)) b!568106))

(declare-fun m!546679 () Bool)

(assert (=> b!568110 m!546679))

(assert (=> b!568110 m!546679))

(assert (=> b!568110 m!546493))

(declare-fun m!546681 () Bool)

(assert (=> b!568110 m!546681))

(declare-fun m!546683 () Bool)

(assert (=> b!568106 m!546683))

(assert (=> b!568113 m!546683))

(assert (=> b!568112 m!546683))

(declare-fun m!546685 () Bool)

(assert (=> d!84341 m!546685))

(assert (=> d!84341 m!546497))

(assert (=> b!567866 d!84341))

(declare-fun d!84345 () Bool)

(declare-fun lt!258852 () (_ BitVec 32))

(declare-fun lt!258851 () (_ BitVec 32))

(assert (=> d!84345 (= lt!258852 (bvmul (bvxor lt!258851 (bvlshr lt!258851 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84345 (= lt!258851 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84345 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358486 (let ((h!12237 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53314 (bvmul (bvxor h!12237 (bvlshr h!12237 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53314 (bvlshr x!53314 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358486 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358486 #b00000000000000000000000000000000))))))

(assert (=> d!84345 (= (toIndex!0 (select (store (arr!17090 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!258852 (bvlshr lt!258852 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567866 d!84345))

(declare-fun d!84351 () Bool)

(declare-fun lt!258854 () (_ BitVec 32))

(declare-fun lt!258853 () (_ BitVec 32))

(assert (=> d!84351 (= lt!258854 (bvmul (bvxor lt!258853 (bvlshr lt!258853 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84351 (= lt!258853 ((_ extract 31 0) (bvand (bvxor (select (arr!17090 a!3118) j!142) (bvlshr (select (arr!17090 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84351 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358486 (let ((h!12237 ((_ extract 31 0) (bvand (bvxor (select (arr!17090 a!3118) j!142) (bvlshr (select (arr!17090 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53314 (bvmul (bvxor h!12237 (bvlshr h!12237 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53314 (bvlshr x!53314 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358486 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358486 #b00000000000000000000000000000000))))))

(assert (=> d!84351 (= (toIndex!0 (select (arr!17090 a!3118) j!142) mask!3119) (bvand (bvxor lt!258854 (bvlshr lt!258854 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567866 d!84351))

(declare-fun b!568134 () Bool)

(declare-fun e!326918 () Bool)

(declare-fun call!32556 () Bool)

(assert (=> b!568134 (= e!326918 call!32556)))

(declare-fun bm!32553 () Bool)

(assert (=> bm!32553 (= call!32556 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84353 () Bool)

(declare-fun res!358498 () Bool)

(declare-fun e!326919 () Bool)

(assert (=> d!84353 (=> res!358498 e!326919)))

(assert (=> d!84353 (= res!358498 (bvsge j!142 (size!17454 a!3118)))))

(assert (=> d!84353 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326919)))

(declare-fun b!568135 () Bool)

(declare-fun e!326920 () Bool)

(assert (=> b!568135 (= e!326920 e!326918)))

(declare-fun lt!258873 () (_ BitVec 64))

(assert (=> b!568135 (= lt!258873 (select (arr!17090 a!3118) j!142))))

(declare-fun lt!258875 () Unit!17794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35599 (_ BitVec 64) (_ BitVec 32)) Unit!17794)

(assert (=> b!568135 (= lt!258875 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258873 j!142))))

(assert (=> b!568135 (arrayContainsKey!0 a!3118 lt!258873 #b00000000000000000000000000000000)))

(declare-fun lt!258874 () Unit!17794)

(assert (=> b!568135 (= lt!258874 lt!258875)))

(declare-fun res!358497 () Bool)

(assert (=> b!568135 (= res!358497 (= (seekEntryOrOpen!0 (select (arr!17090 a!3118) j!142) a!3118 mask!3119) (Found!5546 j!142)))))

(assert (=> b!568135 (=> (not res!358497) (not e!326918))))

(declare-fun b!568136 () Bool)

(assert (=> b!568136 (= e!326920 call!32556)))

(declare-fun b!568137 () Bool)

(assert (=> b!568137 (= e!326919 e!326920)))

(declare-fun c!65172 () Bool)

(assert (=> b!568137 (= c!65172 (validKeyInArray!0 (select (arr!17090 a!3118) j!142)))))

(assert (= (and d!84353 (not res!358498)) b!568137))

(assert (= (and b!568137 c!65172) b!568135))

(assert (= (and b!568137 (not c!65172)) b!568136))

(assert (= (and b!568135 res!358497) b!568134))

(assert (= (or b!568134 b!568136) bm!32553))

(declare-fun m!546695 () Bool)

(assert (=> bm!32553 m!546695))

(assert (=> b!568135 m!546493))

(declare-fun m!546697 () Bool)

(assert (=> b!568135 m!546697))

(declare-fun m!546701 () Bool)

(assert (=> b!568135 m!546701))

(assert (=> b!568135 m!546493))

(assert (=> b!568135 m!546513))

(assert (=> b!568137 m!546493))

(assert (=> b!568137 m!546493))

(assert (=> b!568137 m!546495))

(assert (=> b!567857 d!84353))

(declare-fun d!84359 () Bool)

(assert (=> d!84359 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258881 () Unit!17794)

(declare-fun choose!38 (array!35599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17794)

(assert (=> d!84359 (= lt!258881 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84359 (validMask!0 mask!3119)))

(assert (=> d!84359 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258881)))

(declare-fun bs!17627 () Bool)

(assert (= bs!17627 d!84359))

(assert (=> bs!17627 m!546507))

(declare-fun m!546709 () Bool)

(assert (=> bs!17627 m!546709))

(assert (=> bs!17627 m!546497))

(assert (=> b!567857 d!84359))

(declare-fun b!568142 () Bool)

(declare-fun e!326924 () Bool)

(declare-fun call!32558 () Bool)

(assert (=> b!568142 (= e!326924 call!32558)))

(declare-fun bm!32555 () Bool)

(assert (=> bm!32555 (= call!32558 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84361 () Bool)

(declare-fun res!358502 () Bool)

(declare-fun e!326925 () Bool)

(assert (=> d!84361 (=> res!358502 e!326925)))

(assert (=> d!84361 (= res!358502 (bvsge #b00000000000000000000000000000000 (size!17454 a!3118)))))

(assert (=> d!84361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326925)))

(declare-fun b!568143 () Bool)

(declare-fun e!326926 () Bool)

(assert (=> b!568143 (= e!326926 e!326924)))

(declare-fun lt!258882 () (_ BitVec 64))

(assert (=> b!568143 (= lt!258882 (select (arr!17090 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258884 () Unit!17794)

(assert (=> b!568143 (= lt!258884 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258882 #b00000000000000000000000000000000))))

(assert (=> b!568143 (arrayContainsKey!0 a!3118 lt!258882 #b00000000000000000000000000000000)))

(declare-fun lt!258883 () Unit!17794)

(assert (=> b!568143 (= lt!258883 lt!258884)))

(declare-fun res!358501 () Bool)

(assert (=> b!568143 (= res!358501 (= (seekEntryOrOpen!0 (select (arr!17090 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5546 #b00000000000000000000000000000000)))))

(assert (=> b!568143 (=> (not res!358501) (not e!326924))))

(declare-fun b!568144 () Bool)

(assert (=> b!568144 (= e!326926 call!32558)))

(declare-fun b!568145 () Bool)

(assert (=> b!568145 (= e!326925 e!326926)))

(declare-fun c!65174 () Bool)

(assert (=> b!568145 (= c!65174 (validKeyInArray!0 (select (arr!17090 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84361 (not res!358502)) b!568145))

(assert (= (and b!568145 c!65174) b!568143))

(assert (= (and b!568145 (not c!65174)) b!568144))

(assert (= (and b!568143 res!358501) b!568142))

(assert (= (or b!568142 b!568144) bm!32555))

(declare-fun m!546711 () Bool)

(assert (=> bm!32555 m!546711))

(assert (=> b!568143 m!546547))

(declare-fun m!546713 () Bool)

(assert (=> b!568143 m!546713))

(declare-fun m!546715 () Bool)

(assert (=> b!568143 m!546715))

(assert (=> b!568143 m!546547))

(declare-fun m!546717 () Bool)

(assert (=> b!568143 m!546717))

(assert (=> b!568145 m!546547))

(assert (=> b!568145 m!546547))

(assert (=> b!568145 m!546553))

(assert (=> b!567862 d!84361))

(declare-fun d!84363 () Bool)

(declare-fun res!358507 () Bool)

(declare-fun e!326931 () Bool)

(assert (=> d!84363 (=> res!358507 e!326931)))

(assert (=> d!84363 (= res!358507 (= (select (arr!17090 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84363 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326931)))

(declare-fun b!568150 () Bool)

(declare-fun e!326932 () Bool)

(assert (=> b!568150 (= e!326931 e!326932)))

(declare-fun res!358508 () Bool)

(assert (=> b!568150 (=> (not res!358508) (not e!326932))))

(assert (=> b!568150 (= res!358508 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17454 a!3118)))))

(declare-fun b!568151 () Bool)

(assert (=> b!568151 (= e!326932 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84363 (not res!358507)) b!568150))

(assert (= (and b!568150 res!358508) b!568151))

(assert (=> d!84363 m!546547))

(declare-fun m!546719 () Bool)

(assert (=> b!568151 m!546719))

(assert (=> b!567863 d!84363))

(declare-fun d!84365 () Bool)

(declare-fun lt!258886 () SeekEntryResult!5546)

(assert (=> d!84365 (and (or (is-Undefined!5546 lt!258886) (not (is-Found!5546 lt!258886)) (and (bvsge (index!24412 lt!258886) #b00000000000000000000000000000000) (bvslt (index!24412 lt!258886) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258886) (is-Found!5546 lt!258886) (not (is-MissingZero!5546 lt!258886)) (and (bvsge (index!24411 lt!258886) #b00000000000000000000000000000000) (bvslt (index!24411 lt!258886) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258886) (is-Found!5546 lt!258886) (is-MissingZero!5546 lt!258886) (not (is-MissingVacant!5546 lt!258886)) (and (bvsge (index!24414 lt!258886) #b00000000000000000000000000000000) (bvslt (index!24414 lt!258886) (size!17454 a!3118)))) (or (is-Undefined!5546 lt!258886) (ite (is-Found!5546 lt!258886) (= (select (arr!17090 a!3118) (index!24412 lt!258886)) (select (arr!17090 a!3118) j!142)) (ite (is-MissingZero!5546 lt!258886) (= (select (arr!17090 a!3118) (index!24411 lt!258886)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5546 lt!258886) (= (select (arr!17090 a!3118) (index!24414 lt!258886)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326933 () SeekEntryResult!5546)

(assert (=> d!84365 (= lt!258886 e!326933)))

(declare-fun c!65176 () Bool)

(declare-fun lt!258887 () SeekEntryResult!5546)

(assert (=> d!84365 (= c!65176 (and (is-Intermediate!5546 lt!258887) (undefined!6358 lt!258887)))))

(assert (=> d!84365 (= lt!258887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17090 a!3118) j!142) mask!3119) (select (arr!17090 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84365 (validMask!0 mask!3119)))

(assert (=> d!84365 (= (seekEntryOrOpen!0 (select (arr!17090 a!3118) j!142) a!3118 mask!3119) lt!258886)))

(declare-fun b!568152 () Bool)

(declare-fun e!326935 () SeekEntryResult!5546)

(assert (=> b!568152 (= e!326935 (Found!5546 (index!24413 lt!258887)))))

(declare-fun b!568153 () Bool)

(assert (=> b!568153 (= e!326933 e!326935)))

(declare-fun lt!258885 () (_ BitVec 64))

(assert (=> b!568153 (= lt!258885 (select (arr!17090 a!3118) (index!24413 lt!258887)))))

(declare-fun c!65175 () Bool)

(assert (=> b!568153 (= c!65175 (= lt!258885 (select (arr!17090 a!3118) j!142)))))

(declare-fun b!568154 () Bool)

(assert (=> b!568154 (= e!326933 Undefined!5546)))

(declare-fun b!568155 () Bool)

(declare-fun c!65177 () Bool)

(assert (=> b!568155 (= c!65177 (= lt!258885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326934 () SeekEntryResult!5546)

(assert (=> b!568155 (= e!326935 e!326934)))

(declare-fun b!568156 () Bool)

(assert (=> b!568156 (= e!326934 (seekKeyOrZeroReturnVacant!0 (x!53308 lt!258887) (index!24413 lt!258887) (index!24413 lt!258887) (select (arr!17090 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568157 () Bool)

(assert (=> b!568157 (= e!326934 (MissingZero!5546 (index!24413 lt!258887)))))

(assert (= (and d!84365 c!65176) b!568154))

(assert (= (and d!84365 (not c!65176)) b!568153))

(assert (= (and b!568153 c!65175) b!568152))

(assert (= (and b!568153 (not c!65175)) b!568155))

(assert (= (and b!568155 c!65177) b!568157))

(assert (= (and b!568155 (not c!65177)) b!568156))

(declare-fun m!546721 () Bool)

(assert (=> d!84365 m!546721))

(declare-fun m!546723 () Bool)

(assert (=> d!84365 m!546723))

(assert (=> d!84365 m!546497))

(declare-fun m!546725 () Bool)

(assert (=> d!84365 m!546725))

(assert (=> d!84365 m!546517))

(assert (=> d!84365 m!546493))

(declare-fun m!546727 () Bool)

(assert (=> d!84365 m!546727))

(assert (=> d!84365 m!546493))

(assert (=> d!84365 m!546517))

(declare-fun m!546729 () Bool)

(assert (=> b!568153 m!546729))

(assert (=> b!568156 m!546493))

(declare-fun m!546731 () Bool)

(assert (=> b!568156 m!546731))

(assert (=> b!567858 d!84365))

(push 1)

