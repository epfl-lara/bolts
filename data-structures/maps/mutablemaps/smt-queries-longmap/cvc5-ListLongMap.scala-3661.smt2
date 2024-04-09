; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50600 () Bool)

(assert start!50600)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!552442 () Bool)

(declare-fun e!318782 () Bool)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34779 0))(
  ( (array!34780 (arr!16695 (Array (_ BitVec 32) (_ BitVec 64))) (size!17059 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34779)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552442 (= e!318782 (validKeyInArray!0 (select (store (arr!16695 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!552443 () Bool)

(declare-fun e!318783 () Bool)

(assert (=> b!552443 (= e!318783 (not e!318782))))

(declare-fun res!345006 () Bool)

(assert (=> b!552443 (=> res!345006 e!318782)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!251197 () (_ BitVec 32))

(assert (=> b!552443 (= res!345006 (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt lt!251197 #b00000000000000000000000000000000) (bvsge lt!251197 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(declare-fun e!318785 () Bool)

(assert (=> b!552443 e!318785))

(declare-fun res!345009 () Bool)

(assert (=> b!552443 (=> (not res!345009) (not e!318785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34779 (_ BitVec 32)) Bool)

(assert (=> b!552443 (= res!345009 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17076 0))(
  ( (Unit!17077) )
))
(declare-fun lt!251195 () Unit!17076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17076)

(assert (=> b!552443 (= lt!251195 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552444 () Bool)

(declare-fun res!345010 () Bool)

(declare-fun e!318787 () Bool)

(assert (=> b!552444 (=> (not res!345010) (not e!318787))))

(assert (=> b!552444 (= res!345010 (validKeyInArray!0 k!1914))))

(declare-fun b!552445 () Bool)

(declare-fun res!345014 () Bool)

(assert (=> b!552445 (=> (not res!345014) (not e!318787))))

(assert (=> b!552445 (= res!345014 (and (= (size!17059 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17059 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17059 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!345011 () Bool)

(assert (=> start!50600 (=> (not res!345011) (not e!318787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50600 (= res!345011 (validMask!0 mask!3119))))

(assert (=> start!50600 e!318787))

(assert (=> start!50600 true))

(declare-fun array_inv!12469 (array!34779) Bool)

(assert (=> start!50600 (array_inv!12469 a!3118)))

(declare-fun b!552446 () Bool)

(declare-fun e!318784 () Bool)

(assert (=> b!552446 (= e!318784 e!318783)))

(declare-fun res!345007 () Bool)

(assert (=> b!552446 (=> (not res!345007) (not e!318783))))

(declare-fun lt!251196 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5151 0))(
  ( (MissingZero!5151 (index!22831 (_ BitVec 32))) (Found!5151 (index!22832 (_ BitVec 32))) (Intermediate!5151 (undefined!5963 Bool) (index!22833 (_ BitVec 32)) (x!51796 (_ BitVec 32))) (Undefined!5151) (MissingVacant!5151 (index!22834 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34779 (_ BitVec 32)) SeekEntryResult!5151)

(assert (=> b!552446 (= res!345007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251196 (select (arr!16695 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251197 (select (store (arr!16695 a!3118) i!1132 k!1914) j!142) (array!34780 (store (arr!16695 a!3118) i!1132 k!1914) (size!17059 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552446 (= lt!251197 (toIndex!0 (select (store (arr!16695 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552446 (= lt!251196 (toIndex!0 (select (arr!16695 a!3118) j!142) mask!3119))))

(declare-fun b!552447 () Bool)

(assert (=> b!552447 (= e!318787 e!318784)))

(declare-fun res!345008 () Bool)

(assert (=> b!552447 (=> (not res!345008) (not e!318784))))

(declare-fun lt!251198 () SeekEntryResult!5151)

(assert (=> b!552447 (= res!345008 (or (= lt!251198 (MissingZero!5151 i!1132)) (= lt!251198 (MissingVacant!5151 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34779 (_ BitVec 32)) SeekEntryResult!5151)

(assert (=> b!552447 (= lt!251198 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552448 () Bool)

(declare-fun res!345005 () Bool)

(assert (=> b!552448 (=> (not res!345005) (not e!318784))))

(declare-datatypes ((List!10828 0))(
  ( (Nil!10825) (Cons!10824 (h!11809 (_ BitVec 64)) (t!17064 List!10828)) )
))
(declare-fun arrayNoDuplicates!0 (array!34779 (_ BitVec 32) List!10828) Bool)

(assert (=> b!552448 (= res!345005 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10825))))

(declare-fun b!552449 () Bool)

(assert (=> b!552449 (= e!318785 (= (seekEntryOrOpen!0 (select (arr!16695 a!3118) j!142) a!3118 mask!3119) (Found!5151 j!142)))))

(declare-fun b!552450 () Bool)

(declare-fun res!345012 () Bool)

(assert (=> b!552450 (=> (not res!345012) (not e!318784))))

(assert (=> b!552450 (= res!345012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552451 () Bool)

(declare-fun res!345013 () Bool)

(assert (=> b!552451 (=> (not res!345013) (not e!318787))))

(assert (=> b!552451 (= res!345013 (validKeyInArray!0 (select (arr!16695 a!3118) j!142)))))

(declare-fun b!552452 () Bool)

(declare-fun res!345004 () Bool)

(assert (=> b!552452 (=> (not res!345004) (not e!318787))))

(declare-fun arrayContainsKey!0 (array!34779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552452 (= res!345004 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50600 res!345011) b!552445))

(assert (= (and b!552445 res!345014) b!552451))

(assert (= (and b!552451 res!345013) b!552444))

(assert (= (and b!552444 res!345010) b!552452))

(assert (= (and b!552452 res!345004) b!552447))

(assert (= (and b!552447 res!345008) b!552450))

(assert (= (and b!552450 res!345012) b!552448))

(assert (= (and b!552448 res!345005) b!552446))

(assert (= (and b!552446 res!345007) b!552443))

(assert (= (and b!552443 res!345009) b!552449))

(assert (= (and b!552443 (not res!345006)) b!552442))

(declare-fun m!529405 () Bool)

(assert (=> b!552447 m!529405))

(declare-fun m!529407 () Bool)

(assert (=> start!50600 m!529407))

(declare-fun m!529409 () Bool)

(assert (=> start!50600 m!529409))

(declare-fun m!529411 () Bool)

(assert (=> b!552452 m!529411))

(declare-fun m!529413 () Bool)

(assert (=> b!552443 m!529413))

(declare-fun m!529415 () Bool)

(assert (=> b!552443 m!529415))

(declare-fun m!529417 () Bool)

(assert (=> b!552451 m!529417))

(assert (=> b!552451 m!529417))

(declare-fun m!529419 () Bool)

(assert (=> b!552451 m!529419))

(assert (=> b!552449 m!529417))

(assert (=> b!552449 m!529417))

(declare-fun m!529421 () Bool)

(assert (=> b!552449 m!529421))

(declare-fun m!529423 () Bool)

(assert (=> b!552446 m!529423))

(declare-fun m!529425 () Bool)

(assert (=> b!552446 m!529425))

(assert (=> b!552446 m!529417))

(declare-fun m!529427 () Bool)

(assert (=> b!552446 m!529427))

(assert (=> b!552446 m!529417))

(declare-fun m!529429 () Bool)

(assert (=> b!552446 m!529429))

(assert (=> b!552446 m!529417))

(assert (=> b!552446 m!529423))

(declare-fun m!529431 () Bool)

(assert (=> b!552446 m!529431))

(assert (=> b!552446 m!529423))

(declare-fun m!529433 () Bool)

(assert (=> b!552446 m!529433))

(assert (=> b!552442 m!529431))

(assert (=> b!552442 m!529423))

(assert (=> b!552442 m!529423))

(declare-fun m!529435 () Bool)

(assert (=> b!552442 m!529435))

(declare-fun m!529437 () Bool)

(assert (=> b!552448 m!529437))

(declare-fun m!529439 () Bool)

(assert (=> b!552450 m!529439))

(declare-fun m!529441 () Bool)

(assert (=> b!552444 m!529441))

(push 1)

