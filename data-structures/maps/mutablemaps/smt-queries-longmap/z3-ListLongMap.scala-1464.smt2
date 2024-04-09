; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28182 () Bool)

(assert start!28182)

(declare-fun b!288377 () Bool)

(declare-fun res!150039 () Bool)

(declare-fun e!182599 () Bool)

(assert (=> b!288377 (=> (not res!150039) (not e!182599))))

(declare-datatypes ((array!14485 0))(
  ( (array!14486 (arr!6869 (Array (_ BitVec 32) (_ BitVec 64))) (size!7221 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14485)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288377 (= res!150039 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288378 () Bool)

(declare-fun e!182597 () Bool)

(declare-fun e!182596 () Bool)

(assert (=> b!288378 (= e!182597 e!182596)))

(declare-fun res!150041 () Bool)

(assert (=> b!288378 (=> (not res!150041) (not e!182596))))

(declare-fun lt!142092 () Bool)

(assert (=> b!288378 (= res!150041 lt!142092)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2029 0))(
  ( (MissingZero!2029 (index!10286 (_ BitVec 32))) (Found!2029 (index!10287 (_ BitVec 32))) (Intermediate!2029 (undefined!2841 Bool) (index!10288 (_ BitVec 32)) (x!28474 (_ BitVec 32))) (Undefined!2029) (MissingVacant!2029 (index!10289 (_ BitVec 32))) )
))
(declare-fun lt!142093 () SeekEntryResult!2029)

(declare-fun lt!142091 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14485 (_ BitVec 32)) SeekEntryResult!2029)

(assert (=> b!288378 (= lt!142093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142091 k0!2524 (array!14486 (store (arr!6869 a!3312) i!1256 k0!2524) (size!7221 a!3312)) mask!3809))))

(declare-fun lt!142090 () SeekEntryResult!2029)

(assert (=> b!288378 (= lt!142090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142091 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288378 (= lt!142091 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288380 () Bool)

(declare-fun res!150045 () Bool)

(assert (=> b!288380 (=> (not res!150045) (not e!182599))))

(assert (=> b!288380 (= res!150045 (and (= (size!7221 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7221 a!3312))))))

(declare-fun b!288381 () Bool)

(declare-fun res!150038 () Bool)

(assert (=> b!288381 (=> (not res!150038) (not e!182599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288381 (= res!150038 (validKeyInArray!0 k0!2524))))

(declare-fun b!288382 () Bool)

(assert (=> b!288382 (= e!182599 e!182597)))

(declare-fun res!150040 () Bool)

(assert (=> b!288382 (=> (not res!150040) (not e!182597))))

(declare-fun lt!142094 () SeekEntryResult!2029)

(assert (=> b!288382 (= res!150040 (or lt!142092 (= lt!142094 (MissingVacant!2029 i!1256))))))

(assert (=> b!288382 (= lt!142092 (= lt!142094 (MissingZero!2029 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14485 (_ BitVec 32)) SeekEntryResult!2029)

(assert (=> b!288382 (= lt!142094 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288379 () Bool)

(declare-fun res!150043 () Bool)

(assert (=> b!288379 (=> (not res!150043) (not e!182597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14485 (_ BitVec 32)) Bool)

(assert (=> b!288379 (= res!150043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!150042 () Bool)

(assert (=> start!28182 (=> (not res!150042) (not e!182599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28182 (= res!150042 (validMask!0 mask!3809))))

(assert (=> start!28182 e!182599))

(assert (=> start!28182 true))

(declare-fun array_inv!4823 (array!14485) Bool)

(assert (=> start!28182 (array_inv!4823 a!3312)))

(declare-fun b!288383 () Bool)

(declare-fun e!182595 () Bool)

(assert (=> b!288383 (= e!182596 e!182595)))

(declare-fun res!150044 () Bool)

(assert (=> b!288383 (=> (not res!150044) (not e!182595))))

(declare-fun lt!142089 () Bool)

(assert (=> b!288383 (= res!150044 (and (or lt!142089 (not (undefined!2841 lt!142090))) (or lt!142089 (not (= (select (arr!6869 a!3312) (index!10288 lt!142090)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142089 (not (= (select (arr!6869 a!3312) (index!10288 lt!142090)) k0!2524))) (not lt!142089)))))

(get-info :version)

(assert (=> b!288383 (= lt!142089 (not ((_ is Intermediate!2029) lt!142090)))))

(declare-fun b!288384 () Bool)

(assert (=> b!288384 (= e!182595 (not true))))

(assert (=> b!288384 (and (= (select (arr!6869 a!3312) (index!10288 lt!142090)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10288 lt!142090) i!1256))))

(assert (= (and start!28182 res!150042) b!288380))

(assert (= (and b!288380 res!150045) b!288381))

(assert (= (and b!288381 res!150038) b!288377))

(assert (= (and b!288377 res!150039) b!288382))

(assert (= (and b!288382 res!150040) b!288379))

(assert (= (and b!288379 res!150043) b!288378))

(assert (= (and b!288378 res!150041) b!288383))

(assert (= (and b!288383 res!150044) b!288384))

(declare-fun m!302651 () Bool)

(assert (=> b!288377 m!302651))

(declare-fun m!302653 () Bool)

(assert (=> b!288381 m!302653))

(declare-fun m!302655 () Bool)

(assert (=> b!288378 m!302655))

(declare-fun m!302657 () Bool)

(assert (=> b!288378 m!302657))

(declare-fun m!302659 () Bool)

(assert (=> b!288378 m!302659))

(declare-fun m!302661 () Bool)

(assert (=> b!288378 m!302661))

(declare-fun m!302663 () Bool)

(assert (=> b!288382 m!302663))

(declare-fun m!302665 () Bool)

(assert (=> b!288383 m!302665))

(declare-fun m!302667 () Bool)

(assert (=> start!28182 m!302667))

(declare-fun m!302669 () Bool)

(assert (=> start!28182 m!302669))

(assert (=> b!288384 m!302665))

(declare-fun m!302671 () Bool)

(assert (=> b!288379 m!302671))

(check-sat (not b!288377) (not b!288381) (not start!28182) (not b!288379) (not b!288378) (not b!288382))
(check-sat)
