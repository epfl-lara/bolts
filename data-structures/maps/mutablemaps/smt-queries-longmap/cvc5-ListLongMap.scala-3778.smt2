; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51740 () Bool)

(assert start!51740)

(declare-fun b!565628 () Bool)

(declare-fun res!356751 () Bool)

(declare-fun e!325606 () Bool)

(assert (=> b!565628 (=> (not res!356751) (not e!325606))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565628 (= res!356751 (validKeyInArray!0 k!1914))))

(declare-fun b!565629 () Bool)

(declare-fun res!356756 () Bool)

(assert (=> b!565629 (=> (not res!356756) (not e!325606))))

(declare-datatypes ((array!35502 0))(
  ( (array!35503 (arr!17046 (Array (_ BitVec 32) (_ BitVec 64))) (size!17410 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35502)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!565629 (= res!356756 (validKeyInArray!0 (select (arr!17046 a!3118) j!142)))))

(declare-fun b!565631 () Bool)

(declare-fun res!356747 () Bool)

(assert (=> b!565631 (=> (not res!356747) (not e!325606))))

(declare-fun arrayContainsKey!0 (array!35502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565631 (= res!356747 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565632 () Bool)

(declare-fun res!356750 () Bool)

(declare-fun e!325608 () Bool)

(assert (=> b!565632 (=> (not res!356750) (not e!325608))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5502 0))(
  ( (MissingZero!5502 (index!24235 (_ BitVec 32))) (Found!5502 (index!24236 (_ BitVec 32))) (Intermediate!5502 (undefined!6314 Bool) (index!24237 (_ BitVec 32)) (x!53134 (_ BitVec 32))) (Undefined!5502) (MissingVacant!5502 (index!24238 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35502 (_ BitVec 32)) SeekEntryResult!5502)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565632 (= res!356750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17046 a!3118) j!142) mask!3119) (select (arr!17046 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17046 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17046 a!3118) i!1132 k!1914) j!142) (array!35503 (store (arr!17046 a!3118) i!1132 k!1914) (size!17410 a!3118)) mask!3119)))))

(declare-fun b!565633 () Bool)

(declare-fun res!356749 () Bool)

(assert (=> b!565633 (=> (not res!356749) (not e!325608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35502 (_ BitVec 32)) Bool)

(assert (=> b!565633 (= res!356749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565634 () Bool)

(assert (=> b!565634 (= e!325608 (not true))))

(declare-fun e!325609 () Bool)

(assert (=> b!565634 e!325609))

(declare-fun res!356755 () Bool)

(assert (=> b!565634 (=> (not res!356755) (not e!325609))))

(assert (=> b!565634 (= res!356755 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17706 0))(
  ( (Unit!17707) )
))
(declare-fun lt!257927 () Unit!17706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17706)

(assert (=> b!565634 (= lt!257927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565635 () Bool)

(assert (=> b!565635 (= e!325606 e!325608)))

(declare-fun res!356752 () Bool)

(assert (=> b!565635 (=> (not res!356752) (not e!325608))))

(declare-fun lt!257926 () SeekEntryResult!5502)

(assert (=> b!565635 (= res!356752 (or (= lt!257926 (MissingZero!5502 i!1132)) (= lt!257926 (MissingVacant!5502 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35502 (_ BitVec 32)) SeekEntryResult!5502)

(assert (=> b!565635 (= lt!257926 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565636 () Bool)

(assert (=> b!565636 (= e!325609 (= (seekEntryOrOpen!0 (select (arr!17046 a!3118) j!142) a!3118 mask!3119) (Found!5502 j!142)))))

(declare-fun b!565637 () Bool)

(declare-fun res!356754 () Bool)

(assert (=> b!565637 (=> (not res!356754) (not e!325608))))

(declare-datatypes ((List!11179 0))(
  ( (Nil!11176) (Cons!11175 (h!12181 (_ BitVec 64)) (t!17415 List!11179)) )
))
(declare-fun arrayNoDuplicates!0 (array!35502 (_ BitVec 32) List!11179) Bool)

(assert (=> b!565637 (= res!356754 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11176))))

(declare-fun b!565630 () Bool)

(declare-fun res!356748 () Bool)

(assert (=> b!565630 (=> (not res!356748) (not e!325606))))

(assert (=> b!565630 (= res!356748 (and (= (size!17410 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17410 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17410 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!356753 () Bool)

(assert (=> start!51740 (=> (not res!356753) (not e!325606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51740 (= res!356753 (validMask!0 mask!3119))))

(assert (=> start!51740 e!325606))

(assert (=> start!51740 true))

(declare-fun array_inv!12820 (array!35502) Bool)

(assert (=> start!51740 (array_inv!12820 a!3118)))

(assert (= (and start!51740 res!356753) b!565630))

(assert (= (and b!565630 res!356748) b!565629))

(assert (= (and b!565629 res!356756) b!565628))

(assert (= (and b!565628 res!356751) b!565631))

(assert (= (and b!565631 res!356747) b!565635))

(assert (= (and b!565635 res!356752) b!565633))

(assert (= (and b!565633 res!356749) b!565637))

(assert (= (and b!565637 res!356754) b!565632))

(assert (= (and b!565632 res!356750) b!565634))

(assert (= (and b!565634 res!356755) b!565636))

(declare-fun m!544201 () Bool)

(assert (=> b!565628 m!544201))

(declare-fun m!544203 () Bool)

(assert (=> start!51740 m!544203))

(declare-fun m!544205 () Bool)

(assert (=> start!51740 m!544205))

(declare-fun m!544207 () Bool)

(assert (=> b!565634 m!544207))

(declare-fun m!544209 () Bool)

(assert (=> b!565634 m!544209))

(declare-fun m!544211 () Bool)

(assert (=> b!565629 m!544211))

(assert (=> b!565629 m!544211))

(declare-fun m!544213 () Bool)

(assert (=> b!565629 m!544213))

(declare-fun m!544215 () Bool)

(assert (=> b!565631 m!544215))

(assert (=> b!565632 m!544211))

(declare-fun m!544217 () Bool)

(assert (=> b!565632 m!544217))

(assert (=> b!565632 m!544211))

(declare-fun m!544219 () Bool)

(assert (=> b!565632 m!544219))

(declare-fun m!544221 () Bool)

(assert (=> b!565632 m!544221))

(assert (=> b!565632 m!544219))

(declare-fun m!544223 () Bool)

(assert (=> b!565632 m!544223))

(assert (=> b!565632 m!544217))

(assert (=> b!565632 m!544211))

(declare-fun m!544225 () Bool)

(assert (=> b!565632 m!544225))

(declare-fun m!544227 () Bool)

(assert (=> b!565632 m!544227))

(assert (=> b!565632 m!544219))

(assert (=> b!565632 m!544221))

(assert (=> b!565636 m!544211))

(assert (=> b!565636 m!544211))

(declare-fun m!544229 () Bool)

(assert (=> b!565636 m!544229))

(declare-fun m!544231 () Bool)

(assert (=> b!565633 m!544231))

(declare-fun m!544233 () Bool)

(assert (=> b!565635 m!544233))

(declare-fun m!544235 () Bool)

(assert (=> b!565637 m!544235))

(push 1)

