; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51746 () Bool)

(assert start!51746)

(declare-fun b!565718 () Bool)

(declare-fun res!356845 () Bool)

(declare-fun e!325644 () Bool)

(assert (=> b!565718 (=> (not res!356845) (not e!325644))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35508 0))(
  ( (array!35509 (arr!17049 (Array (_ BitVec 32) (_ BitVec 64))) (size!17413 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35508)

(assert (=> b!565718 (= res!356845 (and (= (size!17413 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17413 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17413 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565719 () Bool)

(declare-fun res!356841 () Bool)

(declare-fun e!325643 () Bool)

(assert (=> b!565719 (=> (not res!356841) (not e!325643))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5505 0))(
  ( (MissingZero!5505 (index!24247 (_ BitVec 32))) (Found!5505 (index!24248 (_ BitVec 32))) (Intermediate!5505 (undefined!6317 Bool) (index!24249 (_ BitVec 32)) (x!53145 (_ BitVec 32))) (Undefined!5505) (MissingVacant!5505 (index!24250 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35508 (_ BitVec 32)) SeekEntryResult!5505)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565719 (= res!356841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17049 a!3118) j!142) mask!3119) (select (arr!17049 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17049 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17049 a!3118) i!1132 k!1914) j!142) (array!35509 (store (arr!17049 a!3118) i!1132 k!1914) (size!17413 a!3118)) mask!3119)))))

(declare-fun b!565720 () Bool)

(declare-fun res!356844 () Bool)

(assert (=> b!565720 (=> (not res!356844) (not e!325644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565720 (= res!356844 (validKeyInArray!0 k!1914))))

(declare-fun b!565721 () Bool)

(assert (=> b!565721 (= e!325644 e!325643)))

(declare-fun res!356846 () Bool)

(assert (=> b!565721 (=> (not res!356846) (not e!325643))))

(declare-fun lt!257945 () SeekEntryResult!5505)

(assert (=> b!565721 (= res!356846 (or (= lt!257945 (MissingZero!5505 i!1132)) (= lt!257945 (MissingVacant!5505 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35508 (_ BitVec 32)) SeekEntryResult!5505)

(assert (=> b!565721 (= lt!257945 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565722 () Bool)

(declare-fun e!325642 () Bool)

(assert (=> b!565722 (= e!325642 (= (seekEntryOrOpen!0 (select (arr!17049 a!3118) j!142) a!3118 mask!3119) (Found!5505 j!142)))))

(declare-fun b!565723 () Bool)

(assert (=> b!565723 (= e!325643 (not true))))

(assert (=> b!565723 e!325642))

(declare-fun res!356842 () Bool)

(assert (=> b!565723 (=> (not res!356842) (not e!325642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35508 (_ BitVec 32)) Bool)

(assert (=> b!565723 (= res!356842 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17712 0))(
  ( (Unit!17713) )
))
(declare-fun lt!257944 () Unit!17712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17712)

(assert (=> b!565723 (= lt!257944 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565724 () Bool)

(declare-fun res!356837 () Bool)

(assert (=> b!565724 (=> (not res!356837) (not e!325644))))

(declare-fun arrayContainsKey!0 (array!35508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565724 (= res!356837 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565725 () Bool)

(declare-fun res!356839 () Bool)

(assert (=> b!565725 (=> (not res!356839) (not e!325644))))

(assert (=> b!565725 (= res!356839 (validKeyInArray!0 (select (arr!17049 a!3118) j!142)))))

(declare-fun b!565727 () Bool)

(declare-fun res!356843 () Bool)

(assert (=> b!565727 (=> (not res!356843) (not e!325643))))

(assert (=> b!565727 (= res!356843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565726 () Bool)

(declare-fun res!356840 () Bool)

(assert (=> b!565726 (=> (not res!356840) (not e!325643))))

(declare-datatypes ((List!11182 0))(
  ( (Nil!11179) (Cons!11178 (h!12184 (_ BitVec 64)) (t!17418 List!11182)) )
))
(declare-fun arrayNoDuplicates!0 (array!35508 (_ BitVec 32) List!11182) Bool)

(assert (=> b!565726 (= res!356840 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11179))))

(declare-fun res!356838 () Bool)

(assert (=> start!51746 (=> (not res!356838) (not e!325644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51746 (= res!356838 (validMask!0 mask!3119))))

(assert (=> start!51746 e!325644))

(assert (=> start!51746 true))

(declare-fun array_inv!12823 (array!35508) Bool)

(assert (=> start!51746 (array_inv!12823 a!3118)))

(assert (= (and start!51746 res!356838) b!565718))

(assert (= (and b!565718 res!356845) b!565725))

(assert (= (and b!565725 res!356839) b!565720))

(assert (= (and b!565720 res!356844) b!565724))

(assert (= (and b!565724 res!356837) b!565721))

(assert (= (and b!565721 res!356846) b!565727))

(assert (= (and b!565727 res!356843) b!565726))

(assert (= (and b!565726 res!356840) b!565719))

(assert (= (and b!565719 res!356841) b!565723))

(assert (= (and b!565723 res!356842) b!565722))

(declare-fun m!544309 () Bool)

(assert (=> b!565722 m!544309))

(assert (=> b!565722 m!544309))

(declare-fun m!544311 () Bool)

(assert (=> b!565722 m!544311))

(declare-fun m!544313 () Bool)

(assert (=> b!565723 m!544313))

(declare-fun m!544315 () Bool)

(assert (=> b!565723 m!544315))

(declare-fun m!544317 () Bool)

(assert (=> b!565721 m!544317))

(declare-fun m!544319 () Bool)

(assert (=> b!565720 m!544319))

(assert (=> b!565725 m!544309))

(assert (=> b!565725 m!544309))

(declare-fun m!544321 () Bool)

(assert (=> b!565725 m!544321))

(declare-fun m!544323 () Bool)

(assert (=> start!51746 m!544323))

(declare-fun m!544325 () Bool)

(assert (=> start!51746 m!544325))

(declare-fun m!544327 () Bool)

(assert (=> b!565724 m!544327))

(declare-fun m!544329 () Bool)

(assert (=> b!565727 m!544329))

(declare-fun m!544331 () Bool)

(assert (=> b!565726 m!544331))

(assert (=> b!565719 m!544309))

(declare-fun m!544333 () Bool)

(assert (=> b!565719 m!544333))

(assert (=> b!565719 m!544309))

(declare-fun m!544335 () Bool)

(assert (=> b!565719 m!544335))

(declare-fun m!544337 () Bool)

(assert (=> b!565719 m!544337))

(assert (=> b!565719 m!544335))

(declare-fun m!544339 () Bool)

(assert (=> b!565719 m!544339))

(assert (=> b!565719 m!544333))

(assert (=> b!565719 m!544309))

(declare-fun m!544341 () Bool)

(assert (=> b!565719 m!544341))

(declare-fun m!544343 () Bool)

(assert (=> b!565719 m!544343))

(assert (=> b!565719 m!544335))

(assert (=> b!565719 m!544337))

(push 1)

