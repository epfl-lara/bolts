; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28106 () Bool)

(assert start!28106)

(declare-fun b!287845 () Bool)

(declare-fun res!149647 () Bool)

(declare-fun e!182274 () Bool)

(assert (=> b!287845 (=> (not res!149647) (not e!182274))))

(declare-datatypes ((array!14454 0))(
  ( (array!14455 (arr!6855 (Array (_ BitVec 32) (_ BitVec 64))) (size!7207 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14454)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14454 (_ BitVec 32)) Bool)

(assert (=> b!287845 (= res!149647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287846 () Bool)

(declare-fun res!149652 () Bool)

(declare-fun e!182273 () Bool)

(assert (=> b!287846 (=> (not res!149652) (not e!182273))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287846 (= res!149652 (validKeyInArray!0 k!2524))))

(declare-fun res!149650 () Bool)

(assert (=> start!28106 (=> (not res!149650) (not e!182273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28106 (= res!149650 (validMask!0 mask!3809))))

(assert (=> start!28106 e!182273))

(assert (=> start!28106 true))

(declare-fun array_inv!4809 (array!14454) Bool)

(assert (=> start!28106 (array_inv!4809 a!3312)))

(declare-fun b!287847 () Bool)

(assert (=> b!287847 (= e!182273 e!182274)))

(declare-fun res!149651 () Bool)

(assert (=> b!287847 (=> (not res!149651) (not e!182274))))

(declare-datatypes ((SeekEntryResult!2015 0))(
  ( (MissingZero!2015 (index!10230 (_ BitVec 32))) (Found!2015 (index!10231 (_ BitVec 32))) (Intermediate!2015 (undefined!2827 Bool) (index!10232 (_ BitVec 32)) (x!28414 (_ BitVec 32))) (Undefined!2015) (MissingVacant!2015 (index!10233 (_ BitVec 32))) )
))
(declare-fun lt!141762 () SeekEntryResult!2015)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287847 (= res!149651 (or (= lt!141762 (MissingZero!2015 i!1256)) (= lt!141762 (MissingVacant!2015 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14454 (_ BitVec 32)) SeekEntryResult!2015)

(assert (=> b!287847 (= lt!141762 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287848 () Bool)

(declare-fun res!149649 () Bool)

(assert (=> b!287848 (=> (not res!149649) (not e!182273))))

(declare-fun arrayContainsKey!0 (array!14454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287848 (= res!149649 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287849 () Bool)

(assert (=> b!287849 (= e!182274 false)))

(declare-fun lt!141764 () (_ BitVec 32))

(declare-fun lt!141761 () SeekEntryResult!2015)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14454 (_ BitVec 32)) SeekEntryResult!2015)

(assert (=> b!287849 (= lt!141761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141764 k!2524 (array!14455 (store (arr!6855 a!3312) i!1256 k!2524) (size!7207 a!3312)) mask!3809))))

(declare-fun lt!141763 () SeekEntryResult!2015)

(assert (=> b!287849 (= lt!141763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141764 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287849 (= lt!141764 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287850 () Bool)

(declare-fun res!149648 () Bool)

(assert (=> b!287850 (=> (not res!149648) (not e!182273))))

(assert (=> b!287850 (= res!149648 (and (= (size!7207 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7207 a!3312))))))

(assert (= (and start!28106 res!149650) b!287850))

(assert (= (and b!287850 res!149648) b!287846))

(assert (= (and b!287846 res!149652) b!287848))

(assert (= (and b!287848 res!149649) b!287847))

(assert (= (and b!287847 res!149651) b!287845))

(assert (= (and b!287845 res!149647) b!287849))

(declare-fun m!302231 () Bool)

(assert (=> b!287847 m!302231))

(declare-fun m!302233 () Bool)

(assert (=> b!287845 m!302233))

(declare-fun m!302235 () Bool)

(assert (=> start!28106 m!302235))

(declare-fun m!302237 () Bool)

(assert (=> start!28106 m!302237))

(declare-fun m!302239 () Bool)

(assert (=> b!287848 m!302239))

(declare-fun m!302241 () Bool)

(assert (=> b!287846 m!302241))

(declare-fun m!302243 () Bool)

(assert (=> b!287849 m!302243))

(declare-fun m!302245 () Bool)

(assert (=> b!287849 m!302245))

(declare-fun m!302247 () Bool)

(assert (=> b!287849 m!302247))

(declare-fun m!302249 () Bool)

(assert (=> b!287849 m!302249))

(push 1)

