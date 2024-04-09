; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29822 () Bool)

(assert start!29822)

(declare-fun b!299956 () Bool)

(declare-fun e!189447 () Bool)

(declare-fun e!189446 () Bool)

(assert (=> b!299956 (= e!189447 e!189446)))

(declare-fun res!158150 () Bool)

(assert (=> b!299956 (=> (not res!158150) (not e!189446))))

(declare-datatypes ((SeekEntryResult!2329 0))(
  ( (MissingZero!2329 (index!11492 (_ BitVec 32))) (Found!2329 (index!11493 (_ BitVec 32))) (Intermediate!2329 (undefined!3141 Bool) (index!11494 (_ BitVec 32)) (x!29712 (_ BitVec 32))) (Undefined!2329) (MissingVacant!2329 (index!11495 (_ BitVec 32))) )
))
(declare-fun lt!149246 () SeekEntryResult!2329)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!299956 (= res!158150 (or (= lt!149246 (MissingZero!2329 i!1256)) (= lt!149246 (MissingVacant!2329 i!1256))))))

(declare-datatypes ((array!15148 0))(
  ( (array!15149 (arr!7169 (Array (_ BitVec 32) (_ BitVec 64))) (size!7521 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15148)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15148 (_ BitVec 32)) SeekEntryResult!2329)

(assert (=> b!299956 (= lt!149246 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!158147 () Bool)

(assert (=> start!29822 (=> (not res!158147) (not e!189447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29822 (= res!158147 (validMask!0 mask!3809))))

(assert (=> start!29822 e!189447))

(assert (=> start!29822 true))

(declare-fun array_inv!5123 (array!15148) Bool)

(assert (=> start!29822 (array_inv!5123 a!3312)))

(declare-fun b!299957 () Bool)

(declare-fun res!158146 () Bool)

(assert (=> b!299957 (=> (not res!158146) (not e!189447))))

(assert (=> b!299957 (= res!158146 (and (= (size!7521 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7521 a!3312))))))

(declare-fun b!299958 () Bool)

(assert (=> b!299958 (= e!189446 false)))

(declare-fun lt!149247 () SeekEntryResult!2329)

(declare-fun lt!149249 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15148 (_ BitVec 32)) SeekEntryResult!2329)

(assert (=> b!299958 (= lt!149247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149249 k0!2524 (array!15149 (store (arr!7169 a!3312) i!1256 k0!2524) (size!7521 a!3312)) mask!3809))))

(declare-fun lt!149248 () SeekEntryResult!2329)

(assert (=> b!299958 (= lt!149248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149249 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299958 (= lt!149249 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!299959 () Bool)

(declare-fun res!158149 () Bool)

(assert (=> b!299959 (=> (not res!158149) (not e!189447))))

(declare-fun arrayContainsKey!0 (array!15148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299959 (= res!158149 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299960 () Bool)

(declare-fun res!158151 () Bool)

(assert (=> b!299960 (=> (not res!158151) (not e!189447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299960 (= res!158151 (validKeyInArray!0 k0!2524))))

(declare-fun b!299961 () Bool)

(declare-fun res!158148 () Bool)

(assert (=> b!299961 (=> (not res!158148) (not e!189446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15148 (_ BitVec 32)) Bool)

(assert (=> b!299961 (= res!158148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29822 res!158147) b!299957))

(assert (= (and b!299957 res!158146) b!299960))

(assert (= (and b!299960 res!158151) b!299959))

(assert (= (and b!299959 res!158149) b!299956))

(assert (= (and b!299956 res!158150) b!299961))

(assert (= (and b!299961 res!158148) b!299958))

(declare-fun m!312033 () Bool)

(assert (=> b!299960 m!312033))

(declare-fun m!312035 () Bool)

(assert (=> b!299956 m!312035))

(declare-fun m!312037 () Bool)

(assert (=> start!29822 m!312037))

(declare-fun m!312039 () Bool)

(assert (=> start!29822 m!312039))

(declare-fun m!312041 () Bool)

(assert (=> b!299959 m!312041))

(declare-fun m!312043 () Bool)

(assert (=> b!299961 m!312043))

(declare-fun m!312045 () Bool)

(assert (=> b!299958 m!312045))

(declare-fun m!312047 () Bool)

(assert (=> b!299958 m!312047))

(declare-fun m!312049 () Bool)

(assert (=> b!299958 m!312049))

(declare-fun m!312051 () Bool)

(assert (=> b!299958 m!312051))

(check-sat (not start!29822) (not b!299958) (not b!299961) (not b!299956) (not b!299960) (not b!299959))
(check-sat)
