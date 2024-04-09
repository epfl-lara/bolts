; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51726 () Bool)

(assert start!51726)

(declare-fun b!565418 () Bool)

(declare-fun res!356540 () Bool)

(declare-fun e!325523 () Bool)

(assert (=> b!565418 (=> (not res!356540) (not e!325523))))

(declare-datatypes ((array!35488 0))(
  ( (array!35489 (arr!17039 (Array (_ BitVec 32) (_ BitVec 64))) (size!17403 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35488)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565418 (= res!356540 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!325524 () Bool)

(declare-fun b!565419 () Bool)

(declare-datatypes ((SeekEntryResult!5495 0))(
  ( (MissingZero!5495 (index!24207 (_ BitVec 32))) (Found!5495 (index!24208 (_ BitVec 32))) (Intermediate!5495 (undefined!6307 Bool) (index!24209 (_ BitVec 32)) (x!53103 (_ BitVec 32))) (Undefined!5495) (MissingVacant!5495 (index!24210 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35488 (_ BitVec 32)) SeekEntryResult!5495)

(assert (=> b!565419 (= e!325524 (= (seekEntryOrOpen!0 (select (arr!17039 a!3118) j!142) a!3118 mask!3119) (Found!5495 j!142)))))

(declare-fun b!565420 () Bool)

(declare-fun res!356543 () Bool)

(declare-fun e!325522 () Bool)

(assert (=> b!565420 (=> (not res!356543) (not e!325522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35488 (_ BitVec 32)) Bool)

(assert (=> b!565420 (= res!356543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!356541 () Bool)

(assert (=> start!51726 (=> (not res!356541) (not e!325523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51726 (= res!356541 (validMask!0 mask!3119))))

(assert (=> start!51726 e!325523))

(assert (=> start!51726 true))

(declare-fun array_inv!12813 (array!35488) Bool)

(assert (=> start!51726 (array_inv!12813 a!3118)))

(declare-fun b!565421 () Bool)

(declare-fun res!356538 () Bool)

(assert (=> b!565421 (=> (not res!356538) (not e!325523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565421 (= res!356538 (validKeyInArray!0 (select (arr!17039 a!3118) j!142)))))

(declare-fun b!565422 () Bool)

(declare-fun res!356546 () Bool)

(assert (=> b!565422 (=> (not res!356546) (not e!325522))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35488 (_ BitVec 32)) SeekEntryResult!5495)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565422 (= res!356546 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17039 a!3118) j!142) mask!3119) (select (arr!17039 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17039 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17039 a!3118) i!1132 k!1914) j!142) (array!35489 (store (arr!17039 a!3118) i!1132 k!1914) (size!17403 a!3118)) mask!3119)))))

(declare-fun b!565423 () Bool)

(declare-fun res!356545 () Bool)

(assert (=> b!565423 (=> (not res!356545) (not e!325522))))

(declare-datatypes ((List!11172 0))(
  ( (Nil!11169) (Cons!11168 (h!12174 (_ BitVec 64)) (t!17408 List!11172)) )
))
(declare-fun arrayNoDuplicates!0 (array!35488 (_ BitVec 32) List!11172) Bool)

(assert (=> b!565423 (= res!356545 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11169))))

(declare-fun b!565424 () Bool)

(assert (=> b!565424 (= e!325523 e!325522)))

(declare-fun res!356537 () Bool)

(assert (=> b!565424 (=> (not res!356537) (not e!325522))))

(declare-fun lt!257884 () SeekEntryResult!5495)

(assert (=> b!565424 (= res!356537 (or (= lt!257884 (MissingZero!5495 i!1132)) (= lt!257884 (MissingVacant!5495 i!1132))))))

(assert (=> b!565424 (= lt!257884 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565425 () Bool)

(declare-fun res!356542 () Bool)

(assert (=> b!565425 (=> (not res!356542) (not e!325523))))

(assert (=> b!565425 (= res!356542 (validKeyInArray!0 k!1914))))

(declare-fun b!565426 () Bool)

(declare-fun res!356539 () Bool)

(assert (=> b!565426 (=> (not res!356539) (not e!325523))))

(assert (=> b!565426 (= res!356539 (and (= (size!17403 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17403 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17403 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565427 () Bool)

(assert (=> b!565427 (= e!325522 (not true))))

(assert (=> b!565427 e!325524))

(declare-fun res!356544 () Bool)

(assert (=> b!565427 (=> (not res!356544) (not e!325524))))

(assert (=> b!565427 (= res!356544 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17692 0))(
  ( (Unit!17693) )
))
(declare-fun lt!257885 () Unit!17692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17692)

(assert (=> b!565427 (= lt!257885 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51726 res!356541) b!565426))

(assert (= (and b!565426 res!356539) b!565421))

(assert (= (and b!565421 res!356538) b!565425))

(assert (= (and b!565425 res!356542) b!565418))

(assert (= (and b!565418 res!356540) b!565424))

(assert (= (and b!565424 res!356537) b!565420))

(assert (= (and b!565420 res!356543) b!565423))

(assert (= (and b!565423 res!356545) b!565422))

(assert (= (and b!565422 res!356546) b!565427))

(assert (= (and b!565427 res!356544) b!565419))

(declare-fun m!543949 () Bool)

(assert (=> b!565421 m!543949))

(assert (=> b!565421 m!543949))

(declare-fun m!543951 () Bool)

(assert (=> b!565421 m!543951))

(assert (=> b!565419 m!543949))

(assert (=> b!565419 m!543949))

(declare-fun m!543953 () Bool)

(assert (=> b!565419 m!543953))

(declare-fun m!543955 () Bool)

(assert (=> b!565424 m!543955))

(declare-fun m!543957 () Bool)

(assert (=> start!51726 m!543957))

(declare-fun m!543959 () Bool)

(assert (=> start!51726 m!543959))

(declare-fun m!543961 () Bool)

(assert (=> b!565420 m!543961))

(declare-fun m!543963 () Bool)

(assert (=> b!565427 m!543963))

(declare-fun m!543965 () Bool)

(assert (=> b!565427 m!543965))

(declare-fun m!543967 () Bool)

(assert (=> b!565423 m!543967))

(declare-fun m!543969 () Bool)

(assert (=> b!565425 m!543969))

(declare-fun m!543971 () Bool)

(assert (=> b!565418 m!543971))

(assert (=> b!565422 m!543949))

(declare-fun m!543973 () Bool)

(assert (=> b!565422 m!543973))

(assert (=> b!565422 m!543949))

(declare-fun m!543975 () Bool)

(assert (=> b!565422 m!543975))

(declare-fun m!543977 () Bool)

(assert (=> b!565422 m!543977))

(assert (=> b!565422 m!543975))

(declare-fun m!543979 () Bool)

(assert (=> b!565422 m!543979))

(assert (=> b!565422 m!543973))

(assert (=> b!565422 m!543949))

(declare-fun m!543981 () Bool)

(assert (=> b!565422 m!543981))

(declare-fun m!543983 () Bool)

(assert (=> b!565422 m!543983))

(assert (=> b!565422 m!543975))

(assert (=> b!565422 m!543977))

(push 1)

(assert (not b!565423))

