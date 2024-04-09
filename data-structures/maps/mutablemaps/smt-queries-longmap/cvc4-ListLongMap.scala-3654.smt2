; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50442 () Bool)

(assert start!50442)

(declare-fun b!551288 () Bool)

(declare-fun res!344217 () Bool)

(declare-fun e!318170 () Bool)

(assert (=> b!551288 (=> (not res!344217) (not e!318170))))

(declare-datatypes ((array!34735 0))(
  ( (array!34736 (arr!16676 (Array (_ BitVec 32) (_ BitVec 64))) (size!17040 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34735)

(declare-datatypes ((List!10809 0))(
  ( (Nil!10806) (Cons!10805 (h!11784 (_ BitVec 64)) (t!17045 List!10809)) )
))
(declare-fun arrayNoDuplicates!0 (array!34735 (_ BitVec 32) List!10809) Bool)

(assert (=> b!551288 (= res!344217 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10806))))

(declare-fun b!551289 () Bool)

(declare-fun res!344224 () Bool)

(declare-fun e!318169 () Bool)

(assert (=> b!551289 (=> (not res!344224) (not e!318169))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551289 (= res!344224 (validKeyInArray!0 k!1914))))

(declare-fun b!551290 () Bool)

(assert (=> b!551290 (= e!318169 e!318170)))

(declare-fun res!344222 () Bool)

(assert (=> b!551290 (=> (not res!344222) (not e!318170))))

(declare-datatypes ((SeekEntryResult!5132 0))(
  ( (MissingZero!5132 (index!22755 (_ BitVec 32))) (Found!5132 (index!22756 (_ BitVec 32))) (Intermediate!5132 (undefined!5944 Bool) (index!22757 (_ BitVec 32)) (x!51709 (_ BitVec 32))) (Undefined!5132) (MissingVacant!5132 (index!22758 (_ BitVec 32))) )
))
(declare-fun lt!250802 () SeekEntryResult!5132)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551290 (= res!344222 (or (= lt!250802 (MissingZero!5132 i!1132)) (= lt!250802 (MissingVacant!5132 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34735 (_ BitVec 32)) SeekEntryResult!5132)

(assert (=> b!551290 (= lt!250802 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551291 () Bool)

(assert (=> b!551291 (= e!318170 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!318171 () Bool)

(assert (=> b!551291 e!318171))

(declare-fun res!344221 () Bool)

(assert (=> b!551291 (=> (not res!344221) (not e!318171))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34735 (_ BitVec 32)) Bool)

(assert (=> b!551291 (= res!344221 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17038 0))(
  ( (Unit!17039) )
))
(declare-fun lt!250801 () Unit!17038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17038)

(assert (=> b!551291 (= lt!250801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551292 () Bool)

(declare-fun res!344218 () Bool)

(assert (=> b!551292 (=> (not res!344218) (not e!318169))))

(assert (=> b!551292 (= res!344218 (validKeyInArray!0 (select (arr!16676 a!3118) j!142)))))

(declare-fun res!344216 () Bool)

(assert (=> start!50442 (=> (not res!344216) (not e!318169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50442 (= res!344216 (validMask!0 mask!3119))))

(assert (=> start!50442 e!318169))

(assert (=> start!50442 true))

(declare-fun array_inv!12450 (array!34735) Bool)

(assert (=> start!50442 (array_inv!12450 a!3118)))

(declare-fun b!551293 () Bool)

(declare-fun res!344220 () Bool)

(assert (=> b!551293 (=> (not res!344220) (not e!318169))))

(declare-fun arrayContainsKey!0 (array!34735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551293 (= res!344220 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551294 () Bool)

(assert (=> b!551294 (= e!318171 (= (seekEntryOrOpen!0 (select (arr!16676 a!3118) j!142) a!3118 mask!3119) (Found!5132 j!142)))))

(declare-fun b!551295 () Bool)

(declare-fun res!344225 () Bool)

(assert (=> b!551295 (=> (not res!344225) (not e!318169))))

(assert (=> b!551295 (= res!344225 (and (= (size!17040 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17040 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17040 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551296 () Bool)

(declare-fun res!344219 () Bool)

(assert (=> b!551296 (=> (not res!344219) (not e!318170))))

(assert (=> b!551296 (= res!344219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551297 () Bool)

(declare-fun res!344223 () Bool)

(assert (=> b!551297 (=> (not res!344223) (not e!318170))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34735 (_ BitVec 32)) SeekEntryResult!5132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551297 (= res!344223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16676 a!3118) j!142) mask!3119) (select (arr!16676 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16676 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16676 a!3118) i!1132 k!1914) j!142) (array!34736 (store (arr!16676 a!3118) i!1132 k!1914) (size!17040 a!3118)) mask!3119)))))

(assert (= (and start!50442 res!344216) b!551295))

(assert (= (and b!551295 res!344225) b!551292))

(assert (= (and b!551292 res!344218) b!551289))

(assert (= (and b!551289 res!344224) b!551293))

(assert (= (and b!551293 res!344220) b!551290))

(assert (= (and b!551290 res!344222) b!551296))

(assert (= (and b!551296 res!344219) b!551288))

(assert (= (and b!551288 res!344217) b!551297))

(assert (= (and b!551297 res!344223) b!551291))

(assert (= (and b!551291 res!344221) b!551294))

(declare-fun m!528319 () Bool)

(assert (=> b!551293 m!528319))

(declare-fun m!528321 () Bool)

(assert (=> b!551297 m!528321))

(declare-fun m!528323 () Bool)

(assert (=> b!551297 m!528323))

(assert (=> b!551297 m!528321))

(declare-fun m!528325 () Bool)

(assert (=> b!551297 m!528325))

(declare-fun m!528327 () Bool)

(assert (=> b!551297 m!528327))

(assert (=> b!551297 m!528325))

(declare-fun m!528329 () Bool)

(assert (=> b!551297 m!528329))

(assert (=> b!551297 m!528323))

(assert (=> b!551297 m!528321))

(declare-fun m!528331 () Bool)

(assert (=> b!551297 m!528331))

(declare-fun m!528333 () Bool)

(assert (=> b!551297 m!528333))

(assert (=> b!551297 m!528325))

(assert (=> b!551297 m!528327))

(assert (=> b!551292 m!528321))

(assert (=> b!551292 m!528321))

(declare-fun m!528335 () Bool)

(assert (=> b!551292 m!528335))

(declare-fun m!528337 () Bool)

(assert (=> b!551289 m!528337))

(declare-fun m!528339 () Bool)

(assert (=> b!551288 m!528339))

(declare-fun m!528341 () Bool)

(assert (=> b!551296 m!528341))

(declare-fun m!528343 () Bool)

(assert (=> start!50442 m!528343))

(declare-fun m!528345 () Bool)

(assert (=> start!50442 m!528345))

(declare-fun m!528347 () Bool)

(assert (=> b!551290 m!528347))

(assert (=> b!551294 m!528321))

(assert (=> b!551294 m!528321))

(declare-fun m!528349 () Bool)

(assert (=> b!551294 m!528349))

(declare-fun m!528351 () Bool)

(assert (=> b!551291 m!528351))

(declare-fun m!528353 () Bool)

(assert (=> b!551291 m!528353))

(push 1)

(assert (not b!551289))

