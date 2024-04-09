; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52184 () Bool)

(assert start!52184)

(declare-fun b!569205 () Bool)

(declare-fun e!327455 () Bool)

(assert (=> b!569205 (= e!327455 (not true))))

(declare-datatypes ((SeekEntryResult!5574 0))(
  ( (MissingZero!5574 (index!24523 (_ BitVec 32))) (Found!5574 (index!24524 (_ BitVec 32))) (Intermediate!5574 (undefined!6386 Bool) (index!24525 (_ BitVec 32)) (x!53428 (_ BitVec 32))) (Undefined!5574) (MissingVacant!5574 (index!24526 (_ BitVec 32))) )
))
(declare-fun lt!259481 () SeekEntryResult!5574)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259479 () SeekEntryResult!5574)

(declare-datatypes ((array!35661 0))(
  ( (array!35662 (arr!17118 (Array (_ BitVec 32) (_ BitVec 64))) (size!17482 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35661)

(assert (=> b!569205 (and (= lt!259481 (Found!5574 j!142)) (or (undefined!6386 lt!259479) (not (is-Intermediate!5574 lt!259479)) (= (select (arr!17118 a!3118) (index!24525 lt!259479)) (select (arr!17118 a!3118) j!142)) (not (= (select (arr!17118 a!3118) (index!24525 lt!259479)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259481 (MissingZero!5574 (index!24525 lt!259479)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35661 (_ BitVec 32)) SeekEntryResult!5574)

(assert (=> b!569205 (= lt!259481 (seekEntryOrOpen!0 (select (arr!17118 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35661 (_ BitVec 32)) Bool)

(assert (=> b!569205 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17850 0))(
  ( (Unit!17851) )
))
(declare-fun lt!259484 () Unit!17850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17850)

(assert (=> b!569205 (= lt!259484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569206 () Bool)

(declare-fun e!327454 () Bool)

(declare-fun e!327457 () Bool)

(assert (=> b!569206 (= e!327454 e!327457)))

(declare-fun res!359375 () Bool)

(assert (=> b!569206 (=> (not res!359375) (not e!327457))))

(declare-fun lt!259483 () SeekEntryResult!5574)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569206 (= res!359375 (or (= lt!259483 (MissingZero!5574 i!1132)) (= lt!259483 (MissingVacant!5574 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!569206 (= lt!259483 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569207 () Bool)

(declare-fun res!359373 () Bool)

(assert (=> b!569207 (=> (not res!359373) (not e!327457))))

(assert (=> b!569207 (= res!359373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569208 () Bool)

(assert (=> b!569208 (= e!327457 e!327455)))

(declare-fun res!359381 () Bool)

(assert (=> b!569208 (=> (not res!359381) (not e!327455))))

(declare-fun lt!259480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35661 (_ BitVec 32)) SeekEntryResult!5574)

(assert (=> b!569208 (= res!359381 (= lt!259479 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259480 (select (store (arr!17118 a!3118) i!1132 k!1914) j!142) (array!35662 (store (arr!17118 a!3118) i!1132 k!1914) (size!17482 a!3118)) mask!3119)))))

(declare-fun lt!259482 () (_ BitVec 32))

(assert (=> b!569208 (= lt!259479 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259482 (select (arr!17118 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569208 (= lt!259480 (toIndex!0 (select (store (arr!17118 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569208 (= lt!259482 (toIndex!0 (select (arr!17118 a!3118) j!142) mask!3119))))

(declare-fun res!359377 () Bool)

(assert (=> start!52184 (=> (not res!359377) (not e!327454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52184 (= res!359377 (validMask!0 mask!3119))))

(assert (=> start!52184 e!327454))

(assert (=> start!52184 true))

(declare-fun array_inv!12892 (array!35661) Bool)

(assert (=> start!52184 (array_inv!12892 a!3118)))

(declare-fun b!569209 () Bool)

(declare-fun res!359380 () Bool)

(assert (=> b!569209 (=> (not res!359380) (not e!327454))))

(declare-fun arrayContainsKey!0 (array!35661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569209 (= res!359380 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569210 () Bool)

(declare-fun res!359374 () Bool)

(assert (=> b!569210 (=> (not res!359374) (not e!327454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569210 (= res!359374 (validKeyInArray!0 (select (arr!17118 a!3118) j!142)))))

(declare-fun b!569211 () Bool)

(declare-fun res!359378 () Bool)

(assert (=> b!569211 (=> (not res!359378) (not e!327454))))

(assert (=> b!569211 (= res!359378 (validKeyInArray!0 k!1914))))

(declare-fun b!569212 () Bool)

(declare-fun res!359379 () Bool)

(assert (=> b!569212 (=> (not res!359379) (not e!327454))))

(assert (=> b!569212 (= res!359379 (and (= (size!17482 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17482 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17482 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569213 () Bool)

(declare-fun res!359376 () Bool)

(assert (=> b!569213 (=> (not res!359376) (not e!327457))))

(declare-datatypes ((List!11251 0))(
  ( (Nil!11248) (Cons!11247 (h!12268 (_ BitVec 64)) (t!17487 List!11251)) )
))
(declare-fun arrayNoDuplicates!0 (array!35661 (_ BitVec 32) List!11251) Bool)

(assert (=> b!569213 (= res!359376 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11248))))

(assert (= (and start!52184 res!359377) b!569212))

(assert (= (and b!569212 res!359379) b!569210))

(assert (= (and b!569210 res!359374) b!569211))

(assert (= (and b!569211 res!359378) b!569209))

(assert (= (and b!569209 res!359380) b!569206))

(assert (= (and b!569206 res!359375) b!569207))

(assert (= (and b!569207 res!359373) b!569213))

(assert (= (and b!569213 res!359376) b!569208))

(assert (= (and b!569208 res!359381) b!569205))

(declare-fun m!547957 () Bool)

(assert (=> b!569213 m!547957))

(declare-fun m!547959 () Bool)

(assert (=> b!569209 m!547959))

(declare-fun m!547961 () Bool)

(assert (=> b!569206 m!547961))

(declare-fun m!547963 () Bool)

(assert (=> b!569210 m!547963))

(assert (=> b!569210 m!547963))

(declare-fun m!547965 () Bool)

(assert (=> b!569210 m!547965))

(assert (=> b!569208 m!547963))

(declare-fun m!547967 () Bool)

(assert (=> b!569208 m!547967))

(assert (=> b!569208 m!547963))

(declare-fun m!547969 () Bool)

(assert (=> b!569208 m!547969))

(assert (=> b!569208 m!547969))

(declare-fun m!547971 () Bool)

(assert (=> b!569208 m!547971))

(assert (=> b!569208 m!547963))

(declare-fun m!547973 () Bool)

(assert (=> b!569208 m!547973))

(declare-fun m!547975 () Bool)

(assert (=> b!569208 m!547975))

(assert (=> b!569208 m!547969))

(declare-fun m!547977 () Bool)

(assert (=> b!569208 m!547977))

(declare-fun m!547979 () Bool)

(assert (=> b!569207 m!547979))

(assert (=> b!569205 m!547963))

(declare-fun m!547981 () Bool)

(assert (=> b!569205 m!547981))

(declare-fun m!547983 () Bool)

(assert (=> b!569205 m!547983))

(declare-fun m!547985 () Bool)

(assert (=> b!569205 m!547985))

(assert (=> b!569205 m!547963))

(declare-fun m!547987 () Bool)

(assert (=> b!569205 m!547987))

(declare-fun m!547989 () Bool)

(assert (=> b!569211 m!547989))

(declare-fun m!547991 () Bool)

(assert (=> start!52184 m!547991))

(declare-fun m!547993 () Bool)

(assert (=> start!52184 m!547993))

(push 1)

