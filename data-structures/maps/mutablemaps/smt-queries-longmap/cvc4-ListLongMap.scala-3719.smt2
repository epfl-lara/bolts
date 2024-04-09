; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51198 () Bool)

(assert start!51198)

(declare-datatypes ((SeekEntryResult!5327 0))(
  ( (MissingZero!5327 (index!23535 (_ BitVec 32))) (Found!5327 (index!23536 (_ BitVec 32))) (Intermediate!5327 (undefined!6139 Bool) (index!23537 (_ BitVec 32)) (x!52463 (_ BitVec 32))) (Undefined!5327) (MissingVacant!5327 (index!23538 (_ BitVec 32))) )
))
(declare-fun lt!254063 () SeekEntryResult!5327)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!321983 () Bool)

(declare-fun lt!254068 () SeekEntryResult!5327)

(declare-datatypes ((array!35143 0))(
  ( (array!35144 (arr!16871 (Array (_ BitVec 32) (_ BitVec 64))) (size!17235 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35143)

(declare-fun b!558909 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35143 (_ BitVec 32)) SeekEntryResult!5327)

(assert (=> b!558909 (= e!321983 (= lt!254063 (seekKeyOrZeroReturnVacant!0 (x!52463 lt!254068) (index!23537 lt!254068) (index!23537 lt!254068) (select (arr!16871 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun e!321987 () Bool)

(declare-fun b!558910 () Bool)

(assert (=> b!558910 (= e!321987 (not (or (undefined!6139 lt!254068) (not (is-Intermediate!5327 lt!254068)) (let ((bdg!16952 (select (arr!16871 a!3118) (index!23537 lt!254068)))) (or (= bdg!16952 (select (arr!16871 a!3118) j!142)) (= bdg!16952 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23537 lt!254068) #b00000000000000000000000000000000) (bvsge (index!23537 lt!254068) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52463 lt!254068) #b01111111111111111111111111111110) (bvsge (x!52463 lt!254068) #b00000000000000000000000000000000)))))))))

(declare-fun e!321988 () Bool)

(assert (=> b!558910 e!321988))

(declare-fun res!350696 () Bool)

(assert (=> b!558910 (=> (not res!350696) (not e!321988))))

(assert (=> b!558910 (= res!350696 (= lt!254063 (Found!5327 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35143 (_ BitVec 32)) SeekEntryResult!5327)

(assert (=> b!558910 (= lt!254063 (seekEntryOrOpen!0 (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35143 (_ BitVec 32)) Bool)

(assert (=> b!558910 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17428 0))(
  ( (Unit!17429) )
))
(declare-fun lt!254065 () Unit!17428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17428)

(assert (=> b!558910 (= lt!254065 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558911 () Bool)

(declare-fun res!350693 () Bool)

(declare-fun e!321984 () Bool)

(assert (=> b!558911 (=> (not res!350693) (not e!321984))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558911 (= res!350693 (validKeyInArray!0 k!1914))))

(declare-fun b!558912 () Bool)

(declare-fun e!321982 () Bool)

(assert (=> b!558912 (= e!321988 e!321982)))

(declare-fun res!350690 () Bool)

(assert (=> b!558912 (=> res!350690 e!321982)))

(assert (=> b!558912 (= res!350690 (or (undefined!6139 lt!254068) (not (is-Intermediate!5327 lt!254068))))))

(declare-fun b!558913 () Bool)

(declare-fun res!350685 () Bool)

(assert (=> b!558913 (=> (not res!350685) (not e!321984))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558913 (= res!350685 (and (= (size!17235 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17235 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17235 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558914 () Bool)

(declare-fun e!321986 () Bool)

(assert (=> b!558914 (= e!321986 e!321987)))

(declare-fun res!350695 () Bool)

(assert (=> b!558914 (=> (not res!350695) (not e!321987))))

(declare-fun lt!254067 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35143 (_ BitVec 32)) SeekEntryResult!5327)

(assert (=> b!558914 (= res!350695 (= lt!254068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254067 (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)) mask!3119)))))

(declare-fun lt!254069 () (_ BitVec 32))

(assert (=> b!558914 (= lt!254068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254069 (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558914 (= lt!254067 (toIndex!0 (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558914 (= lt!254069 (toIndex!0 (select (arr!16871 a!3118) j!142) mask!3119))))

(declare-fun res!350691 () Bool)

(assert (=> start!51198 (=> (not res!350691) (not e!321984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51198 (= res!350691 (validMask!0 mask!3119))))

(assert (=> start!51198 e!321984))

(assert (=> start!51198 true))

(declare-fun array_inv!12645 (array!35143) Bool)

(assert (=> start!51198 (array_inv!12645 a!3118)))

(declare-fun b!558915 () Bool)

(assert (=> b!558915 (= e!321984 e!321986)))

(declare-fun res!350687 () Bool)

(assert (=> b!558915 (=> (not res!350687) (not e!321986))))

(declare-fun lt!254064 () SeekEntryResult!5327)

(assert (=> b!558915 (= res!350687 (or (= lt!254064 (MissingZero!5327 i!1132)) (= lt!254064 (MissingVacant!5327 i!1132))))))

(assert (=> b!558915 (= lt!254064 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558916 () Bool)

(declare-fun res!350686 () Bool)

(assert (=> b!558916 (=> (not res!350686) (not e!321986))))

(assert (=> b!558916 (= res!350686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558917 () Bool)

(declare-fun res!350694 () Bool)

(assert (=> b!558917 (=> (not res!350694) (not e!321984))))

(declare-fun arrayContainsKey!0 (array!35143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558917 (= res!350694 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558918 () Bool)

(assert (=> b!558918 (= e!321982 e!321983)))

(declare-fun res!350692 () Bool)

(assert (=> b!558918 (=> res!350692 e!321983)))

(declare-fun lt!254066 () (_ BitVec 64))

(assert (=> b!558918 (= res!350692 (or (= lt!254066 (select (arr!16871 a!3118) j!142)) (= lt!254066 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!558918 (= lt!254066 (select (arr!16871 a!3118) (index!23537 lt!254068)))))

(declare-fun b!558919 () Bool)

(declare-fun res!350689 () Bool)

(assert (=> b!558919 (=> (not res!350689) (not e!321986))))

(declare-datatypes ((List!11004 0))(
  ( (Nil!11001) (Cons!11000 (h!11997 (_ BitVec 64)) (t!17240 List!11004)) )
))
(declare-fun arrayNoDuplicates!0 (array!35143 (_ BitVec 32) List!11004) Bool)

(assert (=> b!558919 (= res!350689 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11001))))

(declare-fun b!558920 () Bool)

(declare-fun res!350688 () Bool)

(assert (=> b!558920 (=> (not res!350688) (not e!321984))))

(assert (=> b!558920 (= res!350688 (validKeyInArray!0 (select (arr!16871 a!3118) j!142)))))

(assert (= (and start!51198 res!350691) b!558913))

(assert (= (and b!558913 res!350685) b!558920))

(assert (= (and b!558920 res!350688) b!558911))

(assert (= (and b!558911 res!350693) b!558917))

(assert (= (and b!558917 res!350694) b!558915))

(assert (= (and b!558915 res!350687) b!558916))

(assert (= (and b!558916 res!350686) b!558919))

(assert (= (and b!558919 res!350689) b!558914))

(assert (= (and b!558914 res!350695) b!558910))

(assert (= (and b!558910 res!350696) b!558912))

(assert (= (and b!558912 (not res!350690)) b!558918))

(assert (= (and b!558918 (not res!350692)) b!558909))

(declare-fun m!536865 () Bool)

(assert (=> b!558915 m!536865))

(declare-fun m!536867 () Bool)

(assert (=> b!558916 m!536867))

(declare-fun m!536869 () Bool)

(assert (=> b!558917 m!536869))

(declare-fun m!536871 () Bool)

(assert (=> start!51198 m!536871))

(declare-fun m!536873 () Bool)

(assert (=> start!51198 m!536873))

(declare-fun m!536875 () Bool)

(assert (=> b!558914 m!536875))

(declare-fun m!536877 () Bool)

(assert (=> b!558914 m!536877))

(assert (=> b!558914 m!536875))

(declare-fun m!536879 () Bool)

(assert (=> b!558914 m!536879))

(assert (=> b!558914 m!536879))

(declare-fun m!536881 () Bool)

(assert (=> b!558914 m!536881))

(declare-fun m!536883 () Bool)

(assert (=> b!558914 m!536883))

(assert (=> b!558914 m!536875))

(declare-fun m!536885 () Bool)

(assert (=> b!558914 m!536885))

(assert (=> b!558914 m!536879))

(declare-fun m!536887 () Bool)

(assert (=> b!558914 m!536887))

(assert (=> b!558910 m!536875))

(declare-fun m!536889 () Bool)

(assert (=> b!558910 m!536889))

(declare-fun m!536891 () Bool)

(assert (=> b!558910 m!536891))

(declare-fun m!536893 () Bool)

(assert (=> b!558910 m!536893))

(assert (=> b!558910 m!536875))

(declare-fun m!536895 () Bool)

(assert (=> b!558910 m!536895))

(assert (=> b!558920 m!536875))

(assert (=> b!558920 m!536875))

(declare-fun m!536897 () Bool)

(assert (=> b!558920 m!536897))

(declare-fun m!536899 () Bool)

(assert (=> b!558911 m!536899))

(assert (=> b!558918 m!536875))

(assert (=> b!558918 m!536889))

(assert (=> b!558909 m!536875))

(assert (=> b!558909 m!536875))

(declare-fun m!536901 () Bool)

(assert (=> b!558909 m!536901))

(declare-fun m!536903 () Bool)

(assert (=> b!558919 m!536903))

(push 1)

(assert (not b!558916))

(assert (not b!558917))

(assert (not b!558914))

(assert (not b!558909))

(assert (not b!558915))

(assert (not start!51198))

(assert (not b!558919))

(assert (not b!558920))

(assert (not b!558911))

(assert (not b!558910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83579 () Bool)

(declare-fun e!322056 () Bool)

(assert (=> d!83579 e!322056))

(declare-fun c!64501 () Bool)

(declare-fun lt!254119 () SeekEntryResult!5327)

(assert (=> d!83579 (= c!64501 (and (is-Intermediate!5327 lt!254119) (undefined!6139 lt!254119)))))

(declare-fun e!322057 () SeekEntryResult!5327)

(assert (=> d!83579 (= lt!254119 e!322057)))

(declare-fun c!64500 () Bool)

(assert (=> d!83579 (= c!64500 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254120 () (_ BitVec 64))

(assert (=> d!83579 (= lt!254120 (select (arr!16871 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118))) lt!254067))))

(assert (=> d!83579 (validMask!0 mask!3119)))

(assert (=> d!83579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254067 (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)) mask!3119) lt!254119)))

(declare-fun b!559034 () Bool)

(assert (=> b!559034 (and (bvsge (index!23537 lt!254119) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254119) (size!17235 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)))))))

(declare-fun res!350722 () Bool)

(assert (=> b!559034 (= res!350722 (= (select (arr!16871 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118))) (index!23537 lt!254119)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322058 () Bool)

(assert (=> b!559034 (=> res!350722 e!322058)))

(declare-fun b!559035 () Bool)

(declare-fun e!322060 () SeekEntryResult!5327)

(assert (=> b!559035 (= e!322060 (Intermediate!5327 false lt!254067 #b00000000000000000000000000000000))))

(declare-fun b!559036 () Bool)

(assert (=> b!559036 (= e!322057 (Intermediate!5327 true lt!254067 #b00000000000000000000000000000000))))

(declare-fun b!559037 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559037 (= e!322060 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254067 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)) mask!3119))))

(declare-fun b!559038 () Bool)

(declare-fun e!322059 () Bool)

(assert (=> b!559038 (= e!322056 e!322059)))

(declare-fun res!350723 () Bool)

(assert (=> b!559038 (= res!350723 (and (is-Intermediate!5327 lt!254119) (not (undefined!6139 lt!254119)) (bvslt (x!52463 lt!254119) #b01111111111111111111111111111110) (bvsge (x!52463 lt!254119) #b00000000000000000000000000000000) (bvsge (x!52463 lt!254119) #b00000000000000000000000000000000)))))

(assert (=> b!559038 (=> (not res!350723) (not e!322059))))

(declare-fun b!559039 () Bool)

(assert (=> b!559039 (and (bvsge (index!23537 lt!254119) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254119) (size!17235 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)))))))

(assert (=> b!559039 (= e!322058 (= (select (arr!16871 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118))) (index!23537 lt!254119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559040 () Bool)

(assert (=> b!559040 (= e!322057 e!322060)))

(declare-fun c!64499 () Bool)

(assert (=> b!559040 (= c!64499 (or (= lt!254120 (select (store (arr!16871 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!254120 lt!254120) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559041 () Bool)

(assert (=> b!559041 (= e!322056 (bvsge (x!52463 lt!254119) #b01111111111111111111111111111110))))

(declare-fun b!559042 () Bool)

(assert (=> b!559042 (and (bvsge (index!23537 lt!254119) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254119) (size!17235 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118)))))))

(declare-fun res!350724 () Bool)

(assert (=> b!559042 (= res!350724 (= (select (arr!16871 (array!35144 (store (arr!16871 a!3118) i!1132 k!1914) (size!17235 a!3118))) (index!23537 lt!254119)) (select (store (arr!16871 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!559042 (=> res!350724 e!322058)))

(assert (=> b!559042 (= e!322059 e!322058)))

(assert (= (and d!83579 c!64500) b!559036))

(assert (= (and d!83579 (not c!64500)) b!559040))

(assert (= (and b!559040 c!64499) b!559035))

(assert (= (and b!559040 (not c!64499)) b!559037))

(assert (= (and d!83579 c!64501) b!559041))

(assert (= (and d!83579 (not c!64501)) b!559038))

(assert (= (and b!559038 res!350723) b!559042))

(assert (= (and b!559042 (not res!350724)) b!559034))

(assert (= (and b!559034 (not res!350722)) b!559039))

(declare-fun m!536967 () Bool)

(assert (=> d!83579 m!536967))

(assert (=> d!83579 m!536871))

(declare-fun m!536969 () Bool)

(assert (=> b!559037 m!536969))

(assert (=> b!559037 m!536969))

(assert (=> b!559037 m!536879))

(declare-fun m!536971 () Bool)

(assert (=> b!559037 m!536971))

(declare-fun m!536973 () Bool)

(assert (=> b!559042 m!536973))

(assert (=> b!559034 m!536973))

(assert (=> b!559039 m!536973))

(assert (=> b!558914 d!83579))

(declare-fun d!83587 () Bool)

(declare-fun e!322072 () Bool)

(assert (=> d!83587 e!322072))

(declare-fun c!64507 () Bool)

(declare-fun lt!254124 () SeekEntryResult!5327)

(assert (=> d!83587 (= c!64507 (and (is-Intermediate!5327 lt!254124) (undefined!6139 lt!254124)))))

(declare-fun e!322073 () SeekEntryResult!5327)

(assert (=> d!83587 (= lt!254124 e!322073)))

(declare-fun c!64506 () Bool)

(assert (=> d!83587 (= c!64506 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254125 () (_ BitVec 64))

(assert (=> d!83587 (= lt!254125 (select (arr!16871 a!3118) lt!254069))))

(assert (=> d!83587 (validMask!0 mask!3119)))

(assert (=> d!83587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254069 (select (arr!16871 a!3118) j!142) a!3118 mask!3119) lt!254124)))

(declare-fun b!559057 () Bool)

(assert (=> b!559057 (and (bvsge (index!23537 lt!254124) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254124) (size!17235 a!3118)))))

(declare-fun res!350733 () Bool)

(assert (=> b!559057 (= res!350733 (= (select (arr!16871 a!3118) (index!23537 lt!254124)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322074 () Bool)

(assert (=> b!559057 (=> res!350733 e!322074)))

(declare-fun b!559058 () Bool)

(declare-fun e!322076 () SeekEntryResult!5327)

(assert (=> b!559058 (= e!322076 (Intermediate!5327 false lt!254069 #b00000000000000000000000000000000))))

(declare-fun b!559059 () Bool)

(assert (=> b!559059 (= e!322073 (Intermediate!5327 true lt!254069 #b00000000000000000000000000000000))))

(declare-fun b!559060 () Bool)

(assert (=> b!559060 (= e!322076 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254069 #b00000000000000000000000000000000 mask!3119) (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559061 () Bool)

(declare-fun e!322075 () Bool)

(assert (=> b!559061 (= e!322072 e!322075)))

(declare-fun res!350734 () Bool)

(assert (=> b!559061 (= res!350734 (and (is-Intermediate!5327 lt!254124) (not (undefined!6139 lt!254124)) (bvslt (x!52463 lt!254124) #b01111111111111111111111111111110) (bvsge (x!52463 lt!254124) #b00000000000000000000000000000000) (bvsge (x!52463 lt!254124) #b00000000000000000000000000000000)))))

(assert (=> b!559061 (=> (not res!350734) (not e!322075))))

(declare-fun b!559062 () Bool)

(assert (=> b!559062 (and (bvsge (index!23537 lt!254124) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254124) (size!17235 a!3118)))))

(assert (=> b!559062 (= e!322074 (= (select (arr!16871 a!3118) (index!23537 lt!254124)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559063 () Bool)

(assert (=> b!559063 (= e!322073 e!322076)))

(declare-fun c!64505 () Bool)

(assert (=> b!559063 (= c!64505 (or (= lt!254125 (select (arr!16871 a!3118) j!142)) (= (bvadd lt!254125 lt!254125) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559064 () Bool)

(assert (=> b!559064 (= e!322072 (bvsge (x!52463 lt!254124) #b01111111111111111111111111111110))))

(declare-fun b!559065 () Bool)

(assert (=> b!559065 (and (bvsge (index!23537 lt!254124) #b00000000000000000000000000000000) (bvslt (index!23537 lt!254124) (size!17235 a!3118)))))

(declare-fun res!350735 () Bool)

(assert (=> b!559065 (= res!350735 (= (select (arr!16871 a!3118) (index!23537 lt!254124)) (select (arr!16871 a!3118) j!142)))))

(assert (=> b!559065 (=> res!350735 e!322074)))

(assert (=> b!559065 (= e!322075 e!322074)))

(assert (= (and d!83587 c!64506) b!559059))

(assert (= (and d!83587 (not c!64506)) b!559063))

(assert (= (and b!559063 c!64505) b!559058))

(assert (= (and b!559063 (not c!64505)) b!559060))

(assert (= (and d!83587 c!64507) b!559064))

(assert (= (and d!83587 (not c!64507)) b!559061))

(assert (= (and b!559061 res!350734) b!559065))

(assert (= (and b!559065 (not res!350735)) b!559057))

(assert (= (and b!559057 (not res!350733)) b!559062))

(declare-fun m!536981 () Bool)

(assert (=> d!83587 m!536981))

(assert (=> d!83587 m!536871))

(declare-fun m!536983 () Bool)

(assert (=> b!559060 m!536983))

(assert (=> b!559060 m!536983))

(assert (=> b!559060 m!536875))

(declare-fun m!536985 () Bool)

(assert (=> b!559060 m!536985))

(declare-fun m!536987 () Bool)

(assert (=> b!559065 m!536987))

(assert (=> b!559057 m!536987))

(assert (=> b!559062 m!536987))

(assert (=> b!558914 d!83587))

(declare-fun d!83591 () Bool)

(declare-fun lt!254134 () (_ BitVec 32))

(declare-fun lt!254133 () (_ BitVec 32))

(assert (=> d!83591 (= lt!254134 (bvmul (bvxor lt!254133 (bvlshr lt!254133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83591 (= lt!254133 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83591 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350736 (let ((h!11998 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52466 (bvmul (bvxor h!11998 (bvlshr h!11998 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52466 (bvlshr x!52466 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350736 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350736 #b00000000000000000000000000000000))))))

(assert (=> d!83591 (= (toIndex!0 (select (store (arr!16871 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!254134 (bvlshr lt!254134 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558914 d!83591))

(declare-fun d!83601 () Bool)

(declare-fun lt!254136 () (_ BitVec 32))

(declare-fun lt!254135 () (_ BitVec 32))

(assert (=> d!83601 (= lt!254136 (bvmul (bvxor lt!254135 (bvlshr lt!254135 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83601 (= lt!254135 ((_ extract 31 0) (bvand (bvxor (select (arr!16871 a!3118) j!142) (bvlshr (select (arr!16871 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83601 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350736 (let ((h!11998 ((_ extract 31 0) (bvand (bvxor (select (arr!16871 a!3118) j!142) (bvlshr (select (arr!16871 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52466 (bvmul (bvxor h!11998 (bvlshr h!11998 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52466 (bvlshr x!52466 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350736 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350736 #b00000000000000000000000000000000))))))

(assert (=> d!83601 (= (toIndex!0 (select (arr!16871 a!3118) j!142) mask!3119) (bvand (bvxor lt!254136 (bvlshr lt!254136 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558914 d!83601))

(declare-fun b!559091 () Bool)

(declare-fun e!322098 () Bool)

(declare-fun call!32427 () Bool)

(assert (=> b!559091 (= e!322098 call!32427)))

(declare-fun b!559092 () Bool)

(assert (=> b!559092 (= e!322098 call!32427)))

(declare-fun b!559093 () Bool)

(declare-fun e!322099 () Bool)

(declare-fun e!322100 () Bool)

(assert (=> b!559093 (= e!322099 e!322100)))

(declare-fun res!350756 () Bool)

(assert (=> b!559093 (=> (not res!350756) (not e!322100))))

(declare-fun e!322101 () Bool)

(assert (=> b!559093 (= res!350756 (not e!322101))))

(declare-fun res!350755 () Bool)

(assert (=> b!559093 (=> (not res!350755) (not e!322101))))

(assert (=> b!559093 (= res!350755 (validKeyInArray!0 (select (arr!16871 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559094 () Bool)

(assert (=> b!559094 (= e!322100 e!322098)))

(declare-fun c!64512 () Bool)

(assert (=> b!559094 (= c!64512 (validKeyInArray!0 (select (arr!16871 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83605 () Bool)

(declare-fun res!350754 () Bool)

(assert (=> d!83605 (=> res!350754 e!322099)))

(assert (=> d!83605 (= res!350754 (bvsge #b00000000000000000000000000000000 (size!17235 a!3118)))))

(assert (=> d!83605 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11001) e!322099)))

(declare-fun bm!32424 () Bool)

(assert (=> bm!32424 (= call!32427 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64512 (Cons!11000 (select (arr!16871 a!3118) #b00000000000000000000000000000000) Nil!11001) Nil!11001)))))

(declare-fun b!559095 () Bool)

(declare-fun contains!2862 (List!11004 (_ BitVec 64)) Bool)

(assert (=> b!559095 (= e!322101 (contains!2862 Nil!11001 (select (arr!16871 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83605 (not res!350754)) b!559093))

(assert (= (and b!559093 res!350755) b!559095))

(assert (= (and b!559093 res!350756) b!559094))

(assert (= (and b!559094 c!64512) b!559091))

(assert (= (and b!559094 (not c!64512)) b!559092))

(assert (= (or b!559091 b!559092) bm!32424))

(declare-fun m!537009 () Bool)

(assert (=> b!559093 m!537009))

(assert (=> b!559093 m!537009))

(declare-fun m!537011 () Bool)

(assert (=> b!559093 m!537011))

(assert (=> b!559094 m!537009))

(assert (=> b!559094 m!537009))

(assert (=> b!559094 m!537011))

(assert (=> bm!32424 m!537009))

(declare-fun m!537013 () Bool)

(assert (=> bm!32424 m!537013))

(assert (=> b!559095 m!537009))

(assert (=> b!559095 m!537009))

(declare-fun m!537015 () Bool)

(assert (=> b!559095 m!537015))

(assert (=> b!558919 d!83605))

(declare-fun d!83609 () Bool)

(declare-fun res!350761 () Bool)

(declare-fun e!322106 () Bool)

(assert (=> d!83609 (=> res!350761 e!322106)))

(assert (=> d!83609 (= res!350761 (= (select (arr!16871 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83609 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!322106)))

(declare-fun b!559100 () Bool)

(declare-fun e!322107 () Bool)

(assert (=> b!559100 (= e!322106 e!322107)))

(declare-fun res!350762 () Bool)

(assert (=> b!559100 (=> (not res!350762) (not e!322107))))

(assert (=> b!559100 (= res!350762 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17235 a!3118)))))

(declare-fun b!559101 () Bool)

(assert (=> b!559101 (= e!322107 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83609 (not res!350761)) b!559100))

(assert (= (and b!559100 res!350762) b!559101))

(assert (=> d!83609 m!537009))

(declare-fun m!537017 () Bool)

(assert (=> b!559101 m!537017))

(assert (=> b!558917 d!83609))

(declare-fun bm!32427 () Bool)

(declare-fun call!32430 () Bool)

(assert (=> bm!32427 (= call!32430 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559146 () Bool)

(declare-fun e!322135 () Bool)

(declare-fun e!322136 () Bool)

(assert (=> b!559146 (= e!322135 e!322136)))

(declare-fun lt!254156 () (_ BitVec 64))

(assert (=> b!559146 (= lt!254156 (select (arr!16871 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254155 () Unit!17428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35143 (_ BitVec 64) (_ BitVec 32)) Unit!17428)

(assert (=> b!559146 (= lt!254155 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254156 #b00000000000000000000000000000000))))

(assert (=> b!559146 (arrayContainsKey!0 a!3118 lt!254156 #b00000000000000000000000000000000)))

(declare-fun lt!254154 () Unit!17428)

(assert (=> b!559146 (= lt!254154 lt!254155)))

(declare-fun res!350779 () Bool)

(assert (=> b!559146 (= res!350779 (= (seekEntryOrOpen!0 (select (arr!16871 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5327 #b00000000000000000000000000000000)))))

(assert (=> b!559146 (=> (not res!350779) (not e!322136))))

(declare-fun d!83611 () Bool)

(declare-fun res!350780 () Bool)

(declare-fun e!322134 () Bool)

(assert (=> d!83611 (=> res!350780 e!322134)))

(assert (=> d!83611 (= res!350780 (bvsge #b00000000000000000000000000000000 (size!17235 a!3118)))))

(assert (=> d!83611 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322134)))

(declare-fun b!559147 () Bool)

(assert (=> b!559147 (= e!322136 call!32430)))

(declare-fun b!559148 () Bool)

(assert (=> b!559148 (= e!322134 e!322135)))

(declare-fun c!64527 () Bool)

(assert (=> b!559148 (= c!64527 (validKeyInArray!0 (select (arr!16871 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559149 () Bool)

(assert (=> b!559149 (= e!322135 call!32430)))

(assert (= (and d!83611 (not res!350780)) b!559148))

(assert (= (and b!559148 c!64527) b!559146))

(assert (= (and b!559148 (not c!64527)) b!559149))

(assert (= (and b!559146 res!350779) b!559147))

(assert (= (or b!559147 b!559149) bm!32427))

(declare-fun m!537019 () Bool)

(assert (=> bm!32427 m!537019))

(assert (=> b!559146 m!537009))

(declare-fun m!537021 () Bool)

(assert (=> b!559146 m!537021))

(declare-fun m!537023 () Bool)

(assert (=> b!559146 m!537023))

(assert (=> b!559146 m!537009))

(declare-fun m!537025 () Bool)

(assert (=> b!559146 m!537025))

(assert (=> b!559148 m!537009))

(assert (=> b!559148 m!537009))

(assert (=> b!559148 m!537011))

(assert (=> b!558916 d!83611))

(declare-fun d!83613 () Bool)

(assert (=> d!83613 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51198 d!83613))

(declare-fun d!83637 () Bool)

(assert (=> d!83637 (= (array_inv!12645 a!3118) (bvsge (size!17235 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51198 d!83637))

(declare-fun d!83639 () Bool)

(assert (=> d!83639 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558911 d!83639))

(declare-fun d!83641 () Bool)

(assert (=> d!83641 (= (validKeyInArray!0 (select (arr!16871 a!3118) j!142)) (and (not (= (select (arr!16871 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16871 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558920 d!83641))

(declare-fun lt!254198 () SeekEntryResult!5327)

(declare-fun d!83643 () Bool)

(assert (=> d!83643 (and (or (is-Undefined!5327 lt!254198) (not (is-Found!5327 lt!254198)) (and (bvsge (index!23536 lt!254198) #b00000000000000000000000000000000) (bvslt (index!23536 lt!254198) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254198) (is-Found!5327 lt!254198) (not (is-MissingVacant!5327 lt!254198)) (not (= (index!23538 lt!254198) (index!23537 lt!254068))) (and (bvsge (index!23538 lt!254198) #b00000000000000000000000000000000) (bvslt (index!23538 lt!254198) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254198) (ite (is-Found!5327 lt!254198) (= (select (arr!16871 a!3118) (index!23536 lt!254198)) (select (arr!16871 a!3118) j!142)) (and (is-MissingVacant!5327 lt!254198) (= (index!23538 lt!254198) (index!23537 lt!254068)) (= (select (arr!16871 a!3118) (index!23538 lt!254198)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!322179 () SeekEntryResult!5327)

(assert (=> d!83643 (= lt!254198 e!322179)))

(declare-fun c!64559 () Bool)

(assert (=> d!83643 (= c!64559 (bvsge (x!52463 lt!254068) #b01111111111111111111111111111110))))

(declare-fun lt!254197 () (_ BitVec 64))

(assert (=> d!83643 (= lt!254197 (select (arr!16871 a!3118) (index!23537 lt!254068)))))

(assert (=> d!83643 (validMask!0 mask!3119)))

(assert (=> d!83643 (= (seekKeyOrZeroReturnVacant!0 (x!52463 lt!254068) (index!23537 lt!254068) (index!23537 lt!254068) (select (arr!16871 a!3118) j!142) a!3118 mask!3119) lt!254198)))

(declare-fun b!559226 () Bool)

(declare-fun e!322178 () SeekEntryResult!5327)

(assert (=> b!559226 (= e!322179 e!322178)))

(declare-fun c!64560 () Bool)

(assert (=> b!559226 (= c!64560 (= lt!254197 (select (arr!16871 a!3118) j!142)))))

(declare-fun b!559227 () Bool)

(declare-fun e!322180 () SeekEntryResult!5327)

(assert (=> b!559227 (= e!322180 (MissingVacant!5327 (index!23537 lt!254068)))))

(declare-fun b!559228 () Bool)

(assert (=> b!559228 (= e!322178 (Found!5327 (index!23537 lt!254068)))))

(declare-fun b!559229 () Bool)

(assert (=> b!559229 (= e!322179 Undefined!5327)))

(declare-fun b!559230 () Bool)

(declare-fun c!64561 () Bool)

(assert (=> b!559230 (= c!64561 (= lt!254197 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559230 (= e!322178 e!322180)))

(declare-fun b!559231 () Bool)

(assert (=> b!559231 (= e!322180 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52463 lt!254068) #b00000000000000000000000000000001) (nextIndex!0 (index!23537 lt!254068) (x!52463 lt!254068) mask!3119) (index!23537 lt!254068) (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83643 c!64559) b!559229))

(assert (= (and d!83643 (not c!64559)) b!559226))

(assert (= (and b!559226 c!64560) b!559228))

(assert (= (and b!559226 (not c!64560)) b!559230))

(assert (= (and b!559230 c!64561) b!559227))

(assert (= (and b!559230 (not c!64561)) b!559231))

(declare-fun m!537085 () Bool)

(assert (=> d!83643 m!537085))

(declare-fun m!537089 () Bool)

(assert (=> d!83643 m!537089))

(assert (=> d!83643 m!536889))

(assert (=> d!83643 m!536871))

(declare-fun m!537093 () Bool)

(assert (=> b!559231 m!537093))

(assert (=> b!559231 m!537093))

(assert (=> b!559231 m!536875))

(declare-fun m!537095 () Bool)

(assert (=> b!559231 m!537095))

(assert (=> b!558909 d!83643))

(declare-fun b!559250 () Bool)

(declare-fun e!322194 () SeekEntryResult!5327)

(declare-fun lt!254207 () SeekEntryResult!5327)

(assert (=> b!559250 (= e!322194 (MissingZero!5327 (index!23537 lt!254207)))))

(declare-fun d!83649 () Bool)

(declare-fun lt!254206 () SeekEntryResult!5327)

(assert (=> d!83649 (and (or (is-Undefined!5327 lt!254206) (not (is-Found!5327 lt!254206)) (and (bvsge (index!23536 lt!254206) #b00000000000000000000000000000000) (bvslt (index!23536 lt!254206) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254206) (is-Found!5327 lt!254206) (not (is-MissingZero!5327 lt!254206)) (and (bvsge (index!23535 lt!254206) #b00000000000000000000000000000000) (bvslt (index!23535 lt!254206) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254206) (is-Found!5327 lt!254206) (is-MissingZero!5327 lt!254206) (not (is-MissingVacant!5327 lt!254206)) (and (bvsge (index!23538 lt!254206) #b00000000000000000000000000000000) (bvslt (index!23538 lt!254206) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254206) (ite (is-Found!5327 lt!254206) (= (select (arr!16871 a!3118) (index!23536 lt!254206)) (select (arr!16871 a!3118) j!142)) (ite (is-MissingZero!5327 lt!254206) (= (select (arr!16871 a!3118) (index!23535 lt!254206)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5327 lt!254206) (= (select (arr!16871 a!3118) (index!23538 lt!254206)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322193 () SeekEntryResult!5327)

(assert (=> d!83649 (= lt!254206 e!322193)))

(declare-fun c!64569 () Bool)

(assert (=> d!83649 (= c!64569 (and (is-Intermediate!5327 lt!254207) (undefined!6139 lt!254207)))))

(assert (=> d!83649 (= lt!254207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16871 a!3118) j!142) mask!3119) (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83649 (validMask!0 mask!3119)))

(assert (=> d!83649 (= (seekEntryOrOpen!0 (select (arr!16871 a!3118) j!142) a!3118 mask!3119) lt!254206)))

(declare-fun b!559251 () Bool)

(assert (=> b!559251 (= e!322193 Undefined!5327)))

(declare-fun b!559252 () Bool)

(assert (=> b!559252 (= e!322194 (seekKeyOrZeroReturnVacant!0 (x!52463 lt!254207) (index!23537 lt!254207) (index!23537 lt!254207) (select (arr!16871 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559253 () Bool)

(declare-fun e!322195 () SeekEntryResult!5327)

(assert (=> b!559253 (= e!322195 (Found!5327 (index!23537 lt!254207)))))

(declare-fun b!559254 () Bool)

(declare-fun c!64568 () Bool)

(declare-fun lt!254205 () (_ BitVec 64))

(assert (=> b!559254 (= c!64568 (= lt!254205 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559254 (= e!322195 e!322194)))

(declare-fun b!559255 () Bool)

(assert (=> b!559255 (= e!322193 e!322195)))

(assert (=> b!559255 (= lt!254205 (select (arr!16871 a!3118) (index!23537 lt!254207)))))

(declare-fun c!64570 () Bool)

(assert (=> b!559255 (= c!64570 (= lt!254205 (select (arr!16871 a!3118) j!142)))))

(assert (= (and d!83649 c!64569) b!559251))

(assert (= (and d!83649 (not c!64569)) b!559255))

(assert (= (and b!559255 c!64570) b!559253))

(assert (= (and b!559255 (not c!64570)) b!559254))

(assert (= (and b!559254 c!64568) b!559250))

(assert (= (and b!559254 (not c!64568)) b!559252))

(declare-fun m!537099 () Bool)

(assert (=> d!83649 m!537099))

(assert (=> d!83649 m!536877))

(assert (=> d!83649 m!536875))

(declare-fun m!537101 () Bool)

(assert (=> d!83649 m!537101))

(assert (=> d!83649 m!536875))

(assert (=> d!83649 m!536877))

(declare-fun m!537103 () Bool)

(assert (=> d!83649 m!537103))

(declare-fun m!537105 () Bool)

(assert (=> d!83649 m!537105))

(assert (=> d!83649 m!536871))

(assert (=> b!559252 m!536875))

(declare-fun m!537107 () Bool)

(assert (=> b!559252 m!537107))

(declare-fun m!537109 () Bool)

(assert (=> b!559255 m!537109))

(assert (=> b!558910 d!83649))

(declare-fun bm!32429 () Bool)

(declare-fun call!32432 () Bool)

(assert (=> bm!32429 (= call!32432 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559256 () Bool)

(declare-fun e!322197 () Bool)

(declare-fun e!322198 () Bool)

(assert (=> b!559256 (= e!322197 e!322198)))

(declare-fun lt!254210 () (_ BitVec 64))

(assert (=> b!559256 (= lt!254210 (select (arr!16871 a!3118) j!142))))

(declare-fun lt!254209 () Unit!17428)

(assert (=> b!559256 (= lt!254209 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254210 j!142))))

(assert (=> b!559256 (arrayContainsKey!0 a!3118 lt!254210 #b00000000000000000000000000000000)))

(declare-fun lt!254208 () Unit!17428)

(assert (=> b!559256 (= lt!254208 lt!254209)))

(declare-fun res!350803 () Bool)

(assert (=> b!559256 (= res!350803 (= (seekEntryOrOpen!0 (select (arr!16871 a!3118) j!142) a!3118 mask!3119) (Found!5327 j!142)))))

(assert (=> b!559256 (=> (not res!350803) (not e!322198))))

(declare-fun d!83657 () Bool)

(declare-fun res!350804 () Bool)

(declare-fun e!322196 () Bool)

(assert (=> d!83657 (=> res!350804 e!322196)))

(assert (=> d!83657 (= res!350804 (bvsge j!142 (size!17235 a!3118)))))

(assert (=> d!83657 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322196)))

(declare-fun b!559257 () Bool)

(assert (=> b!559257 (= e!322198 call!32432)))

(declare-fun b!559258 () Bool)

(assert (=> b!559258 (= e!322196 e!322197)))

(declare-fun c!64571 () Bool)

(assert (=> b!559258 (= c!64571 (validKeyInArray!0 (select (arr!16871 a!3118) j!142)))))

(declare-fun b!559259 () Bool)

(assert (=> b!559259 (= e!322197 call!32432)))

(assert (= (and d!83657 (not res!350804)) b!559258))

(assert (= (and b!559258 c!64571) b!559256))

(assert (= (and b!559258 (not c!64571)) b!559259))

(assert (= (and b!559256 res!350803) b!559257))

(assert (= (or b!559257 b!559259) bm!32429))

(declare-fun m!537111 () Bool)

(assert (=> bm!32429 m!537111))

(assert (=> b!559256 m!536875))

(declare-fun m!537113 () Bool)

(assert (=> b!559256 m!537113))

(declare-fun m!537115 () Bool)

(assert (=> b!559256 m!537115))

(assert (=> b!559256 m!536875))

(assert (=> b!559256 m!536895))

(assert (=> b!559258 m!536875))

(assert (=> b!559258 m!536875))

(assert (=> b!559258 m!536897))

(assert (=> b!558910 d!83657))

(declare-fun d!83659 () Bool)

(assert (=> d!83659 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254213 () Unit!17428)

(declare-fun choose!38 (array!35143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17428)

(assert (=> d!83659 (= lt!254213 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83659 (validMask!0 mask!3119)))

(assert (=> d!83659 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254213)))

(declare-fun bs!17390 () Bool)

(assert (= bs!17390 d!83659))

(assert (=> bs!17390 m!536891))

(declare-fun m!537117 () Bool)

(assert (=> bs!17390 m!537117))

(assert (=> bs!17390 m!536871))

(assert (=> b!558910 d!83659))

(declare-fun b!559260 () Bool)

(declare-fun e!322200 () SeekEntryResult!5327)

(declare-fun lt!254216 () SeekEntryResult!5327)

(assert (=> b!559260 (= e!322200 (MissingZero!5327 (index!23537 lt!254216)))))

(declare-fun d!83661 () Bool)

(declare-fun lt!254215 () SeekEntryResult!5327)

(assert (=> d!83661 (and (or (is-Undefined!5327 lt!254215) (not (is-Found!5327 lt!254215)) (and (bvsge (index!23536 lt!254215) #b00000000000000000000000000000000) (bvslt (index!23536 lt!254215) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254215) (is-Found!5327 lt!254215) (not (is-MissingZero!5327 lt!254215)) (and (bvsge (index!23535 lt!254215) #b00000000000000000000000000000000) (bvslt (index!23535 lt!254215) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254215) (is-Found!5327 lt!254215) (is-MissingZero!5327 lt!254215) (not (is-MissingVacant!5327 lt!254215)) (and (bvsge (index!23538 lt!254215) #b00000000000000000000000000000000) (bvslt (index!23538 lt!254215) (size!17235 a!3118)))) (or (is-Undefined!5327 lt!254215) (ite (is-Found!5327 lt!254215) (= (select (arr!16871 a!3118) (index!23536 lt!254215)) k!1914) (ite (is-MissingZero!5327 lt!254215) (= (select (arr!16871 a!3118) (index!23535 lt!254215)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5327 lt!254215) (= (select (arr!16871 a!3118) (index!23538 lt!254215)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322199 () SeekEntryResult!5327)

(assert (=> d!83661 (= lt!254215 e!322199)))

(declare-fun c!64573 () Bool)

(assert (=> d!83661 (= c!64573 (and (is-Intermediate!5327 lt!254216) (undefined!6139 lt!254216)))))

(assert (=> d!83661 (= lt!254216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83661 (validMask!0 mask!3119)))

(assert (=> d!83661 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!254215)))

(declare-fun b!559261 () Bool)

(assert (=> b!559261 (= e!322199 Undefined!5327)))

(declare-fun b!559262 () Bool)

(assert (=> b!559262 (= e!322200 (seekKeyOrZeroReturnVacant!0 (x!52463 lt!254216) (index!23537 lt!254216) (index!23537 lt!254216) k!1914 a!3118 mask!3119))))

(declare-fun b!559263 () Bool)

(declare-fun e!322201 () SeekEntryResult!5327)

(assert (=> b!559263 (= e!322201 (Found!5327 (index!23537 lt!254216)))))

(declare-fun b!559264 () Bool)

(declare-fun c!64572 () Bool)

(declare-fun lt!254214 () (_ BitVec 64))

(assert (=> b!559264 (= c!64572 (= lt!254214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559264 (= e!322201 e!322200)))

(declare-fun b!559265 () Bool)

(assert (=> b!559265 (= e!322199 e!322201)))

(assert (=> b!559265 (= lt!254214 (select (arr!16871 a!3118) (index!23537 lt!254216)))))

(declare-fun c!64574 () Bool)

(assert (=> b!559265 (= c!64574 (= lt!254214 k!1914))))

(assert (= (and d!83661 c!64573) b!559261))

(assert (= (and d!83661 (not c!64573)) b!559265))

(assert (= (and b!559265 c!64574) b!559263))

(assert (= (and b!559265 (not c!64574)) b!559264))

(assert (= (and b!559264 c!64572) b!559260))

(assert (= (and b!559264 (not c!64572)) b!559262))

(declare-fun m!537119 () Bool)

(assert (=> d!83661 m!537119))

(declare-fun m!537121 () Bool)

(assert (=> d!83661 m!537121))

(declare-fun m!537123 () Bool)

