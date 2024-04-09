; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51710 () Bool)

(assert start!51710)

(declare-fun b!565178 () Bool)

(declare-fun e!325426 () Bool)

(assert (=> b!565178 (= e!325426 (not true))))

(declare-fun e!325427 () Bool)

(assert (=> b!565178 e!325427))

(declare-fun res!356297 () Bool)

(assert (=> b!565178 (=> (not res!356297) (not e!325427))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35472 0))(
  ( (array!35473 (arr!17031 (Array (_ BitVec 32) (_ BitVec 64))) (size!17395 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35472)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35472 (_ BitVec 32)) Bool)

(assert (=> b!565178 (= res!356297 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17676 0))(
  ( (Unit!17677) )
))
(declare-fun lt!257837 () Unit!17676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17676)

(assert (=> b!565178 (= lt!257837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!356300 () Bool)

(declare-fun e!325429 () Bool)

(assert (=> start!51710 (=> (not res!356300) (not e!325429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51710 (= res!356300 (validMask!0 mask!3119))))

(assert (=> start!51710 e!325429))

(assert (=> start!51710 true))

(declare-fun array_inv!12805 (array!35472) Bool)

(assert (=> start!51710 (array_inv!12805 a!3118)))

(declare-fun b!565179 () Bool)

(declare-fun res!356301 () Bool)

(assert (=> b!565179 (=> (not res!356301) (not e!325429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565179 (= res!356301 (validKeyInArray!0 (select (arr!17031 a!3118) j!142)))))

(declare-fun b!565180 () Bool)

(declare-fun res!356302 () Bool)

(assert (=> b!565180 (=> (not res!356302) (not e!325426))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5487 0))(
  ( (MissingZero!5487 (index!24175 (_ BitVec 32))) (Found!5487 (index!24176 (_ BitVec 32))) (Intermediate!5487 (undefined!6299 Bool) (index!24177 (_ BitVec 32)) (x!53079 (_ BitVec 32))) (Undefined!5487) (MissingVacant!5487 (index!24178 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35472 (_ BitVec 32)) SeekEntryResult!5487)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565180 (= res!356302 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17031 a!3118) j!142) mask!3119) (select (arr!17031 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17031 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17031 a!3118) i!1132 k!1914) j!142) (array!35473 (store (arr!17031 a!3118) i!1132 k!1914) (size!17395 a!3118)) mask!3119)))))

(declare-fun b!565181 () Bool)

(declare-fun res!356306 () Bool)

(assert (=> b!565181 (=> (not res!356306) (not e!325429))))

(assert (=> b!565181 (= res!356306 (and (= (size!17395 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17395 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17395 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565182 () Bool)

(declare-fun res!356298 () Bool)

(assert (=> b!565182 (=> (not res!356298) (not e!325426))))

(declare-datatypes ((List!11164 0))(
  ( (Nil!11161) (Cons!11160 (h!12166 (_ BitVec 64)) (t!17400 List!11164)) )
))
(declare-fun arrayNoDuplicates!0 (array!35472 (_ BitVec 32) List!11164) Bool)

(assert (=> b!565182 (= res!356298 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11161))))

(declare-fun b!565183 () Bool)

(assert (=> b!565183 (= e!325429 e!325426)))

(declare-fun res!356303 () Bool)

(assert (=> b!565183 (=> (not res!356303) (not e!325426))))

(declare-fun lt!257836 () SeekEntryResult!5487)

(assert (=> b!565183 (= res!356303 (or (= lt!257836 (MissingZero!5487 i!1132)) (= lt!257836 (MissingVacant!5487 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35472 (_ BitVec 32)) SeekEntryResult!5487)

(assert (=> b!565183 (= lt!257836 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565184 () Bool)

(declare-fun res!356304 () Bool)

(assert (=> b!565184 (=> (not res!356304) (not e!325426))))

(assert (=> b!565184 (= res!356304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565185 () Bool)

(assert (=> b!565185 (= e!325427 (= (seekEntryOrOpen!0 (select (arr!17031 a!3118) j!142) a!3118 mask!3119) (Found!5487 j!142)))))

(declare-fun b!565186 () Bool)

(declare-fun res!356299 () Bool)

(assert (=> b!565186 (=> (not res!356299) (not e!325429))))

(declare-fun arrayContainsKey!0 (array!35472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565186 (= res!356299 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565187 () Bool)

(declare-fun res!356305 () Bool)

(assert (=> b!565187 (=> (not res!356305) (not e!325429))))

(assert (=> b!565187 (= res!356305 (validKeyInArray!0 k!1914))))

(assert (= (and start!51710 res!356300) b!565181))

(assert (= (and b!565181 res!356306) b!565179))

(assert (= (and b!565179 res!356301) b!565187))

(assert (= (and b!565187 res!356305) b!565186))

(assert (= (and b!565186 res!356299) b!565183))

(assert (= (and b!565183 res!356303) b!565184))

(assert (= (and b!565184 res!356304) b!565182))

(assert (= (and b!565182 res!356298) b!565180))

(assert (= (and b!565180 res!356302) b!565178))

(assert (= (and b!565178 res!356297) b!565185))

(declare-fun m!543661 () Bool)

(assert (=> b!565180 m!543661))

(declare-fun m!543663 () Bool)

(assert (=> b!565180 m!543663))

(assert (=> b!565180 m!543661))

(declare-fun m!543665 () Bool)

(assert (=> b!565180 m!543665))

(declare-fun m!543667 () Bool)

(assert (=> b!565180 m!543667))

(assert (=> b!565180 m!543665))

(declare-fun m!543669 () Bool)

(assert (=> b!565180 m!543669))

(assert (=> b!565180 m!543663))

(assert (=> b!565180 m!543661))

(declare-fun m!543671 () Bool)

(assert (=> b!565180 m!543671))

(declare-fun m!543673 () Bool)

(assert (=> b!565180 m!543673))

(assert (=> b!565180 m!543665))

(assert (=> b!565180 m!543667))

(declare-fun m!543675 () Bool)

(assert (=> b!565182 m!543675))

(declare-fun m!543677 () Bool)

(assert (=> b!565187 m!543677))

(declare-fun m!543679 () Bool)

(assert (=> b!565178 m!543679))

(declare-fun m!543681 () Bool)

(assert (=> b!565178 m!543681))

(assert (=> b!565185 m!543661))

(assert (=> b!565185 m!543661))

(declare-fun m!543683 () Bool)

(assert (=> b!565185 m!543683))

(declare-fun m!543685 () Bool)

(assert (=> b!565183 m!543685))

(declare-fun m!543687 () Bool)

(assert (=> start!51710 m!543687))

(declare-fun m!543689 () Bool)

(assert (=> start!51710 m!543689))

(assert (=> b!565179 m!543661))

(assert (=> b!565179 m!543661))

(declare-fun m!543691 () Bool)

(assert (=> b!565179 m!543691))

(declare-fun m!543693 () Bool)

(assert (=> b!565184 m!543693))

(declare-fun m!543695 () Bool)

(assert (=> b!565186 m!543695))

(push 1)

