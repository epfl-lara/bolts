; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51932 () Bool)

(assert start!51932)

(declare-fun res!358049 () Bool)

(declare-fun e!326440 () Bool)

(assert (=> start!51932 (=> (not res!358049) (not e!326440))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51932 (= res!358049 (validMask!0 mask!3119))))

(assert (=> start!51932 e!326440))

(assert (=> start!51932 true))

(declare-datatypes ((array!35580 0))(
  ( (array!35581 (arr!17082 (Array (_ BitVec 32) (_ BitVec 64))) (size!17446 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35580)

(declare-fun array_inv!12856 (array!35580) Bool)

(assert (=> start!51932 (array_inv!12856 a!3118)))

(declare-fun b!567308 () Bool)

(declare-fun res!358047 () Bool)

(declare-fun e!326439 () Bool)

(assert (=> b!567308 (=> (not res!358047) (not e!326439))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5538 0))(
  ( (MissingZero!5538 (index!24379 (_ BitVec 32))) (Found!5538 (index!24380 (_ BitVec 32))) (Intermediate!5538 (undefined!6350 Bool) (index!24381 (_ BitVec 32)) (x!53278 (_ BitVec 32))) (Undefined!5538) (MissingVacant!5538 (index!24382 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35580 (_ BitVec 32)) SeekEntryResult!5538)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567308 (= res!358047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17082 a!3118) j!142) mask!3119) (select (arr!17082 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17082 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17082 a!3118) i!1132 k!1914) j!142) (array!35581 (store (arr!17082 a!3118) i!1132 k!1914) (size!17446 a!3118)) mask!3119)))))

(declare-fun b!567309 () Bool)

(assert (=> b!567309 (= e!326439 (not true))))

(declare-fun e!326438 () Bool)

(assert (=> b!567309 e!326438))

(declare-fun res!358052 () Bool)

(assert (=> b!567309 (=> (not res!358052) (not e!326438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35580 (_ BitVec 32)) Bool)

(assert (=> b!567309 (= res!358052 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17778 0))(
  ( (Unit!17779) )
))
(declare-fun lt!258491 () Unit!17778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17778)

(assert (=> b!567309 (= lt!258491 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567310 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35580 (_ BitVec 32)) SeekEntryResult!5538)

(assert (=> b!567310 (= e!326438 (= (seekEntryOrOpen!0 (select (arr!17082 a!3118) j!142) a!3118 mask!3119) (Found!5538 j!142)))))

(declare-fun b!567311 () Bool)

(declare-fun res!358045 () Bool)

(assert (=> b!567311 (=> (not res!358045) (not e!326440))))

(declare-fun arrayContainsKey!0 (array!35580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567311 (= res!358045 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567312 () Bool)

(declare-fun res!358044 () Bool)

(assert (=> b!567312 (=> (not res!358044) (not e!326439))))

(assert (=> b!567312 (= res!358044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567313 () Bool)

(assert (=> b!567313 (= e!326440 e!326439)))

(declare-fun res!358050 () Bool)

(assert (=> b!567313 (=> (not res!358050) (not e!326439))))

(declare-fun lt!258490 () SeekEntryResult!5538)

(assert (=> b!567313 (= res!358050 (or (= lt!258490 (MissingZero!5538 i!1132)) (= lt!258490 (MissingVacant!5538 i!1132))))))

(assert (=> b!567313 (= lt!258490 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567314 () Bool)

(declare-fun res!358048 () Bool)

(assert (=> b!567314 (=> (not res!358048) (not e!326439))))

(declare-datatypes ((List!11215 0))(
  ( (Nil!11212) (Cons!11211 (h!12223 (_ BitVec 64)) (t!17451 List!11215)) )
))
(declare-fun arrayNoDuplicates!0 (array!35580 (_ BitVec 32) List!11215) Bool)

(assert (=> b!567314 (= res!358048 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11212))))

(declare-fun b!567315 () Bool)

(declare-fun res!358046 () Bool)

(assert (=> b!567315 (=> (not res!358046) (not e!326440))))

(assert (=> b!567315 (= res!358046 (and (= (size!17446 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17446 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17446 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567316 () Bool)

(declare-fun res!358043 () Bool)

(assert (=> b!567316 (=> (not res!358043) (not e!326440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567316 (= res!358043 (validKeyInArray!0 k!1914))))

(declare-fun b!567317 () Bool)

(declare-fun res!358051 () Bool)

(assert (=> b!567317 (=> (not res!358051) (not e!326440))))

(assert (=> b!567317 (= res!358051 (validKeyInArray!0 (select (arr!17082 a!3118) j!142)))))

(assert (= (and start!51932 res!358049) b!567315))

(assert (= (and b!567315 res!358046) b!567317))

(assert (= (and b!567317 res!358051) b!567316))

(assert (= (and b!567316 res!358043) b!567311))

(assert (= (and b!567311 res!358045) b!567313))

(assert (= (and b!567313 res!358050) b!567312))

(assert (= (and b!567312 res!358044) b!567314))

(assert (= (and b!567314 res!358048) b!567308))

(assert (= (and b!567308 res!358047) b!567309))

(assert (= (and b!567309 res!358052) b!567310))

(declare-fun m!545947 () Bool)

(assert (=> b!567317 m!545947))

(assert (=> b!567317 m!545947))

(declare-fun m!545949 () Bool)

(assert (=> b!567317 m!545949))

(assert (=> b!567310 m!545947))

(assert (=> b!567310 m!545947))

(declare-fun m!545951 () Bool)

(assert (=> b!567310 m!545951))

(declare-fun m!545953 () Bool)

(assert (=> b!567316 m!545953))

(declare-fun m!545955 () Bool)

(assert (=> start!51932 m!545955))

(declare-fun m!545957 () Bool)

(assert (=> start!51932 m!545957))

(declare-fun m!545959 () Bool)

(assert (=> b!567311 m!545959))

(declare-fun m!545961 () Bool)

(assert (=> b!567309 m!545961))

(declare-fun m!545963 () Bool)

(assert (=> b!567309 m!545963))

(declare-fun m!545965 () Bool)

(assert (=> b!567313 m!545965))

(declare-fun m!545967 () Bool)

(assert (=> b!567314 m!545967))

(assert (=> b!567308 m!545947))

(declare-fun m!545969 () Bool)

(assert (=> b!567308 m!545969))

(assert (=> b!567308 m!545947))

(declare-fun m!545971 () Bool)

(assert (=> b!567308 m!545971))

(declare-fun m!545973 () Bool)

(assert (=> b!567308 m!545973))

(assert (=> b!567308 m!545971))

(declare-fun m!545975 () Bool)

(assert (=> b!567308 m!545975))

(assert (=> b!567308 m!545969))

(assert (=> b!567308 m!545947))

(declare-fun m!545977 () Bool)

(assert (=> b!567308 m!545977))

(declare-fun m!545979 () Bool)

(assert (=> b!567308 m!545979))

(assert (=> b!567308 m!545971))

(assert (=> b!567308 m!545973))

(declare-fun m!545981 () Bool)

(assert (=> b!567312 m!545981))

(push 1)

