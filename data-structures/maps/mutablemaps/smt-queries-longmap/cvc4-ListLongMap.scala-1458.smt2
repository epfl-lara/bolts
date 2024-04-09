; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28100 () Bool)

(assert start!28100)

(declare-fun b!287791 () Bool)

(declare-fun res!149597 () Bool)

(declare-fun e!182246 () Bool)

(assert (=> b!287791 (=> (not res!149597) (not e!182246))))

(declare-datatypes ((array!14448 0))(
  ( (array!14449 (arr!6852 (Array (_ BitVec 32) (_ BitVec 64))) (size!7204 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14448)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287791 (= res!149597 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287792 () Bool)

(declare-fun res!149594 () Bool)

(assert (=> b!287792 (=> (not res!149594) (not e!182246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287792 (= res!149594 (validKeyInArray!0 k!2524))))

(declare-fun b!287793 () Bool)

(declare-fun res!149593 () Bool)

(assert (=> b!287793 (=> (not res!149593) (not e!182246))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287793 (= res!149593 (and (= (size!7204 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7204 a!3312))))))

(declare-fun b!287795 () Bool)

(declare-fun e!182247 () Bool)

(assert (=> b!287795 (= e!182246 e!182247)))

(declare-fun res!149598 () Bool)

(assert (=> b!287795 (=> (not res!149598) (not e!182247))))

(declare-datatypes ((SeekEntryResult!2012 0))(
  ( (MissingZero!2012 (index!10218 (_ BitVec 32))) (Found!2012 (index!10219 (_ BitVec 32))) (Intermediate!2012 (undefined!2824 Bool) (index!10220 (_ BitVec 32)) (x!28403 (_ BitVec 32))) (Undefined!2012) (MissingVacant!2012 (index!10221 (_ BitVec 32))) )
))
(declare-fun lt!141726 () SeekEntryResult!2012)

(assert (=> b!287795 (= res!149598 (or (= lt!141726 (MissingZero!2012 i!1256)) (= lt!141726 (MissingVacant!2012 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14448 (_ BitVec 32)) SeekEntryResult!2012)

(assert (=> b!287795 (= lt!141726 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287796 () Bool)

(assert (=> b!287796 (= e!182247 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141725 () (_ BitVec 32))

(declare-fun lt!141728 () SeekEntryResult!2012)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14448 (_ BitVec 32)) SeekEntryResult!2012)

(assert (=> b!287796 (= lt!141728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141725 k!2524 (array!14449 (store (arr!6852 a!3312) i!1256 k!2524) (size!7204 a!3312)) mask!3809))))

(declare-fun lt!141727 () SeekEntryResult!2012)

(assert (=> b!287796 (= lt!141727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141725 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287796 (= lt!141725 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287794 () Bool)

(declare-fun res!149595 () Bool)

(assert (=> b!287794 (=> (not res!149595) (not e!182247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14448 (_ BitVec 32)) Bool)

(assert (=> b!287794 (= res!149595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!149596 () Bool)

(assert (=> start!28100 (=> (not res!149596) (not e!182246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28100 (= res!149596 (validMask!0 mask!3809))))

(assert (=> start!28100 e!182246))

(assert (=> start!28100 true))

(declare-fun array_inv!4806 (array!14448) Bool)

(assert (=> start!28100 (array_inv!4806 a!3312)))

(assert (= (and start!28100 res!149596) b!287793))

(assert (= (and b!287793 res!149593) b!287792))

(assert (= (and b!287792 res!149594) b!287791))

(assert (= (and b!287791 res!149597) b!287795))

(assert (= (and b!287795 res!149598) b!287794))

(assert (= (and b!287794 res!149595) b!287796))

(declare-fun m!302171 () Bool)

(assert (=> b!287795 m!302171))

(declare-fun m!302173 () Bool)

(assert (=> b!287791 m!302173))

(declare-fun m!302175 () Bool)

(assert (=> start!28100 m!302175))

(declare-fun m!302177 () Bool)

(assert (=> start!28100 m!302177))

(declare-fun m!302179 () Bool)

(assert (=> b!287794 m!302179))

(declare-fun m!302181 () Bool)

(assert (=> b!287796 m!302181))

(declare-fun m!302183 () Bool)

(assert (=> b!287796 m!302183))

(declare-fun m!302185 () Bool)

(assert (=> b!287796 m!302185))

(declare-fun m!302187 () Bool)

(assert (=> b!287796 m!302187))

(declare-fun m!302189 () Bool)

(assert (=> b!287792 m!302189))

(push 1)

(assert (not b!287792))

(assert (not start!28100))

(assert (not b!287796))

(assert (not b!287795))

(assert (not b!287794))

(assert (not b!287791))

(check-sat)

(pop 1)

