; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50654 () Bool)

(assert start!50654)

(declare-fun b!553268 () Bool)

(declare-fun res!345835 () Bool)

(declare-fun e!319159 () Bool)

(assert (=> b!553268 (=> (not res!345835) (not e!319159))))

(declare-datatypes ((array!34833 0))(
  ( (array!34834 (arr!16722 (Array (_ BitVec 32) (_ BitVec 64))) (size!17086 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34833)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34833 (_ BitVec 32)) Bool)

(assert (=> b!553268 (= res!345835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553269 () Bool)

(declare-fun res!345837 () Bool)

(declare-fun e!319158 () Bool)

(assert (=> b!553269 (=> (not res!345837) (not e!319158))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553269 (= res!345837 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553270 () Bool)

(assert (=> b!553270 (= e!319158 e!319159)))

(declare-fun res!345833 () Bool)

(assert (=> b!553270 (=> (not res!345833) (not e!319159))))

(declare-datatypes ((SeekEntryResult!5178 0))(
  ( (MissingZero!5178 (index!22939 (_ BitVec 32))) (Found!5178 (index!22940 (_ BitVec 32))) (Intermediate!5178 (undefined!5990 Bool) (index!22941 (_ BitVec 32)) (x!51895 (_ BitVec 32))) (Undefined!5178) (MissingVacant!5178 (index!22942 (_ BitVec 32))) )
))
(declare-fun lt!251453 () SeekEntryResult!5178)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553270 (= res!345833 (or (= lt!251453 (MissingZero!5178 i!1132)) (= lt!251453 (MissingVacant!5178 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34833 (_ BitVec 32)) SeekEntryResult!5178)

(assert (=> b!553270 (= lt!251453 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553271 () Bool)

(declare-fun res!345832 () Bool)

(assert (=> b!553271 (=> (not res!345832) (not e!319158))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!553271 (= res!345832 (and (= (size!17086 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17086 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17086 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553272 () Bool)

(declare-fun res!345838 () Bool)

(assert (=> b!553272 (=> (not res!345838) (not e!319158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553272 (= res!345838 (validKeyInArray!0 k!1914))))

(declare-fun b!553273 () Bool)

(declare-fun e!319156 () Bool)

(assert (=> b!553273 (= e!319156 (= (seekEntryOrOpen!0 (select (arr!16722 a!3118) j!142) a!3118 mask!3119) (Found!5178 j!142)))))

(declare-fun b!553274 () Bool)

(declare-fun res!345831 () Bool)

(assert (=> b!553274 (=> (not res!345831) (not e!319159))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34833 (_ BitVec 32)) SeekEntryResult!5178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553274 (= res!345831 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16722 a!3118) j!142) mask!3119) (select (arr!16722 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16722 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16722 a!3118) i!1132 k!1914) j!142) (array!34834 (store (arr!16722 a!3118) i!1132 k!1914) (size!17086 a!3118)) mask!3119)))))

(declare-fun b!553275 () Bool)

(declare-fun res!345836 () Bool)

(assert (=> b!553275 (=> (not res!345836) (not e!319159))))

(declare-datatypes ((List!10855 0))(
  ( (Nil!10852) (Cons!10851 (h!11836 (_ BitVec 64)) (t!17091 List!10855)) )
))
(declare-fun arrayNoDuplicates!0 (array!34833 (_ BitVec 32) List!10855) Bool)

(assert (=> b!553275 (= res!345836 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10852))))

(declare-fun b!553276 () Bool)

(declare-fun res!345839 () Bool)

(assert (=> b!553276 (=> (not res!345839) (not e!319158))))

(assert (=> b!553276 (= res!345839 (validKeyInArray!0 (select (arr!16722 a!3118) j!142)))))

(declare-fun b!553277 () Bool)

(assert (=> b!553277 (= e!319159 (not true))))

(assert (=> b!553277 e!319156))

(declare-fun res!345834 () Bool)

(assert (=> b!553277 (=> (not res!345834) (not e!319156))))

(assert (=> b!553277 (= res!345834 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17130 0))(
  ( (Unit!17131) )
))
(declare-fun lt!251452 () Unit!17130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17130)

(assert (=> b!553277 (= lt!251452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!345830 () Bool)

(assert (=> start!50654 (=> (not res!345830) (not e!319158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50654 (= res!345830 (validMask!0 mask!3119))))

(assert (=> start!50654 e!319158))

(assert (=> start!50654 true))

(declare-fun array_inv!12496 (array!34833) Bool)

(assert (=> start!50654 (array_inv!12496 a!3118)))

(assert (= (and start!50654 res!345830) b!553271))

(assert (= (and b!553271 res!345832) b!553276))

(assert (= (and b!553276 res!345839) b!553272))

(assert (= (and b!553272 res!345838) b!553269))

(assert (= (and b!553269 res!345837) b!553270))

(assert (= (and b!553270 res!345833) b!553268))

(assert (= (and b!553268 res!345835) b!553275))

(assert (= (and b!553275 res!345836) b!553274))

(assert (= (and b!553274 res!345831) b!553277))

(assert (= (and b!553277 res!345834) b!553273))

(declare-fun m!530389 () Bool)

(assert (=> b!553277 m!530389))

(declare-fun m!530391 () Bool)

(assert (=> b!553277 m!530391))

(declare-fun m!530393 () Bool)

(assert (=> b!553268 m!530393))

(declare-fun m!530395 () Bool)

(assert (=> b!553270 m!530395))

(declare-fun m!530397 () Bool)

(assert (=> b!553276 m!530397))

(assert (=> b!553276 m!530397))

(declare-fun m!530399 () Bool)

(assert (=> b!553276 m!530399))

(declare-fun m!530401 () Bool)

(assert (=> b!553269 m!530401))

(declare-fun m!530403 () Bool)

(assert (=> b!553272 m!530403))

(assert (=> b!553274 m!530397))

(declare-fun m!530405 () Bool)

(assert (=> b!553274 m!530405))

(assert (=> b!553274 m!530397))

(declare-fun m!530407 () Bool)

(assert (=> b!553274 m!530407))

(declare-fun m!530409 () Bool)

(assert (=> b!553274 m!530409))

(assert (=> b!553274 m!530407))

(declare-fun m!530411 () Bool)

(assert (=> b!553274 m!530411))

(assert (=> b!553274 m!530405))

(assert (=> b!553274 m!530397))

(declare-fun m!530413 () Bool)

(assert (=> b!553274 m!530413))

(declare-fun m!530415 () Bool)

(assert (=> b!553274 m!530415))

(assert (=> b!553274 m!530407))

(assert (=> b!553274 m!530409))

(declare-fun m!530417 () Bool)

(assert (=> b!553275 m!530417))

(assert (=> b!553273 m!530397))

(assert (=> b!553273 m!530397))

(declare-fun m!530419 () Bool)

(assert (=> b!553273 m!530419))

(declare-fun m!530421 () Bool)

(assert (=> start!50654 m!530421))

(declare-fun m!530423 () Bool)

(assert (=> start!50654 m!530423))

(push 1)

