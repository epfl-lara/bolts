; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51360 () Bool)

(assert start!51360)

(declare-fun b!560165 () Bool)

(declare-fun res!351474 () Bool)

(declare-fun e!322750 () Bool)

(assert (=> b!560165 (=> (not res!351474) (not e!322750))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560165 (= res!351474 (validKeyInArray!0 k!1914))))

(declare-fun res!351470 () Bool)

(assert (=> start!51360 (=> (not res!351470) (not e!322750))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51360 (= res!351470 (validMask!0 mask!3119))))

(assert (=> start!51360 e!322750))

(assert (=> start!51360 true))

(declare-datatypes ((array!35179 0))(
  ( (array!35180 (arr!16886 (Array (_ BitVec 32) (_ BitVec 64))) (size!17250 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35179)

(declare-fun array_inv!12660 (array!35179) Bool)

(assert (=> start!51360 (array_inv!12660 a!3118)))

(declare-fun b!560166 () Bool)

(declare-fun e!322751 () Bool)

(declare-fun e!322755 () Bool)

(assert (=> b!560166 (= e!322751 e!322755)))

(declare-fun res!351469 () Bool)

(assert (=> b!560166 (=> res!351469 e!322755)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!254728 () (_ BitVec 64))

(assert (=> b!560166 (= res!351469 (or (= lt!254728 (select (arr!16886 a!3118) j!142)) (= lt!254728 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5342 0))(
  ( (MissingZero!5342 (index!23595 (_ BitVec 32))) (Found!5342 (index!23596 (_ BitVec 32))) (Intermediate!5342 (undefined!6154 Bool) (index!23597 (_ BitVec 32)) (x!52536 (_ BitVec 32))) (Undefined!5342) (MissingVacant!5342 (index!23598 (_ BitVec 32))) )
))
(declare-fun lt!254730 () SeekEntryResult!5342)

(assert (=> b!560166 (= lt!254728 (select (arr!16886 a!3118) (index!23597 lt!254730)))))

(declare-fun b!560167 () Bool)

(declare-fun res!351472 () Bool)

(assert (=> b!560167 (=> (not res!351472) (not e!322750))))

(assert (=> b!560167 (= res!351472 (validKeyInArray!0 (select (arr!16886 a!3118) j!142)))))

(declare-fun b!560168 () Bool)

(declare-fun e!322749 () Bool)

(assert (=> b!560168 (= e!322755 e!322749)))

(declare-fun res!351479 () Bool)

(assert (=> b!560168 (=> (not res!351479) (not e!322749))))

(declare-fun lt!254731 () SeekEntryResult!5342)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35179 (_ BitVec 32)) SeekEntryResult!5342)

(assert (=> b!560168 (= res!351479 (= lt!254731 (seekKeyOrZeroReturnVacant!0 (x!52536 lt!254730) (index!23597 lt!254730) (index!23597 lt!254730) (select (arr!16886 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560169 () Bool)

(declare-fun res!351475 () Bool)

(declare-fun e!322752 () Bool)

(assert (=> b!560169 (=> (not res!351475) (not e!322752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35179 (_ BitVec 32)) Bool)

(assert (=> b!560169 (= res!351475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560170 () Bool)

(declare-fun e!322753 () Bool)

(assert (=> b!560170 (= e!322752 e!322753)))

(declare-fun res!351471 () Bool)

(assert (=> b!560170 (=> (not res!351471) (not e!322753))))

(declare-fun lt!254724 () array!35179)

(declare-fun lt!254726 () (_ BitVec 32))

(declare-fun lt!254725 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35179 (_ BitVec 32)) SeekEntryResult!5342)

(assert (=> b!560170 (= res!351471 (= lt!254730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254726 lt!254725 lt!254724 mask!3119)))))

(declare-fun lt!254732 () (_ BitVec 32))

(assert (=> b!560170 (= lt!254730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254732 (select (arr!16886 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560170 (= lt!254726 (toIndex!0 lt!254725 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560170 (= lt!254725 (select (store (arr!16886 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560170 (= lt!254732 (toIndex!0 (select (arr!16886 a!3118) j!142) mask!3119))))

(assert (=> b!560170 (= lt!254724 (array!35180 (store (arr!16886 a!3118) i!1132 k!1914) (size!17250 a!3118)))))

(declare-fun b!560171 () Bool)

(declare-fun res!351467 () Bool)

(assert (=> b!560171 (=> (not res!351467) (not e!322750))))

(declare-fun arrayContainsKey!0 (array!35179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560171 (= res!351467 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560172 () Bool)

(assert (=> b!560172 (= e!322750 e!322752)))

(declare-fun res!351478 () Bool)

(assert (=> b!560172 (=> (not res!351478) (not e!322752))))

(declare-fun lt!254729 () SeekEntryResult!5342)

(assert (=> b!560172 (= res!351478 (or (= lt!254729 (MissingZero!5342 i!1132)) (= lt!254729 (MissingVacant!5342 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35179 (_ BitVec 32)) SeekEntryResult!5342)

(assert (=> b!560172 (= lt!254729 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560173 () Bool)

(assert (=> b!560173 (= e!322753 (not true))))

(declare-fun e!322754 () Bool)

(assert (=> b!560173 e!322754))

(declare-fun res!351468 () Bool)

(assert (=> b!560173 (=> (not res!351468) (not e!322754))))

(assert (=> b!560173 (= res!351468 (= lt!254731 (Found!5342 j!142)))))

(assert (=> b!560173 (= lt!254731 (seekEntryOrOpen!0 (select (arr!16886 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560173 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17458 0))(
  ( (Unit!17459) )
))
(declare-fun lt!254727 () Unit!17458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17458)

(assert (=> b!560173 (= lt!254727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560174 () Bool)

(declare-fun res!351476 () Bool)

(assert (=> b!560174 (=> (not res!351476) (not e!322752))))

(declare-datatypes ((List!11019 0))(
  ( (Nil!11016) (Cons!11015 (h!12018 (_ BitVec 64)) (t!17255 List!11019)) )
))
(declare-fun arrayNoDuplicates!0 (array!35179 (_ BitVec 32) List!11019) Bool)

(assert (=> b!560174 (= res!351476 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11016))))

(declare-fun b!560175 () Bool)

(declare-fun res!351477 () Bool)

(assert (=> b!560175 (=> (not res!351477) (not e!322750))))

(assert (=> b!560175 (= res!351477 (and (= (size!17250 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17250 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17250 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560176 () Bool)

(assert (=> b!560176 (= e!322749 (= (seekEntryOrOpen!0 lt!254725 lt!254724 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52536 lt!254730) (index!23597 lt!254730) (index!23597 lt!254730) lt!254725 lt!254724 mask!3119)))))

(declare-fun b!560177 () Bool)

(assert (=> b!560177 (= e!322754 e!322751)))

(declare-fun res!351473 () Bool)

(assert (=> b!560177 (=> res!351473 e!322751)))

(assert (=> b!560177 (= res!351473 (or (undefined!6154 lt!254730) (not (is-Intermediate!5342 lt!254730))))))

(assert (= (and start!51360 res!351470) b!560175))

(assert (= (and b!560175 res!351477) b!560167))

(assert (= (and b!560167 res!351472) b!560165))

(assert (= (and b!560165 res!351474) b!560171))

(assert (= (and b!560171 res!351467) b!560172))

(assert (= (and b!560172 res!351478) b!560169))

(assert (= (and b!560169 res!351475) b!560174))

(assert (= (and b!560174 res!351476) b!560170))

(assert (= (and b!560170 res!351471) b!560173))

(assert (= (and b!560173 res!351468) b!560177))

(assert (= (and b!560177 (not res!351473)) b!560166))

(assert (= (and b!560166 (not res!351469)) b!560168))

(assert (= (and b!560168 res!351479) b!560176))

(declare-fun m!537959 () Bool)

(assert (=> b!560169 m!537959))

(declare-fun m!537961 () Bool)

(assert (=> b!560172 m!537961))

(declare-fun m!537963 () Bool)

(assert (=> start!51360 m!537963))

(declare-fun m!537965 () Bool)

(assert (=> start!51360 m!537965))

(declare-fun m!537967 () Bool)

(assert (=> b!560174 m!537967))

(declare-fun m!537969 () Bool)

(assert (=> b!560176 m!537969))

(declare-fun m!537971 () Bool)

(assert (=> b!560176 m!537971))

(declare-fun m!537973 () Bool)

(assert (=> b!560173 m!537973))

(assert (=> b!560173 m!537973))

(declare-fun m!537975 () Bool)

(assert (=> b!560173 m!537975))

(declare-fun m!537977 () Bool)

(assert (=> b!560173 m!537977))

(declare-fun m!537979 () Bool)

(assert (=> b!560173 m!537979))

(assert (=> b!560167 m!537973))

(assert (=> b!560167 m!537973))

(declare-fun m!537981 () Bool)

(assert (=> b!560167 m!537981))

(declare-fun m!537983 () Bool)

(assert (=> b!560165 m!537983))

(assert (=> b!560166 m!537973))

(declare-fun m!537985 () Bool)

(assert (=> b!560166 m!537985))

(assert (=> b!560168 m!537973))

(assert (=> b!560168 m!537973))

(declare-fun m!537987 () Bool)

(assert (=> b!560168 m!537987))

(declare-fun m!537989 () Bool)

(assert (=> b!560171 m!537989))

(assert (=> b!560170 m!537973))

(declare-fun m!537991 () Bool)

(assert (=> b!560170 m!537991))

(assert (=> b!560170 m!537973))

(declare-fun m!537993 () Bool)

(assert (=> b!560170 m!537993))

(assert (=> b!560170 m!537973))

(declare-fun m!537995 () Bool)

(assert (=> b!560170 m!537995))

(declare-fun m!537997 () Bool)

(assert (=> b!560170 m!537997))

(declare-fun m!537999 () Bool)

(assert (=> b!560170 m!537999))

(declare-fun m!538001 () Bool)

(assert (=> b!560170 m!538001))

(push 1)

