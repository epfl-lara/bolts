; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52070 () Bool)

(assert start!52070)

(declare-fun b!568178 () Bool)

(declare-fun res!358530 () Bool)

(declare-fun e!326947 () Bool)

(assert (=> b!568178 (=> (not res!358530) (not e!326947))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35604 0))(
  ( (array!35605 (arr!17091 (Array (_ BitVec 32) (_ BitVec 64))) (size!17455 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35604)

(declare-datatypes ((SeekEntryResult!5547 0))(
  ( (MissingZero!5547 (index!24415 (_ BitVec 32))) (Found!5547 (index!24416 (_ BitVec 32))) (Intermediate!5547 (undefined!6359 Bool) (index!24417 (_ BitVec 32)) (x!53323 (_ BitVec 32))) (Undefined!5547) (MissingVacant!5547 (index!24418 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35604 (_ BitVec 32)) SeekEntryResult!5547)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568178 (= res!358530 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17091 a!3118) j!142) mask!3119) (select (arr!17091 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17091 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17091 a!3118) i!1132 k!1914) j!142) (array!35605 (store (arr!17091 a!3118) i!1132 k!1914) (size!17455 a!3118)) mask!3119)))))

(declare-fun e!326944 () Bool)

(declare-fun b!568179 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35604 (_ BitVec 32)) SeekEntryResult!5547)

(assert (=> b!568179 (= e!326944 (= (seekEntryOrOpen!0 (select (arr!17091 a!3118) j!142) a!3118 mask!3119) (Found!5547 j!142)))))

(declare-fun b!568180 () Bool)

(declare-fun res!358532 () Bool)

(declare-fun e!326946 () Bool)

(assert (=> b!568180 (=> (not res!358532) (not e!326946))))

(declare-fun arrayContainsKey!0 (array!35604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568180 (= res!358532 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568181 () Bool)

(declare-fun res!358529 () Bool)

(assert (=> b!568181 (=> (not res!358529) (not e!326946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568181 (= res!358529 (validKeyInArray!0 k!1914))))

(declare-fun b!568182 () Bool)

(declare-fun res!358537 () Bool)

(assert (=> b!568182 (=> (not res!358537) (not e!326946))))

(assert (=> b!568182 (= res!358537 (validKeyInArray!0 (select (arr!17091 a!3118) j!142)))))

(declare-fun b!568183 () Bool)

(assert (=> b!568183 (= e!326947 (not true))))

(assert (=> b!568183 e!326944))

(declare-fun res!358536 () Bool)

(assert (=> b!568183 (=> (not res!358536) (not e!326944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35604 (_ BitVec 32)) Bool)

(assert (=> b!568183 (= res!358536 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17796 0))(
  ( (Unit!17797) )
))
(declare-fun lt!258892 () Unit!17796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17796)

(assert (=> b!568183 (= lt!258892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!358534 () Bool)

(assert (=> start!52070 (=> (not res!358534) (not e!326946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52070 (= res!358534 (validMask!0 mask!3119))))

(assert (=> start!52070 e!326946))

(assert (=> start!52070 true))

(declare-fun array_inv!12865 (array!35604) Bool)

(assert (=> start!52070 (array_inv!12865 a!3118)))

(declare-fun b!568184 () Bool)

(declare-fun res!358533 () Bool)

(assert (=> b!568184 (=> (not res!358533) (not e!326947))))

(assert (=> b!568184 (= res!358533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568185 () Bool)

(declare-fun res!358535 () Bool)

(assert (=> b!568185 (=> (not res!358535) (not e!326946))))

(assert (=> b!568185 (= res!358535 (and (= (size!17455 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17455 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17455 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568186 () Bool)

(declare-fun res!358538 () Bool)

(assert (=> b!568186 (=> (not res!358538) (not e!326947))))

(declare-datatypes ((List!11224 0))(
  ( (Nil!11221) (Cons!11220 (h!12238 (_ BitVec 64)) (t!17460 List!11224)) )
))
(declare-fun arrayNoDuplicates!0 (array!35604 (_ BitVec 32) List!11224) Bool)

(assert (=> b!568186 (= res!358538 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11221))))

(declare-fun b!568187 () Bool)

(assert (=> b!568187 (= e!326946 e!326947)))

(declare-fun res!358531 () Bool)

(assert (=> b!568187 (=> (not res!358531) (not e!326947))))

(declare-fun lt!258893 () SeekEntryResult!5547)

(assert (=> b!568187 (= res!358531 (or (= lt!258893 (MissingZero!5547 i!1132)) (= lt!258893 (MissingVacant!5547 i!1132))))))

(assert (=> b!568187 (= lt!258893 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52070 res!358534) b!568185))

(assert (= (and b!568185 res!358535) b!568182))

(assert (= (and b!568182 res!358537) b!568181))

(assert (= (and b!568181 res!358529) b!568180))

(assert (= (and b!568180 res!358532) b!568187))

(assert (= (and b!568187 res!358531) b!568184))

(assert (= (and b!568184 res!358533) b!568186))

(assert (= (and b!568186 res!358538) b!568178))

(assert (= (and b!568178 res!358530) b!568183))

(assert (= (and b!568183 res!358536) b!568179))

(declare-fun m!546733 () Bool)

(assert (=> b!568186 m!546733))

(declare-fun m!546735 () Bool)

(assert (=> b!568182 m!546735))

(assert (=> b!568182 m!546735))

(declare-fun m!546737 () Bool)

(assert (=> b!568182 m!546737))

(declare-fun m!546739 () Bool)

(assert (=> b!568180 m!546739))

(assert (=> b!568179 m!546735))

(assert (=> b!568179 m!546735))

(declare-fun m!546741 () Bool)

(assert (=> b!568179 m!546741))

(declare-fun m!546743 () Bool)

(assert (=> b!568183 m!546743))

(declare-fun m!546745 () Bool)

(assert (=> b!568183 m!546745))

(declare-fun m!546747 () Bool)

(assert (=> b!568181 m!546747))

(declare-fun m!546749 () Bool)

(assert (=> b!568184 m!546749))

(declare-fun m!546751 () Bool)

(assert (=> start!52070 m!546751))

(declare-fun m!546753 () Bool)

(assert (=> start!52070 m!546753))

(assert (=> b!568178 m!546735))

(declare-fun m!546755 () Bool)

(assert (=> b!568178 m!546755))

(assert (=> b!568178 m!546735))

(declare-fun m!546757 () Bool)

(assert (=> b!568178 m!546757))

(declare-fun m!546759 () Bool)

(assert (=> b!568178 m!546759))

(assert (=> b!568178 m!546757))

(declare-fun m!546761 () Bool)

(assert (=> b!568178 m!546761))

(assert (=> b!568178 m!546755))

(assert (=> b!568178 m!546735))

(declare-fun m!546763 () Bool)

(assert (=> b!568178 m!546763))

(declare-fun m!546765 () Bool)

(assert (=> b!568178 m!546765))

(assert (=> b!568178 m!546757))

(assert (=> b!568178 m!546759))

(declare-fun m!546767 () Bool)

(assert (=> b!568187 m!546767))

(push 1)

