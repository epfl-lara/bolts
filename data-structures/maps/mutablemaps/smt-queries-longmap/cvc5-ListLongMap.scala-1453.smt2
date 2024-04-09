; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28018 () Bool)

(assert start!28018)

(declare-fun b!287296 () Bool)

(declare-fun e!181977 () Bool)

(declare-fun e!181976 () Bool)

(assert (=> b!287296 (= e!181977 e!181976)))

(declare-fun res!149221 () Bool)

(assert (=> b!287296 (=> (not res!149221) (not e!181976))))

(declare-datatypes ((SeekEntryResult!1995 0))(
  ( (MissingZero!1995 (index!10150 (_ BitVec 32))) (Found!1995 (index!10151 (_ BitVec 32))) (Intermediate!1995 (undefined!2807 Bool) (index!10152 (_ BitVec 32)) (x!28340 (_ BitVec 32))) (Undefined!1995) (MissingVacant!1995 (index!10153 (_ BitVec 32))) )
))
(declare-fun lt!141491 () SeekEntryResult!1995)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287296 (= res!149221 (or (= lt!141491 (MissingZero!1995 i!1256)) (= lt!141491 (MissingVacant!1995 i!1256))))))

(declare-datatypes ((array!14411 0))(
  ( (array!14412 (arr!6835 (Array (_ BitVec 32) (_ BitVec 64))) (size!7187 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14411)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14411 (_ BitVec 32)) SeekEntryResult!1995)

(assert (=> b!287296 (= lt!141491 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287297 () Bool)

(declare-fun res!149225 () Bool)

(assert (=> b!287297 (=> (not res!149225) (not e!181976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14411 (_ BitVec 32)) Bool)

(assert (=> b!287297 (= res!149225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287298 () Bool)

(assert (=> b!287298 (= e!181976 false)))

(declare-fun lt!141490 () SeekEntryResult!1995)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14411 (_ BitVec 32)) SeekEntryResult!1995)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287298 (= lt!141490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun res!149224 () Bool)

(assert (=> start!28018 (=> (not res!149224) (not e!181977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28018 (= res!149224 (validMask!0 mask!3809))))

(assert (=> start!28018 e!181977))

(assert (=> start!28018 true))

(declare-fun array_inv!4789 (array!14411) Bool)

(assert (=> start!28018 (array_inv!4789 a!3312)))

(declare-fun b!287299 () Bool)

(declare-fun res!149223 () Bool)

(assert (=> b!287299 (=> (not res!149223) (not e!181977))))

(declare-fun arrayContainsKey!0 (array!14411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287299 (= res!149223 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287300 () Bool)

(declare-fun res!149226 () Bool)

(assert (=> b!287300 (=> (not res!149226) (not e!181977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287300 (= res!149226 (validKeyInArray!0 k!2524))))

(declare-fun b!287301 () Bool)

(declare-fun res!149222 () Bool)

(assert (=> b!287301 (=> (not res!149222) (not e!181977))))

(assert (=> b!287301 (= res!149222 (and (= (size!7187 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7187 a!3312))))))

(assert (= (and start!28018 res!149224) b!287301))

(assert (= (and b!287301 res!149222) b!287300))

(assert (= (and b!287300 res!149226) b!287299))

(assert (= (and b!287299 res!149223) b!287296))

(assert (= (and b!287296 res!149221) b!287297))

(assert (= (and b!287297 res!149225) b!287298))

(declare-fun m!301777 () Bool)

(assert (=> b!287297 m!301777))

(declare-fun m!301779 () Bool)

(assert (=> b!287300 m!301779))

(declare-fun m!301781 () Bool)

(assert (=> b!287299 m!301781))

(declare-fun m!301783 () Bool)

(assert (=> start!28018 m!301783))

(declare-fun m!301785 () Bool)

(assert (=> start!28018 m!301785))

(declare-fun m!301787 () Bool)

(assert (=> b!287296 m!301787))

(declare-fun m!301789 () Bool)

(assert (=> b!287298 m!301789))

(assert (=> b!287298 m!301789))

(declare-fun m!301791 () Bool)

(assert (=> b!287298 m!301791))

(push 1)

