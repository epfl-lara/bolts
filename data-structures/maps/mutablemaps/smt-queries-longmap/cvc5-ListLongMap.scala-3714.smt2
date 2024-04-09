; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51098 () Bool)

(assert start!51098)

(declare-fun b!557988 () Bool)

(declare-fun res!350006 () Bool)

(declare-fun e!321452 () Bool)

(assert (=> b!557988 (=> (not res!350006) (not e!321452))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35106 0))(
  ( (array!35107 (arr!16854 (Array (_ BitVec 32) (_ BitVec 64))) (size!17218 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35106)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!557988 (= res!350006 (and (= (size!17218 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17218 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17218 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!350007 () Bool)

(assert (=> start!51098 (=> (not res!350007) (not e!321452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51098 (= res!350007 (validMask!0 mask!3119))))

(assert (=> start!51098 e!321452))

(assert (=> start!51098 true))

(declare-fun array_inv!12628 (array!35106) Bool)

(assert (=> start!51098 (array_inv!12628 a!3118)))

(declare-fun b!557989 () Bool)

(declare-fun res!350011 () Bool)

(assert (=> b!557989 (=> (not res!350011) (not e!321452))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557989 (= res!350011 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557990 () Bool)

(declare-fun res!350012 () Bool)

(declare-fun e!321451 () Bool)

(assert (=> b!557990 (=> (not res!350012) (not e!321451))))

(declare-datatypes ((List!10987 0))(
  ( (Nil!10984) (Cons!10983 (h!11977 (_ BitVec 64)) (t!17223 List!10987)) )
))
(declare-fun arrayNoDuplicates!0 (array!35106 (_ BitVec 32) List!10987) Bool)

(assert (=> b!557990 (= res!350012 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10984))))

(declare-fun b!557991 () Bool)

(declare-fun res!350009 () Bool)

(assert (=> b!557991 (=> (not res!350009) (not e!321452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557991 (= res!350009 (validKeyInArray!0 k!1914))))

(declare-fun b!557992 () Bool)

(declare-fun res!350008 () Bool)

(assert (=> b!557992 (=> (not res!350008) (not e!321451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35106 (_ BitVec 32)) Bool)

(assert (=> b!557992 (= res!350008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557993 () Bool)

(assert (=> b!557993 (= e!321452 e!321451)))

(declare-fun res!350005 () Bool)

(assert (=> b!557993 (=> (not res!350005) (not e!321451))))

(declare-datatypes ((SeekEntryResult!5310 0))(
  ( (MissingZero!5310 (index!23467 (_ BitVec 32))) (Found!5310 (index!23468 (_ BitVec 32))) (Intermediate!5310 (undefined!6122 Bool) (index!23469 (_ BitVec 32)) (x!52397 (_ BitVec 32))) (Undefined!5310) (MissingVacant!5310 (index!23470 (_ BitVec 32))) )
))
(declare-fun lt!253604 () SeekEntryResult!5310)

(assert (=> b!557993 (= res!350005 (or (= lt!253604 (MissingZero!5310 i!1132)) (= lt!253604 (MissingVacant!5310 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35106 (_ BitVec 32)) SeekEntryResult!5310)

(assert (=> b!557993 (= lt!253604 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557994 () Bool)

(declare-fun e!321453 () Bool)

(assert (=> b!557994 (= e!321453 (validKeyInArray!0 (select (store (arr!16854 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!557995 () Bool)

(declare-fun res!350010 () Bool)

(assert (=> b!557995 (=> (not res!350010) (not e!321452))))

(assert (=> b!557995 (= res!350010 (validKeyInArray!0 (select (arr!16854 a!3118) j!142)))))

(declare-fun b!557996 () Bool)

(declare-fun e!321449 () Bool)

(assert (=> b!557996 (= e!321449 (not e!321453))))

(declare-fun res!350003 () Bool)

(assert (=> b!557996 (=> res!350003 e!321453)))

(declare-fun lt!253607 () SeekEntryResult!5310)

(assert (=> b!557996 (= res!350003 (or (undefined!6122 lt!253607) (not (is-Intermediate!5310 lt!253607)) (= (select (arr!16854 a!3118) (index!23469 lt!253607)) (select (arr!16854 a!3118) j!142)) (= (select (arr!16854 a!3118) (index!23469 lt!253607)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!321450 () Bool)

(assert (=> b!557996 e!321450))

(declare-fun res!350002 () Bool)

(assert (=> b!557996 (=> (not res!350002) (not e!321450))))

(declare-fun lt!253602 () SeekEntryResult!5310)

(assert (=> b!557996 (= res!350002 (= lt!253602 (Found!5310 j!142)))))

(assert (=> b!557996 (= lt!253602 (seekEntryOrOpen!0 (select (arr!16854 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557996 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17394 0))(
  ( (Unit!17395) )
))
(declare-fun lt!253605 () Unit!17394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35106 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17394)

(assert (=> b!557996 (= lt!253605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557997 () Bool)

(declare-fun e!321454 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35106 (_ BitVec 32)) SeekEntryResult!5310)

(assert (=> b!557997 (= e!321454 (= lt!253602 (seekKeyOrZeroReturnVacant!0 (x!52397 lt!253607) (index!23469 lt!253607) (index!23469 lt!253607) (select (arr!16854 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557998 () Bool)

(assert (=> b!557998 (= e!321451 e!321449)))

(declare-fun res!350004 () Bool)

(assert (=> b!557998 (=> (not res!350004) (not e!321449))))

(declare-fun lt!253603 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35106 (_ BitVec 32)) SeekEntryResult!5310)

(assert (=> b!557998 (= res!350004 (= lt!253607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253603 (select (store (arr!16854 a!3118) i!1132 k!1914) j!142) (array!35107 (store (arr!16854 a!3118) i!1132 k!1914) (size!17218 a!3118)) mask!3119)))))

(declare-fun lt!253606 () (_ BitVec 32))

(assert (=> b!557998 (= lt!253607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253606 (select (arr!16854 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557998 (= lt!253603 (toIndex!0 (select (store (arr!16854 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557998 (= lt!253606 (toIndex!0 (select (arr!16854 a!3118) j!142) mask!3119))))

(declare-fun b!557999 () Bool)

(assert (=> b!557999 (= e!321450 e!321454)))

(declare-fun res!350001 () Bool)

(assert (=> b!557999 (=> res!350001 e!321454)))

(assert (=> b!557999 (= res!350001 (or (undefined!6122 lt!253607) (not (is-Intermediate!5310 lt!253607)) (= (select (arr!16854 a!3118) (index!23469 lt!253607)) (select (arr!16854 a!3118) j!142)) (= (select (arr!16854 a!3118) (index!23469 lt!253607)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51098 res!350007) b!557988))

(assert (= (and b!557988 res!350006) b!557995))

(assert (= (and b!557995 res!350010) b!557991))

(assert (= (and b!557991 res!350009) b!557989))

(assert (= (and b!557989 res!350011) b!557993))

(assert (= (and b!557993 res!350005) b!557992))

(assert (= (and b!557992 res!350008) b!557990))

(assert (= (and b!557990 res!350012) b!557998))

(assert (= (and b!557998 res!350004) b!557996))

(assert (= (and b!557996 res!350002) b!557999))

(assert (= (and b!557999 (not res!350001)) b!557997))

(assert (= (and b!557996 (not res!350003)) b!557994))

(declare-fun m!535951 () Bool)

(assert (=> b!557990 m!535951))

(declare-fun m!535953 () Bool)

(assert (=> b!557989 m!535953))

(declare-fun m!535955 () Bool)

(assert (=> b!557994 m!535955))

(declare-fun m!535957 () Bool)

(assert (=> b!557994 m!535957))

(assert (=> b!557994 m!535957))

(declare-fun m!535959 () Bool)

(assert (=> b!557994 m!535959))

(declare-fun m!535961 () Bool)

(assert (=> b!557999 m!535961))

(declare-fun m!535963 () Bool)

(assert (=> b!557999 m!535963))

(declare-fun m!535965 () Bool)

(assert (=> start!51098 m!535965))

(declare-fun m!535967 () Bool)

(assert (=> start!51098 m!535967))

(declare-fun m!535969 () Bool)

(assert (=> b!557993 m!535969))

(assert (=> b!557997 m!535963))

(assert (=> b!557997 m!535963))

(declare-fun m!535971 () Bool)

(assert (=> b!557997 m!535971))

(declare-fun m!535973 () Bool)

(assert (=> b!557991 m!535973))

(declare-fun m!535975 () Bool)

(assert (=> b!557992 m!535975))

(assert (=> b!557995 m!535963))

(assert (=> b!557995 m!535963))

(declare-fun m!535977 () Bool)

(assert (=> b!557995 m!535977))

(assert (=> b!557996 m!535963))

(assert (=> b!557996 m!535961))

(declare-fun m!535979 () Bool)

(assert (=> b!557996 m!535979))

(declare-fun m!535981 () Bool)

(assert (=> b!557996 m!535981))

(assert (=> b!557996 m!535963))

(declare-fun m!535983 () Bool)

(assert (=> b!557996 m!535983))

(assert (=> b!557998 m!535963))

(declare-fun m!535985 () Bool)

(assert (=> b!557998 m!535985))

(assert (=> b!557998 m!535963))

(declare-fun m!535987 () Bool)

(assert (=> b!557998 m!535987))

(assert (=> b!557998 m!535963))

(assert (=> b!557998 m!535957))

(declare-fun m!535989 () Bool)

(assert (=> b!557998 m!535989))

(assert (=> b!557998 m!535957))

(assert (=> b!557998 m!535955))

(assert (=> b!557998 m!535957))

(declare-fun m!535991 () Bool)

(assert (=> b!557998 m!535991))

(push 1)

