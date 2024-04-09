; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28212 () Bool)

(assert start!28212)

(declare-fun res!150398 () Bool)

(declare-fun e!182822 () Bool)

(assert (=> start!28212 (=> (not res!150398) (not e!182822))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28212 (= res!150398 (validMask!0 mask!3809))))

(assert (=> start!28212 e!182822))

(assert (=> start!28212 true))

(declare-datatypes ((array!14515 0))(
  ( (array!14516 (arr!6884 (Array (_ BitVec 32) (_ BitVec 64))) (size!7236 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14515)

(declare-fun array_inv!4838 (array!14515) Bool)

(assert (=> start!28212 (array_inv!4838 a!3312)))

(declare-fun b!288737 () Bool)

(declare-fun e!182823 () Bool)

(assert (=> b!288737 (= e!182823 (not true))))

(declare-datatypes ((SeekEntryResult!2044 0))(
  ( (MissingZero!2044 (index!10346 (_ BitVec 32))) (Found!2044 (index!10347 (_ BitVec 32))) (Intermediate!2044 (undefined!2856 Bool) (index!10348 (_ BitVec 32)) (x!28529 (_ BitVec 32))) (Undefined!2044) (MissingVacant!2044 (index!10349 (_ BitVec 32))) )
))
(declare-fun lt!142359 () SeekEntryResult!2044)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288737 (and (= (select (arr!6884 a!3312) (index!10348 lt!142359)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10348 lt!142359) i!1256))))

(declare-fun b!288738 () Bool)

(declare-fun res!150405 () Bool)

(assert (=> b!288738 (=> (not res!150405) (not e!182822))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288738 (= res!150405 (validKeyInArray!0 k0!2524))))

(declare-fun b!288739 () Bool)

(declare-fun e!182824 () Bool)

(assert (=> b!288739 (= e!182822 e!182824)))

(declare-fun res!150403 () Bool)

(assert (=> b!288739 (=> (not res!150403) (not e!182824))))

(declare-fun lt!142361 () Bool)

(declare-fun lt!142363 () SeekEntryResult!2044)

(assert (=> b!288739 (= res!150403 (or lt!142361 (= lt!142363 (MissingVacant!2044 i!1256))))))

(assert (=> b!288739 (= lt!142361 (= lt!142363 (MissingZero!2044 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14515 (_ BitVec 32)) SeekEntryResult!2044)

(assert (=> b!288739 (= lt!142363 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288740 () Bool)

(declare-fun e!182820 () Bool)

(assert (=> b!288740 (= e!182824 e!182820)))

(declare-fun res!150400 () Bool)

(assert (=> b!288740 (=> (not res!150400) (not e!182820))))

(assert (=> b!288740 (= res!150400 lt!142361)))

(declare-fun lt!142364 () SeekEntryResult!2044)

(declare-fun lt!142362 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14515 (_ BitVec 32)) SeekEntryResult!2044)

(assert (=> b!288740 (= lt!142364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142362 k0!2524 (array!14516 (store (arr!6884 a!3312) i!1256 k0!2524) (size!7236 a!3312)) mask!3809))))

(assert (=> b!288740 (= lt!142359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142362 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288740 (= lt!142362 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288741 () Bool)

(assert (=> b!288741 (= e!182820 e!182823)))

(declare-fun res!150402 () Bool)

(assert (=> b!288741 (=> (not res!150402) (not e!182823))))

(declare-fun lt!142360 () Bool)

(assert (=> b!288741 (= res!150402 (and (or lt!142360 (not (undefined!2856 lt!142359))) (or lt!142360 (not (= (select (arr!6884 a!3312) (index!10348 lt!142359)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142360 (not (= (select (arr!6884 a!3312) (index!10348 lt!142359)) k0!2524))) (not lt!142360)))))

(get-info :version)

(assert (=> b!288741 (= lt!142360 (not ((_ is Intermediate!2044) lt!142359)))))

(declare-fun b!288742 () Bool)

(declare-fun res!150399 () Bool)

(assert (=> b!288742 (=> (not res!150399) (not e!182822))))

(assert (=> b!288742 (= res!150399 (and (= (size!7236 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7236 a!3312))))))

(declare-fun b!288743 () Bool)

(declare-fun res!150401 () Bool)

(assert (=> b!288743 (=> (not res!150401) (not e!182824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14515 (_ BitVec 32)) Bool)

(assert (=> b!288743 (= res!150401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288744 () Bool)

(declare-fun res!150404 () Bool)

(assert (=> b!288744 (=> (not res!150404) (not e!182822))))

(declare-fun arrayContainsKey!0 (array!14515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288744 (= res!150404 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28212 res!150398) b!288742))

(assert (= (and b!288742 res!150399) b!288738))

(assert (= (and b!288738 res!150405) b!288744))

(assert (= (and b!288744 res!150404) b!288739))

(assert (= (and b!288739 res!150403) b!288743))

(assert (= (and b!288743 res!150401) b!288740))

(assert (= (and b!288740 res!150400) b!288741))

(assert (= (and b!288741 res!150402) b!288737))

(declare-fun m!302981 () Bool)

(assert (=> b!288744 m!302981))

(declare-fun m!302983 () Bool)

(assert (=> b!288740 m!302983))

(declare-fun m!302985 () Bool)

(assert (=> b!288740 m!302985))

(declare-fun m!302987 () Bool)

(assert (=> b!288740 m!302987))

(declare-fun m!302989 () Bool)

(assert (=> b!288740 m!302989))

(declare-fun m!302991 () Bool)

(assert (=> b!288739 m!302991))

(declare-fun m!302993 () Bool)

(assert (=> b!288743 m!302993))

(declare-fun m!302995 () Bool)

(assert (=> b!288741 m!302995))

(declare-fun m!302997 () Bool)

(assert (=> b!288738 m!302997))

(assert (=> b!288737 m!302995))

(declare-fun m!302999 () Bool)

(assert (=> start!28212 m!302999))

(declare-fun m!303001 () Bool)

(assert (=> start!28212 m!303001))

(check-sat (not b!288740) (not b!288739) (not b!288738) (not b!288744) (not b!288743) (not start!28212))
(check-sat)
