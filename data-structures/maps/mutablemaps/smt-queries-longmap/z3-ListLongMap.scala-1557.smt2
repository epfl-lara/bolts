; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29522 () Bool)

(assert start!29522)

(declare-fun b!298227 () Bool)

(declare-fun e!188430 () Bool)

(declare-fun e!188431 () Bool)

(assert (=> b!298227 (= e!188430 e!188431)))

(declare-fun res!157321 () Bool)

(assert (=> b!298227 (=> (not res!157321) (not e!188431))))

(declare-datatypes ((SeekEntryResult!2308 0))(
  ( (MissingZero!2308 (index!11405 (_ BitVec 32))) (Found!2308 (index!11406 (_ BitVec 32))) (Intermediate!2308 (undefined!3120 Bool) (index!11407 (_ BitVec 32)) (x!29598 (_ BitVec 32))) (Undefined!2308) (MissingVacant!2308 (index!11408 (_ BitVec 32))) )
))
(declare-fun lt!148313 () SeekEntryResult!2308)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!298227 (= res!157321 (or (= lt!148313 (MissingZero!2308 i!1256)) (= lt!148313 (MissingVacant!2308 i!1256))))))

(declare-datatypes ((array!15091 0))(
  ( (array!15092 (arr!7148 (Array (_ BitVec 32) (_ BitVec 64))) (size!7500 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15091)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15091 (_ BitVec 32)) SeekEntryResult!2308)

(assert (=> b!298227 (= lt!148313 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!298228 () Bool)

(declare-fun res!157319 () Bool)

(assert (=> b!298228 (=> (not res!157319) (not e!188431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15091 (_ BitVec 32)) Bool)

(assert (=> b!298228 (= res!157319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!157322 () Bool)

(assert (=> start!29522 (=> (not res!157322) (not e!188430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29522 (= res!157322 (validMask!0 mask!3809))))

(assert (=> start!29522 e!188430))

(assert (=> start!29522 true))

(declare-fun array_inv!5102 (array!15091) Bool)

(assert (=> start!29522 (array_inv!5102 a!3312)))

(declare-fun b!298229 () Bool)

(assert (=> b!298229 (= e!188431 false)))

(declare-fun lt!148315 () (_ BitVec 32))

(declare-fun lt!148314 () SeekEntryResult!2308)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15091 (_ BitVec 32)) SeekEntryResult!2308)

(assert (=> b!298229 (= lt!148314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148315 k0!2524 (array!15092 (store (arr!7148 a!3312) i!1256 k0!2524) (size!7500 a!3312)) mask!3809))))

(declare-fun lt!148316 () SeekEntryResult!2308)

(assert (=> b!298229 (= lt!148316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148315 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298229 (= lt!148315 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!298230 () Bool)

(declare-fun res!157323 () Bool)

(assert (=> b!298230 (=> (not res!157323) (not e!188430))))

(declare-fun arrayContainsKey!0 (array!15091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298230 (= res!157323 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298231 () Bool)

(declare-fun res!157318 () Bool)

(assert (=> b!298231 (=> (not res!157318) (not e!188430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298231 (= res!157318 (validKeyInArray!0 k0!2524))))

(declare-fun b!298232 () Bool)

(declare-fun res!157320 () Bool)

(assert (=> b!298232 (=> (not res!157320) (not e!188430))))

(assert (=> b!298232 (= res!157320 (and (= (size!7500 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7500 a!3312))))))

(assert (= (and start!29522 res!157322) b!298232))

(assert (= (and b!298232 res!157320) b!298231))

(assert (= (and b!298231 res!157318) b!298230))

(assert (= (and b!298230 res!157323) b!298227))

(assert (= (and b!298227 res!157321) b!298228))

(assert (= (and b!298228 res!157319) b!298229))

(declare-fun m!310783 () Bool)

(assert (=> b!298227 m!310783))

(declare-fun m!310785 () Bool)

(assert (=> b!298228 m!310785))

(declare-fun m!310787 () Bool)

(assert (=> b!298229 m!310787))

(declare-fun m!310789 () Bool)

(assert (=> b!298229 m!310789))

(declare-fun m!310791 () Bool)

(assert (=> b!298229 m!310791))

(declare-fun m!310793 () Bool)

(assert (=> b!298229 m!310793))

(declare-fun m!310795 () Bool)

(assert (=> b!298231 m!310795))

(declare-fun m!310797 () Bool)

(assert (=> b!298230 m!310797))

(declare-fun m!310799 () Bool)

(assert (=> start!29522 m!310799))

(declare-fun m!310801 () Bool)

(assert (=> start!29522 m!310801))

(check-sat (not b!298231) (not b!298229) (not b!298227) (not start!29522) (not b!298230) (not b!298228))
(check-sat)
