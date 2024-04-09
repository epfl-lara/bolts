; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50224 () Bool)

(assert start!50224)

(declare-fun res!342631 () Bool)

(declare-fun e!317268 () Bool)

(assert (=> start!50224 (=> (not res!342631) (not e!317268))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50224 (= res!342631 (validMask!0 mask!3119))))

(assert (=> start!50224 e!317268))

(assert (=> start!50224 true))

(declare-datatypes ((array!34631 0))(
  ( (array!34632 (arr!16627 (Array (_ BitVec 32) (_ BitVec 64))) (size!16991 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34631)

(declare-fun array_inv!12401 (array!34631) Bool)

(assert (=> start!50224 (array_inv!12401 a!3118)))

(declare-fun b!549334 () Bool)

(declare-fun res!342635 () Bool)

(assert (=> b!549334 (=> (not res!342635) (not e!317268))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549334 (= res!342635 (validKeyInArray!0 (select (arr!16627 a!3118) j!142)))))

(declare-fun b!549335 () Bool)

(declare-fun e!317269 () Bool)

(assert (=> b!549335 (= e!317269 false)))

(declare-datatypes ((SeekEntryResult!5083 0))(
  ( (MissingZero!5083 (index!22559 (_ BitVec 32))) (Found!5083 (index!22560 (_ BitVec 32))) (Intermediate!5083 (undefined!5895 Bool) (index!22561 (_ BitVec 32)) (x!51520 (_ BitVec 32))) (Undefined!5083) (MissingVacant!5083 (index!22562 (_ BitVec 32))) )
))
(declare-fun lt!250149 () SeekEntryResult!5083)

(declare-fun lt!250151 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34631 (_ BitVec 32)) SeekEntryResult!5083)

(assert (=> b!549335 (= lt!250149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250151 (select (store (arr!16627 a!3118) i!1132 k0!1914) j!142) (array!34632 (store (arr!16627 a!3118) i!1132 k0!1914) (size!16991 a!3118)) mask!3119))))

(declare-fun lt!250148 () (_ BitVec 32))

(declare-fun lt!250150 () SeekEntryResult!5083)

(assert (=> b!549335 (= lt!250150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250148 (select (arr!16627 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549335 (= lt!250151 (toIndex!0 (select (store (arr!16627 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!549335 (= lt!250148 (toIndex!0 (select (arr!16627 a!3118) j!142) mask!3119))))

(declare-fun b!549336 () Bool)

(declare-fun res!342630 () Bool)

(assert (=> b!549336 (=> (not res!342630) (not e!317268))))

(assert (=> b!549336 (= res!342630 (and (= (size!16991 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16991 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16991 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549337 () Bool)

(declare-fun res!342633 () Bool)

(assert (=> b!549337 (=> (not res!342633) (not e!317268))))

(assert (=> b!549337 (= res!342633 (validKeyInArray!0 k0!1914))))

(declare-fun b!549338 () Bool)

(assert (=> b!549338 (= e!317268 e!317269)))

(declare-fun res!342628 () Bool)

(assert (=> b!549338 (=> (not res!342628) (not e!317269))))

(declare-fun lt!250147 () SeekEntryResult!5083)

(assert (=> b!549338 (= res!342628 (or (= lt!250147 (MissingZero!5083 i!1132)) (= lt!250147 (MissingVacant!5083 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34631 (_ BitVec 32)) SeekEntryResult!5083)

(assert (=> b!549338 (= lt!250147 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549339 () Bool)

(declare-fun res!342634 () Bool)

(assert (=> b!549339 (=> (not res!342634) (not e!317269))))

(declare-datatypes ((List!10760 0))(
  ( (Nil!10757) (Cons!10756 (h!11729 (_ BitVec 64)) (t!16996 List!10760)) )
))
(declare-fun arrayNoDuplicates!0 (array!34631 (_ BitVec 32) List!10760) Bool)

(assert (=> b!549339 (= res!342634 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10757))))

(declare-fun b!549340 () Bool)

(declare-fun res!342632 () Bool)

(assert (=> b!549340 (=> (not res!342632) (not e!317269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34631 (_ BitVec 32)) Bool)

(assert (=> b!549340 (= res!342632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549341 () Bool)

(declare-fun res!342629 () Bool)

(assert (=> b!549341 (=> (not res!342629) (not e!317268))))

(declare-fun arrayContainsKey!0 (array!34631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549341 (= res!342629 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50224 res!342631) b!549336))

(assert (= (and b!549336 res!342630) b!549334))

(assert (= (and b!549334 res!342635) b!549337))

(assert (= (and b!549337 res!342633) b!549341))

(assert (= (and b!549341 res!342629) b!549338))

(assert (= (and b!549338 res!342628) b!549340))

(assert (= (and b!549340 res!342632) b!549339))

(assert (= (and b!549339 res!342634) b!549335))

(declare-fun m!526243 () Bool)

(assert (=> b!549338 m!526243))

(declare-fun m!526245 () Bool)

(assert (=> b!549339 m!526245))

(declare-fun m!526247 () Bool)

(assert (=> b!549335 m!526247))

(declare-fun m!526249 () Bool)

(assert (=> b!549335 m!526249))

(assert (=> b!549335 m!526247))

(declare-fun m!526251 () Bool)

(assert (=> b!549335 m!526251))

(declare-fun m!526253 () Bool)

(assert (=> b!549335 m!526253))

(assert (=> b!549335 m!526251))

(declare-fun m!526255 () Bool)

(assert (=> b!549335 m!526255))

(assert (=> b!549335 m!526247))

(declare-fun m!526257 () Bool)

(assert (=> b!549335 m!526257))

(assert (=> b!549335 m!526251))

(declare-fun m!526259 () Bool)

(assert (=> b!549335 m!526259))

(declare-fun m!526261 () Bool)

(assert (=> b!549341 m!526261))

(assert (=> b!549334 m!526247))

(assert (=> b!549334 m!526247))

(declare-fun m!526263 () Bool)

(assert (=> b!549334 m!526263))

(declare-fun m!526265 () Bool)

(assert (=> b!549337 m!526265))

(declare-fun m!526267 () Bool)

(assert (=> start!50224 m!526267))

(declare-fun m!526269 () Bool)

(assert (=> start!50224 m!526269))

(declare-fun m!526271 () Bool)

(assert (=> b!549340 m!526271))

(check-sat (not b!549339) (not b!549338) (not b!549337) (not start!50224) (not b!549340) (not b!549335) (not b!549341) (not b!549334))
(check-sat)
