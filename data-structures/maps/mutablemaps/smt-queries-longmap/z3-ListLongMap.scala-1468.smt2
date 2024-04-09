; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28206 () Bool)

(assert start!28206)

(declare-fun b!288665 () Bool)

(declare-fun res!150330 () Bool)

(declare-fun e!182778 () Bool)

(assert (=> b!288665 (=> (not res!150330) (not e!182778))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288665 (= res!150330 (validKeyInArray!0 k0!2524))))

(declare-fun b!288666 () Bool)

(declare-fun e!182775 () Bool)

(assert (=> b!288666 (= e!182775 (not true))))

(declare-datatypes ((array!14509 0))(
  ( (array!14510 (arr!6881 (Array (_ BitVec 32) (_ BitVec 64))) (size!7233 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14509)

(declare-datatypes ((SeekEntryResult!2041 0))(
  ( (MissingZero!2041 (index!10334 (_ BitVec 32))) (Found!2041 (index!10335 (_ BitVec 32))) (Intermediate!2041 (undefined!2853 Bool) (index!10336 (_ BitVec 32)) (x!28518 (_ BitVec 32))) (Undefined!2041) (MissingVacant!2041 (index!10337 (_ BitVec 32))) )
))
(declare-fun lt!142308 () SeekEntryResult!2041)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288666 (and (= (select (arr!6881 a!3312) (index!10336 lt!142308)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10336 lt!142308) i!1256))))

(declare-fun res!150326 () Bool)

(assert (=> start!28206 (=> (not res!150326) (not e!182778))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28206 (= res!150326 (validMask!0 mask!3809))))

(assert (=> start!28206 e!182778))

(assert (=> start!28206 true))

(declare-fun array_inv!4835 (array!14509) Bool)

(assert (=> start!28206 (array_inv!4835 a!3312)))

(declare-fun b!288667 () Bool)

(declare-fun res!150329 () Bool)

(declare-fun e!182777 () Bool)

(assert (=> b!288667 (=> (not res!150329) (not e!182777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14509 (_ BitVec 32)) Bool)

(assert (=> b!288667 (= res!150329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288668 () Bool)

(assert (=> b!288668 (= e!182778 e!182777)))

(declare-fun res!150328 () Bool)

(assert (=> b!288668 (=> (not res!150328) (not e!182777))))

(declare-fun lt!142309 () SeekEntryResult!2041)

(declare-fun lt!142310 () Bool)

(assert (=> b!288668 (= res!150328 (or lt!142310 (= lt!142309 (MissingVacant!2041 i!1256))))))

(assert (=> b!288668 (= lt!142310 (= lt!142309 (MissingZero!2041 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14509 (_ BitVec 32)) SeekEntryResult!2041)

(assert (=> b!288668 (= lt!142309 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288669 () Bool)

(declare-fun res!150333 () Bool)

(assert (=> b!288669 (=> (not res!150333) (not e!182778))))

(declare-fun arrayContainsKey!0 (array!14509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288669 (= res!150333 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288670 () Bool)

(declare-fun res!150327 () Bool)

(assert (=> b!288670 (=> (not res!150327) (not e!182778))))

(assert (=> b!288670 (= res!150327 (and (= (size!7233 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7233 a!3312))))))

(declare-fun b!288671 () Bool)

(declare-fun e!182776 () Bool)

(assert (=> b!288671 (= e!182777 e!182776)))

(declare-fun res!150332 () Bool)

(assert (=> b!288671 (=> (not res!150332) (not e!182776))))

(assert (=> b!288671 (= res!150332 lt!142310)))

(declare-fun lt!142306 () (_ BitVec 32))

(declare-fun lt!142305 () SeekEntryResult!2041)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14509 (_ BitVec 32)) SeekEntryResult!2041)

(assert (=> b!288671 (= lt!142305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142306 k0!2524 (array!14510 (store (arr!6881 a!3312) i!1256 k0!2524) (size!7233 a!3312)) mask!3809))))

(assert (=> b!288671 (= lt!142308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142306 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288671 (= lt!142306 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288672 () Bool)

(assert (=> b!288672 (= e!182776 e!182775)))

(declare-fun res!150331 () Bool)

(assert (=> b!288672 (=> (not res!150331) (not e!182775))))

(declare-fun lt!142307 () Bool)

(assert (=> b!288672 (= res!150331 (and (or lt!142307 (not (undefined!2853 lt!142308))) (or lt!142307 (not (= (select (arr!6881 a!3312) (index!10336 lt!142308)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142307 (not (= (select (arr!6881 a!3312) (index!10336 lt!142308)) k0!2524))) (not lt!142307)))))

(get-info :version)

(assert (=> b!288672 (= lt!142307 (not ((_ is Intermediate!2041) lt!142308)))))

(assert (= (and start!28206 res!150326) b!288670))

(assert (= (and b!288670 res!150327) b!288665))

(assert (= (and b!288665 res!150330) b!288669))

(assert (= (and b!288669 res!150333) b!288668))

(assert (= (and b!288668 res!150328) b!288667))

(assert (= (and b!288667 res!150329) b!288671))

(assert (= (and b!288671 res!150332) b!288672))

(assert (= (and b!288672 res!150331) b!288666))

(declare-fun m!302915 () Bool)

(assert (=> b!288672 m!302915))

(declare-fun m!302917 () Bool)

(assert (=> b!288667 m!302917))

(declare-fun m!302919 () Bool)

(assert (=> b!288665 m!302919))

(declare-fun m!302921 () Bool)

(assert (=> b!288671 m!302921))

(declare-fun m!302923 () Bool)

(assert (=> b!288671 m!302923))

(declare-fun m!302925 () Bool)

(assert (=> b!288671 m!302925))

(declare-fun m!302927 () Bool)

(assert (=> b!288671 m!302927))

(declare-fun m!302929 () Bool)

(assert (=> start!28206 m!302929))

(declare-fun m!302931 () Bool)

(assert (=> start!28206 m!302931))

(declare-fun m!302933 () Bool)

(assert (=> b!288668 m!302933))

(assert (=> b!288666 m!302915))

(declare-fun m!302935 () Bool)

(assert (=> b!288669 m!302935))

(check-sat (not b!288671) (not b!288669) (not b!288668) (not start!28206) (not b!288667) (not b!288665))
(check-sat)
