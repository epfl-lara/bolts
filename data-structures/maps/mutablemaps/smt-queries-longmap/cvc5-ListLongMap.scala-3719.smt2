; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51194 () Bool)

(assert start!51194)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!558837 () Bool)

(declare-datatypes ((SeekEntryResult!5325 0))(
  ( (MissingZero!5325 (index!23527 (_ BitVec 32))) (Found!5325 (index!23528 (_ BitVec 32))) (Intermediate!5325 (undefined!6137 Bool) (index!23529 (_ BitVec 32)) (x!52461 (_ BitVec 32))) (Undefined!5325) (MissingVacant!5325 (index!23530 (_ BitVec 32))) )
))
(declare-fun lt!254024 () SeekEntryResult!5325)

(declare-datatypes ((array!35139 0))(
  ( (array!35140 (arr!16869 (Array (_ BitVec 32) (_ BitVec 64))) (size!17233 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35139)

(declare-fun e!321945 () Bool)

(assert (=> b!558837 (= e!321945 (not (or (undefined!6137 lt!254024) (not (is-Intermediate!5325 lt!254024)) (let ((bdg!16952 (select (arr!16869 a!3118) (index!23529 lt!254024)))) (or (= bdg!16952 (select (arr!16869 a!3118) j!142)) (= bdg!16952 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23529 lt!254024) #b00000000000000000000000000000000) (bvsge (index!23529 lt!254024) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52461 lt!254024) #b01111111111111111111111111111110) (bvsge (x!52461 lt!254024) #b00000000000000000000000000000000)))))))))

(declare-fun e!321944 () Bool)

(assert (=> b!558837 e!321944))

(declare-fun res!350614 () Bool)

(assert (=> b!558837 (=> (not res!350614) (not e!321944))))

(declare-fun lt!254021 () SeekEntryResult!5325)

(assert (=> b!558837 (= res!350614 (= lt!254021 (Found!5325 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35139 (_ BitVec 32)) SeekEntryResult!5325)

(assert (=> b!558837 (= lt!254021 (seekEntryOrOpen!0 (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35139 (_ BitVec 32)) Bool)

(assert (=> b!558837 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17424 0))(
  ( (Unit!17425) )
))
(declare-fun lt!254023 () Unit!17424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17424)

(assert (=> b!558837 (= lt!254023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558838 () Bool)

(declare-fun e!321941 () Bool)

(assert (=> b!558838 (= e!321944 e!321941)))

(declare-fun res!350617 () Bool)

(assert (=> b!558838 (=> res!350617 e!321941)))

(assert (=> b!558838 (= res!350617 (or (undefined!6137 lt!254024) (not (is-Intermediate!5325 lt!254024))))))

(declare-fun b!558839 () Bool)

(declare-fun res!350622 () Bool)

(declare-fun e!321940 () Bool)

(assert (=> b!558839 (=> (not res!350622) (not e!321940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558839 (= res!350622 (validKeyInArray!0 (select (arr!16869 a!3118) j!142)))))

(declare-fun b!558840 () Bool)

(declare-fun res!350619 () Bool)

(declare-fun e!321946 () Bool)

(assert (=> b!558840 (=> (not res!350619) (not e!321946))))

(assert (=> b!558840 (= res!350619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558841 () Bool)

(declare-fun res!350613 () Bool)

(assert (=> b!558841 (=> (not res!350613) (not e!321940))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558841 (= res!350613 (and (= (size!17233 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17233 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17233 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!350621 () Bool)

(assert (=> start!51194 (=> (not res!350621) (not e!321940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51194 (= res!350621 (validMask!0 mask!3119))))

(assert (=> start!51194 e!321940))

(assert (=> start!51194 true))

(declare-fun array_inv!12643 (array!35139) Bool)

(assert (=> start!51194 (array_inv!12643 a!3118)))

(declare-fun b!558842 () Bool)

(assert (=> b!558842 (= e!321946 e!321945)))

(declare-fun res!350620 () Bool)

(assert (=> b!558842 (=> (not res!350620) (not e!321945))))

(declare-fun lt!254027 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35139 (_ BitVec 32)) SeekEntryResult!5325)

(assert (=> b!558842 (= res!350620 (= lt!254024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254027 (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)) mask!3119)))))

(declare-fun lt!254022 () (_ BitVec 32))

(assert (=> b!558842 (= lt!254024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254022 (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558842 (= lt!254027 (toIndex!0 (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558842 (= lt!254022 (toIndex!0 (select (arr!16869 a!3118) j!142) mask!3119))))

(declare-fun b!558843 () Bool)

(declare-fun res!350623 () Bool)

(assert (=> b!558843 (=> (not res!350623) (not e!321940))))

(assert (=> b!558843 (= res!350623 (validKeyInArray!0 k!1914))))

(declare-fun b!558844 () Bool)

(declare-fun e!321942 () Bool)

(assert (=> b!558844 (= e!321941 e!321942)))

(declare-fun res!350615 () Bool)

(assert (=> b!558844 (=> res!350615 e!321942)))

(declare-fun lt!254025 () (_ BitVec 64))

(assert (=> b!558844 (= res!350615 (or (= lt!254025 (select (arr!16869 a!3118) j!142)) (= lt!254025 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!558844 (= lt!254025 (select (arr!16869 a!3118) (index!23529 lt!254024)))))

(declare-fun b!558845 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35139 (_ BitVec 32)) SeekEntryResult!5325)

(assert (=> b!558845 (= e!321942 (= lt!254021 (seekKeyOrZeroReturnVacant!0 (x!52461 lt!254024) (index!23529 lt!254024) (index!23529 lt!254024) (select (arr!16869 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558846 () Bool)

(declare-fun res!350624 () Bool)

(assert (=> b!558846 (=> (not res!350624) (not e!321940))))

(declare-fun arrayContainsKey!0 (array!35139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558846 (= res!350624 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558847 () Bool)

(assert (=> b!558847 (= e!321940 e!321946)))

(declare-fun res!350618 () Bool)

(assert (=> b!558847 (=> (not res!350618) (not e!321946))))

(declare-fun lt!254026 () SeekEntryResult!5325)

(assert (=> b!558847 (= res!350618 (or (= lt!254026 (MissingZero!5325 i!1132)) (= lt!254026 (MissingVacant!5325 i!1132))))))

(assert (=> b!558847 (= lt!254026 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558848 () Bool)

(declare-fun res!350616 () Bool)

(assert (=> b!558848 (=> (not res!350616) (not e!321946))))

(declare-datatypes ((List!11002 0))(
  ( (Nil!10999) (Cons!10998 (h!11995 (_ BitVec 64)) (t!17238 List!11002)) )
))
(declare-fun arrayNoDuplicates!0 (array!35139 (_ BitVec 32) List!11002) Bool)

(assert (=> b!558848 (= res!350616 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10999))))

(assert (= (and start!51194 res!350621) b!558841))

(assert (= (and b!558841 res!350613) b!558839))

(assert (= (and b!558839 res!350622) b!558843))

(assert (= (and b!558843 res!350623) b!558846))

(assert (= (and b!558846 res!350624) b!558847))

(assert (= (and b!558847 res!350618) b!558840))

(assert (= (and b!558840 res!350619) b!558848))

(assert (= (and b!558848 res!350616) b!558842))

(assert (= (and b!558842 res!350620) b!558837))

(assert (= (and b!558837 res!350614) b!558838))

(assert (= (and b!558838 (not res!350617)) b!558844))

(assert (= (and b!558844 (not res!350615)) b!558845))

(declare-fun m!536785 () Bool)

(assert (=> b!558848 m!536785))

(declare-fun m!536787 () Bool)

(assert (=> b!558840 m!536787))

(declare-fun m!536789 () Bool)

(assert (=> b!558843 m!536789))

(declare-fun m!536791 () Bool)

(assert (=> b!558837 m!536791))

(declare-fun m!536793 () Bool)

(assert (=> b!558837 m!536793))

(declare-fun m!536795 () Bool)

(assert (=> b!558837 m!536795))

(declare-fun m!536797 () Bool)

(assert (=> b!558837 m!536797))

(assert (=> b!558837 m!536793))

(declare-fun m!536799 () Bool)

(assert (=> b!558837 m!536799))

(assert (=> b!558845 m!536793))

(assert (=> b!558845 m!536793))

(declare-fun m!536801 () Bool)

(assert (=> b!558845 m!536801))

(assert (=> b!558839 m!536793))

(assert (=> b!558839 m!536793))

(declare-fun m!536803 () Bool)

(assert (=> b!558839 m!536803))

(assert (=> b!558844 m!536793))

(assert (=> b!558844 m!536791))

(declare-fun m!536805 () Bool)

(assert (=> start!51194 m!536805))

(declare-fun m!536807 () Bool)

(assert (=> start!51194 m!536807))

(declare-fun m!536809 () Bool)

(assert (=> b!558846 m!536809))

(declare-fun m!536811 () Bool)

(assert (=> b!558847 m!536811))

(assert (=> b!558842 m!536793))

(declare-fun m!536813 () Bool)

(assert (=> b!558842 m!536813))

(assert (=> b!558842 m!536793))

(assert (=> b!558842 m!536793))

(declare-fun m!536815 () Bool)

(assert (=> b!558842 m!536815))

(declare-fun m!536817 () Bool)

(assert (=> b!558842 m!536817))

(declare-fun m!536819 () Bool)

(assert (=> b!558842 m!536819))

(assert (=> b!558842 m!536817))

(declare-fun m!536821 () Bool)

(assert (=> b!558842 m!536821))

(assert (=> b!558842 m!536817))

(declare-fun m!536823 () Bool)

(assert (=> b!558842 m!536823))

(push 1)

(assert (not b!558847))

(assert (not b!558837))

(assert (not b!558843))

(assert (not b!558848))

(assert (not b!558845))

(assert (not b!558842))

(assert (not b!558846))

(assert (not start!51194))

(assert (not b!558839))

(assert (not b!558840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!558955 () Bool)

(declare-fun e!322012 () Bool)

(declare-fun e!322010 () Bool)

(assert (=> b!558955 (= e!322012 e!322010)))

(declare-fun c!64469 () Bool)

(assert (=> b!558955 (= c!64469 (validKeyInArray!0 (select (arr!16869 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558957 () Bool)

(declare-fun e!322011 () Bool)

(declare-fun contains!2860 (List!11002 (_ BitVec 64)) Bool)

(assert (=> b!558957 (= e!322011 (contains!2860 Nil!10999 (select (arr!16869 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558958 () Bool)

(declare-fun e!322009 () Bool)

(assert (=> b!558958 (= e!322009 e!322012)))

(declare-fun res!350703 () Bool)

(assert (=> b!558958 (=> (not res!350703) (not e!322012))))

(assert (=> b!558958 (= res!350703 (not e!322011))))

(declare-fun res!350704 () Bool)

(assert (=> b!558958 (=> (not res!350704) (not e!322011))))

(assert (=> b!558958 (= res!350704 (validKeyInArray!0 (select (arr!16869 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32411 () Bool)

(declare-fun call!32414 () Bool)

(assert (=> bm!32411 (= call!32414 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64469 (Cons!10998 (select (arr!16869 a!3118) #b00000000000000000000000000000000) Nil!10999) Nil!10999)))))

(declare-fun b!558959 () Bool)

(assert (=> b!558959 (= e!322010 call!32414)))

(declare-fun b!558956 () Bool)

(assert (=> b!558956 (= e!322010 call!32414)))

(declare-fun d!83569 () Bool)

(declare-fun res!350705 () Bool)

(assert (=> d!83569 (=> res!350705 e!322009)))

(assert (=> d!83569 (= res!350705 (bvsge #b00000000000000000000000000000000 (size!17233 a!3118)))))

(assert (=> d!83569 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10999) e!322009)))

(assert (= (and d!83569 (not res!350705)) b!558958))

(assert (= (and b!558958 res!350704) b!558957))

(assert (= (and b!558958 res!350703) b!558955))

(assert (= (and b!558955 c!64469) b!558959))

(assert (= (and b!558955 (not c!64469)) b!558956))

(assert (= (or b!558959 b!558956) bm!32411))

(declare-fun m!536931 () Bool)

(assert (=> b!558955 m!536931))

(assert (=> b!558955 m!536931))

(declare-fun m!536933 () Bool)

(assert (=> b!558955 m!536933))

(assert (=> b!558957 m!536931))

(assert (=> b!558957 m!536931))

(declare-fun m!536935 () Bool)

(assert (=> b!558957 m!536935))

(assert (=> b!558958 m!536931))

(assert (=> b!558958 m!536931))

(assert (=> b!558958 m!536933))

(assert (=> bm!32411 m!536931))

(declare-fun m!536937 () Bool)

(assert (=> bm!32411 m!536937))

(assert (=> b!558848 d!83569))

(declare-fun d!83575 () Bool)

(declare-fun lt!254102 () SeekEntryResult!5325)

(assert (=> d!83575 (and (or (is-Undefined!5325 lt!254102) (not (is-Found!5325 lt!254102)) (and (bvsge (index!23528 lt!254102) #b00000000000000000000000000000000) (bvslt (index!23528 lt!254102) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254102) (is-Found!5325 lt!254102) (not (is-MissingZero!5325 lt!254102)) (and (bvsge (index!23527 lt!254102) #b00000000000000000000000000000000) (bvslt (index!23527 lt!254102) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254102) (is-Found!5325 lt!254102) (is-MissingZero!5325 lt!254102) (not (is-MissingVacant!5325 lt!254102)) (and (bvsge (index!23530 lt!254102) #b00000000000000000000000000000000) (bvslt (index!23530 lt!254102) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254102) (ite (is-Found!5325 lt!254102) (= (select (arr!16869 a!3118) (index!23528 lt!254102)) (select (arr!16869 a!3118) j!142)) (ite (is-MissingZero!5325 lt!254102) (= (select (arr!16869 a!3118) (index!23527 lt!254102)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5325 lt!254102) (= (select (arr!16869 a!3118) (index!23530 lt!254102)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322029 () SeekEntryResult!5325)

(assert (=> d!83575 (= lt!254102 e!322029)))

(declare-fun c!64481 () Bool)

(declare-fun lt!254100 () SeekEntryResult!5325)

(assert (=> d!83575 (= c!64481 (and (is-Intermediate!5325 lt!254100) (undefined!6137 lt!254100)))))

(assert (=> d!83575 (= lt!254100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16869 a!3118) j!142) mask!3119) (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83575 (validMask!0 mask!3119)))

(assert (=> d!83575 (= (seekEntryOrOpen!0 (select (arr!16869 a!3118) j!142) a!3118 mask!3119) lt!254102)))

(declare-fun b!558984 () Bool)

(declare-fun e!322028 () SeekEntryResult!5325)

(assert (=> b!558984 (= e!322028 (Found!5325 (index!23529 lt!254100)))))

(declare-fun b!558985 () Bool)

(assert (=> b!558985 (= e!322029 Undefined!5325)))

(declare-fun e!322030 () SeekEntryResult!5325)

(declare-fun b!558986 () Bool)

(assert (=> b!558986 (= e!322030 (seekKeyOrZeroReturnVacant!0 (x!52461 lt!254100) (index!23529 lt!254100) (index!23529 lt!254100) (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558987 () Bool)

(declare-fun c!64479 () Bool)

(declare-fun lt!254101 () (_ BitVec 64))

(assert (=> b!558987 (= c!64479 (= lt!254101 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558987 (= e!322028 e!322030)))

(declare-fun b!558988 () Bool)

(assert (=> b!558988 (= e!322029 e!322028)))

(assert (=> b!558988 (= lt!254101 (select (arr!16869 a!3118) (index!23529 lt!254100)))))

(declare-fun c!64480 () Bool)

(assert (=> b!558988 (= c!64480 (= lt!254101 (select (arr!16869 a!3118) j!142)))))

(declare-fun b!558989 () Bool)

(assert (=> b!558989 (= e!322030 (MissingZero!5325 (index!23529 lt!254100)))))

(assert (= (and d!83575 c!64481) b!558985))

(assert (= (and d!83575 (not c!64481)) b!558988))

(assert (= (and b!558988 c!64480) b!558984))

(assert (= (and b!558988 (not c!64480)) b!558987))

(assert (= (and b!558987 c!64479) b!558989))

(assert (= (and b!558987 (not c!64479)) b!558986))

(declare-fun m!536947 () Bool)

(assert (=> d!83575 m!536947))

(declare-fun m!536949 () Bool)

(assert (=> d!83575 m!536949))

(assert (=> d!83575 m!536813))

(assert (=> d!83575 m!536793))

(declare-fun m!536951 () Bool)

(assert (=> d!83575 m!536951))

(assert (=> d!83575 m!536805))

(assert (=> d!83575 m!536793))

(assert (=> d!83575 m!536813))

(declare-fun m!536953 () Bool)

(assert (=> d!83575 m!536953))

(assert (=> b!558986 m!536793))

(declare-fun m!536955 () Bool)

(assert (=> b!558986 m!536955))

(declare-fun m!536957 () Bool)

(assert (=> b!558988 m!536957))

(assert (=> b!558837 d!83575))

(declare-fun b!559053 () Bool)

(declare-fun e!322069 () Bool)

(declare-fun e!322071 () Bool)

(assert (=> b!559053 (= e!322069 e!322071)))

(declare-fun c!64504 () Bool)

(assert (=> b!559053 (= c!64504 (validKeyInArray!0 (select (arr!16869 a!3118) j!142)))))

(declare-fun bm!32419 () Bool)

(declare-fun call!32422 () Bool)

(assert (=> bm!32419 (= call!32422 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83583 () Bool)

(declare-fun res!350731 () Bool)

(assert (=> d!83583 (=> res!350731 e!322069)))

(assert (=> d!83583 (= res!350731 (bvsge j!142 (size!17233 a!3118)))))

(assert (=> d!83583 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322069)))

(declare-fun b!559054 () Bool)

(assert (=> b!559054 (= e!322071 call!32422)))

(declare-fun b!559055 () Bool)

(declare-fun e!322070 () Bool)

(assert (=> b!559055 (= e!322071 e!322070)))

(declare-fun lt!254121 () (_ BitVec 64))

(assert (=> b!559055 (= lt!254121 (select (arr!16869 a!3118) j!142))))

(declare-fun lt!254123 () Unit!17424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35139 (_ BitVec 64) (_ BitVec 32)) Unit!17424)

(assert (=> b!559055 (= lt!254123 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254121 j!142))))

(assert (=> b!559055 (arrayContainsKey!0 a!3118 lt!254121 #b00000000000000000000000000000000)))

(declare-fun lt!254122 () Unit!17424)

(assert (=> b!559055 (= lt!254122 lt!254123)))

(declare-fun res!350732 () Bool)

(assert (=> b!559055 (= res!350732 (= (seekEntryOrOpen!0 (select (arr!16869 a!3118) j!142) a!3118 mask!3119) (Found!5325 j!142)))))

(assert (=> b!559055 (=> (not res!350732) (not e!322070))))

(declare-fun b!559056 () Bool)

(assert (=> b!559056 (= e!322070 call!32422)))

(assert (= (and d!83583 (not res!350731)) b!559053))

(assert (= (and b!559053 c!64504) b!559055))

(assert (= (and b!559053 (not c!64504)) b!559054))

(assert (= (and b!559055 res!350732) b!559056))

(assert (= (or b!559056 b!559054) bm!32419))

(assert (=> b!559053 m!536793))

(assert (=> b!559053 m!536793))

(assert (=> b!559053 m!536803))

(declare-fun m!536975 () Bool)

(assert (=> bm!32419 m!536975))

(assert (=> b!559055 m!536793))

(declare-fun m!536977 () Bool)

(assert (=> b!559055 m!536977))

(declare-fun m!536979 () Bool)

(assert (=> b!559055 m!536979))

(assert (=> b!559055 m!536793))

(assert (=> b!559055 m!536799))

(assert (=> b!558837 d!83583))

(declare-fun d!83589 () Bool)

(assert (=> d!83589 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254128 () Unit!17424)

(declare-fun choose!38 (array!35139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17424)

(assert (=> d!83589 (= lt!254128 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83589 (validMask!0 mask!3119)))

(assert (=> d!83589 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254128)))

(declare-fun bs!17389 () Bool)

(assert (= bs!17389 d!83589))

(assert (=> bs!17389 m!536795))

(declare-fun m!536997 () Bool)

(assert (=> bs!17389 m!536997))

(assert (=> bs!17389 m!536805))

(assert (=> b!558837 d!83589))

(declare-fun d!83597 () Bool)

(assert (=> d!83597 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558843 d!83597))

(declare-fun b!559150 () Bool)

(declare-fun e!322140 () SeekEntryResult!5325)

(declare-fun e!322139 () SeekEntryResult!5325)

(assert (=> b!559150 (= e!322140 e!322139)))

(declare-fun lt!254157 () (_ BitVec 64))

(declare-fun c!64530 () Bool)

(assert (=> b!559150 (= c!64530 (or (= lt!254157 (select (store (arr!16869 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!254157 lt!254157) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559151 () Bool)

(assert (=> b!559151 (= e!322140 (Intermediate!5325 true lt!254027 #b00000000000000000000000000000000))))

(declare-fun d!83599 () Bool)

(declare-fun e!322141 () Bool)

(assert (=> d!83599 e!322141))

(declare-fun c!64528 () Bool)

(declare-fun lt!254158 () SeekEntryResult!5325)

(assert (=> d!83599 (= c!64528 (and (is-Intermediate!5325 lt!254158) (undefined!6137 lt!254158)))))

(assert (=> d!83599 (= lt!254158 e!322140)))

(declare-fun c!64529 () Bool)

(assert (=> d!83599 (= c!64529 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83599 (= lt!254157 (select (arr!16869 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118))) lt!254027))))

(assert (=> d!83599 (validMask!0 mask!3119)))

(assert (=> d!83599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254027 (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)) mask!3119) lt!254158)))

(declare-fun b!559152 () Bool)

(assert (=> b!559152 (and (bvsge (index!23529 lt!254158) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254158) (size!17233 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)))))))

(declare-fun res!350781 () Bool)

(assert (=> b!559152 (= res!350781 (= (select (arr!16869 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118))) (index!23529 lt!254158)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322138 () Bool)

(assert (=> b!559152 (=> res!350781 e!322138)))

(declare-fun b!559153 () Bool)

(assert (=> b!559153 (= e!322141 (bvsge (x!52461 lt!254158) #b01111111111111111111111111111110))))

(declare-fun b!559154 () Bool)

(declare-fun e!322137 () Bool)

(assert (=> b!559154 (= e!322141 e!322137)))

(declare-fun res!350783 () Bool)

(assert (=> b!559154 (= res!350783 (and (is-Intermediate!5325 lt!254158) (not (undefined!6137 lt!254158)) (bvslt (x!52461 lt!254158) #b01111111111111111111111111111110) (bvsge (x!52461 lt!254158) #b00000000000000000000000000000000) (bvsge (x!52461 lt!254158) #b00000000000000000000000000000000)))))

(assert (=> b!559154 (=> (not res!350783) (not e!322137))))

(declare-fun b!559155 () Bool)

(assert (=> b!559155 (= e!322139 (Intermediate!5325 false lt!254027 #b00000000000000000000000000000000))))

(declare-fun b!559156 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559156 (= e!322139 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254027 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)) mask!3119))))

(declare-fun b!559157 () Bool)

(assert (=> b!559157 (and (bvsge (index!23529 lt!254158) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254158) (size!17233 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)))))))

(assert (=> b!559157 (= e!322138 (= (select (arr!16869 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118))) (index!23529 lt!254158)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559158 () Bool)

(assert (=> b!559158 (and (bvsge (index!23529 lt!254158) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254158) (size!17233 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118)))))))

(declare-fun res!350782 () Bool)

(assert (=> b!559158 (= res!350782 (= (select (arr!16869 (array!35140 (store (arr!16869 a!3118) i!1132 k!1914) (size!17233 a!3118))) (index!23529 lt!254158)) (select (store (arr!16869 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!559158 (=> res!350782 e!322138)))

(assert (=> b!559158 (= e!322137 e!322138)))

(assert (= (and d!83599 c!64529) b!559151))

(assert (= (and d!83599 (not c!64529)) b!559150))

(assert (= (and b!559150 c!64530) b!559155))

(assert (= (and b!559150 (not c!64530)) b!559156))

(assert (= (and d!83599 c!64528) b!559153))

(assert (= (and d!83599 (not c!64528)) b!559154))

(assert (= (and b!559154 res!350783) b!559158))

(assert (= (and b!559158 (not res!350782)) b!559152))

(assert (= (and b!559152 (not res!350781)) b!559157))

(declare-fun m!537027 () Bool)

(assert (=> b!559157 m!537027))

(assert (=> b!559152 m!537027))

(declare-fun m!537029 () Bool)

(assert (=> d!83599 m!537029))

(assert (=> d!83599 m!536805))

(declare-fun m!537031 () Bool)

(assert (=> b!559156 m!537031))

(assert (=> b!559156 m!537031))

(assert (=> b!559156 m!536817))

(declare-fun m!537033 () Bool)

(assert (=> b!559156 m!537033))

(assert (=> b!559158 m!537027))

(assert (=> b!558842 d!83599))

(declare-fun b!559168 () Bool)

(declare-fun e!322150 () SeekEntryResult!5325)

(declare-fun e!322149 () SeekEntryResult!5325)

(assert (=> b!559168 (= e!322150 e!322149)))

(declare-fun lt!254161 () (_ BitVec 64))

(declare-fun c!64536 () Bool)

(assert (=> b!559168 (= c!64536 (or (= lt!254161 (select (arr!16869 a!3118) j!142)) (= (bvadd lt!254161 lt!254161) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559169 () Bool)

(assert (=> b!559169 (= e!322150 (Intermediate!5325 true lt!254022 #b00000000000000000000000000000000))))

(declare-fun d!83615 () Bool)

(declare-fun e!322151 () Bool)

(assert (=> d!83615 e!322151))

(declare-fun c!64534 () Bool)

(declare-fun lt!254162 () SeekEntryResult!5325)

(assert (=> d!83615 (= c!64534 (and (is-Intermediate!5325 lt!254162) (undefined!6137 lt!254162)))))

(assert (=> d!83615 (= lt!254162 e!322150)))

(declare-fun c!64535 () Bool)

(assert (=> d!83615 (= c!64535 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83615 (= lt!254161 (select (arr!16869 a!3118) lt!254022))))

(assert (=> d!83615 (validMask!0 mask!3119)))

(assert (=> d!83615 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254022 (select (arr!16869 a!3118) j!142) a!3118 mask!3119) lt!254162)))

(declare-fun b!559170 () Bool)

(assert (=> b!559170 (and (bvsge (index!23529 lt!254162) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254162) (size!17233 a!3118)))))

(declare-fun res!350787 () Bool)

(assert (=> b!559170 (= res!350787 (= (select (arr!16869 a!3118) (index!23529 lt!254162)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322148 () Bool)

(assert (=> b!559170 (=> res!350787 e!322148)))

(declare-fun b!559171 () Bool)

(assert (=> b!559171 (= e!322151 (bvsge (x!52461 lt!254162) #b01111111111111111111111111111110))))

(declare-fun b!559172 () Bool)

(declare-fun e!322147 () Bool)

(assert (=> b!559172 (= e!322151 e!322147)))

(declare-fun res!350789 () Bool)

(assert (=> b!559172 (= res!350789 (and (is-Intermediate!5325 lt!254162) (not (undefined!6137 lt!254162)) (bvslt (x!52461 lt!254162) #b01111111111111111111111111111110) (bvsge (x!52461 lt!254162) #b00000000000000000000000000000000) (bvsge (x!52461 lt!254162) #b00000000000000000000000000000000)))))

(assert (=> b!559172 (=> (not res!350789) (not e!322147))))

(declare-fun b!559173 () Bool)

(assert (=> b!559173 (= e!322149 (Intermediate!5325 false lt!254022 #b00000000000000000000000000000000))))

(declare-fun b!559174 () Bool)

(assert (=> b!559174 (= e!322149 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254022 #b00000000000000000000000000000000 mask!3119) (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559175 () Bool)

(assert (=> b!559175 (and (bvsge (index!23529 lt!254162) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254162) (size!17233 a!3118)))))

(assert (=> b!559175 (= e!322148 (= (select (arr!16869 a!3118) (index!23529 lt!254162)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559176 () Bool)

(assert (=> b!559176 (and (bvsge (index!23529 lt!254162) #b00000000000000000000000000000000) (bvslt (index!23529 lt!254162) (size!17233 a!3118)))))

(declare-fun res!350788 () Bool)

(assert (=> b!559176 (= res!350788 (= (select (arr!16869 a!3118) (index!23529 lt!254162)) (select (arr!16869 a!3118) j!142)))))

(assert (=> b!559176 (=> res!350788 e!322148)))

(assert (=> b!559176 (= e!322147 e!322148)))

(assert (= (and d!83615 c!64535) b!559169))

(assert (= (and d!83615 (not c!64535)) b!559168))

(assert (= (and b!559168 c!64536) b!559173))

(assert (= (and b!559168 (not c!64536)) b!559174))

(assert (= (and d!83615 c!64534) b!559171))

(assert (= (and d!83615 (not c!64534)) b!559172))

(assert (= (and b!559172 res!350789) b!559176))

(assert (= (and b!559176 (not res!350788)) b!559170))

(assert (= (and b!559170 (not res!350787)) b!559175))

(declare-fun m!537039 () Bool)

(assert (=> b!559175 m!537039))

(assert (=> b!559170 m!537039))

(declare-fun m!537041 () Bool)

(assert (=> d!83615 m!537041))

(assert (=> d!83615 m!536805))

(declare-fun m!537045 () Bool)

(assert (=> b!559174 m!537045))

(assert (=> b!559174 m!537045))

(assert (=> b!559174 m!536793))

(declare-fun m!537049 () Bool)

(assert (=> b!559174 m!537049))

(assert (=> b!559176 m!537039))

(assert (=> b!558842 d!83615))

(declare-fun d!83619 () Bool)

(declare-fun lt!254170 () (_ BitVec 32))

(declare-fun lt!254169 () (_ BitVec 32))

(assert (=> d!83619 (= lt!254170 (bvmul (bvxor lt!254169 (bvlshr lt!254169 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83619 (= lt!254169 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83619 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350793 (let ((h!11999 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52469 (bvmul (bvxor h!11999 (bvlshr h!11999 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52469 (bvlshr x!52469 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350793 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350793 #b00000000000000000000000000000000))))))

(assert (=> d!83619 (= (toIndex!0 (select (store (arr!16869 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!254170 (bvlshr lt!254170 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558842 d!83619))

(declare-fun d!83623 () Bool)

(declare-fun lt!254176 () (_ BitVec 32))

(declare-fun lt!254175 () (_ BitVec 32))

(assert (=> d!83623 (= lt!254176 (bvmul (bvxor lt!254175 (bvlshr lt!254175 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83623 (= lt!254175 ((_ extract 31 0) (bvand (bvxor (select (arr!16869 a!3118) j!142) (bvlshr (select (arr!16869 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83623 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350793 (let ((h!11999 ((_ extract 31 0) (bvand (bvxor (select (arr!16869 a!3118) j!142) (bvlshr (select (arr!16869 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52469 (bvmul (bvxor h!11999 (bvlshr h!11999 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52469 (bvlshr x!52469 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350793 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350793 #b00000000000000000000000000000000))))))

(assert (=> d!83623 (= (toIndex!0 (select (arr!16869 a!3118) j!142) mask!3119) (bvand (bvxor lt!254176 (bvlshr lt!254176 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558842 d!83623))

(declare-fun d!83625 () Bool)

(declare-fun lt!254179 () SeekEntryResult!5325)

(assert (=> d!83625 (and (or (is-Undefined!5325 lt!254179) (not (is-Found!5325 lt!254179)) (and (bvsge (index!23528 lt!254179) #b00000000000000000000000000000000) (bvslt (index!23528 lt!254179) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254179) (is-Found!5325 lt!254179) (not (is-MissingZero!5325 lt!254179)) (and (bvsge (index!23527 lt!254179) #b00000000000000000000000000000000) (bvslt (index!23527 lt!254179) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254179) (is-Found!5325 lt!254179) (is-MissingZero!5325 lt!254179) (not (is-MissingVacant!5325 lt!254179)) (and (bvsge (index!23530 lt!254179) #b00000000000000000000000000000000) (bvslt (index!23530 lt!254179) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254179) (ite (is-Found!5325 lt!254179) (= (select (arr!16869 a!3118) (index!23528 lt!254179)) k!1914) (ite (is-MissingZero!5325 lt!254179) (= (select (arr!16869 a!3118) (index!23527 lt!254179)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5325 lt!254179) (= (select (arr!16869 a!3118) (index!23530 lt!254179)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322158 () SeekEntryResult!5325)

(assert (=> d!83625 (= lt!254179 e!322158)))

(declare-fun c!64542 () Bool)

(declare-fun lt!254177 () SeekEntryResult!5325)

(assert (=> d!83625 (= c!64542 (and (is-Intermediate!5325 lt!254177) (undefined!6137 lt!254177)))))

(assert (=> d!83625 (= lt!254177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83625 (validMask!0 mask!3119)))

(assert (=> d!83625 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!254179)))

(declare-fun b!559186 () Bool)

(declare-fun e!322157 () SeekEntryResult!5325)

(assert (=> b!559186 (= e!322157 (Found!5325 (index!23529 lt!254177)))))

(declare-fun b!559187 () Bool)

(assert (=> b!559187 (= e!322158 Undefined!5325)))

(declare-fun b!559188 () Bool)

(declare-fun e!322159 () SeekEntryResult!5325)

(assert (=> b!559188 (= e!322159 (seekKeyOrZeroReturnVacant!0 (x!52461 lt!254177) (index!23529 lt!254177) (index!23529 lt!254177) k!1914 a!3118 mask!3119))))

(declare-fun b!559189 () Bool)

(declare-fun c!64540 () Bool)

(declare-fun lt!254178 () (_ BitVec 64))

(assert (=> b!559189 (= c!64540 (= lt!254178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559189 (= e!322157 e!322159)))

(declare-fun b!559190 () Bool)

(assert (=> b!559190 (= e!322158 e!322157)))

(assert (=> b!559190 (= lt!254178 (select (arr!16869 a!3118) (index!23529 lt!254177)))))

(declare-fun c!64541 () Bool)

(assert (=> b!559190 (= c!64541 (= lt!254178 k!1914))))

(declare-fun b!559191 () Bool)

(assert (=> b!559191 (= e!322159 (MissingZero!5325 (index!23529 lt!254177)))))

(assert (= (and d!83625 c!64542) b!559187))

(assert (= (and d!83625 (not c!64542)) b!559190))

(assert (= (and b!559190 c!64541) b!559186))

(assert (= (and b!559190 (not c!64541)) b!559189))

(assert (= (and b!559189 c!64540) b!559191))

(assert (= (and b!559189 (not c!64540)) b!559188))

(declare-fun m!537059 () Bool)

(assert (=> d!83625 m!537059))

(declare-fun m!537061 () Bool)

(assert (=> d!83625 m!537061))

(declare-fun m!537063 () Bool)

(assert (=> d!83625 m!537063))

(declare-fun m!537065 () Bool)

(assert (=> d!83625 m!537065))

(assert (=> d!83625 m!536805))

(assert (=> d!83625 m!537063))

(declare-fun m!537067 () Bool)

(assert (=> d!83625 m!537067))

(declare-fun m!537069 () Bool)

(assert (=> b!559188 m!537069))

(declare-fun m!537071 () Bool)

(assert (=> b!559190 m!537071))

(assert (=> b!558847 d!83625))

(declare-fun b!559192 () Bool)

(declare-fun e!322160 () Bool)

(declare-fun e!322162 () Bool)

(assert (=> b!559192 (= e!322160 e!322162)))

(declare-fun c!64543 () Bool)

(assert (=> b!559192 (= c!64543 (validKeyInArray!0 (select (arr!16869 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32428 () Bool)

(declare-fun call!32431 () Bool)

(assert (=> bm!32428 (= call!32431 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83631 () Bool)

(declare-fun res!350795 () Bool)

(assert (=> d!83631 (=> res!350795 e!322160)))

(assert (=> d!83631 (= res!350795 (bvsge #b00000000000000000000000000000000 (size!17233 a!3118)))))

(assert (=> d!83631 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322160)))

(declare-fun b!559193 () Bool)

(assert (=> b!559193 (= e!322162 call!32431)))

(declare-fun b!559194 () Bool)

(declare-fun e!322161 () Bool)

(assert (=> b!559194 (= e!322162 e!322161)))

(declare-fun lt!254184 () (_ BitVec 64))

(assert (=> b!559194 (= lt!254184 (select (arr!16869 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254186 () Unit!17424)

(assert (=> b!559194 (= lt!254186 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254184 #b00000000000000000000000000000000))))

(assert (=> b!559194 (arrayContainsKey!0 a!3118 lt!254184 #b00000000000000000000000000000000)))

(declare-fun lt!254185 () Unit!17424)

(assert (=> b!559194 (= lt!254185 lt!254186)))

(declare-fun res!350796 () Bool)

(assert (=> b!559194 (= res!350796 (= (seekEntryOrOpen!0 (select (arr!16869 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5325 #b00000000000000000000000000000000)))))

(assert (=> b!559194 (=> (not res!350796) (not e!322161))))

(declare-fun b!559195 () Bool)

(assert (=> b!559195 (= e!322161 call!32431)))

(assert (= (and d!83631 (not res!350795)) b!559192))

(assert (= (and b!559192 c!64543) b!559194))

(assert (= (and b!559192 (not c!64543)) b!559193))

(assert (= (and b!559194 res!350796) b!559195))

(assert (= (or b!559195 b!559193) bm!32428))

(assert (=> b!559192 m!536931))

(assert (=> b!559192 m!536931))

(assert (=> b!559192 m!536933))

(declare-fun m!537073 () Bool)

(assert (=> bm!32428 m!537073))

(assert (=> b!559194 m!536931))

(declare-fun m!537075 () Bool)

(assert (=> b!559194 m!537075))

(declare-fun m!537077 () Bool)

(assert (=> b!559194 m!537077))

(assert (=> b!559194 m!536931))

(declare-fun m!537079 () Bool)

(assert (=> b!559194 m!537079))

(assert (=> b!558840 d!83631))

(declare-fun b!559220 () Bool)

(declare-fun e!322177 () SeekEntryResult!5325)

(assert (=> b!559220 (= e!322177 Undefined!5325)))

(declare-fun b!559221 () Bool)

(declare-fun e!322176 () SeekEntryResult!5325)

(assert (=> b!559221 (= e!322176 (Found!5325 (index!23529 lt!254024)))))

(declare-fun b!559222 () Bool)

(assert (=> b!559222 (= e!322177 e!322176)))

(declare-fun c!64558 () Bool)

(declare-fun lt!254196 () (_ BitVec 64))

(assert (=> b!559222 (= c!64558 (= lt!254196 (select (arr!16869 a!3118) j!142)))))

(declare-fun b!559223 () Bool)

(declare-fun e!322175 () SeekEntryResult!5325)

(assert (=> b!559223 (= e!322175 (MissingVacant!5325 (index!23529 lt!254024)))))

(declare-fun b!559224 () Bool)

(declare-fun c!64556 () Bool)

(assert (=> b!559224 (= c!64556 (= lt!254196 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559224 (= e!322176 e!322175)))

(declare-fun b!559225 () Bool)

(assert (=> b!559225 (= e!322175 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52461 lt!254024) #b00000000000000000000000000000001) (nextIndex!0 (index!23529 lt!254024) (x!52461 lt!254024) mask!3119) (index!23529 lt!254024) (select (arr!16869 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!83635 () Bool)

(declare-fun lt!254195 () SeekEntryResult!5325)

(assert (=> d!83635 (and (or (is-Undefined!5325 lt!254195) (not (is-Found!5325 lt!254195)) (and (bvsge (index!23528 lt!254195) #b00000000000000000000000000000000) (bvslt (index!23528 lt!254195) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254195) (is-Found!5325 lt!254195) (not (is-MissingVacant!5325 lt!254195)) (not (= (index!23530 lt!254195) (index!23529 lt!254024))) (and (bvsge (index!23530 lt!254195) #b00000000000000000000000000000000) (bvslt (index!23530 lt!254195) (size!17233 a!3118)))) (or (is-Undefined!5325 lt!254195) (ite (is-Found!5325 lt!254195) (= (select (arr!16869 a!3118) (index!23528 lt!254195)) (select (arr!16869 a!3118) j!142)) (and (is-MissingVacant!5325 lt!254195) (= (index!23530 lt!254195) (index!23529 lt!254024)) (= (select (arr!16869 a!3118) (index!23530 lt!254195)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!83635 (= lt!254195 e!322177)))

(declare-fun c!64557 () Bool)

(assert (=> d!83635 (= c!64557 (bvsge (x!52461 lt!254024) #b01111111111111111111111111111110))))

(assert (=> d!83635 (= lt!254196 (select (arr!16869 a!3118) (index!23529 lt!254024)))))

(assert (=> d!83635 (validMask!0 mask!3119)))

(assert (=> d!83635 (= (seekKeyOrZeroReturnVacant!0 (x!52461 lt!254024) (index!23529 lt!254024) (index!23529 lt!254024) (select (arr!16869 a!3118) j!142) a!3118 mask!3119) lt!254195)))

(assert (= (and d!83635 c!64557) b!559220))

(assert (= (and d!83635 (not c!64557)) b!559222))

(assert (= (and b!559222 c!64558) b!559221))

(assert (= (and b!559222 (not c!64558)) b!559224))

(assert (= (and b!559224 c!64556) b!559223))

(assert (= (and b!559224 (not c!64556)) b!559225))

(declare-fun m!537081 () Bool)

(assert (=> b!559225 m!537081))

(assert (=> b!559225 m!537081))

(assert (=> b!559225 m!536793))

(declare-fun m!537083 () Bool)

(assert (=> b!559225 m!537083))

(declare-fun m!537087 () Bool)

(assert (=> d!83635 m!537087))

(declare-fun m!537091 () Bool)

(assert (=> d!83635 m!537091))

(assert (=> d!83635 m!536791))

(assert (=> d!83635 m!536805))

(assert (=> b!558845 d!83635))

(declare-fun d!83647 () Bool)

(declare-fun res!350801 () Bool)

(declare-fun e!322185 () Bool)

(assert (=> d!83647 (=> res!350801 e!322185)))

(assert (=> d!83647 (= res!350801 (= (select (arr!16869 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83647 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!322185)))

(declare-fun b!559236 () Bool)

(declare-fun e!322186 () Bool)

(assert (=> b!559236 (= e!322185 e!322186)))

(declare-fun res!350802 () Bool)

(assert (=> b!559236 (=> (not res!350802) (not e!322186))))

(assert (=> b!559236 (= res!350802 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17233 a!3118)))))

(declare-fun b!559237 () Bool)

(assert (=> b!559237 (= e!322186 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83647 (not res!350801)) b!559236))

(assert (= (and b!559236 res!350802) b!559237))

(assert (=> d!83647 m!536931))

(declare-fun m!537097 () Bool)

(assert (=> b!559237 m!537097))

(assert (=> b!558846 d!83647))

(declare-fun d!83651 () Bool)

(assert (=> d!83651 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51194 d!83651))

(declare-fun d!83653 () Bool)

(assert (=> d!83653 (= (array_inv!12643 a!3118) (bvsge (size!17233 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51194 d!83653))

(declare-fun d!83655 () Bool)

(assert (=> d!83655 (= (validKeyInArray!0 (select (arr!16869 a!3118) j!142)) (and (not (= (select (arr!16869 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16869 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558839 d!83655))

(push 1)

