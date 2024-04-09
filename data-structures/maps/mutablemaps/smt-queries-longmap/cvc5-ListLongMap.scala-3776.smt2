; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51728 () Bool)

(assert start!51728)

(declare-fun res!356568 () Bool)

(declare-fun e!325535 () Bool)

(assert (=> start!51728 (=> (not res!356568) (not e!325535))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51728 (= res!356568 (validMask!0 mask!3119))))

(assert (=> start!51728 e!325535))

(assert (=> start!51728 true))

(declare-datatypes ((array!35490 0))(
  ( (array!35491 (arr!17040 (Array (_ BitVec 32) (_ BitVec 64))) (size!17404 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35490)

(declare-fun array_inv!12814 (array!35490) Bool)

(assert (=> start!51728 (array_inv!12814 a!3118)))

(declare-fun b!565448 () Bool)

(declare-fun res!356571 () Bool)

(assert (=> b!565448 (=> (not res!356571) (not e!325535))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565448 (= res!356571 (validKeyInArray!0 (select (arr!17040 a!3118) j!142)))))

(declare-fun b!565449 () Bool)

(declare-fun res!356576 () Bool)

(assert (=> b!565449 (=> (not res!356576) (not e!325535))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!565449 (= res!356576 (validKeyInArray!0 k!1914))))

(declare-fun b!565450 () Bool)

(declare-fun res!356573 () Bool)

(declare-fun e!325534 () Bool)

(assert (=> b!565450 (=> (not res!356573) (not e!325534))))

(declare-datatypes ((List!11173 0))(
  ( (Nil!11170) (Cons!11169 (h!12175 (_ BitVec 64)) (t!17409 List!11173)) )
))
(declare-fun arrayNoDuplicates!0 (array!35490 (_ BitVec 32) List!11173) Bool)

(assert (=> b!565450 (= res!356573 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11170))))

(declare-fun b!565451 () Bool)

(declare-fun res!356567 () Bool)

(assert (=> b!565451 (=> (not res!356567) (not e!325535))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565451 (= res!356567 (and (= (size!17404 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17404 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17404 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565452 () Bool)

(assert (=> b!565452 (= e!325534 (not true))))

(declare-fun e!325536 () Bool)

(assert (=> b!565452 e!325536))

(declare-fun res!356570 () Bool)

(assert (=> b!565452 (=> (not res!356570) (not e!325536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35490 (_ BitVec 32)) Bool)

(assert (=> b!565452 (= res!356570 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17694 0))(
  ( (Unit!17695) )
))
(declare-fun lt!257890 () Unit!17694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17694)

(assert (=> b!565452 (= lt!257890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565453 () Bool)

(declare-fun res!356569 () Bool)

(assert (=> b!565453 (=> (not res!356569) (not e!325535))))

(declare-fun arrayContainsKey!0 (array!35490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565453 (= res!356569 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565454 () Bool)

(assert (=> b!565454 (= e!325535 e!325534)))

(declare-fun res!356575 () Bool)

(assert (=> b!565454 (=> (not res!356575) (not e!325534))))

(declare-datatypes ((SeekEntryResult!5496 0))(
  ( (MissingZero!5496 (index!24211 (_ BitVec 32))) (Found!5496 (index!24212 (_ BitVec 32))) (Intermediate!5496 (undefined!6308 Bool) (index!24213 (_ BitVec 32)) (x!53112 (_ BitVec 32))) (Undefined!5496) (MissingVacant!5496 (index!24214 (_ BitVec 32))) )
))
(declare-fun lt!257891 () SeekEntryResult!5496)

(assert (=> b!565454 (= res!356575 (or (= lt!257891 (MissingZero!5496 i!1132)) (= lt!257891 (MissingVacant!5496 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35490 (_ BitVec 32)) SeekEntryResult!5496)

(assert (=> b!565454 (= lt!257891 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565455 () Bool)

(declare-fun res!356574 () Bool)

(assert (=> b!565455 (=> (not res!356574) (not e!325534))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35490 (_ BitVec 32)) SeekEntryResult!5496)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565455 (= res!356574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17040 a!3118) j!142) mask!3119) (select (arr!17040 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17040 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17040 a!3118) i!1132 k!1914) j!142) (array!35491 (store (arr!17040 a!3118) i!1132 k!1914) (size!17404 a!3118)) mask!3119)))))

(declare-fun b!565456 () Bool)

(declare-fun res!356572 () Bool)

(assert (=> b!565456 (=> (not res!356572) (not e!325534))))

(assert (=> b!565456 (= res!356572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565457 () Bool)

(assert (=> b!565457 (= e!325536 (= (seekEntryOrOpen!0 (select (arr!17040 a!3118) j!142) a!3118 mask!3119) (Found!5496 j!142)))))

(assert (= (and start!51728 res!356568) b!565451))

(assert (= (and b!565451 res!356567) b!565448))

(assert (= (and b!565448 res!356571) b!565449))

(assert (= (and b!565449 res!356576) b!565453))

(assert (= (and b!565453 res!356569) b!565454))

(assert (= (and b!565454 res!356575) b!565456))

(assert (= (and b!565456 res!356572) b!565450))

(assert (= (and b!565450 res!356573) b!565455))

(assert (= (and b!565455 res!356574) b!565452))

(assert (= (and b!565452 res!356570) b!565457))

(declare-fun m!543985 () Bool)

(assert (=> b!565457 m!543985))

(assert (=> b!565457 m!543985))

(declare-fun m!543987 () Bool)

(assert (=> b!565457 m!543987))

(declare-fun m!543989 () Bool)

(assert (=> b!565456 m!543989))

(declare-fun m!543991 () Bool)

(assert (=> b!565452 m!543991))

(declare-fun m!543993 () Bool)

(assert (=> b!565452 m!543993))

(declare-fun m!543995 () Bool)

(assert (=> b!565449 m!543995))

(declare-fun m!543997 () Bool)

(assert (=> start!51728 m!543997))

(declare-fun m!543999 () Bool)

(assert (=> start!51728 m!543999))

(declare-fun m!544001 () Bool)

(assert (=> b!565453 m!544001))

(declare-fun m!544003 () Bool)

(assert (=> b!565450 m!544003))

(assert (=> b!565455 m!543985))

(declare-fun m!544005 () Bool)

(assert (=> b!565455 m!544005))

(assert (=> b!565455 m!543985))

(declare-fun m!544007 () Bool)

(assert (=> b!565455 m!544007))

(declare-fun m!544009 () Bool)

(assert (=> b!565455 m!544009))

(assert (=> b!565455 m!544007))

(declare-fun m!544011 () Bool)

(assert (=> b!565455 m!544011))

(assert (=> b!565455 m!544005))

(assert (=> b!565455 m!543985))

(declare-fun m!544013 () Bool)

(assert (=> b!565455 m!544013))

(declare-fun m!544015 () Bool)

(assert (=> b!565455 m!544015))

(assert (=> b!565455 m!544007))

(assert (=> b!565455 m!544009))

(declare-fun m!544017 () Bool)

(assert (=> b!565454 m!544017))

(assert (=> b!565448 m!543985))

(assert (=> b!565448 m!543985))

(declare-fun m!544019 () Bool)

(assert (=> b!565448 m!544019))

(push 1)

