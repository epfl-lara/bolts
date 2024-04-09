; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51620 () Bool)

(assert start!51620)

(declare-fun b!564489 () Bool)

(declare-fun res!355799 () Bool)

(declare-fun e!325104 () Bool)

(assert (=> b!564489 (=> (not res!355799) (not e!325104))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35439 0))(
  ( (array!35440 (arr!17016 (Array (_ BitVec 32) (_ BitVec 64))) (size!17380 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35439)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5472 0))(
  ( (MissingZero!5472 (index!24115 (_ BitVec 32))) (Found!5472 (index!24116 (_ BitVec 32))) (Intermediate!5472 (undefined!6284 Bool) (index!24117 (_ BitVec 32)) (x!53018 (_ BitVec 32))) (Undefined!5472) (MissingVacant!5472 (index!24118 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35439 (_ BitVec 32)) SeekEntryResult!5472)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564489 (= res!355799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17016 a!3118) j!142) mask!3119) (select (arr!17016 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17016 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17016 a!3118) i!1132 k!1914) j!142) (array!35440 (store (arr!17016 a!3118) i!1132 k!1914) (size!17380 a!3118)) mask!3119)))))

(declare-fun b!564490 () Bool)

(declare-fun res!355795 () Bool)

(assert (=> b!564490 (=> (not res!355795) (not e!325104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35439 (_ BitVec 32)) Bool)

(assert (=> b!564490 (= res!355795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355793 () Bool)

(declare-fun e!325103 () Bool)

(assert (=> start!51620 (=> (not res!355793) (not e!325103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51620 (= res!355793 (validMask!0 mask!3119))))

(assert (=> start!51620 e!325103))

(assert (=> start!51620 true))

(declare-fun array_inv!12790 (array!35439) Bool)

(assert (=> start!51620 (array_inv!12790 a!3118)))

(declare-fun b!564491 () Bool)

(declare-fun res!355794 () Bool)

(assert (=> b!564491 (=> (not res!355794) (not e!325103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564491 (= res!355794 (validKeyInArray!0 k!1914))))

(declare-fun b!564492 () Bool)

(declare-fun res!355792 () Bool)

(assert (=> b!564492 (=> (not res!355792) (not e!325103))))

(assert (=> b!564492 (= res!355792 (and (= (size!17380 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17380 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17380 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564493 () Bool)

(declare-fun res!355796 () Bool)

(assert (=> b!564493 (=> (not res!355796) (not e!325104))))

(declare-datatypes ((List!11149 0))(
  ( (Nil!11146) (Cons!11145 (h!12148 (_ BitVec 64)) (t!17385 List!11149)) )
))
(declare-fun arrayNoDuplicates!0 (array!35439 (_ BitVec 32) List!11149) Bool)

(assert (=> b!564493 (= res!355796 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11146))))

(declare-fun b!564494 () Bool)

(declare-fun res!355797 () Bool)

(assert (=> b!564494 (=> (not res!355797) (not e!325103))))

(assert (=> b!564494 (= res!355797 (validKeyInArray!0 (select (arr!17016 a!3118) j!142)))))

(declare-fun b!564495 () Bool)

(declare-fun res!355798 () Bool)

(assert (=> b!564495 (=> (not res!355798) (not e!325103))))

(declare-fun arrayContainsKey!0 (array!35439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564495 (= res!355798 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564496 () Bool)

(assert (=> b!564496 (= e!325103 e!325104)))

(declare-fun res!355791 () Bool)

(assert (=> b!564496 (=> (not res!355791) (not e!325104))))

(declare-fun lt!257606 () SeekEntryResult!5472)

(assert (=> b!564496 (= res!355791 (or (= lt!257606 (MissingZero!5472 i!1132)) (= lt!257606 (MissingVacant!5472 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35439 (_ BitVec 32)) SeekEntryResult!5472)

(assert (=> b!564496 (= lt!257606 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564497 () Bool)

(assert (=> b!564497 (= e!325104 (bvsgt #b00000000000000000000000000000000 (size!17380 a!3118)))))

(assert (= (and start!51620 res!355793) b!564492))

(assert (= (and b!564492 res!355792) b!564494))

(assert (= (and b!564494 res!355797) b!564491))

(assert (= (and b!564491 res!355794) b!564495))

(assert (= (and b!564495 res!355798) b!564496))

(assert (= (and b!564496 res!355791) b!564490))

(assert (= (and b!564490 res!355795) b!564493))

(assert (= (and b!564493 res!355796) b!564489))

(assert (= (and b!564489 res!355799) b!564497))

(declare-fun m!542983 () Bool)

(assert (=> b!564489 m!542983))

(declare-fun m!542985 () Bool)

(assert (=> b!564489 m!542985))

(assert (=> b!564489 m!542983))

(declare-fun m!542987 () Bool)

(assert (=> b!564489 m!542987))

(declare-fun m!542989 () Bool)

(assert (=> b!564489 m!542989))

(assert (=> b!564489 m!542987))

(declare-fun m!542991 () Bool)

(assert (=> b!564489 m!542991))

(assert (=> b!564489 m!542985))

(assert (=> b!564489 m!542983))

(declare-fun m!542993 () Bool)

(assert (=> b!564489 m!542993))

(declare-fun m!542995 () Bool)

(assert (=> b!564489 m!542995))

(assert (=> b!564489 m!542987))

(assert (=> b!564489 m!542989))

(declare-fun m!542997 () Bool)

(assert (=> b!564490 m!542997))

(declare-fun m!542999 () Bool)

(assert (=> b!564493 m!542999))

(declare-fun m!543001 () Bool)

(assert (=> b!564491 m!543001))

(declare-fun m!543003 () Bool)

(assert (=> start!51620 m!543003))

(declare-fun m!543005 () Bool)

(assert (=> start!51620 m!543005))

(assert (=> b!564494 m!542983))

(assert (=> b!564494 m!542983))

(declare-fun m!543007 () Bool)

(assert (=> b!564494 m!543007))

(declare-fun m!543009 () Bool)

(assert (=> b!564495 m!543009))

(declare-fun m!543011 () Bool)

(assert (=> b!564496 m!543011))

(push 1)

