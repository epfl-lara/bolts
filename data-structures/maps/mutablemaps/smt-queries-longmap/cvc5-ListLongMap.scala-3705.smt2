; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50864 () Bool)

(assert start!50864)

(declare-fun b!556274 () Bool)

(declare-fun res!348839 () Bool)

(declare-fun e!320480 () Bool)

(assert (=> b!556274 (=> (not res!348839) (not e!320480))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35043 0))(
  ( (array!35044 (arr!16827 (Array (_ BitVec 32) (_ BitVec 64))) (size!17191 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35043)

(declare-datatypes ((SeekEntryResult!5283 0))(
  ( (MissingZero!5283 (index!23359 (_ BitVec 32))) (Found!5283 (index!23360 (_ BitVec 32))) (Intermediate!5283 (undefined!6095 Bool) (index!23361 (_ BitVec 32)) (x!52280 (_ BitVec 32))) (Undefined!5283) (MissingVacant!5283 (index!23362 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35043 (_ BitVec 32)) SeekEntryResult!5283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556274 (= res!348839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16827 a!3118) j!142) mask!3119) (select (arr!16827 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16827 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16827 a!3118) i!1132 k!1914) j!142) (array!35044 (store (arr!16827 a!3118) i!1132 k!1914) (size!17191 a!3118)) mask!3119)))))

(declare-fun b!556275 () Bool)

(declare-fun res!348840 () Bool)

(declare-fun e!320479 () Bool)

(assert (=> b!556275 (=> (not res!348840) (not e!320479))))

(declare-fun arrayContainsKey!0 (array!35043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556275 (= res!348840 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556276 () Bool)

(declare-fun res!348836 () Bool)

(assert (=> b!556276 (=> (not res!348836) (not e!320480))))

(declare-datatypes ((List!10960 0))(
  ( (Nil!10957) (Cons!10956 (h!11941 (_ BitVec 64)) (t!17196 List!10960)) )
))
(declare-fun arrayNoDuplicates!0 (array!35043 (_ BitVec 32) List!10960) Bool)

(assert (=> b!556276 (= res!348836 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10957))))

(declare-fun res!348837 () Bool)

(assert (=> start!50864 (=> (not res!348837) (not e!320479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50864 (= res!348837 (validMask!0 mask!3119))))

(assert (=> start!50864 e!320479))

(assert (=> start!50864 true))

(declare-fun array_inv!12601 (array!35043) Bool)

(assert (=> start!50864 (array_inv!12601 a!3118)))

(declare-fun e!320481 () Bool)

(declare-fun b!556277 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35043 (_ BitVec 32)) SeekEntryResult!5283)

(assert (=> b!556277 (= e!320481 (= (seekEntryOrOpen!0 (select (arr!16827 a!3118) j!142) a!3118 mask!3119) (Found!5283 j!142)))))

(declare-fun b!556278 () Bool)

(declare-fun res!348844 () Bool)

(assert (=> b!556278 (=> (not res!348844) (not e!320479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556278 (= res!348844 (validKeyInArray!0 k!1914))))

(declare-fun b!556279 () Bool)

(declare-fun res!348845 () Bool)

(assert (=> b!556279 (=> (not res!348845) (not e!320479))))

(assert (=> b!556279 (= res!348845 (validKeyInArray!0 (select (arr!16827 a!3118) j!142)))))

(declare-fun b!556280 () Bool)

(declare-fun res!348843 () Bool)

(assert (=> b!556280 (=> (not res!348843) (not e!320480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35043 (_ BitVec 32)) Bool)

(assert (=> b!556280 (= res!348843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556281 () Bool)

(assert (=> b!556281 (= e!320480 (not true))))

(assert (=> b!556281 e!320481))

(declare-fun res!348841 () Bool)

(assert (=> b!556281 (=> (not res!348841) (not e!320481))))

(assert (=> b!556281 (= res!348841 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17340 0))(
  ( (Unit!17341) )
))
(declare-fun lt!252857 () Unit!17340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17340)

(assert (=> b!556281 (= lt!252857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556282 () Bool)

(declare-fun res!348842 () Bool)

(assert (=> b!556282 (=> (not res!348842) (not e!320479))))

(assert (=> b!556282 (= res!348842 (and (= (size!17191 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17191 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17191 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556283 () Bool)

(assert (=> b!556283 (= e!320479 e!320480)))

(declare-fun res!348838 () Bool)

(assert (=> b!556283 (=> (not res!348838) (not e!320480))))

(declare-fun lt!252856 () SeekEntryResult!5283)

(assert (=> b!556283 (= res!348838 (or (= lt!252856 (MissingZero!5283 i!1132)) (= lt!252856 (MissingVacant!5283 i!1132))))))

(assert (=> b!556283 (= lt!252856 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50864 res!348837) b!556282))

(assert (= (and b!556282 res!348842) b!556279))

(assert (= (and b!556279 res!348845) b!556278))

(assert (= (and b!556278 res!348844) b!556275))

(assert (= (and b!556275 res!348840) b!556283))

(assert (= (and b!556283 res!348838) b!556280))

(assert (= (and b!556280 res!348843) b!556276))

(assert (= (and b!556276 res!348836) b!556274))

(assert (= (and b!556274 res!348839) b!556281))

(assert (= (and b!556281 res!348841) b!556277))

(declare-fun m!534313 () Bool)

(assert (=> b!556283 m!534313))

(declare-fun m!534315 () Bool)

(assert (=> b!556276 m!534315))

(declare-fun m!534317 () Bool)

(assert (=> start!50864 m!534317))

(declare-fun m!534319 () Bool)

(assert (=> start!50864 m!534319))

(declare-fun m!534321 () Bool)

(assert (=> b!556279 m!534321))

(assert (=> b!556279 m!534321))

(declare-fun m!534323 () Bool)

(assert (=> b!556279 m!534323))

(assert (=> b!556274 m!534321))

(declare-fun m!534325 () Bool)

(assert (=> b!556274 m!534325))

(assert (=> b!556274 m!534321))

(declare-fun m!534327 () Bool)

(assert (=> b!556274 m!534327))

(declare-fun m!534329 () Bool)

(assert (=> b!556274 m!534329))

(assert (=> b!556274 m!534327))

(declare-fun m!534331 () Bool)

(assert (=> b!556274 m!534331))

(assert (=> b!556274 m!534325))

(assert (=> b!556274 m!534321))

(declare-fun m!534333 () Bool)

(assert (=> b!556274 m!534333))

(declare-fun m!534335 () Bool)

(assert (=> b!556274 m!534335))

(assert (=> b!556274 m!534327))

(assert (=> b!556274 m!534329))

(declare-fun m!534337 () Bool)

(assert (=> b!556280 m!534337))

(declare-fun m!534339 () Bool)

(assert (=> b!556275 m!534339))

(declare-fun m!534341 () Bool)

(assert (=> b!556281 m!534341))

(declare-fun m!534343 () Bool)

(assert (=> b!556281 m!534343))

(assert (=> b!556277 m!534321))

(assert (=> b!556277 m!534321))

(declare-fun m!534345 () Bool)

(assert (=> b!556277 m!534345))

(declare-fun m!534347 () Bool)

(assert (=> b!556278 m!534347))

(push 1)

