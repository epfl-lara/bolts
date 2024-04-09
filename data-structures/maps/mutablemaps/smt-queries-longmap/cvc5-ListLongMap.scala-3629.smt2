; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50078 () Bool)

(assert start!50078)

(declare-fun b!548347 () Bool)

(declare-fun e!316791 () Bool)

(declare-fun e!316790 () Bool)

(assert (=> b!548347 (= e!316791 e!316790)))

(declare-fun res!341822 () Bool)

(assert (=> b!548347 (=> (not res!341822) (not e!316790))))

(declare-datatypes ((SeekEntryResult!5055 0))(
  ( (MissingZero!5055 (index!22447 (_ BitVec 32))) (Found!5055 (index!22448 (_ BitVec 32))) (Intermediate!5055 (undefined!5867 Bool) (index!22449 (_ BitVec 32)) (x!51417 (_ BitVec 32))) (Undefined!5055) (MissingVacant!5055 (index!22450 (_ BitVec 32))) )
))
(declare-fun lt!249827 () SeekEntryResult!5055)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548347 (= res!341822 (or (= lt!249827 (MissingZero!5055 i!1132)) (= lt!249827 (MissingVacant!5055 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34569 0))(
  ( (array!34570 (arr!16599 (Array (_ BitVec 32) (_ BitVec 64))) (size!16963 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34569)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34569 (_ BitVec 32)) SeekEntryResult!5055)

(assert (=> b!548347 (= lt!249827 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548348 () Bool)

(declare-fun res!341823 () Bool)

(assert (=> b!548348 (=> (not res!341823) (not e!316790))))

(declare-datatypes ((List!10732 0))(
  ( (Nil!10729) (Cons!10728 (h!11698 (_ BitVec 64)) (t!16968 List!10732)) )
))
(declare-fun arrayNoDuplicates!0 (array!34569 (_ BitVec 32) List!10732) Bool)

(assert (=> b!548348 (= res!341823 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10729))))

(declare-fun b!548349 () Bool)

(declare-fun res!341818 () Bool)

(assert (=> b!548349 (=> (not res!341818) (not e!316791))))

(declare-fun arrayContainsKey!0 (array!34569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548349 (= res!341818 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548350 () Bool)

(declare-fun res!341821 () Bool)

(assert (=> b!548350 (=> (not res!341821) (not e!316790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34569 (_ BitVec 32)) Bool)

(assert (=> b!548350 (= res!341821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548351 () Bool)

(declare-fun res!341820 () Bool)

(assert (=> b!548351 (=> (not res!341820) (not e!316791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548351 (= res!341820 (validKeyInArray!0 k!1914))))

(declare-fun res!341819 () Bool)

(assert (=> start!50078 (=> (not res!341819) (not e!316791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50078 (= res!341819 (validMask!0 mask!3119))))

(assert (=> start!50078 e!316791))

(assert (=> start!50078 true))

(declare-fun array_inv!12373 (array!34569) Bool)

(assert (=> start!50078 (array_inv!12373 a!3118)))

(declare-fun b!548352 () Bool)

(declare-fun res!341824 () Bool)

(assert (=> b!548352 (=> (not res!341824) (not e!316791))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548352 (= res!341824 (and (= (size!16963 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16963 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16963 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548353 () Bool)

(assert (=> b!548353 (= e!316790 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!548354 () Bool)

(declare-fun res!341825 () Bool)

(assert (=> b!548354 (=> (not res!341825) (not e!316791))))

(assert (=> b!548354 (= res!341825 (validKeyInArray!0 (select (arr!16599 a!3118) j!142)))))

(assert (= (and start!50078 res!341819) b!548352))

(assert (= (and b!548352 res!341824) b!548354))

(assert (= (and b!548354 res!341825) b!548351))

(assert (= (and b!548351 res!341820) b!548349))

(assert (= (and b!548349 res!341818) b!548347))

(assert (= (and b!548347 res!341822) b!548350))

(assert (= (and b!548350 res!341821) b!548348))

(assert (= (and b!548348 res!341823) b!548353))

(declare-fun m!525385 () Bool)

(assert (=> b!548350 m!525385))

(declare-fun m!525387 () Bool)

(assert (=> start!50078 m!525387))

(declare-fun m!525389 () Bool)

(assert (=> start!50078 m!525389))

(declare-fun m!525391 () Bool)

(assert (=> b!548348 m!525391))

(declare-fun m!525393 () Bool)

(assert (=> b!548347 m!525393))

(declare-fun m!525395 () Bool)

(assert (=> b!548349 m!525395))

(declare-fun m!525397 () Bool)

(assert (=> b!548354 m!525397))

(assert (=> b!548354 m!525397))

(declare-fun m!525399 () Bool)

(assert (=> b!548354 m!525399))

(declare-fun m!525401 () Bool)

(assert (=> b!548351 m!525401))

(push 1)

