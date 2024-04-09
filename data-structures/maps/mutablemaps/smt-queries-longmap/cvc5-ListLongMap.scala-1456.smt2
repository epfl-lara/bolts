; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28084 () Bool)

(assert start!28084)

(declare-fun b!287647 () Bool)

(declare-fun res!149450 () Bool)

(declare-fun e!182175 () Bool)

(assert (=> b!287647 (=> (not res!149450) (not e!182175))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14432 0))(
  ( (array!14433 (arr!6844 (Array (_ BitVec 32) (_ BitVec 64))) (size!7196 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14432)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287647 (= res!149450 (and (= (size!7196 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7196 a!3312))))))

(declare-fun b!287648 () Bool)

(declare-fun res!149452 () Bool)

(declare-fun e!182176 () Bool)

(assert (=> b!287648 (=> (not res!149452) (not e!182176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14432 (_ BitVec 32)) Bool)

(assert (=> b!287648 (= res!149452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287649 () Bool)

(assert (=> b!287649 (= e!182176 false)))

(declare-datatypes ((SeekEntryResult!2004 0))(
  ( (MissingZero!2004 (index!10186 (_ BitVec 32))) (Found!2004 (index!10187 (_ BitVec 32))) (Intermediate!2004 (undefined!2816 Bool) (index!10188 (_ BitVec 32)) (x!28379 (_ BitVec 32))) (Undefined!2004) (MissingVacant!2004 (index!10189 (_ BitVec 32))) )
))
(declare-fun lt!141643 () SeekEntryResult!2004)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14432 (_ BitVec 32)) SeekEntryResult!2004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287649 (= lt!141643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287650 () Bool)

(declare-fun res!149449 () Bool)

(assert (=> b!287650 (=> (not res!149449) (not e!182175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287650 (= res!149449 (validKeyInArray!0 k!2524))))

(declare-fun res!149454 () Bool)

(assert (=> start!28084 (=> (not res!149454) (not e!182175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28084 (= res!149454 (validMask!0 mask!3809))))

(assert (=> start!28084 e!182175))

(assert (=> start!28084 true))

(declare-fun array_inv!4798 (array!14432) Bool)

(assert (=> start!28084 (array_inv!4798 a!3312)))

(declare-fun b!287651 () Bool)

(assert (=> b!287651 (= e!182175 e!182176)))

(declare-fun res!149453 () Bool)

(assert (=> b!287651 (=> (not res!149453) (not e!182176))))

(declare-fun lt!141644 () SeekEntryResult!2004)

(assert (=> b!287651 (= res!149453 (or (= lt!141644 (MissingZero!2004 i!1256)) (= lt!141644 (MissingVacant!2004 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14432 (_ BitVec 32)) SeekEntryResult!2004)

(assert (=> b!287651 (= lt!141644 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287652 () Bool)

(declare-fun res!149451 () Bool)

(assert (=> b!287652 (=> (not res!149451) (not e!182175))))

(declare-fun arrayContainsKey!0 (array!14432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287652 (= res!149451 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28084 res!149454) b!287647))

(assert (= (and b!287647 res!149450) b!287650))

(assert (= (and b!287650 res!149449) b!287652))

(assert (= (and b!287652 res!149451) b!287651))

(assert (= (and b!287651 res!149453) b!287648))

(assert (= (and b!287648 res!149452) b!287649))

(declare-fun m!302023 () Bool)

(assert (=> b!287649 m!302023))

(assert (=> b!287649 m!302023))

(declare-fun m!302025 () Bool)

(assert (=> b!287649 m!302025))

(declare-fun m!302027 () Bool)

(assert (=> b!287652 m!302027))

(declare-fun m!302029 () Bool)

(assert (=> start!28084 m!302029))

(declare-fun m!302031 () Bool)

(assert (=> start!28084 m!302031))

(declare-fun m!302033 () Bool)

(assert (=> b!287651 m!302033))

(declare-fun m!302035 () Bool)

(assert (=> b!287650 m!302035))

(declare-fun m!302037 () Bool)

(assert (=> b!287648 m!302037))

(push 1)

(assert (not b!287649))

(assert (not b!287648))

(assert (not b!287652))

(assert (not b!287650))

(assert (not b!287651))

(assert (not start!28084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

