; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51770 () Bool)

(assert start!51770)

(declare-fun b!566078 () Bool)

(declare-fun res!357202 () Bool)

(declare-fun e!325786 () Bool)

(assert (=> b!566078 (=> (not res!357202) (not e!325786))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35532 0))(
  ( (array!35533 (arr!17061 (Array (_ BitVec 32) (_ BitVec 64))) (size!17425 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35532)

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5517 0))(
  ( (MissingZero!5517 (index!24295 (_ BitVec 32))) (Found!5517 (index!24296 (_ BitVec 32))) (Intermediate!5517 (undefined!6329 Bool) (index!24297 (_ BitVec 32)) (x!53189 (_ BitVec 32))) (Undefined!5517) (MissingVacant!5517 (index!24298 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35532 (_ BitVec 32)) SeekEntryResult!5517)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566078 (= res!357202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17061 a!3118) j!142) mask!3119) (select (arr!17061 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17061 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17061 a!3118) i!1132 k!1914) j!142) (array!35533 (store (arr!17061 a!3118) i!1132 k!1914) (size!17425 a!3118)) mask!3119)))))

(declare-fun b!566079 () Bool)

(declare-fun e!325787 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35532 (_ BitVec 32)) SeekEntryResult!5517)

(assert (=> b!566079 (= e!325787 (= (seekEntryOrOpen!0 (select (arr!17061 a!3118) j!142) a!3118 mask!3119) (Found!5517 j!142)))))

(declare-fun b!566080 () Bool)

(declare-fun e!325789 () Bool)

(assert (=> b!566080 (= e!325789 e!325786)))

(declare-fun res!357201 () Bool)

(assert (=> b!566080 (=> (not res!357201) (not e!325786))))

(declare-fun lt!258016 () SeekEntryResult!5517)

(assert (=> b!566080 (= res!357201 (or (= lt!258016 (MissingZero!5517 i!1132)) (= lt!258016 (MissingVacant!5517 i!1132))))))

(assert (=> b!566080 (= lt!258016 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!357205 () Bool)

(assert (=> start!51770 (=> (not res!357205) (not e!325789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51770 (= res!357205 (validMask!0 mask!3119))))

(assert (=> start!51770 e!325789))

(assert (=> start!51770 true))

(declare-fun array_inv!12835 (array!35532) Bool)

(assert (=> start!51770 (array_inv!12835 a!3118)))

(declare-fun b!566081 () Bool)

(declare-fun res!357199 () Bool)

(assert (=> b!566081 (=> (not res!357199) (not e!325789))))

(declare-fun arrayContainsKey!0 (array!35532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566081 (= res!357199 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566082 () Bool)

(declare-fun res!357200 () Bool)

(assert (=> b!566082 (=> (not res!357200) (not e!325786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35532 (_ BitVec 32)) Bool)

(assert (=> b!566082 (= res!357200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566083 () Bool)

(declare-fun res!357206 () Bool)

(assert (=> b!566083 (=> (not res!357206) (not e!325789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566083 (= res!357206 (validKeyInArray!0 (select (arr!17061 a!3118) j!142)))))

(declare-fun b!566084 () Bool)

(assert (=> b!566084 (= e!325786 (not true))))

(assert (=> b!566084 e!325787))

(declare-fun res!357198 () Bool)

(assert (=> b!566084 (=> (not res!357198) (not e!325787))))

(assert (=> b!566084 (= res!357198 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17736 0))(
  ( (Unit!17737) )
))
(declare-fun lt!258017 () Unit!17736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17736)

(assert (=> b!566084 (= lt!258017 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566085 () Bool)

(declare-fun res!357203 () Bool)

(assert (=> b!566085 (=> (not res!357203) (not e!325789))))

(assert (=> b!566085 (= res!357203 (and (= (size!17425 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17425 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17425 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566086 () Bool)

(declare-fun res!357197 () Bool)

(assert (=> b!566086 (=> (not res!357197) (not e!325789))))

(assert (=> b!566086 (= res!357197 (validKeyInArray!0 k!1914))))

(declare-fun b!566087 () Bool)

(declare-fun res!357204 () Bool)

(assert (=> b!566087 (=> (not res!357204) (not e!325786))))

(declare-datatypes ((List!11194 0))(
  ( (Nil!11191) (Cons!11190 (h!12196 (_ BitVec 64)) (t!17430 List!11194)) )
))
(declare-fun arrayNoDuplicates!0 (array!35532 (_ BitVec 32) List!11194) Bool)

(assert (=> b!566087 (= res!357204 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11191))))

(assert (= (and start!51770 res!357205) b!566085))

(assert (= (and b!566085 res!357203) b!566083))

(assert (= (and b!566083 res!357206) b!566086))

(assert (= (and b!566086 res!357197) b!566081))

(assert (= (and b!566081 res!357199) b!566080))

(assert (= (and b!566080 res!357201) b!566082))

(assert (= (and b!566082 res!357200) b!566087))

(assert (= (and b!566087 res!357204) b!566078))

(assert (= (and b!566078 res!357202) b!566084))

(assert (= (and b!566084 res!357198) b!566079))

(declare-fun m!544741 () Bool)

(assert (=> b!566082 m!544741))

(declare-fun m!544743 () Bool)

(assert (=> b!566080 m!544743))

(declare-fun m!544745 () Bool)

(assert (=> b!566078 m!544745))

(declare-fun m!544747 () Bool)

(assert (=> b!566078 m!544747))

(assert (=> b!566078 m!544745))

(declare-fun m!544749 () Bool)

(assert (=> b!566078 m!544749))

(declare-fun m!544751 () Bool)

(assert (=> b!566078 m!544751))

(assert (=> b!566078 m!544749))

(declare-fun m!544753 () Bool)

(assert (=> b!566078 m!544753))

(assert (=> b!566078 m!544747))

(assert (=> b!566078 m!544745))

(declare-fun m!544755 () Bool)

(assert (=> b!566078 m!544755))

(declare-fun m!544757 () Bool)

(assert (=> b!566078 m!544757))

(assert (=> b!566078 m!544749))

(assert (=> b!566078 m!544751))

(declare-fun m!544759 () Bool)

(assert (=> b!566087 m!544759))

(declare-fun m!544761 () Bool)

(assert (=> b!566084 m!544761))

(declare-fun m!544763 () Bool)

(assert (=> b!566084 m!544763))

(assert (=> b!566083 m!544745))

(assert (=> b!566083 m!544745))

(declare-fun m!544765 () Bool)

(assert (=> b!566083 m!544765))

(declare-fun m!544767 () Bool)

(assert (=> b!566081 m!544767))

(assert (=> b!566079 m!544745))

(assert (=> b!566079 m!544745))

(declare-fun m!544769 () Bool)

(assert (=> b!566079 m!544769))

(declare-fun m!544771 () Bool)

(assert (=> start!51770 m!544771))

(declare-fun m!544773 () Bool)

(assert (=> start!51770 m!544773))

(declare-fun m!544775 () Bool)

(assert (=> b!566086 m!544775))

(push 1)

