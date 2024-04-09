; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51734 () Bool)

(assert start!51734)

(declare-fun b!565538 () Bool)

(declare-fun e!325570 () Bool)

(assert (=> b!565538 (= e!325570 (not true))))

(declare-fun e!325572 () Bool)

(assert (=> b!565538 e!325572))

(declare-fun res!356663 () Bool)

(assert (=> b!565538 (=> (not res!356663) (not e!325572))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35496 0))(
  ( (array!35497 (arr!17043 (Array (_ BitVec 32) (_ BitVec 64))) (size!17407 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35496)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35496 (_ BitVec 32)) Bool)

(assert (=> b!565538 (= res!356663 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17700 0))(
  ( (Unit!17701) )
))
(declare-fun lt!257909 () Unit!17700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17700)

(assert (=> b!565538 (= lt!257909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565539 () Bool)

(declare-fun res!356664 () Bool)

(declare-fun e!325571 () Bool)

(assert (=> b!565539 (=> (not res!356664) (not e!325571))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565539 (= res!356664 (and (= (size!17407 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17407 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17407 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565540 () Bool)

(declare-datatypes ((SeekEntryResult!5499 0))(
  ( (MissingZero!5499 (index!24223 (_ BitVec 32))) (Found!5499 (index!24224 (_ BitVec 32))) (Intermediate!5499 (undefined!6311 Bool) (index!24225 (_ BitVec 32)) (x!53123 (_ BitVec 32))) (Undefined!5499) (MissingVacant!5499 (index!24226 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35496 (_ BitVec 32)) SeekEntryResult!5499)

(assert (=> b!565540 (= e!325572 (= (seekEntryOrOpen!0 (select (arr!17043 a!3118) j!142) a!3118 mask!3119) (Found!5499 j!142)))))

(declare-fun b!565541 () Bool)

(declare-fun res!356666 () Bool)

(assert (=> b!565541 (=> (not res!356666) (not e!325571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565541 (= res!356666 (validKeyInArray!0 (select (arr!17043 a!3118) j!142)))))

(declare-fun b!565542 () Bool)

(declare-fun res!356660 () Bool)

(assert (=> b!565542 (=> (not res!356660) (not e!325571))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565542 (= res!356660 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565543 () Bool)

(declare-fun res!356661 () Bool)

(assert (=> b!565543 (=> (not res!356661) (not e!325570))))

(assert (=> b!565543 (= res!356661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565544 () Bool)

(declare-fun res!356665 () Bool)

(assert (=> b!565544 (=> (not res!356665) (not e!325570))))

(declare-datatypes ((List!11176 0))(
  ( (Nil!11173) (Cons!11172 (h!12178 (_ BitVec 64)) (t!17412 List!11176)) )
))
(declare-fun arrayNoDuplicates!0 (array!35496 (_ BitVec 32) List!11176) Bool)

(assert (=> b!565544 (= res!356665 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11173))))

(declare-fun res!356662 () Bool)

(assert (=> start!51734 (=> (not res!356662) (not e!325571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51734 (= res!356662 (validMask!0 mask!3119))))

(assert (=> start!51734 e!325571))

(assert (=> start!51734 true))

(declare-fun array_inv!12817 (array!35496) Bool)

(assert (=> start!51734 (array_inv!12817 a!3118)))

(declare-fun b!565545 () Bool)

(assert (=> b!565545 (= e!325571 e!325570)))

(declare-fun res!356657 () Bool)

(assert (=> b!565545 (=> (not res!356657) (not e!325570))))

(declare-fun lt!257908 () SeekEntryResult!5499)

(assert (=> b!565545 (= res!356657 (or (= lt!257908 (MissingZero!5499 i!1132)) (= lt!257908 (MissingVacant!5499 i!1132))))))

(assert (=> b!565545 (= lt!257908 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565546 () Bool)

(declare-fun res!356659 () Bool)

(assert (=> b!565546 (=> (not res!356659) (not e!325570))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35496 (_ BitVec 32)) SeekEntryResult!5499)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565546 (= res!356659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17043 a!3118) j!142) mask!3119) (select (arr!17043 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17043 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17043 a!3118) i!1132 k!1914) j!142) (array!35497 (store (arr!17043 a!3118) i!1132 k!1914) (size!17407 a!3118)) mask!3119)))))

(declare-fun b!565547 () Bool)

(declare-fun res!356658 () Bool)

(assert (=> b!565547 (=> (not res!356658) (not e!325571))))

(assert (=> b!565547 (= res!356658 (validKeyInArray!0 k!1914))))

(assert (= (and start!51734 res!356662) b!565539))

(assert (= (and b!565539 res!356664) b!565541))

(assert (= (and b!565541 res!356666) b!565547))

(assert (= (and b!565547 res!356658) b!565542))

(assert (= (and b!565542 res!356660) b!565545))

(assert (= (and b!565545 res!356657) b!565543))

(assert (= (and b!565543 res!356661) b!565544))

(assert (= (and b!565544 res!356665) b!565546))

(assert (= (and b!565546 res!356659) b!565538))

(assert (= (and b!565538 res!356663) b!565540))

(declare-fun m!544093 () Bool)

(assert (=> b!565544 m!544093))

(declare-fun m!544095 () Bool)

(assert (=> b!565541 m!544095))

(assert (=> b!565541 m!544095))

(declare-fun m!544097 () Bool)

(assert (=> b!565541 m!544097))

(declare-fun m!544099 () Bool)

(assert (=> start!51734 m!544099))

(declare-fun m!544101 () Bool)

(assert (=> start!51734 m!544101))

(declare-fun m!544103 () Bool)

(assert (=> b!565543 m!544103))

(declare-fun m!544105 () Bool)

(assert (=> b!565538 m!544105))

(declare-fun m!544107 () Bool)

(assert (=> b!565538 m!544107))

(declare-fun m!544109 () Bool)

(assert (=> b!565547 m!544109))

(declare-fun m!544111 () Bool)

(assert (=> b!565545 m!544111))

(declare-fun m!544113 () Bool)

(assert (=> b!565542 m!544113))

(assert (=> b!565540 m!544095))

(assert (=> b!565540 m!544095))

(declare-fun m!544115 () Bool)

(assert (=> b!565540 m!544115))

(assert (=> b!565546 m!544095))

(declare-fun m!544117 () Bool)

(assert (=> b!565546 m!544117))

(assert (=> b!565546 m!544095))

(declare-fun m!544119 () Bool)

(assert (=> b!565546 m!544119))

(declare-fun m!544121 () Bool)

(assert (=> b!565546 m!544121))

(assert (=> b!565546 m!544119))

(declare-fun m!544123 () Bool)

(assert (=> b!565546 m!544123))

(assert (=> b!565546 m!544117))

(assert (=> b!565546 m!544095))

(declare-fun m!544125 () Bool)

(assert (=> b!565546 m!544125))

(declare-fun m!544127 () Bool)

(assert (=> b!565546 m!544127))

(assert (=> b!565546 m!544119))

(assert (=> b!565546 m!544121))

(push 1)

