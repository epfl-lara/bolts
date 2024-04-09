; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28080 () Bool)

(assert start!28080)

(declare-fun res!149414 () Bool)

(declare-fun e!182158 () Bool)

(assert (=> start!28080 (=> (not res!149414) (not e!182158))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28080 (= res!149414 (validMask!0 mask!3809))))

(assert (=> start!28080 e!182158))

(assert (=> start!28080 true))

(declare-datatypes ((array!14428 0))(
  ( (array!14429 (arr!6842 (Array (_ BitVec 32) (_ BitVec 64))) (size!7194 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14428)

(declare-fun array_inv!4796 (array!14428) Bool)

(assert (=> start!28080 (array_inv!4796 a!3312)))

(declare-fun b!287611 () Bool)

(declare-fun res!149418 () Bool)

(declare-fun e!182157 () Bool)

(assert (=> b!287611 (=> (not res!149418) (not e!182157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14428 (_ BitVec 32)) Bool)

(assert (=> b!287611 (= res!149418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287612 () Bool)

(assert (=> b!287612 (= e!182157 false)))

(declare-datatypes ((SeekEntryResult!2002 0))(
  ( (MissingZero!2002 (index!10178 (_ BitVec 32))) (Found!2002 (index!10179 (_ BitVec 32))) (Intermediate!2002 (undefined!2814 Bool) (index!10180 (_ BitVec 32)) (x!28369 (_ BitVec 32))) (Undefined!2002) (MissingVacant!2002 (index!10181 (_ BitVec 32))) )
))
(declare-fun lt!141631 () SeekEntryResult!2002)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14428 (_ BitVec 32)) SeekEntryResult!2002)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287612 (= lt!141631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!287613 () Bool)

(declare-fun res!149417 () Bool)

(assert (=> b!287613 (=> (not res!149417) (not e!182158))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287613 (= res!149417 (and (= (size!7194 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7194 a!3312))))))

(declare-fun b!287614 () Bool)

(declare-fun res!149413 () Bool)

(assert (=> b!287614 (=> (not res!149413) (not e!182158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287614 (= res!149413 (validKeyInArray!0 k0!2524))))

(declare-fun b!287615 () Bool)

(assert (=> b!287615 (= e!182158 e!182157)))

(declare-fun res!149416 () Bool)

(assert (=> b!287615 (=> (not res!149416) (not e!182157))))

(declare-fun lt!141632 () SeekEntryResult!2002)

(assert (=> b!287615 (= res!149416 (or (= lt!141632 (MissingZero!2002 i!1256)) (= lt!141632 (MissingVacant!2002 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14428 (_ BitVec 32)) SeekEntryResult!2002)

(assert (=> b!287615 (= lt!141632 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287616 () Bool)

(declare-fun res!149415 () Bool)

(assert (=> b!287616 (=> (not res!149415) (not e!182158))))

(declare-fun arrayContainsKey!0 (array!14428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287616 (= res!149415 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28080 res!149414) b!287613))

(assert (= (and b!287613 res!149417) b!287614))

(assert (= (and b!287614 res!149413) b!287616))

(assert (= (and b!287616 res!149415) b!287615))

(assert (= (and b!287615 res!149416) b!287611))

(assert (= (and b!287611 res!149418) b!287612))

(declare-fun m!301991 () Bool)

(assert (=> b!287614 m!301991))

(declare-fun m!301993 () Bool)

(assert (=> b!287615 m!301993))

(declare-fun m!301995 () Bool)

(assert (=> start!28080 m!301995))

(declare-fun m!301997 () Bool)

(assert (=> start!28080 m!301997))

(declare-fun m!301999 () Bool)

(assert (=> b!287612 m!301999))

(assert (=> b!287612 m!301999))

(declare-fun m!302001 () Bool)

(assert (=> b!287612 m!302001))

(declare-fun m!302003 () Bool)

(assert (=> b!287611 m!302003))

(declare-fun m!302005 () Bool)

(assert (=> b!287616 m!302005))

(check-sat (not b!287615) (not b!287612) (not b!287614) (not b!287611) (not start!28080) (not b!287616))
(check-sat)
