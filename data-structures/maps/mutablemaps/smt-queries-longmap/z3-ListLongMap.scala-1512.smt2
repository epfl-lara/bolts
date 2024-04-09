; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28614 () Bool)

(assert start!28614)

(declare-fun b!292417 () Bool)

(declare-fun res!153513 () Bool)

(declare-fun e!185017 () Bool)

(assert (=> b!292417 (=> (not res!153513) (not e!185017))))

(declare-datatypes ((array!14782 0))(
  ( (array!14783 (arr!7013 (Array (_ BitVec 32) (_ BitVec 64))) (size!7365 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14782)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292417 (= res!153513 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!153511 () Bool)

(assert (=> start!28614 (=> (not res!153511) (not e!185017))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28614 (= res!153511 (validMask!0 mask!3809))))

(assert (=> start!28614 e!185017))

(assert (=> start!28614 true))

(declare-fun array_inv!4967 (array!14782) Bool)

(assert (=> start!28614 (array_inv!4967 a!3312)))

(declare-fun b!292418 () Bool)

(declare-fun res!153515 () Bool)

(declare-fun e!185016 () Bool)

(assert (=> b!292418 (=> (not res!153515) (not e!185016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14782 (_ BitVec 32)) Bool)

(assert (=> b!292418 (= res!153515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292419 () Bool)

(declare-fun res!153516 () Bool)

(assert (=> b!292419 (=> (not res!153516) (not e!185017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292419 (= res!153516 (validKeyInArray!0 k0!2524))))

(declare-fun b!292420 () Bool)

(declare-fun res!153514 () Bool)

(assert (=> b!292420 (=> (not res!153514) (not e!185017))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292420 (= res!153514 (and (= (size!7365 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7365 a!3312))))))

(declare-fun b!292421 () Bool)

(assert (=> b!292421 (= e!185016 false)))

(declare-fun lt!144879 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2173 0))(
  ( (MissingZero!2173 (index!10862 (_ BitVec 32))) (Found!2173 (index!10863 (_ BitVec 32))) (Intermediate!2173 (undefined!2985 Bool) (index!10864 (_ BitVec 32)) (x!29020 (_ BitVec 32))) (Undefined!2173) (MissingVacant!2173 (index!10865 (_ BitVec 32))) )
))
(declare-fun lt!144878 () SeekEntryResult!2173)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14782 (_ BitVec 32)) SeekEntryResult!2173)

(assert (=> b!292421 (= lt!144878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144879 k0!2524 (array!14783 (store (arr!7013 a!3312) i!1256 k0!2524) (size!7365 a!3312)) mask!3809))))

(declare-fun lt!144880 () SeekEntryResult!2173)

(assert (=> b!292421 (= lt!144880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144879 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292421 (= lt!144879 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292422 () Bool)

(assert (=> b!292422 (= e!185017 e!185016)))

(declare-fun res!153512 () Bool)

(assert (=> b!292422 (=> (not res!153512) (not e!185016))))

(declare-fun lt!144881 () SeekEntryResult!2173)

(assert (=> b!292422 (= res!153512 (or (= lt!144881 (MissingZero!2173 i!1256)) (= lt!144881 (MissingVacant!2173 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14782 (_ BitVec 32)) SeekEntryResult!2173)

(assert (=> b!292422 (= lt!144881 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28614 res!153511) b!292420))

(assert (= (and b!292420 res!153514) b!292419))

(assert (= (and b!292419 res!153516) b!292417))

(assert (= (and b!292417 res!153513) b!292422))

(assert (= (and b!292422 res!153512) b!292418))

(assert (= (and b!292418 res!153515) b!292421))

(declare-fun m!306195 () Bool)

(assert (=> b!292421 m!306195))

(declare-fun m!306197 () Bool)

(assert (=> b!292421 m!306197))

(declare-fun m!306199 () Bool)

(assert (=> b!292421 m!306199))

(declare-fun m!306201 () Bool)

(assert (=> b!292421 m!306201))

(declare-fun m!306203 () Bool)

(assert (=> b!292417 m!306203))

(declare-fun m!306205 () Bool)

(assert (=> b!292422 m!306205))

(declare-fun m!306207 () Bool)

(assert (=> b!292419 m!306207))

(declare-fun m!306209 () Bool)

(assert (=> b!292418 m!306209))

(declare-fun m!306211 () Bool)

(assert (=> start!28614 m!306211))

(declare-fun m!306213 () Bool)

(assert (=> start!28614 m!306213))

(check-sat (not b!292421) (not b!292419) (not b!292418) (not b!292417) (not b!292422) (not start!28614))
(check-sat)
