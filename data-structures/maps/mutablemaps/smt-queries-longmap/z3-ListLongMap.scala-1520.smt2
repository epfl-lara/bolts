; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28662 () Bool)

(assert start!28662)

(declare-fun b!292849 () Bool)

(declare-fun res!153944 () Bool)

(declare-fun e!185232 () Bool)

(assert (=> b!292849 (=> (not res!153944) (not e!185232))))

(declare-datatypes ((array!14830 0))(
  ( (array!14831 (arr!7037 (Array (_ BitVec 32) (_ BitVec 64))) (size!7389 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14830)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292849 (= res!153944 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292850 () Bool)

(declare-fun e!185231 () Bool)

(assert (=> b!292850 (= e!185231 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2197 0))(
  ( (MissingZero!2197 (index!10958 (_ BitVec 32))) (Found!2197 (index!10959 (_ BitVec 32))) (Intermediate!2197 (undefined!3009 Bool) (index!10960 (_ BitVec 32)) (x!29108 (_ BitVec 32))) (Undefined!2197) (MissingVacant!2197 (index!10961 (_ BitVec 32))) )
))
(declare-fun lt!145169 () SeekEntryResult!2197)

(declare-fun lt!145168 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14830 (_ BitVec 32)) SeekEntryResult!2197)

(assert (=> b!292850 (= lt!145169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145168 k0!2524 (array!14831 (store (arr!7037 a!3312) i!1256 k0!2524) (size!7389 a!3312)) mask!3809))))

(declare-fun lt!145166 () SeekEntryResult!2197)

(assert (=> b!292850 (= lt!145166 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145168 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292850 (= lt!145168 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292851 () Bool)

(declare-fun res!153948 () Bool)

(assert (=> b!292851 (=> (not res!153948) (not e!185232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292851 (= res!153948 (validKeyInArray!0 k0!2524))))

(declare-fun b!292852 () Bool)

(declare-fun res!153943 () Bool)

(assert (=> b!292852 (=> (not res!153943) (not e!185231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14830 (_ BitVec 32)) Bool)

(assert (=> b!292852 (= res!153943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153947 () Bool)

(assert (=> start!28662 (=> (not res!153947) (not e!185232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28662 (= res!153947 (validMask!0 mask!3809))))

(assert (=> start!28662 e!185232))

(assert (=> start!28662 true))

(declare-fun array_inv!4991 (array!14830) Bool)

(assert (=> start!28662 (array_inv!4991 a!3312)))

(declare-fun b!292853 () Bool)

(declare-fun res!153945 () Bool)

(assert (=> b!292853 (=> (not res!153945) (not e!185232))))

(assert (=> b!292853 (= res!153945 (and (= (size!7389 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7389 a!3312))))))

(declare-fun b!292854 () Bool)

(assert (=> b!292854 (= e!185232 e!185231)))

(declare-fun res!153946 () Bool)

(assert (=> b!292854 (=> (not res!153946) (not e!185231))))

(declare-fun lt!145167 () SeekEntryResult!2197)

(assert (=> b!292854 (= res!153946 (or (= lt!145167 (MissingZero!2197 i!1256)) (= lt!145167 (MissingVacant!2197 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14830 (_ BitVec 32)) SeekEntryResult!2197)

(assert (=> b!292854 (= lt!145167 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28662 res!153947) b!292853))

(assert (= (and b!292853 res!153945) b!292851))

(assert (= (and b!292851 res!153948) b!292849))

(assert (= (and b!292849 res!153944) b!292854))

(assert (= (and b!292854 res!153946) b!292852))

(assert (= (and b!292852 res!153943) b!292850))

(declare-fun m!306675 () Bool)

(assert (=> b!292849 m!306675))

(declare-fun m!306677 () Bool)

(assert (=> b!292852 m!306677))

(declare-fun m!306679 () Bool)

(assert (=> b!292851 m!306679))

(declare-fun m!306681 () Bool)

(assert (=> b!292850 m!306681))

(declare-fun m!306683 () Bool)

(assert (=> b!292850 m!306683))

(declare-fun m!306685 () Bool)

(assert (=> b!292850 m!306685))

(declare-fun m!306687 () Bool)

(assert (=> b!292850 m!306687))

(declare-fun m!306689 () Bool)

(assert (=> b!292854 m!306689))

(declare-fun m!306691 () Bool)

(assert (=> start!28662 m!306691))

(declare-fun m!306693 () Bool)

(assert (=> start!28662 m!306693))

(check-sat (not b!292849) (not b!292852) (not b!292854) (not start!28662) (not b!292850) (not b!292851))
(check-sat)
