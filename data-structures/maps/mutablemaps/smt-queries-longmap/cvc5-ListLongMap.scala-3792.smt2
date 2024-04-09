; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52004 () Bool)

(assert start!52004)

(declare-datatypes ((SeekEntryResult!5544 0))(
  ( (MissingZero!5544 (index!24403 (_ BitVec 32))) (Found!5544 (index!24404 (_ BitVec 32))) (Intermediate!5544 (undefined!6356 Bool) (index!24405 (_ BitVec 32)) (x!53306 (_ BitVec 32))) (Undefined!5544) (MissingVacant!5544 (index!24406 (_ BitVec 32))) )
))
(declare-fun lt!258725 () SeekEntryResult!5544)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!567797 () Bool)

(declare-datatypes ((array!35595 0))(
  ( (array!35596 (arr!17088 (Array (_ BitVec 32) (_ BitVec 64))) (size!17452 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35595)

(declare-fun e!326715 () Bool)

(assert (=> b!567797 (= e!326715 (not (or (not (is-Intermediate!5544 lt!258725)) (undefined!6356 lt!258725) (= (select (arr!17088 a!3118) (index!24405 lt!258725)) (select (arr!17088 a!3118) j!142)) (and (bvsge (index!24405 lt!258725) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258725) (size!17452 a!3118))))))))

(declare-fun e!326716 () Bool)

(assert (=> b!567797 e!326716))

(declare-fun res!358338 () Bool)

(assert (=> b!567797 (=> (not res!358338) (not e!326716))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35595 (_ BitVec 32)) Bool)

(assert (=> b!567797 (= res!358338 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17790 0))(
  ( (Unit!17791) )
))
(declare-fun lt!258727 () Unit!17790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17790)

(assert (=> b!567797 (= lt!258727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567798 () Bool)

(declare-fun res!358332 () Bool)

(declare-fun e!326717 () Bool)

(assert (=> b!567798 (=> (not res!358332) (not e!326717))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567798 (= res!358332 (and (= (size!17452 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17452 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17452 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!358339 () Bool)

(assert (=> start!52004 (=> (not res!358339) (not e!326717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52004 (= res!358339 (validMask!0 mask!3119))))

(assert (=> start!52004 e!326717))

(assert (=> start!52004 true))

(declare-fun array_inv!12862 (array!35595) Bool)

(assert (=> start!52004 (array_inv!12862 a!3118)))

(declare-fun b!567799 () Bool)

(declare-fun res!358340 () Bool)

(declare-fun e!326718 () Bool)

(assert (=> b!567799 (=> (not res!358340) (not e!326718))))

(declare-datatypes ((List!11221 0))(
  ( (Nil!11218) (Cons!11217 (h!12232 (_ BitVec 64)) (t!17457 List!11221)) )
))
(declare-fun arrayNoDuplicates!0 (array!35595 (_ BitVec 32) List!11221) Bool)

(assert (=> b!567799 (= res!358340 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11218))))

(declare-fun b!567800 () Bool)

(assert (=> b!567800 (= e!326717 e!326718)))

(declare-fun res!358335 () Bool)

(assert (=> b!567800 (=> (not res!358335) (not e!326718))))

(declare-fun lt!258724 () SeekEntryResult!5544)

(assert (=> b!567800 (= res!358335 (or (= lt!258724 (MissingZero!5544 i!1132)) (= lt!258724 (MissingVacant!5544 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35595 (_ BitVec 32)) SeekEntryResult!5544)

(assert (=> b!567800 (= lt!258724 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567801 () Bool)

(declare-fun res!358336 () Bool)

(assert (=> b!567801 (=> (not res!358336) (not e!326717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567801 (= res!358336 (validKeyInArray!0 (select (arr!17088 a!3118) j!142)))))

(declare-fun b!567802 () Bool)

(declare-fun res!358337 () Bool)

(assert (=> b!567802 (=> (not res!358337) (not e!326718))))

(assert (=> b!567802 (= res!358337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567803 () Bool)

(assert (=> b!567803 (= e!326718 e!326715)))

(declare-fun res!358334 () Bool)

(assert (=> b!567803 (=> (not res!358334) (not e!326715))))

(declare-fun lt!258728 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35595 (_ BitVec 32)) SeekEntryResult!5544)

(assert (=> b!567803 (= res!358334 (= lt!258725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258728 (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)) mask!3119)))))

(declare-fun lt!258726 () (_ BitVec 32))

(assert (=> b!567803 (= lt!258725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258726 (select (arr!17088 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567803 (= lt!258728 (toIndex!0 (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!567803 (= lt!258726 (toIndex!0 (select (arr!17088 a!3118) j!142) mask!3119))))

(declare-fun b!567804 () Bool)

(assert (=> b!567804 (= e!326716 (= (seekEntryOrOpen!0 (select (arr!17088 a!3118) j!142) a!3118 mask!3119) (Found!5544 j!142)))))

(declare-fun b!567805 () Bool)

(declare-fun res!358333 () Bool)

(assert (=> b!567805 (=> (not res!358333) (not e!326717))))

(declare-fun arrayContainsKey!0 (array!35595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567805 (= res!358333 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567806 () Bool)

(declare-fun res!358331 () Bool)

(assert (=> b!567806 (=> (not res!358331) (not e!326717))))

(assert (=> b!567806 (= res!358331 (validKeyInArray!0 k!1914))))

(assert (= (and start!52004 res!358339) b!567798))

(assert (= (and b!567798 res!358332) b!567801))

(assert (= (and b!567801 res!358336) b!567806))

(assert (= (and b!567806 res!358331) b!567805))

(assert (= (and b!567805 res!358333) b!567800))

(assert (= (and b!567800 res!358335) b!567802))

(assert (= (and b!567802 res!358337) b!567799))

(assert (= (and b!567799 res!358340) b!567803))

(assert (= (and b!567803 res!358334) b!567797))

(assert (= (and b!567797 res!358338) b!567804))

(declare-fun m!546415 () Bool)

(assert (=> b!567804 m!546415))

(assert (=> b!567804 m!546415))

(declare-fun m!546417 () Bool)

(assert (=> b!567804 m!546417))

(declare-fun m!546419 () Bool)

(assert (=> b!567799 m!546419))

(assert (=> b!567801 m!546415))

(assert (=> b!567801 m!546415))

(declare-fun m!546421 () Bool)

(assert (=> b!567801 m!546421))

(declare-fun m!546423 () Bool)

(assert (=> b!567800 m!546423))

(assert (=> b!567803 m!546415))

(declare-fun m!546425 () Bool)

(assert (=> b!567803 m!546425))

(declare-fun m!546427 () Bool)

(assert (=> b!567803 m!546427))

(declare-fun m!546429 () Bool)

(assert (=> b!567803 m!546429))

(assert (=> b!567803 m!546415))

(assert (=> b!567803 m!546415))

(declare-fun m!546431 () Bool)

(assert (=> b!567803 m!546431))

(assert (=> b!567803 m!546427))

(declare-fun m!546433 () Bool)

(assert (=> b!567803 m!546433))

(assert (=> b!567803 m!546427))

(declare-fun m!546435 () Bool)

(assert (=> b!567803 m!546435))

(declare-fun m!546437 () Bool)

(assert (=> b!567806 m!546437))

(declare-fun m!546439 () Bool)

(assert (=> b!567797 m!546439))

(assert (=> b!567797 m!546415))

(declare-fun m!546441 () Bool)

(assert (=> b!567797 m!546441))

(declare-fun m!546443 () Bool)

(assert (=> b!567797 m!546443))

(declare-fun m!546445 () Bool)

(assert (=> b!567802 m!546445))

(declare-fun m!546447 () Bool)

(assert (=> b!567805 m!546447))

(declare-fun m!546449 () Bool)

(assert (=> start!52004 m!546449))

(declare-fun m!546451 () Bool)

(assert (=> start!52004 m!546451))

(push 1)

(assert (not start!52004))

(assert (not b!567806))

(assert (not b!567801))

(assert (not b!567799))

(assert (not b!567797))

(assert (not b!567805))

(assert (not b!567803))

(assert (not b!567804))

(assert (not b!567800))

(assert (not b!567802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!567927 () Bool)

(declare-fun e!326795 () SeekEntryResult!5544)

(assert (=> b!567927 (= e!326795 Undefined!5544)))

(declare-fun e!326796 () SeekEntryResult!5544)

(declare-fun lt!258778 () SeekEntryResult!5544)

(declare-fun b!567928 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35595 (_ BitVec 32)) SeekEntryResult!5544)

(assert (=> b!567928 (= e!326796 (seekKeyOrZeroReturnVacant!0 (x!53306 lt!258778) (index!24405 lt!258778) (index!24405 lt!258778) (select (arr!17088 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!567929 () Bool)

(declare-fun e!326797 () SeekEntryResult!5544)

(assert (=> b!567929 (= e!326795 e!326797)))

(declare-fun lt!258779 () (_ BitVec 64))

(assert (=> b!567929 (= lt!258779 (select (arr!17088 a!3118) (index!24405 lt!258778)))))

(declare-fun c!65102 () Bool)

(assert (=> b!567929 (= c!65102 (= lt!258779 (select (arr!17088 a!3118) j!142)))))

(declare-fun b!567930 () Bool)

(assert (=> b!567930 (= e!326797 (Found!5544 (index!24405 lt!258778)))))

(declare-fun d!84285 () Bool)

(declare-fun lt!258777 () SeekEntryResult!5544)

(assert (=> d!84285 (and (or (is-Undefined!5544 lt!258777) (not (is-Found!5544 lt!258777)) (and (bvsge (index!24404 lt!258777) #b00000000000000000000000000000000) (bvslt (index!24404 lt!258777) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258777) (is-Found!5544 lt!258777) (not (is-MissingZero!5544 lt!258777)) (and (bvsge (index!24403 lt!258777) #b00000000000000000000000000000000) (bvslt (index!24403 lt!258777) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258777) (is-Found!5544 lt!258777) (is-MissingZero!5544 lt!258777) (not (is-MissingVacant!5544 lt!258777)) (and (bvsge (index!24406 lt!258777) #b00000000000000000000000000000000) (bvslt (index!24406 lt!258777) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258777) (ite (is-Found!5544 lt!258777) (= (select (arr!17088 a!3118) (index!24404 lt!258777)) (select (arr!17088 a!3118) j!142)) (ite (is-MissingZero!5544 lt!258777) (= (select (arr!17088 a!3118) (index!24403 lt!258777)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5544 lt!258777) (= (select (arr!17088 a!3118) (index!24406 lt!258777)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84285 (= lt!258777 e!326795)))

(declare-fun c!65100 () Bool)

(assert (=> d!84285 (= c!65100 (and (is-Intermediate!5544 lt!258778) (undefined!6356 lt!258778)))))

(assert (=> d!84285 (= lt!258778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17088 a!3118) j!142) mask!3119) (select (arr!17088 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84285 (validMask!0 mask!3119)))

(assert (=> d!84285 (= (seekEntryOrOpen!0 (select (arr!17088 a!3118) j!142) a!3118 mask!3119) lt!258777)))

(declare-fun b!567931 () Bool)

(assert (=> b!567931 (= e!326796 (MissingZero!5544 (index!24405 lt!258778)))))

(declare-fun b!567932 () Bool)

(declare-fun c!65101 () Bool)

(assert (=> b!567932 (= c!65101 (= lt!258779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567932 (= e!326797 e!326796)))

(assert (= (and d!84285 c!65100) b!567927))

(assert (= (and d!84285 (not c!65100)) b!567929))

(assert (= (and b!567929 c!65102) b!567930))

(assert (= (and b!567929 (not c!65102)) b!567932))

(assert (= (and b!567932 c!65101) b!567931))

(assert (= (and b!567932 (not c!65101)) b!567928))

(assert (=> b!567928 m!546415))

(declare-fun m!546555 () Bool)

(assert (=> b!567928 m!546555))

(declare-fun m!546557 () Bool)

(assert (=> b!567929 m!546557))

(declare-fun m!546559 () Bool)

(assert (=> d!84285 m!546559))

(assert (=> d!84285 m!546449))

(declare-fun m!546561 () Bool)

(assert (=> d!84285 m!546561))

(assert (=> d!84285 m!546415))

(assert (=> d!84285 m!546425))

(assert (=> d!84285 m!546425))

(assert (=> d!84285 m!546415))

(declare-fun m!546563 () Bool)

(assert (=> d!84285 m!546563))

(declare-fun m!546565 () Bool)

(assert (=> d!84285 m!546565))

(assert (=> b!567804 d!84285))

(declare-fun b!567987 () Bool)

(declare-fun e!326829 () SeekEntryResult!5544)

(assert (=> b!567987 (= e!326829 (Intermediate!5544 false lt!258728 #b00000000000000000000000000000000))))

(declare-fun b!567988 () Bool)

(declare-fun e!326827 () Bool)

(declare-fun e!326830 () Bool)

(assert (=> b!567988 (= e!326827 e!326830)))

(declare-fun res!358438 () Bool)

(declare-fun lt!258802 () SeekEntryResult!5544)

(assert (=> b!567988 (= res!358438 (and (is-Intermediate!5544 lt!258802) (not (undefined!6356 lt!258802)) (bvslt (x!53306 lt!258802) #b01111111111111111111111111111110) (bvsge (x!53306 lt!258802) #b00000000000000000000000000000000) (bvsge (x!53306 lt!258802) #b00000000000000000000000000000000)))))

(assert (=> b!567988 (=> (not res!358438) (not e!326830))))

(declare-fun d!84299 () Bool)

(assert (=> d!84299 e!326827))

(declare-fun c!65129 () Bool)

(assert (=> d!84299 (= c!65129 (and (is-Intermediate!5544 lt!258802) (undefined!6356 lt!258802)))))

(declare-fun e!326826 () SeekEntryResult!5544)

(assert (=> d!84299 (= lt!258802 e!326826)))

(declare-fun c!65127 () Bool)

(assert (=> d!84299 (= c!65127 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258803 () (_ BitVec 64))

(assert (=> d!84299 (= lt!258803 (select (arr!17088 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118))) lt!258728))))

(assert (=> d!84299 (validMask!0 mask!3119)))

(assert (=> d!84299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258728 (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)) mask!3119) lt!258802)))

(declare-fun b!567989 () Bool)

(assert (=> b!567989 (and (bvsge (index!24405 lt!258802) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258802) (size!17452 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)))))))

(declare-fun e!326828 () Bool)

(assert (=> b!567989 (= e!326828 (= (select (arr!17088 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118))) (index!24405 lt!258802)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567990 () Bool)

(assert (=> b!567990 (and (bvsge (index!24405 lt!258802) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258802) (size!17452 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)))))))

(declare-fun res!358437 () Bool)

(assert (=> b!567990 (= res!358437 (= (select (arr!17088 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118))) (index!24405 lt!258802)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567990 (=> res!358437 e!326828)))

(declare-fun b!567991 () Bool)

(assert (=> b!567991 (= e!326827 (bvsge (x!53306 lt!258802) #b01111111111111111111111111111110))))

(declare-fun b!567992 () Bool)

(assert (=> b!567992 (and (bvsge (index!24405 lt!258802) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258802) (size!17452 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)))))))

(declare-fun res!358439 () Bool)

(assert (=> b!567992 (= res!358439 (= (select (arr!17088 (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118))) (index!24405 lt!258802)) (select (store (arr!17088 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!567992 (=> res!358439 e!326828)))

(assert (=> b!567992 (= e!326830 e!326828)))

(declare-fun b!567993 () Bool)

(assert (=> b!567993 (= e!326826 (Intermediate!5544 true lt!258728 #b00000000000000000000000000000000))))

(declare-fun b!567994 () Bool)

(assert (=> b!567994 (= e!326826 e!326829)))

(declare-fun c!65128 () Bool)

(assert (=> b!567994 (= c!65128 (or (= lt!258803 (select (store (arr!17088 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!258803 lt!258803) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!567995 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567995 (= e!326829 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258728 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) (array!35596 (store (arr!17088 a!3118) i!1132 k!1914) (size!17452 a!3118)) mask!3119))))

(assert (= (and d!84299 c!65127) b!567993))

(assert (= (and d!84299 (not c!65127)) b!567994))

(assert (= (and b!567994 c!65128) b!567987))

(assert (= (and b!567994 (not c!65128)) b!567995))

(assert (= (and d!84299 c!65129) b!567991))

(assert (= (and d!84299 (not c!65129)) b!567988))

(assert (= (and b!567988 res!358438) b!567992))

(assert (= (and b!567992 (not res!358439)) b!567990))

(assert (= (and b!567990 (not res!358437)) b!567989))

(declare-fun m!546593 () Bool)

(assert (=> b!567990 m!546593))

(declare-fun m!546595 () Bool)

(assert (=> b!567995 m!546595))

(assert (=> b!567995 m!546595))

(assert (=> b!567995 m!546427))

(declare-fun m!546597 () Bool)

(assert (=> b!567995 m!546597))

(assert (=> b!567989 m!546593))

(declare-fun m!546599 () Bool)

(assert (=> d!84299 m!546599))

(assert (=> d!84299 m!546449))

(assert (=> b!567992 m!546593))

(assert (=> b!567803 d!84299))

(declare-fun b!567996 () Bool)

(declare-fun e!326834 () SeekEntryResult!5544)

(assert (=> b!567996 (= e!326834 (Intermediate!5544 false lt!258726 #b00000000000000000000000000000000))))

(declare-fun b!567997 () Bool)

(declare-fun e!326832 () Bool)

(declare-fun e!326835 () Bool)

(assert (=> b!567997 (= e!326832 e!326835)))

(declare-fun res!358441 () Bool)

(declare-fun lt!258804 () SeekEntryResult!5544)

(assert (=> b!567997 (= res!358441 (and (is-Intermediate!5544 lt!258804) (not (undefined!6356 lt!258804)) (bvslt (x!53306 lt!258804) #b01111111111111111111111111111110) (bvsge (x!53306 lt!258804) #b00000000000000000000000000000000) (bvsge (x!53306 lt!258804) #b00000000000000000000000000000000)))))

(assert (=> b!567997 (=> (not res!358441) (not e!326835))))

(declare-fun d!84305 () Bool)

(assert (=> d!84305 e!326832))

(declare-fun c!65132 () Bool)

(assert (=> d!84305 (= c!65132 (and (is-Intermediate!5544 lt!258804) (undefined!6356 lt!258804)))))

(declare-fun e!326831 () SeekEntryResult!5544)

(assert (=> d!84305 (= lt!258804 e!326831)))

(declare-fun c!65130 () Bool)

(assert (=> d!84305 (= c!65130 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258805 () (_ BitVec 64))

(assert (=> d!84305 (= lt!258805 (select (arr!17088 a!3118) lt!258726))))

(assert (=> d!84305 (validMask!0 mask!3119)))

(assert (=> d!84305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258726 (select (arr!17088 a!3118) j!142) a!3118 mask!3119) lt!258804)))

(declare-fun b!567998 () Bool)

(assert (=> b!567998 (and (bvsge (index!24405 lt!258804) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258804) (size!17452 a!3118)))))

(declare-fun e!326833 () Bool)

(assert (=> b!567998 (= e!326833 (= (select (arr!17088 a!3118) (index!24405 lt!258804)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567999 () Bool)

(assert (=> b!567999 (and (bvsge (index!24405 lt!258804) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258804) (size!17452 a!3118)))))

(declare-fun res!358440 () Bool)

(assert (=> b!567999 (= res!358440 (= (select (arr!17088 a!3118) (index!24405 lt!258804)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567999 (=> res!358440 e!326833)))

(declare-fun b!568000 () Bool)

(assert (=> b!568000 (= e!326832 (bvsge (x!53306 lt!258804) #b01111111111111111111111111111110))))

(declare-fun b!568001 () Bool)

(assert (=> b!568001 (and (bvsge (index!24405 lt!258804) #b00000000000000000000000000000000) (bvslt (index!24405 lt!258804) (size!17452 a!3118)))))

(declare-fun res!358442 () Bool)

(assert (=> b!568001 (= res!358442 (= (select (arr!17088 a!3118) (index!24405 lt!258804)) (select (arr!17088 a!3118) j!142)))))

(assert (=> b!568001 (=> res!358442 e!326833)))

(assert (=> b!568001 (= e!326835 e!326833)))

(declare-fun b!568002 () Bool)

(assert (=> b!568002 (= e!326831 (Intermediate!5544 true lt!258726 #b00000000000000000000000000000000))))

(declare-fun b!568003 () Bool)

(assert (=> b!568003 (= e!326831 e!326834)))

(declare-fun c!65131 () Bool)

(assert (=> b!568003 (= c!65131 (or (= lt!258805 (select (arr!17088 a!3118) j!142)) (= (bvadd lt!258805 lt!258805) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568004 () Bool)

(assert (=> b!568004 (= e!326834 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258726 #b00000000000000000000000000000000 mask!3119) (select (arr!17088 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84305 c!65130) b!568002))

(assert (= (and d!84305 (not c!65130)) b!568003))

(assert (= (and b!568003 c!65131) b!567996))

(assert (= (and b!568003 (not c!65131)) b!568004))

(assert (= (and d!84305 c!65132) b!568000))

(assert (= (and d!84305 (not c!65132)) b!567997))

(assert (= (and b!567997 res!358441) b!568001))

(assert (= (and b!568001 (not res!358442)) b!567999))

(assert (= (and b!567999 (not res!358440)) b!567998))

(declare-fun m!546601 () Bool)

(assert (=> b!567999 m!546601))

(declare-fun m!546603 () Bool)

(assert (=> b!568004 m!546603))

(assert (=> b!568004 m!546603))

(assert (=> b!568004 m!546415))

(declare-fun m!546605 () Bool)

(assert (=> b!568004 m!546605))

(assert (=> b!567998 m!546601))

(declare-fun m!546607 () Bool)

(assert (=> d!84305 m!546607))

(assert (=> d!84305 m!546449))

(assert (=> b!568001 m!546601))

(assert (=> b!567803 d!84305))

(declare-fun d!84307 () Bool)

(declare-fun lt!258815 () (_ BitVec 32))

(declare-fun lt!258814 () (_ BitVec 32))

(assert (=> d!84307 (= lt!258815 (bvmul (bvxor lt!258814 (bvlshr lt!258814 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84307 (= lt!258814 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84307 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358443 (let ((h!12235 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53310 (bvmul (bvxor h!12235 (bvlshr h!12235 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53310 (bvlshr x!53310 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358443 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358443 #b00000000000000000000000000000000))))))

(assert (=> d!84307 (= (toIndex!0 (select (store (arr!17088 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!258815 (bvlshr lt!258815 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567803 d!84307))

(declare-fun d!84311 () Bool)

(declare-fun lt!258817 () (_ BitVec 32))

(declare-fun lt!258816 () (_ BitVec 32))

(assert (=> d!84311 (= lt!258817 (bvmul (bvxor lt!258816 (bvlshr lt!258816 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84311 (= lt!258816 ((_ extract 31 0) (bvand (bvxor (select (arr!17088 a!3118) j!142) (bvlshr (select (arr!17088 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84311 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358443 (let ((h!12235 ((_ extract 31 0) (bvand (bvxor (select (arr!17088 a!3118) j!142) (bvlshr (select (arr!17088 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53310 (bvmul (bvxor h!12235 (bvlshr h!12235 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53310 (bvlshr x!53310 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358443 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358443 #b00000000000000000000000000000000))))))

(assert (=> d!84311 (= (toIndex!0 (select (arr!17088 a!3118) j!142) mask!3119) (bvand (bvxor lt!258817 (bvlshr lt!258817 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567803 d!84311))

(declare-fun b!568023 () Bool)

(declare-fun e!326846 () SeekEntryResult!5544)

(assert (=> b!568023 (= e!326846 Undefined!5544)))

(declare-fun lt!258819 () SeekEntryResult!5544)

(declare-fun e!326847 () SeekEntryResult!5544)

(declare-fun b!568024 () Bool)

(assert (=> b!568024 (= e!326847 (seekKeyOrZeroReturnVacant!0 (x!53306 lt!258819) (index!24405 lt!258819) (index!24405 lt!258819) k!1914 a!3118 mask!3119))))

(declare-fun b!568025 () Bool)

(declare-fun e!326848 () SeekEntryResult!5544)

(assert (=> b!568025 (= e!326846 e!326848)))

(declare-fun lt!258820 () (_ BitVec 64))

(assert (=> b!568025 (= lt!258820 (select (arr!17088 a!3118) (index!24405 lt!258819)))))

(declare-fun c!65141 () Bool)

(assert (=> b!568025 (= c!65141 (= lt!258820 k!1914))))

(declare-fun b!568026 () Bool)

(assert (=> b!568026 (= e!326848 (Found!5544 (index!24405 lt!258819)))))

(declare-fun d!84315 () Bool)

(declare-fun lt!258818 () SeekEntryResult!5544)

(assert (=> d!84315 (and (or (is-Undefined!5544 lt!258818) (not (is-Found!5544 lt!258818)) (and (bvsge (index!24404 lt!258818) #b00000000000000000000000000000000) (bvslt (index!24404 lt!258818) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258818) (is-Found!5544 lt!258818) (not (is-MissingZero!5544 lt!258818)) (and (bvsge (index!24403 lt!258818) #b00000000000000000000000000000000) (bvslt (index!24403 lt!258818) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258818) (is-Found!5544 lt!258818) (is-MissingZero!5544 lt!258818) (not (is-MissingVacant!5544 lt!258818)) (and (bvsge (index!24406 lt!258818) #b00000000000000000000000000000000) (bvslt (index!24406 lt!258818) (size!17452 a!3118)))) (or (is-Undefined!5544 lt!258818) (ite (is-Found!5544 lt!258818) (= (select (arr!17088 a!3118) (index!24404 lt!258818)) k!1914) (ite (is-MissingZero!5544 lt!258818) (= (select (arr!17088 a!3118) (index!24403 lt!258818)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5544 lt!258818) (= (select (arr!17088 a!3118) (index!24406 lt!258818)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84315 (= lt!258818 e!326846)))

(declare-fun c!65139 () Bool)

(assert (=> d!84315 (= c!65139 (and (is-Intermediate!5544 lt!258819) (undefined!6356 lt!258819)))))

(assert (=> d!84315 (= lt!258819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84315 (validMask!0 mask!3119)))

(assert (=> d!84315 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258818)))

(declare-fun b!568027 () Bool)

(assert (=> b!568027 (= e!326847 (MissingZero!5544 (index!24405 lt!258819)))))

(declare-fun b!568028 () Bool)

(declare-fun c!65140 () Bool)

(assert (=> b!568028 (= c!65140 (= lt!258820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568028 (= e!326848 e!326847)))

(assert (= (and d!84315 c!65139) b!568023))

(assert (= (and d!84315 (not c!65139)) b!568025))

(assert (= (and b!568025 c!65141) b!568026))

(assert (= (and b!568025 (not c!65141)) b!568028))

(assert (= (and b!568028 c!65140) b!568027))

(assert (= (and b!568028 (not c!65140)) b!568024))

(declare-fun m!546609 () Bool)

(assert (=> b!568024 m!546609))

(declare-fun m!546611 () Bool)

(assert (=> b!568025 m!546611))

(declare-fun m!546613 () Bool)

(assert (=> d!84315 m!546613))

(assert (=> d!84315 m!546449))

(declare-fun m!546615 () Bool)

(assert (=> d!84315 m!546615))

(declare-fun m!546617 () Bool)

(assert (=> d!84315 m!546617))

(assert (=> d!84315 m!546617))

(declare-fun m!546619 () Bool)

(assert (=> d!84315 m!546619))

(declare-fun m!546621 () Bool)

(assert (=> d!84315 m!546621))

(assert (=> b!567800 d!84315))

(declare-fun d!84317 () Bool)

(declare-fun res!358460 () Bool)

(declare-fun e!326863 () Bool)

(assert (=> d!84317 (=> res!358460 e!326863)))

(assert (=> d!84317 (= res!358460 (= (select (arr!17088 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84317 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326863)))

(declare-fun b!568051 () Bool)

(declare-fun e!326864 () Bool)

(assert (=> b!568051 (= e!326863 e!326864)))

(declare-fun res!358461 () Bool)

(assert (=> b!568051 (=> (not res!358461) (not e!326864))))

(assert (=> b!568051 (= res!358461 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17452 a!3118)))))

(declare-fun b!568052 () Bool)

(assert (=> b!568052 (= e!326864 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84317 (not res!358460)) b!568051))

(assert (= (and b!568051 res!358461) b!568052))

(declare-fun m!546639 () Bool)

(assert (=> d!84317 m!546639))

(declare-fun m!546641 () Bool)

(assert (=> b!568052 m!546641))

(assert (=> b!567805 d!84317))

(declare-fun b!568063 () Bool)

(declare-fun e!326875 () Bool)

(declare-fun call!32549 () Bool)

(assert (=> b!568063 (= e!326875 call!32549)))

(declare-fun d!84323 () Bool)

(declare-fun res!358471 () Bool)

(declare-fun e!326874 () Bool)

(assert (=> d!84323 (=> res!358471 e!326874)))

(assert (=> d!84323 (= res!358471 (bvsge #b00000000000000000000000000000000 (size!17452 a!3118)))))

(assert (=> d!84323 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11218) e!326874)))

(declare-fun b!568064 () Bool)

(assert (=> b!568064 (= e!326875 call!32549)))

(declare-fun bm!32546 () Bool)

(declare-fun c!65150 () Bool)

(assert (=> bm!32546 (= call!32549 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65150 (Cons!11217 (select (arr!17088 a!3118) #b00000000000000000000000000000000) Nil!11218) Nil!11218)))))

(declare-fun b!568065 () Bool)

(declare-fun e!326876 () Bool)

(assert (=> b!568065 (= e!326874 e!326876)))

(declare-fun res!358469 () Bool)

(assert (=> b!568065 (=> (not res!358469) (not e!326876))))

(declare-fun e!326873 () Bool)

(assert (=> b!568065 (= res!358469 (not e!326873))))

(declare-fun res!358470 () Bool)

(assert (=> b!568065 (=> (not res!358470) (not e!326873))))

(assert (=> b!568065 (= res!358470 (validKeyInArray!0 (select (arr!17088 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568066 () Bool)

(assert (=> b!568066 (= e!326876 e!326875)))

(assert (=> b!568066 (= c!65150 (validKeyInArray!0 (select (arr!17088 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568067 () Bool)

(declare-fun contains!2878 (List!11221 (_ BitVec 64)) Bool)

(assert (=> b!568067 (= e!326873 (contains!2878 Nil!11218 (select (arr!17088 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84323 (not res!358471)) b!568065))

(assert (= (and b!568065 res!358470) b!568067))

(assert (= (and b!568065 res!358469) b!568066))

(assert (= (and b!568066 c!65150) b!568064))

(assert (= (and b!568066 (not c!65150)) b!568063))

(assert (= (or b!568064 b!568063) bm!32546))

(assert (=> bm!32546 m!546639))

(declare-fun m!546643 () Bool)

(assert (=> bm!32546 m!546643))

(assert (=> b!568065 m!546639))

(assert (=> b!568065 m!546639))

(declare-fun m!546645 () Bool)

(assert (=> b!568065 m!546645))

(assert (=> b!568066 m!546639))

(assert (=> b!568066 m!546639))

(assert (=> b!568066 m!546645))

(assert (=> b!568067 m!546639))

(assert (=> b!568067 m!546639))

(declare-fun m!546647 () Bool)

(assert (=> b!568067 m!546647))

(assert (=> b!567799 d!84323))

(declare-fun d!84329 () Bool)

(assert (=> d!84329 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52004 d!84329))

(declare-fun d!84339 () Bool)

(assert (=> d!84339 (= (array_inv!12862 a!3118) (bvsge (size!17452 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52004 d!84339))

(declare-fun d!84343 () Bool)

(assert (=> d!84343 (= (validKeyInArray!0 (select (arr!17088 a!3118) j!142)) (and (not (= (select (arr!17088 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17088 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567801 d!84343))

(declare-fun d!84347 () Bool)

(assert (=> d!84347 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567806 d!84347))

(declare-fun b!568122 () Bool)

(declare-fun e!326910 () Bool)

(declare-fun e!326911 () Bool)

(assert (=> b!568122 (= e!326910 e!326911)))

(declare-fun lt!258861 () (_ BitVec 64))

(assert (=> b!568122 (= lt!258861 (select (arr!17088 a!3118) j!142))))

(declare-fun lt!258862 () Unit!17790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35595 (_ BitVec 64) (_ BitVec 32)) Unit!17790)

(assert (=> b!568122 (= lt!258862 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258861 j!142))))

(assert (=> b!568122 (arrayContainsKey!0 a!3118 lt!258861 #b00000000000000000000000000000000)))

(declare-fun lt!258863 () Unit!17790)

(assert (=> b!568122 (= lt!258863 lt!258862)))

(declare-fun res!358491 () Bool)

(assert (=> b!568122 (= res!358491 (= (seekEntryOrOpen!0 (select (arr!17088 a!3118) j!142) a!3118 mask!3119) (Found!5544 j!142)))))

(assert (=> b!568122 (=> (not res!358491) (not e!326911))))

(declare-fun b!568123 () Bool)

(declare-fun call!32553 () Bool)

(assert (=> b!568123 (= e!326910 call!32553)))

(declare-fun b!568124 () Bool)

(assert (=> b!568124 (= e!326911 call!32553)))

(declare-fun bm!32550 () Bool)

(assert (=> bm!32550 (= call!32553 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84349 () Bool)

(declare-fun res!358492 () Bool)

(declare-fun e!326909 () Bool)

(assert (=> d!84349 (=> res!358492 e!326909)))

(assert (=> d!84349 (= res!358492 (bvsge j!142 (size!17452 a!3118)))))

(assert (=> d!84349 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326909)))

(declare-fun b!568125 () Bool)

(assert (=> b!568125 (= e!326909 e!326910)))

(declare-fun c!65169 () Bool)

(assert (=> b!568125 (= c!65169 (validKeyInArray!0 (select (arr!17088 a!3118) j!142)))))

(assert (= (and d!84349 (not res!358492)) b!568125))

(assert (= (and b!568125 c!65169) b!568122))

(assert (= (and b!568125 (not c!65169)) b!568123))

(assert (= (and b!568122 res!358491) b!568124))

(assert (= (or b!568124 b!568123) bm!32550))

(assert (=> b!568122 m!546415))

(declare-fun m!546687 () Bool)

(assert (=> b!568122 m!546687))

(declare-fun m!546689 () Bool)

(assert (=> b!568122 m!546689))

(assert (=> b!568122 m!546415))

(assert (=> b!568122 m!546417))

(declare-fun m!546691 () Bool)

(assert (=> bm!32550 m!546691))

(assert (=> b!568125 m!546415))

(assert (=> b!568125 m!546415))

(assert (=> b!568125 m!546421))

(assert (=> b!567797 d!84349))

(declare-fun d!84355 () Bool)

(assert (=> d!84355 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258872 () Unit!17790)

(declare-fun choose!38 (array!35595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17790)

(assert (=> d!84355 (= lt!258872 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84355 (validMask!0 mask!3119)))

(assert (=> d!84355 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258872)))

(declare-fun bs!17626 () Bool)

(assert (= bs!17626 d!84355))

(assert (=> bs!17626 m!546441))

(declare-fun m!546693 () Bool)

(assert (=> bs!17626 m!546693))

(assert (=> bs!17626 m!546449))

(assert (=> b!567797 d!84355))

(declare-fun b!568138 () Bool)

(declare-fun e!326922 () Bool)

(declare-fun e!326923 () Bool)

(assert (=> b!568138 (= e!326922 e!326923)))

(declare-fun lt!258876 () (_ BitVec 64))

(assert (=> b!568138 (= lt!258876 (select (arr!17088 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258877 () Unit!17790)

(assert (=> b!568138 (= lt!258877 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258876 #b00000000000000000000000000000000))))

(assert (=> b!568138 (arrayContainsKey!0 a!3118 lt!258876 #b00000000000000000000000000000000)))

(declare-fun lt!258878 () Unit!17790)

(assert (=> b!568138 (= lt!258878 lt!258877)))

(declare-fun res!358499 () Bool)

(assert (=> b!568138 (= res!358499 (= (seekEntryOrOpen!0 (select (arr!17088 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5544 #b00000000000000000000000000000000)))))

(assert (=> b!568138 (=> (not res!358499) (not e!326923))))

(declare-fun b!568139 () Bool)

(declare-fun call!32557 () Bool)

(assert (=> b!568139 (= e!326922 call!32557)))

(declare-fun b!568140 () Bool)

(assert (=> b!568140 (= e!326923 call!32557)))

(declare-fun bm!32554 () Bool)

(assert (=> bm!32554 (= call!32557 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84357 () Bool)

(declare-fun res!358500 () Bool)

(declare-fun e!326921 () Bool)

(assert (=> d!84357 (=> res!358500 e!326921)))

(assert (=> d!84357 (= res!358500 (bvsge #b00000000000000000000000000000000 (size!17452 a!3118)))))

(assert (=> d!84357 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326921)))

(declare-fun b!568141 () Bool)

(assert (=> b!568141 (= e!326921 e!326922)))

(declare-fun c!65173 () Bool)

(assert (=> b!568141 (= c!65173 (validKeyInArray!0 (select (arr!17088 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84357 (not res!358500)) b!568141))

(assert (= (and b!568141 c!65173) b!568138))

(assert (= (and b!568141 (not c!65173)) b!568139))

(assert (= (and b!568138 res!358499) b!568140))

(assert (= (or b!568140 b!568139) bm!32554))

(assert (=> b!568138 m!546639))

(declare-fun m!546699 () Bool)

(assert (=> b!568138 m!546699))

(declare-fun m!546703 () Bool)

(assert (=> b!568138 m!546703))

(assert (=> b!568138 m!546639))

(declare-fun m!546705 () Bool)

(assert (=> b!568138 m!546705))

(declare-fun m!546707 () Bool)

(assert (=> bm!32554 m!546707))

(assert (=> b!568141 m!546639))

(assert (=> b!568141 m!546639))

(assert (=> b!568141 m!546645))

(assert (=> b!567802 d!84357))

(push 1)

(assert (not d!84285))

(assert (not b!568138))

(assert (not b!567995))

(assert (not d!84355))

(assert (not b!568141))

(assert (not d!84305))

(assert (not b!567928))

(assert (not b!568122))

(assert (not b!568066))

(assert (not bm!32554))

(assert (not b!568004))

(assert (not b!568065))

(assert (not b!568052))

(assert (not b!568125))

(assert (not b!568067))

(assert (not b!568024))

(assert (not d!84299))

(assert (not d!84315))

(assert (not bm!32550))

(assert (not bm!32546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

