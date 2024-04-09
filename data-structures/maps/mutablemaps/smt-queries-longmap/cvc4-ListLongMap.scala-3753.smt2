; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51534 () Bool)

(assert start!51534)

(declare-fun b!563390 () Bool)

(declare-fun res!354694 () Bool)

(declare-fun e!324645 () Bool)

(assert (=> b!563390 (=> (not res!354694) (not e!324645))))

(declare-datatypes ((array!35353 0))(
  ( (array!35354 (arr!16973 (Array (_ BitVec 32) (_ BitVec 64))) (size!17337 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35353)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35353 (_ BitVec 32)) Bool)

(assert (=> b!563390 (= res!354694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563391 () Bool)

(declare-fun res!354698 () Bool)

(assert (=> b!563391 (=> (not res!354698) (not e!324645))))

(declare-datatypes ((List!11106 0))(
  ( (Nil!11103) (Cons!11102 (h!12105 (_ BitVec 64)) (t!17342 List!11106)) )
))
(declare-fun arrayNoDuplicates!0 (array!35353 (_ BitVec 32) List!11106) Bool)

(assert (=> b!563391 (= res!354698 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11103))))

(declare-fun res!354699 () Bool)

(declare-fun e!324644 () Bool)

(assert (=> start!51534 (=> (not res!354699) (not e!324644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51534 (= res!354699 (validMask!0 mask!3119))))

(assert (=> start!51534 e!324644))

(assert (=> start!51534 true))

(declare-fun array_inv!12747 (array!35353) Bool)

(assert (=> start!51534 (array_inv!12747 a!3118)))

(declare-fun b!563392 () Bool)

(assert (=> b!563392 (= e!324644 e!324645)))

(declare-fun res!354692 () Bool)

(assert (=> b!563392 (=> (not res!354692) (not e!324645))))

(declare-datatypes ((SeekEntryResult!5429 0))(
  ( (MissingZero!5429 (index!23943 (_ BitVec 32))) (Found!5429 (index!23944 (_ BitVec 32))) (Intermediate!5429 (undefined!6241 Bool) (index!23945 (_ BitVec 32)) (x!52855 (_ BitVec 32))) (Undefined!5429) (MissingVacant!5429 (index!23946 (_ BitVec 32))) )
))
(declare-fun lt!257224 () SeekEntryResult!5429)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563392 (= res!354692 (or (= lt!257224 (MissingZero!5429 i!1132)) (= lt!257224 (MissingVacant!5429 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35353 (_ BitVec 32)) SeekEntryResult!5429)

(assert (=> b!563392 (= lt!257224 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563393 () Bool)

(declare-fun res!354697 () Bool)

(assert (=> b!563393 (=> (not res!354697) (not e!324645))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35353 (_ BitVec 32)) SeekEntryResult!5429)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563393 (= res!354697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16973 a!3118) j!142) mask!3119) (select (arr!16973 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16973 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16973 a!3118) i!1132 k!1914) j!142) (array!35354 (store (arr!16973 a!3118) i!1132 k!1914) (size!17337 a!3118)) mask!3119)))))

(declare-fun b!563394 () Bool)

(declare-fun res!354700 () Bool)

(assert (=> b!563394 (=> (not res!354700) (not e!324644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563394 (= res!354700 (validKeyInArray!0 k!1914))))

(declare-fun b!563395 () Bool)

(declare-fun res!354693 () Bool)

(assert (=> b!563395 (=> (not res!354693) (not e!324644))))

(assert (=> b!563395 (= res!354693 (validKeyInArray!0 (select (arr!16973 a!3118) j!142)))))

(declare-fun b!563396 () Bool)

(declare-fun res!354695 () Bool)

(assert (=> b!563396 (=> (not res!354695) (not e!324644))))

(declare-fun arrayContainsKey!0 (array!35353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563396 (= res!354695 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563397 () Bool)

(assert (=> b!563397 (= e!324645 (not true))))

(declare-fun e!324646 () Bool)

(assert (=> b!563397 e!324646))

(declare-fun res!354701 () Bool)

(assert (=> b!563397 (=> (not res!354701) (not e!324646))))

(assert (=> b!563397 (= res!354701 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17632 0))(
  ( (Unit!17633) )
))
(declare-fun lt!257225 () Unit!17632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17632)

(assert (=> b!563397 (= lt!257225 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563398 () Bool)

(assert (=> b!563398 (= e!324646 (= (seekEntryOrOpen!0 (select (arr!16973 a!3118) j!142) a!3118 mask!3119) (Found!5429 j!142)))))

(declare-fun b!563399 () Bool)

(declare-fun res!354696 () Bool)

(assert (=> b!563399 (=> (not res!354696) (not e!324644))))

(assert (=> b!563399 (= res!354696 (and (= (size!17337 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17337 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17337 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51534 res!354699) b!563399))

(assert (= (and b!563399 res!354696) b!563395))

(assert (= (and b!563395 res!354693) b!563394))

(assert (= (and b!563394 res!354700) b!563396))

(assert (= (and b!563396 res!354695) b!563392))

(assert (= (and b!563392 res!354692) b!563390))

(assert (= (and b!563390 res!354694) b!563391))

(assert (= (and b!563391 res!354698) b!563393))

(assert (= (and b!563393 res!354697) b!563397))

(assert (= (and b!563397 res!354701) b!563398))

(declare-fun m!541801 () Bool)

(assert (=> b!563391 m!541801))

(declare-fun m!541803 () Bool)

(assert (=> b!563394 m!541803))

(declare-fun m!541805 () Bool)

(assert (=> b!563393 m!541805))

(declare-fun m!541807 () Bool)

(assert (=> b!563393 m!541807))

(assert (=> b!563393 m!541805))

(declare-fun m!541809 () Bool)

(assert (=> b!563393 m!541809))

(declare-fun m!541811 () Bool)

(assert (=> b!563393 m!541811))

(assert (=> b!563393 m!541809))

(declare-fun m!541813 () Bool)

(assert (=> b!563393 m!541813))

(assert (=> b!563393 m!541807))

(assert (=> b!563393 m!541805))

(declare-fun m!541815 () Bool)

(assert (=> b!563393 m!541815))

(declare-fun m!541817 () Bool)

(assert (=> b!563393 m!541817))

(assert (=> b!563393 m!541809))

(assert (=> b!563393 m!541811))

(declare-fun m!541819 () Bool)

(assert (=> b!563392 m!541819))

(declare-fun m!541821 () Bool)

(assert (=> b!563390 m!541821))

(declare-fun m!541823 () Bool)

(assert (=> start!51534 m!541823))

(declare-fun m!541825 () Bool)

(assert (=> start!51534 m!541825))

(assert (=> b!563398 m!541805))

(assert (=> b!563398 m!541805))

(declare-fun m!541827 () Bool)

(assert (=> b!563398 m!541827))

(declare-fun m!541829 () Bool)

(assert (=> b!563396 m!541829))

(declare-fun m!541831 () Bool)

(assert (=> b!563397 m!541831))

(declare-fun m!541833 () Bool)

(assert (=> b!563397 m!541833))

(assert (=> b!563395 m!541805))

(assert (=> b!563395 m!541805))

(declare-fun m!541835 () Bool)

(assert (=> b!563395 m!541835))

(push 1)

