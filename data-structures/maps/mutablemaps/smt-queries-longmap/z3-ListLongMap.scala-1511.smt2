; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28608 () Bool)

(assert start!28608)

(declare-fun b!292363 () Bool)

(declare-fun res!153461 () Bool)

(declare-fun e!184989 () Bool)

(assert (=> b!292363 (=> (not res!153461) (not e!184989))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14776 0))(
  ( (array!14777 (arr!7010 (Array (_ BitVec 32) (_ BitVec 64))) (size!7362 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14776)

(assert (=> b!292363 (= res!153461 (and (= (size!7362 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7362 a!3312))))))

(declare-fun b!292364 () Bool)

(declare-fun e!184990 () Bool)

(assert (=> b!292364 (= e!184989 e!184990)))

(declare-fun res!153460 () Bool)

(assert (=> b!292364 (=> (not res!153460) (not e!184990))))

(declare-datatypes ((SeekEntryResult!2170 0))(
  ( (MissingZero!2170 (index!10850 (_ BitVec 32))) (Found!2170 (index!10851 (_ BitVec 32))) (Intermediate!2170 (undefined!2982 Bool) (index!10852 (_ BitVec 32)) (x!29009 (_ BitVec 32))) (Undefined!2170) (MissingVacant!2170 (index!10853 (_ BitVec 32))) )
))
(declare-fun lt!144844 () SeekEntryResult!2170)

(assert (=> b!292364 (= res!153460 (or (= lt!144844 (MissingZero!2170 i!1256)) (= lt!144844 (MissingVacant!2170 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14776 (_ BitVec 32)) SeekEntryResult!2170)

(assert (=> b!292364 (= lt!144844 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292365 () Bool)

(declare-fun res!153459 () Bool)

(assert (=> b!292365 (=> (not res!153459) (not e!184989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292365 (= res!153459 (validKeyInArray!0 k0!2524))))

(declare-fun res!153458 () Bool)

(assert (=> start!28608 (=> (not res!153458) (not e!184989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28608 (= res!153458 (validMask!0 mask!3809))))

(assert (=> start!28608 e!184989))

(assert (=> start!28608 true))

(declare-fun array_inv!4964 (array!14776) Bool)

(assert (=> start!28608 (array_inv!4964 a!3312)))

(declare-fun b!292366 () Bool)

(assert (=> b!292366 (= e!184990 false)))

(declare-fun lt!144843 () SeekEntryResult!2170)

(declare-fun lt!144845 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14776 (_ BitVec 32)) SeekEntryResult!2170)

(assert (=> b!292366 (= lt!144843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144845 k0!2524 (array!14777 (store (arr!7010 a!3312) i!1256 k0!2524) (size!7362 a!3312)) mask!3809))))

(declare-fun lt!144842 () SeekEntryResult!2170)

(assert (=> b!292366 (= lt!144842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144845 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292366 (= lt!144845 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292367 () Bool)

(declare-fun res!153462 () Bool)

(assert (=> b!292367 (=> (not res!153462) (not e!184990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14776 (_ BitVec 32)) Bool)

(assert (=> b!292367 (= res!153462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292368 () Bool)

(declare-fun res!153457 () Bool)

(assert (=> b!292368 (=> (not res!153457) (not e!184989))))

(declare-fun arrayContainsKey!0 (array!14776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292368 (= res!153457 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28608 res!153458) b!292363))

(assert (= (and b!292363 res!153461) b!292365))

(assert (= (and b!292365 res!153459) b!292368))

(assert (= (and b!292368 res!153457) b!292364))

(assert (= (and b!292364 res!153460) b!292367))

(assert (= (and b!292367 res!153462) b!292366))

(declare-fun m!306135 () Bool)

(assert (=> b!292364 m!306135))

(declare-fun m!306137 () Bool)

(assert (=> b!292365 m!306137))

(declare-fun m!306139 () Bool)

(assert (=> start!28608 m!306139))

(declare-fun m!306141 () Bool)

(assert (=> start!28608 m!306141))

(declare-fun m!306143 () Bool)

(assert (=> b!292368 m!306143))

(declare-fun m!306145 () Bool)

(assert (=> b!292366 m!306145))

(declare-fun m!306147 () Bool)

(assert (=> b!292366 m!306147))

(declare-fun m!306149 () Bool)

(assert (=> b!292366 m!306149))

(declare-fun m!306151 () Bool)

(assert (=> b!292366 m!306151))

(declare-fun m!306153 () Bool)

(assert (=> b!292367 m!306153))

(check-sat (not b!292367) (not b!292365) (not b!292364) (not start!28608) (not b!292366) (not b!292368))
(check-sat)
