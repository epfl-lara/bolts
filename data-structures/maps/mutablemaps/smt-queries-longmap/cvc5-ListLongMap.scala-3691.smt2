; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50780 () Bool)

(assert start!50780)

(declare-fun b!555084 () Bool)

(declare-fun res!347646 () Bool)

(declare-fun e!319960 () Bool)

(assert (=> b!555084 (=> (not res!347646) (not e!319960))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34959 0))(
  ( (array!34960 (arr!16785 (Array (_ BitVec 32) (_ BitVec 64))) (size!17149 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34959)

(assert (=> b!555084 (= res!347646 (and (= (size!17149 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17149 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17149 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555085 () Bool)

(declare-fun res!347647 () Bool)

(declare-fun e!319958 () Bool)

(assert (=> b!555085 (=> (not res!347647) (not e!319958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34959 (_ BitVec 32)) Bool)

(assert (=> b!555085 (= res!347647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555086 () Bool)

(declare-fun res!347654 () Bool)

(assert (=> b!555086 (=> (not res!347654) (not e!319960))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555086 (= res!347654 (validKeyInArray!0 k!1914))))

(declare-fun b!555087 () Bool)

(declare-fun res!347653 () Bool)

(assert (=> b!555087 (=> (not res!347653) (not e!319960))))

(assert (=> b!555087 (= res!347653 (validKeyInArray!0 (select (arr!16785 a!3118) j!142)))))

(declare-fun b!555088 () Bool)

(assert (=> b!555088 (= e!319960 e!319958)))

(declare-fun res!347652 () Bool)

(assert (=> b!555088 (=> (not res!347652) (not e!319958))))

(declare-datatypes ((SeekEntryResult!5241 0))(
  ( (MissingZero!5241 (index!23191 (_ BitVec 32))) (Found!5241 (index!23192 (_ BitVec 32))) (Intermediate!5241 (undefined!6053 Bool) (index!23193 (_ BitVec 32)) (x!52126 (_ BitVec 32))) (Undefined!5241) (MissingVacant!5241 (index!23194 (_ BitVec 32))) )
))
(declare-fun lt!252271 () SeekEntryResult!5241)

(assert (=> b!555088 (= res!347652 (or (= lt!252271 (MissingZero!5241 i!1132)) (= lt!252271 (MissingVacant!5241 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34959 (_ BitVec 32)) SeekEntryResult!5241)

(assert (=> b!555088 (= lt!252271 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555089 () Bool)

(declare-fun res!347651 () Bool)

(assert (=> b!555089 (=> (not res!347651) (not e!319960))))

(declare-fun arrayContainsKey!0 (array!34959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555089 (= res!347651 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!347649 () Bool)

(assert (=> start!50780 (=> (not res!347649) (not e!319960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50780 (= res!347649 (validMask!0 mask!3119))))

(assert (=> start!50780 e!319960))

(assert (=> start!50780 true))

(declare-fun array_inv!12559 (array!34959) Bool)

(assert (=> start!50780 (array_inv!12559 a!3118)))

(declare-fun b!555090 () Bool)

(declare-fun res!347648 () Bool)

(assert (=> b!555090 (=> (not res!347648) (not e!319958))))

(declare-datatypes ((List!10918 0))(
  ( (Nil!10915) (Cons!10914 (h!11899 (_ BitVec 64)) (t!17154 List!10918)) )
))
(declare-fun arrayNoDuplicates!0 (array!34959 (_ BitVec 32) List!10918) Bool)

(assert (=> b!555090 (= res!347648 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10915))))

(declare-fun b!555091 () Bool)

(declare-fun e!319959 () Bool)

(assert (=> b!555091 (= e!319958 e!319959)))

(declare-fun res!347650 () Bool)

(assert (=> b!555091 (=> (not res!347650) (not e!319959))))

(declare-fun lt!252273 () SeekEntryResult!5241)

(declare-fun lt!252275 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34959 (_ BitVec 32)) SeekEntryResult!5241)

(assert (=> b!555091 (= res!347650 (= lt!252273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252275 (select (store (arr!16785 a!3118) i!1132 k!1914) j!142) (array!34960 (store (arr!16785 a!3118) i!1132 k!1914) (size!17149 a!3118)) mask!3119)))))

(declare-fun lt!252272 () (_ BitVec 32))

(assert (=> b!555091 (= lt!252273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252272 (select (arr!16785 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555091 (= lt!252275 (toIndex!0 (select (store (arr!16785 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555091 (= lt!252272 (toIndex!0 (select (arr!16785 a!3118) j!142) mask!3119))))

(declare-fun b!555092 () Bool)

(assert (=> b!555092 (= e!319959 (not true))))

(declare-fun lt!252274 () SeekEntryResult!5241)

(assert (=> b!555092 (and (= lt!252274 (Found!5241 j!142)) (or (undefined!6053 lt!252273) (not (is-Intermediate!5241 lt!252273)) (= (select (arr!16785 a!3118) (index!23193 lt!252273)) (select (arr!16785 a!3118) j!142)) (not (= (select (arr!16785 a!3118) (index!23193 lt!252273)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252274 (MissingZero!5241 (index!23193 lt!252273)))))))

(assert (=> b!555092 (= lt!252274 (seekEntryOrOpen!0 (select (arr!16785 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555092 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17256 0))(
  ( (Unit!17257) )
))
(declare-fun lt!252270 () Unit!17256)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17256)

(assert (=> b!555092 (= lt!252270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50780 res!347649) b!555084))

(assert (= (and b!555084 res!347646) b!555087))

(assert (= (and b!555087 res!347653) b!555086))

(assert (= (and b!555086 res!347654) b!555089))

(assert (= (and b!555089 res!347651) b!555088))

(assert (= (and b!555088 res!347652) b!555085))

(assert (= (and b!555085 res!347647) b!555090))

(assert (= (and b!555090 res!347648) b!555091))

(assert (= (and b!555091 res!347650) b!555092))

(declare-fun m!532741 () Bool)

(assert (=> b!555091 m!532741))

(declare-fun m!532743 () Bool)

(assert (=> b!555091 m!532743))

(assert (=> b!555091 m!532741))

(declare-fun m!532745 () Bool)

(assert (=> b!555091 m!532745))

(assert (=> b!555091 m!532745))

(declare-fun m!532747 () Bool)

(assert (=> b!555091 m!532747))

(declare-fun m!532749 () Bool)

(assert (=> b!555091 m!532749))

(assert (=> b!555091 m!532741))

(declare-fun m!532751 () Bool)

(assert (=> b!555091 m!532751))

(assert (=> b!555091 m!532745))

(declare-fun m!532753 () Bool)

(assert (=> b!555091 m!532753))

(declare-fun m!532755 () Bool)

(assert (=> b!555085 m!532755))

(declare-fun m!532757 () Bool)

(assert (=> b!555089 m!532757))

(declare-fun m!532759 () Bool)

(assert (=> b!555088 m!532759))

(assert (=> b!555087 m!532741))

(assert (=> b!555087 m!532741))

(declare-fun m!532761 () Bool)

(assert (=> b!555087 m!532761))

(declare-fun m!532763 () Bool)

(assert (=> start!50780 m!532763))

(declare-fun m!532765 () Bool)

(assert (=> start!50780 m!532765))

(declare-fun m!532767 () Bool)

(assert (=> b!555090 m!532767))

(declare-fun m!532769 () Bool)

(assert (=> b!555092 m!532769))

(assert (=> b!555092 m!532741))

(declare-fun m!532771 () Bool)

(assert (=> b!555092 m!532771))

(declare-fun m!532773 () Bool)

(assert (=> b!555092 m!532773))

(assert (=> b!555092 m!532741))

(declare-fun m!532775 () Bool)

(assert (=> b!555092 m!532775))

(declare-fun m!532777 () Bool)

(assert (=> b!555086 m!532777))

(push 1)

