; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51738 () Bool)

(assert start!51738)

(declare-fun b!565598 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!325597 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35500 0))(
  ( (array!35501 (arr!17045 (Array (_ BitVec 32) (_ BitVec 64))) (size!17409 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35500)

(declare-datatypes ((SeekEntryResult!5501 0))(
  ( (MissingZero!5501 (index!24231 (_ BitVec 32))) (Found!5501 (index!24232 (_ BitVec 32))) (Intermediate!5501 (undefined!6313 Bool) (index!24233 (_ BitVec 32)) (x!53125 (_ BitVec 32))) (Undefined!5501) (MissingVacant!5501 (index!24234 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35500 (_ BitVec 32)) SeekEntryResult!5501)

(assert (=> b!565598 (= e!325597 (= (seekEntryOrOpen!0 (select (arr!17045 a!3118) j!142) a!3118 mask!3119) (Found!5501 j!142)))))

(declare-fun res!356724 () Bool)

(declare-fun e!325596 () Bool)

(assert (=> start!51738 (=> (not res!356724) (not e!325596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51738 (= res!356724 (validMask!0 mask!3119))))

(assert (=> start!51738 e!325596))

(assert (=> start!51738 true))

(declare-fun array_inv!12819 (array!35500) Bool)

(assert (=> start!51738 (array_inv!12819 a!3118)))

(declare-fun b!565599 () Bool)

(declare-fun res!356717 () Bool)

(declare-fun e!325594 () Bool)

(assert (=> b!565599 (=> (not res!356717) (not e!325594))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35500 (_ BitVec 32)) SeekEntryResult!5501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565599 (= res!356717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17045 a!3118) j!142) mask!3119) (select (arr!17045 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17045 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17045 a!3118) i!1132 k!1914) j!142) (array!35501 (store (arr!17045 a!3118) i!1132 k!1914) (size!17409 a!3118)) mask!3119)))))

(declare-fun b!565600 () Bool)

(declare-fun res!356721 () Bool)

(assert (=> b!565600 (=> (not res!356721) (not e!325596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565600 (= res!356721 (validKeyInArray!0 k!1914))))

(declare-fun b!565601 () Bool)

(declare-fun res!356719 () Bool)

(assert (=> b!565601 (=> (not res!356719) (not e!325594))))

(declare-datatypes ((List!11178 0))(
  ( (Nil!11175) (Cons!11174 (h!12180 (_ BitVec 64)) (t!17414 List!11178)) )
))
(declare-fun arrayNoDuplicates!0 (array!35500 (_ BitVec 32) List!11178) Bool)

(assert (=> b!565601 (= res!356719 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11175))))

(declare-fun b!565602 () Bool)

(declare-fun res!356726 () Bool)

(assert (=> b!565602 (=> (not res!356726) (not e!325596))))

(assert (=> b!565602 (= res!356726 (validKeyInArray!0 (select (arr!17045 a!3118) j!142)))))

(declare-fun b!565603 () Bool)

(assert (=> b!565603 (= e!325596 e!325594)))

(declare-fun res!356725 () Bool)

(assert (=> b!565603 (=> (not res!356725) (not e!325594))))

(declare-fun lt!257920 () SeekEntryResult!5501)

(assert (=> b!565603 (= res!356725 (or (= lt!257920 (MissingZero!5501 i!1132)) (= lt!257920 (MissingVacant!5501 i!1132))))))

(assert (=> b!565603 (= lt!257920 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565604 () Bool)

(declare-fun res!356720 () Bool)

(assert (=> b!565604 (=> (not res!356720) (not e!325596))))

(assert (=> b!565604 (= res!356720 (and (= (size!17409 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17409 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17409 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565605 () Bool)

(declare-fun res!356723 () Bool)

(assert (=> b!565605 (=> (not res!356723) (not e!325594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35500 (_ BitVec 32)) Bool)

(assert (=> b!565605 (= res!356723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565606 () Bool)

(assert (=> b!565606 (= e!325594 (not true))))

(assert (=> b!565606 e!325597))

(declare-fun res!356722 () Bool)

(assert (=> b!565606 (=> (not res!356722) (not e!325597))))

(assert (=> b!565606 (= res!356722 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17704 0))(
  ( (Unit!17705) )
))
(declare-fun lt!257921 () Unit!17704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17704)

(assert (=> b!565606 (= lt!257921 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565607 () Bool)

(declare-fun res!356718 () Bool)

(assert (=> b!565607 (=> (not res!356718) (not e!325596))))

(declare-fun arrayContainsKey!0 (array!35500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565607 (= res!356718 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51738 res!356724) b!565604))

(assert (= (and b!565604 res!356720) b!565602))

(assert (= (and b!565602 res!356726) b!565600))

(assert (= (and b!565600 res!356721) b!565607))

(assert (= (and b!565607 res!356718) b!565603))

(assert (= (and b!565603 res!356725) b!565605))

(assert (= (and b!565605 res!356723) b!565601))

(assert (= (and b!565601 res!356719) b!565599))

(assert (= (and b!565599 res!356717) b!565606))

(assert (= (and b!565606 res!356722) b!565598))

(declare-fun m!544165 () Bool)

(assert (=> b!565607 m!544165))

(declare-fun m!544167 () Bool)

(assert (=> b!565605 m!544167))

(declare-fun m!544169 () Bool)

(assert (=> b!565599 m!544169))

(declare-fun m!544171 () Bool)

(assert (=> b!565599 m!544171))

(assert (=> b!565599 m!544169))

(declare-fun m!544173 () Bool)

(assert (=> b!565599 m!544173))

(declare-fun m!544175 () Bool)

(assert (=> b!565599 m!544175))

(assert (=> b!565599 m!544173))

(declare-fun m!544177 () Bool)

(assert (=> b!565599 m!544177))

(assert (=> b!565599 m!544171))

(assert (=> b!565599 m!544169))

(declare-fun m!544179 () Bool)

(assert (=> b!565599 m!544179))

(declare-fun m!544181 () Bool)

(assert (=> b!565599 m!544181))

(assert (=> b!565599 m!544173))

(assert (=> b!565599 m!544175))

(declare-fun m!544183 () Bool)

(assert (=> b!565606 m!544183))

(declare-fun m!544185 () Bool)

(assert (=> b!565606 m!544185))

(declare-fun m!544187 () Bool)

(assert (=> b!565601 m!544187))

(assert (=> b!565598 m!544169))

(assert (=> b!565598 m!544169))

(declare-fun m!544189 () Bool)

(assert (=> b!565598 m!544189))

(declare-fun m!544191 () Bool)

(assert (=> b!565600 m!544191))

(declare-fun m!544193 () Bool)

(assert (=> start!51738 m!544193))

(declare-fun m!544195 () Bool)

(assert (=> start!51738 m!544195))

(declare-fun m!544197 () Bool)

(assert (=> b!565603 m!544197))

(assert (=> b!565602 m!544169))

(assert (=> b!565602 m!544169))

(declare-fun m!544199 () Bool)

(assert (=> b!565602 m!544199))

(push 1)

(assert (not start!51738))

(assert (not b!565607))

(assert (not b!565606))

(assert (not b!565602))

