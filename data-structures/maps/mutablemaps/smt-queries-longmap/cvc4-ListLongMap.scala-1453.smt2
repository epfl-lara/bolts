; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28022 () Bool)

(assert start!28022)

(declare-fun b!287332 () Bool)

(declare-fun res!149259 () Bool)

(declare-fun e!181994 () Bool)

(assert (=> b!287332 (=> (not res!149259) (not e!181994))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14415 0))(
  ( (array!14416 (arr!6837 (Array (_ BitVec 32) (_ BitVec 64))) (size!7189 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14415)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287332 (= res!149259 (and (= (size!7189 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7189 a!3312))))))

(declare-fun res!149262 () Bool)

(assert (=> start!28022 (=> (not res!149262) (not e!181994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28022 (= res!149262 (validMask!0 mask!3809))))

(assert (=> start!28022 e!181994))

(assert (=> start!28022 true))

(declare-fun array_inv!4791 (array!14415) Bool)

(assert (=> start!28022 (array_inv!4791 a!3312)))

(declare-fun b!287333 () Bool)

(declare-fun res!149258 () Bool)

(assert (=> b!287333 (=> (not res!149258) (not e!181994))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287333 (= res!149258 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287334 () Bool)

(declare-fun e!181995 () Bool)

(assert (=> b!287334 (= e!181994 e!181995)))

(declare-fun res!149260 () Bool)

(assert (=> b!287334 (=> (not res!149260) (not e!181995))))

(declare-datatypes ((SeekEntryResult!1997 0))(
  ( (MissingZero!1997 (index!10158 (_ BitVec 32))) (Found!1997 (index!10159 (_ BitVec 32))) (Intermediate!1997 (undefined!2809 Bool) (index!10160 (_ BitVec 32)) (x!28342 (_ BitVec 32))) (Undefined!1997) (MissingVacant!1997 (index!10161 (_ BitVec 32))) )
))
(declare-fun lt!141503 () SeekEntryResult!1997)

(assert (=> b!287334 (= res!149260 (or (= lt!141503 (MissingZero!1997 i!1256)) (= lt!141503 (MissingVacant!1997 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14415 (_ BitVec 32)) SeekEntryResult!1997)

(assert (=> b!287334 (= lt!141503 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287335 () Bool)

(declare-fun res!149257 () Bool)

(assert (=> b!287335 (=> (not res!149257) (not e!181995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14415 (_ BitVec 32)) Bool)

(assert (=> b!287335 (= res!149257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287336 () Bool)

(declare-fun res!149261 () Bool)

(assert (=> b!287336 (=> (not res!149261) (not e!181994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287336 (= res!149261 (validKeyInArray!0 k!2524))))

(declare-fun b!287337 () Bool)

(assert (=> b!287337 (= e!181995 false)))

(declare-fun lt!141502 () SeekEntryResult!1997)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14415 (_ BitVec 32)) SeekEntryResult!1997)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287337 (= lt!141502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and start!28022 res!149262) b!287332))

(assert (= (and b!287332 res!149259) b!287336))

(assert (= (and b!287336 res!149261) b!287333))

(assert (= (and b!287333 res!149258) b!287334))

(assert (= (and b!287334 res!149260) b!287335))

(assert (= (and b!287335 res!149257) b!287337))

(declare-fun m!301809 () Bool)

(assert (=> start!28022 m!301809))

(declare-fun m!301811 () Bool)

(assert (=> start!28022 m!301811))

(declare-fun m!301813 () Bool)

(assert (=> b!287336 m!301813))

(declare-fun m!301815 () Bool)

(assert (=> b!287337 m!301815))

(assert (=> b!287337 m!301815))

(declare-fun m!301817 () Bool)

(assert (=> b!287337 m!301817))

(declare-fun m!301819 () Bool)

(assert (=> b!287334 m!301819))

(declare-fun m!301821 () Bool)

(assert (=> b!287335 m!301821))

(declare-fun m!301823 () Bool)

(assert (=> b!287333 m!301823))

(push 1)

(assert (not b!287334))

(assert (not start!28022))

(assert (not b!287336))

(assert (not b!287337))

(assert (not b!287333))

