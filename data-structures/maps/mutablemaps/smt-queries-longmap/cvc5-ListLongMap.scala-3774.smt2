; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51716 () Bool)

(assert start!51716)

(declare-fun b!565268 () Bool)

(declare-fun res!356394 () Bool)

(declare-fun e!325465 () Bool)

(assert (=> b!565268 (=> (not res!356394) (not e!325465))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565268 (= res!356394 (validKeyInArray!0 k!1914))))

(declare-fun b!565269 () Bool)

(declare-fun res!356389 () Bool)

(declare-fun e!325462 () Bool)

(assert (=> b!565269 (=> (not res!356389) (not e!325462))))

(declare-datatypes ((array!35478 0))(
  ( (array!35479 (arr!17034 (Array (_ BitVec 32) (_ BitVec 64))) (size!17398 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35478)

(declare-datatypes ((List!11167 0))(
  ( (Nil!11164) (Cons!11163 (h!12169 (_ BitVec 64)) (t!17403 List!11167)) )
))
(declare-fun arrayNoDuplicates!0 (array!35478 (_ BitVec 32) List!11167) Bool)

(assert (=> b!565269 (= res!356389 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11164))))

(declare-fun b!565270 () Bool)

(declare-fun res!356396 () Bool)

(assert (=> b!565270 (=> (not res!356396) (not e!325465))))

(declare-fun arrayContainsKey!0 (array!35478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565270 (= res!356396 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!356395 () Bool)

(assert (=> start!51716 (=> (not res!356395) (not e!325465))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51716 (= res!356395 (validMask!0 mask!3119))))

(assert (=> start!51716 e!325465))

(assert (=> start!51716 true))

(declare-fun array_inv!12808 (array!35478) Bool)

(assert (=> start!51716 (array_inv!12808 a!3118)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!325463 () Bool)

(declare-fun b!565271 () Bool)

(declare-datatypes ((SeekEntryResult!5490 0))(
  ( (MissingZero!5490 (index!24187 (_ BitVec 32))) (Found!5490 (index!24188 (_ BitVec 32))) (Intermediate!5490 (undefined!6302 Bool) (index!24189 (_ BitVec 32)) (x!53090 (_ BitVec 32))) (Undefined!5490) (MissingVacant!5490 (index!24190 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35478 (_ BitVec 32)) SeekEntryResult!5490)

(assert (=> b!565271 (= e!325463 (= (seekEntryOrOpen!0 (select (arr!17034 a!3118) j!142) a!3118 mask!3119) (Found!5490 j!142)))))

(declare-fun b!565272 () Bool)

(declare-fun res!356391 () Bool)

(assert (=> b!565272 (=> (not res!356391) (not e!325465))))

(assert (=> b!565272 (= res!356391 (validKeyInArray!0 (select (arr!17034 a!3118) j!142)))))

(declare-fun b!565273 () Bool)

(declare-fun res!356387 () Bool)

(assert (=> b!565273 (=> (not res!356387) (not e!325462))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35478 (_ BitVec 32)) SeekEntryResult!5490)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565273 (= res!356387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17034 a!3118) j!142) mask!3119) (select (arr!17034 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17034 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17034 a!3118) i!1132 k!1914) j!142) (array!35479 (store (arr!17034 a!3118) i!1132 k!1914) (size!17398 a!3118)) mask!3119)))))

(declare-fun b!565274 () Bool)

(declare-fun res!356388 () Bool)

(assert (=> b!565274 (=> (not res!356388) (not e!325462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35478 (_ BitVec 32)) Bool)

(assert (=> b!565274 (= res!356388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565275 () Bool)

(declare-fun res!356393 () Bool)

(assert (=> b!565275 (=> (not res!356393) (not e!325465))))

(assert (=> b!565275 (= res!356393 (and (= (size!17398 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17398 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17398 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565276 () Bool)

(assert (=> b!565276 (= e!325465 e!325462)))

(declare-fun res!356392 () Bool)

(assert (=> b!565276 (=> (not res!356392) (not e!325462))))

(declare-fun lt!257854 () SeekEntryResult!5490)

(assert (=> b!565276 (= res!356392 (or (= lt!257854 (MissingZero!5490 i!1132)) (= lt!257854 (MissingVacant!5490 i!1132))))))

(assert (=> b!565276 (= lt!257854 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565277 () Bool)

(assert (=> b!565277 (= e!325462 (not true))))

(assert (=> b!565277 e!325463))

(declare-fun res!356390 () Bool)

(assert (=> b!565277 (=> (not res!356390) (not e!325463))))

(assert (=> b!565277 (= res!356390 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17682 0))(
  ( (Unit!17683) )
))
(declare-fun lt!257855 () Unit!17682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17682)

(assert (=> b!565277 (= lt!257855 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51716 res!356395) b!565275))

(assert (= (and b!565275 res!356393) b!565272))

(assert (= (and b!565272 res!356391) b!565268))

(assert (= (and b!565268 res!356394) b!565270))

(assert (= (and b!565270 res!356396) b!565276))

(assert (= (and b!565276 res!356392) b!565274))

(assert (= (and b!565274 res!356388) b!565269))

(assert (= (and b!565269 res!356389) b!565273))

(assert (= (and b!565273 res!356387) b!565277))

(assert (= (and b!565277 res!356390) b!565271))

(declare-fun m!543769 () Bool)

(assert (=> b!565273 m!543769))

(declare-fun m!543771 () Bool)

(assert (=> b!565273 m!543771))

(assert (=> b!565273 m!543769))

(declare-fun m!543773 () Bool)

(assert (=> b!565273 m!543773))

(declare-fun m!543775 () Bool)

(assert (=> b!565273 m!543775))

(assert (=> b!565273 m!543773))

(declare-fun m!543777 () Bool)

(assert (=> b!565273 m!543777))

(assert (=> b!565273 m!543771))

(assert (=> b!565273 m!543769))

(declare-fun m!543779 () Bool)

(assert (=> b!565273 m!543779))

(declare-fun m!543781 () Bool)

(assert (=> b!565273 m!543781))

(assert (=> b!565273 m!543773))

(assert (=> b!565273 m!543775))

(declare-fun m!543783 () Bool)

(assert (=> b!565276 m!543783))

(assert (=> b!565271 m!543769))

(assert (=> b!565271 m!543769))

(declare-fun m!543785 () Bool)

(assert (=> b!565271 m!543785))

(assert (=> b!565272 m!543769))

(assert (=> b!565272 m!543769))

(declare-fun m!543787 () Bool)

(assert (=> b!565272 m!543787))

(declare-fun m!543789 () Bool)

(assert (=> b!565270 m!543789))

(declare-fun m!543791 () Bool)

(assert (=> b!565274 m!543791))

(declare-fun m!543793 () Bool)

(assert (=> start!51716 m!543793))

(declare-fun m!543795 () Bool)

(assert (=> start!51716 m!543795))

(declare-fun m!543797 () Bool)

(assert (=> b!565269 m!543797))

(declare-fun m!543799 () Bool)

(assert (=> b!565277 m!543799))

(declare-fun m!543801 () Bool)

(assert (=> b!565277 m!543801))

(declare-fun m!543803 () Bool)

(assert (=> b!565268 m!543803))

(push 1)

