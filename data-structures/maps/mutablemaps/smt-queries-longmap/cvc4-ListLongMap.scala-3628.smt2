; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50076 () Bool)

(assert start!50076)

(declare-fun b!548323 () Bool)

(declare-fun e!316782 () Bool)

(assert (=> b!548323 (= e!316782 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!249824 () (_ BitVec 32))

(declare-datatypes ((array!34567 0))(
  ( (array!34568 (arr!16598 (Array (_ BitVec 32) (_ BitVec 64))) (size!16962 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34567)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548323 (= lt!249824 (toIndex!0 (select (arr!16598 a!3118) j!142) mask!3119))))

(declare-fun b!548324 () Bool)

(declare-fun res!341800 () Bool)

(declare-fun e!316781 () Bool)

(assert (=> b!548324 (=> (not res!341800) (not e!316781))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548324 (= res!341800 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!341797 () Bool)

(assert (=> start!50076 (=> (not res!341797) (not e!316781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50076 (= res!341797 (validMask!0 mask!3119))))

(assert (=> start!50076 e!316781))

(assert (=> start!50076 true))

(declare-fun array_inv!12372 (array!34567) Bool)

(assert (=> start!50076 (array_inv!12372 a!3118)))

(declare-fun b!548325 () Bool)

(declare-fun res!341795 () Bool)

(assert (=> b!548325 (=> (not res!341795) (not e!316782))))

(declare-datatypes ((List!10731 0))(
  ( (Nil!10728) (Cons!10727 (h!11697 (_ BitVec 64)) (t!16967 List!10731)) )
))
(declare-fun arrayNoDuplicates!0 (array!34567 (_ BitVec 32) List!10731) Bool)

(assert (=> b!548325 (= res!341795 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10728))))

(declare-fun b!548326 () Bool)

(declare-fun res!341794 () Bool)

(assert (=> b!548326 (=> (not res!341794) (not e!316781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548326 (= res!341794 (validKeyInArray!0 k!1914))))

(declare-fun b!548327 () Bool)

(assert (=> b!548327 (= e!316781 e!316782)))

(declare-fun res!341798 () Bool)

(assert (=> b!548327 (=> (not res!341798) (not e!316782))))

(declare-datatypes ((SeekEntryResult!5054 0))(
  ( (MissingZero!5054 (index!22443 (_ BitVec 32))) (Found!5054 (index!22444 (_ BitVec 32))) (Intermediate!5054 (undefined!5866 Bool) (index!22445 (_ BitVec 32)) (x!51408 (_ BitVec 32))) (Undefined!5054) (MissingVacant!5054 (index!22446 (_ BitVec 32))) )
))
(declare-fun lt!249823 () SeekEntryResult!5054)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548327 (= res!341798 (or (= lt!249823 (MissingZero!5054 i!1132)) (= lt!249823 (MissingVacant!5054 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34567 (_ BitVec 32)) SeekEntryResult!5054)

(assert (=> b!548327 (= lt!249823 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548328 () Bool)

(declare-fun res!341796 () Bool)

(assert (=> b!548328 (=> (not res!341796) (not e!316782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34567 (_ BitVec 32)) Bool)

(assert (=> b!548328 (= res!341796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548329 () Bool)

(declare-fun res!341801 () Bool)

(assert (=> b!548329 (=> (not res!341801) (not e!316781))))

(assert (=> b!548329 (= res!341801 (and (= (size!16962 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16962 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16962 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548330 () Bool)

(declare-fun res!341799 () Bool)

(assert (=> b!548330 (=> (not res!341799) (not e!316781))))

(assert (=> b!548330 (= res!341799 (validKeyInArray!0 (select (arr!16598 a!3118) j!142)))))

(assert (= (and start!50076 res!341797) b!548329))

(assert (= (and b!548329 res!341801) b!548330))

(assert (= (and b!548330 res!341799) b!548326))

(assert (= (and b!548326 res!341794) b!548324))

(assert (= (and b!548324 res!341800) b!548327))

(assert (= (and b!548327 res!341798) b!548328))

(assert (= (and b!548328 res!341796) b!548325))

(assert (= (and b!548325 res!341795) b!548323))

(declare-fun m!525365 () Bool)

(assert (=> b!548323 m!525365))

(assert (=> b!548323 m!525365))

(declare-fun m!525367 () Bool)

(assert (=> b!548323 m!525367))

(declare-fun m!525369 () Bool)

(assert (=> b!548328 m!525369))

(declare-fun m!525371 () Bool)

(assert (=> b!548324 m!525371))

(assert (=> b!548330 m!525365))

(assert (=> b!548330 m!525365))

(declare-fun m!525373 () Bool)

(assert (=> b!548330 m!525373))

(declare-fun m!525375 () Bool)

(assert (=> start!50076 m!525375))

(declare-fun m!525377 () Bool)

(assert (=> start!50076 m!525377))

(declare-fun m!525379 () Bool)

(assert (=> b!548327 m!525379))

(declare-fun m!525381 () Bool)

(assert (=> b!548326 m!525381))

(declare-fun m!525383 () Bool)

(assert (=> b!548325 m!525383))

(push 1)

(assert (not b!548326))

(assert (not b!548327))

(assert (not start!50076))

