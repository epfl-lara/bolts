; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51750 () Bool)

(assert start!51750)

(declare-fun b!565778 () Bool)

(declare-fun res!356904 () Bool)

(declare-fun e!325669 () Bool)

(assert (=> b!565778 (=> (not res!356904) (not e!325669))))

(declare-datatypes ((array!35512 0))(
  ( (array!35513 (arr!17051 (Array (_ BitVec 32) (_ BitVec 64))) (size!17415 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35512)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35512 (_ BitVec 32)) Bool)

(assert (=> b!565778 (= res!356904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565779 () Bool)

(declare-fun res!356905 () Bool)

(assert (=> b!565779 (=> (not res!356905) (not e!325669))))

(declare-datatypes ((List!11184 0))(
  ( (Nil!11181) (Cons!11180 (h!12186 (_ BitVec 64)) (t!17420 List!11184)) )
))
(declare-fun arrayNoDuplicates!0 (array!35512 (_ BitVec 32) List!11184) Bool)

(assert (=> b!565779 (= res!356905 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11181))))

(declare-fun b!565780 () Bool)

(declare-fun res!356898 () Bool)

(declare-fun e!325668 () Bool)

(assert (=> b!565780 (=> (not res!356898) (not e!325668))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565780 (= res!356898 (validKeyInArray!0 k!1914))))

(declare-fun b!565781 () Bool)

(assert (=> b!565781 (= e!325669 (not true))))

(declare-fun e!325667 () Bool)

(assert (=> b!565781 e!325667))

(declare-fun res!356903 () Bool)

(assert (=> b!565781 (=> (not res!356903) (not e!325667))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!565781 (= res!356903 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17716 0))(
  ( (Unit!17717) )
))
(declare-fun lt!257957 () Unit!17716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17716)

(assert (=> b!565781 (= lt!257957 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!356902 () Bool)

(assert (=> start!51750 (=> (not res!356902) (not e!325668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51750 (= res!356902 (validMask!0 mask!3119))))

(assert (=> start!51750 e!325668))

(assert (=> start!51750 true))

(declare-fun array_inv!12825 (array!35512) Bool)

(assert (=> start!51750 (array_inv!12825 a!3118)))

(declare-fun b!565782 () Bool)

(assert (=> b!565782 (= e!325668 e!325669)))

(declare-fun res!356900 () Bool)

(assert (=> b!565782 (=> (not res!356900) (not e!325669))))

(declare-datatypes ((SeekEntryResult!5507 0))(
  ( (MissingZero!5507 (index!24255 (_ BitVec 32))) (Found!5507 (index!24256 (_ BitVec 32))) (Intermediate!5507 (undefined!6319 Bool) (index!24257 (_ BitVec 32)) (x!53147 (_ BitVec 32))) (Undefined!5507) (MissingVacant!5507 (index!24258 (_ BitVec 32))) )
))
(declare-fun lt!257956 () SeekEntryResult!5507)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565782 (= res!356900 (or (= lt!257956 (MissingZero!5507 i!1132)) (= lt!257956 (MissingVacant!5507 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35512 (_ BitVec 32)) SeekEntryResult!5507)

(assert (=> b!565782 (= lt!257956 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565783 () Bool)

(declare-fun res!356897 () Bool)

(assert (=> b!565783 (=> (not res!356897) (not e!325668))))

(declare-fun arrayContainsKey!0 (array!35512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565783 (= res!356897 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565784 () Bool)

(assert (=> b!565784 (= e!325667 (= (seekEntryOrOpen!0 (select (arr!17051 a!3118) j!142) a!3118 mask!3119) (Found!5507 j!142)))))

(declare-fun b!565785 () Bool)

(declare-fun res!356899 () Bool)

(assert (=> b!565785 (=> (not res!356899) (not e!325668))))

(assert (=> b!565785 (= res!356899 (validKeyInArray!0 (select (arr!17051 a!3118) j!142)))))

(declare-fun b!565786 () Bool)

(declare-fun res!356906 () Bool)

(assert (=> b!565786 (=> (not res!356906) (not e!325669))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35512 (_ BitVec 32)) SeekEntryResult!5507)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565786 (= res!356906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17051 a!3118) j!142) mask!3119) (select (arr!17051 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17051 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17051 a!3118) i!1132 k!1914) j!142) (array!35513 (store (arr!17051 a!3118) i!1132 k!1914) (size!17415 a!3118)) mask!3119)))))

(declare-fun b!565787 () Bool)

(declare-fun res!356901 () Bool)

(assert (=> b!565787 (=> (not res!356901) (not e!325668))))

(assert (=> b!565787 (= res!356901 (and (= (size!17415 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17415 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17415 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51750 res!356902) b!565787))

(assert (= (and b!565787 res!356901) b!565785))

(assert (= (and b!565785 res!356899) b!565780))

(assert (= (and b!565780 res!356898) b!565783))

(assert (= (and b!565783 res!356897) b!565782))

(assert (= (and b!565782 res!356900) b!565778))

(assert (= (and b!565778 res!356904) b!565779))

(assert (= (and b!565779 res!356905) b!565786))

(assert (= (and b!565786 res!356906) b!565781))

(assert (= (and b!565781 res!356903) b!565784))

(declare-fun m!544381 () Bool)

(assert (=> start!51750 m!544381))

(declare-fun m!544383 () Bool)

(assert (=> start!51750 m!544383))

(declare-fun m!544385 () Bool)

(assert (=> b!565779 m!544385))

(declare-fun m!544387 () Bool)

(assert (=> b!565783 m!544387))

(declare-fun m!544389 () Bool)

(assert (=> b!565781 m!544389))

(declare-fun m!544391 () Bool)

(assert (=> b!565781 m!544391))

(declare-fun m!544393 () Bool)

(assert (=> b!565782 m!544393))

(declare-fun m!544395 () Bool)

(assert (=> b!565778 m!544395))

(declare-fun m!544397 () Bool)

(assert (=> b!565786 m!544397))

(declare-fun m!544399 () Bool)

(assert (=> b!565786 m!544399))

(assert (=> b!565786 m!544397))

(declare-fun m!544401 () Bool)

(assert (=> b!565786 m!544401))

(declare-fun m!544403 () Bool)

(assert (=> b!565786 m!544403))

(assert (=> b!565786 m!544401))

(declare-fun m!544405 () Bool)

(assert (=> b!565786 m!544405))

(assert (=> b!565786 m!544399))

(assert (=> b!565786 m!544397))

(declare-fun m!544407 () Bool)

(assert (=> b!565786 m!544407))

(declare-fun m!544409 () Bool)

(assert (=> b!565786 m!544409))

(assert (=> b!565786 m!544401))

(assert (=> b!565786 m!544403))

(assert (=> b!565785 m!544397))

(assert (=> b!565785 m!544397))

(declare-fun m!544411 () Bool)

(assert (=> b!565785 m!544411))

(assert (=> b!565784 m!544397))

(assert (=> b!565784 m!544397))

(declare-fun m!544413 () Bool)

(assert (=> b!565784 m!544413))

(declare-fun m!544415 () Bool)

(assert (=> b!565780 m!544415))

(push 1)

