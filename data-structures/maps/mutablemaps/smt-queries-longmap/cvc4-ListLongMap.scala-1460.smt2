; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28112 () Bool)

(assert start!28112)

(declare-fun b!287899 () Bool)

(declare-fun res!149701 () Bool)

(declare-fun e!182301 () Bool)

(assert (=> b!287899 (=> (not res!149701) (not e!182301))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287899 (= res!149701 (validKeyInArray!0 k!2524))))

(declare-fun b!287900 () Bool)

(declare-fun e!182300 () Bool)

(assert (=> b!287900 (= e!182300 false)))

(declare-fun lt!141799 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2018 0))(
  ( (MissingZero!2018 (index!10242 (_ BitVec 32))) (Found!2018 (index!10243 (_ BitVec 32))) (Intermediate!2018 (undefined!2830 Bool) (index!10244 (_ BitVec 32)) (x!28425 (_ BitVec 32))) (Undefined!2018) (MissingVacant!2018 (index!10245 (_ BitVec 32))) )
))
(declare-fun lt!141798 () SeekEntryResult!2018)

(declare-datatypes ((array!14460 0))(
  ( (array!14461 (arr!6858 (Array (_ BitVec 32) (_ BitVec 64))) (size!7210 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14460)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14460 (_ BitVec 32)) SeekEntryResult!2018)

(assert (=> b!287900 (= lt!141798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141799 k!2524 (array!14461 (store (arr!6858 a!3312) i!1256 k!2524) (size!7210 a!3312)) mask!3809))))

(declare-fun lt!141800 () SeekEntryResult!2018)

(assert (=> b!287900 (= lt!141800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141799 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287900 (= lt!141799 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!149704 () Bool)

(assert (=> start!28112 (=> (not res!149704) (not e!182301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28112 (= res!149704 (validMask!0 mask!3809))))

(assert (=> start!28112 e!182301))

(assert (=> start!28112 true))

(declare-fun array_inv!4812 (array!14460) Bool)

(assert (=> start!28112 (array_inv!4812 a!3312)))

(declare-fun b!287901 () Bool)

(declare-fun res!149703 () Bool)

(assert (=> b!287901 (=> (not res!149703) (not e!182300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14460 (_ BitVec 32)) Bool)

(assert (=> b!287901 (= res!149703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287902 () Bool)

(assert (=> b!287902 (= e!182301 e!182300)))

(declare-fun res!149706 () Bool)

(assert (=> b!287902 (=> (not res!149706) (not e!182300))))

(declare-fun lt!141797 () SeekEntryResult!2018)

(assert (=> b!287902 (= res!149706 (or (= lt!141797 (MissingZero!2018 i!1256)) (= lt!141797 (MissingVacant!2018 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14460 (_ BitVec 32)) SeekEntryResult!2018)

(assert (=> b!287902 (= lt!141797 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287903 () Bool)

(declare-fun res!149702 () Bool)

(assert (=> b!287903 (=> (not res!149702) (not e!182301))))

(assert (=> b!287903 (= res!149702 (and (= (size!7210 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7210 a!3312))))))

(declare-fun b!287904 () Bool)

(declare-fun res!149705 () Bool)

(assert (=> b!287904 (=> (not res!149705) (not e!182301))))

(declare-fun arrayContainsKey!0 (array!14460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287904 (= res!149705 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28112 res!149704) b!287903))

(assert (= (and b!287903 res!149702) b!287899))

(assert (= (and b!287899 res!149701) b!287904))

(assert (= (and b!287904 res!149705) b!287902))

(assert (= (and b!287902 res!149706) b!287901))

(assert (= (and b!287901 res!149703) b!287900))

(declare-fun m!302291 () Bool)

(assert (=> b!287901 m!302291))

(declare-fun m!302293 () Bool)

(assert (=> start!28112 m!302293))

(declare-fun m!302295 () Bool)

(assert (=> start!28112 m!302295))

(declare-fun m!302297 () Bool)

(assert (=> b!287900 m!302297))

(declare-fun m!302299 () Bool)

(assert (=> b!287900 m!302299))

(declare-fun m!302301 () Bool)

(assert (=> b!287900 m!302301))

(declare-fun m!302303 () Bool)

(assert (=> b!287900 m!302303))

(declare-fun m!302305 () Bool)

(assert (=> b!287899 m!302305))

(declare-fun m!302307 () Bool)

(assert (=> b!287904 m!302307))

(declare-fun m!302309 () Bool)

(assert (=> b!287902 m!302309))

(push 1)

(assert (not start!28112))

(assert (not b!287899))

(assert (not b!287901))

(assert (not b!287902))

(assert (not b!287900))

(assert (not b!287904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

