; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28082 () Bool)

(assert start!28082)

(declare-fun b!287629 () Bool)

(declare-fun res!149431 () Bool)

(declare-fun e!182166 () Bool)

(assert (=> b!287629 (=> (not res!149431) (not e!182166))))

(declare-datatypes ((array!14430 0))(
  ( (array!14431 (arr!6843 (Array (_ BitVec 32) (_ BitVec 64))) (size!7195 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14430)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287629 (= res!149431 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287630 () Bool)

(declare-fun e!182167 () Bool)

(assert (=> b!287630 (= e!182166 e!182167)))

(declare-fun res!149436 () Bool)

(assert (=> b!287630 (=> (not res!149436) (not e!182167))))

(declare-datatypes ((SeekEntryResult!2003 0))(
  ( (MissingZero!2003 (index!10182 (_ BitVec 32))) (Found!2003 (index!10183 (_ BitVec 32))) (Intermediate!2003 (undefined!2815 Bool) (index!10184 (_ BitVec 32)) (x!28370 (_ BitVec 32))) (Undefined!2003) (MissingVacant!2003 (index!10185 (_ BitVec 32))) )
))
(declare-fun lt!141637 () SeekEntryResult!2003)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287630 (= res!149436 (or (= lt!141637 (MissingZero!2003 i!1256)) (= lt!141637 (MissingVacant!2003 i!1256))))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14430 (_ BitVec 32)) SeekEntryResult!2003)

(assert (=> b!287630 (= lt!141637 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!149434 () Bool)

(assert (=> start!28082 (=> (not res!149434) (not e!182166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28082 (= res!149434 (validMask!0 mask!3809))))

(assert (=> start!28082 e!182166))

(assert (=> start!28082 true))

(declare-fun array_inv!4797 (array!14430) Bool)

(assert (=> start!28082 (array_inv!4797 a!3312)))

(declare-fun b!287631 () Bool)

(assert (=> b!287631 (= e!182167 false)))

(declare-fun lt!141638 () SeekEntryResult!2003)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14430 (_ BitVec 32)) SeekEntryResult!2003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287631 (= lt!141638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287632 () Bool)

(declare-fun res!149435 () Bool)

(assert (=> b!287632 (=> (not res!149435) (not e!182166))))

(assert (=> b!287632 (= res!149435 (and (= (size!7195 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7195 a!3312))))))

(declare-fun b!287633 () Bool)

(declare-fun res!149433 () Bool)

(assert (=> b!287633 (=> (not res!149433) (not e!182166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287633 (= res!149433 (validKeyInArray!0 k!2524))))

(declare-fun b!287634 () Bool)

(declare-fun res!149432 () Bool)

(assert (=> b!287634 (=> (not res!149432) (not e!182167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14430 (_ BitVec 32)) Bool)

(assert (=> b!287634 (= res!149432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28082 res!149434) b!287632))

(assert (= (and b!287632 res!149435) b!287633))

(assert (= (and b!287633 res!149433) b!287629))

(assert (= (and b!287629 res!149431) b!287630))

(assert (= (and b!287630 res!149436) b!287634))

(assert (= (and b!287634 res!149432) b!287631))

(declare-fun m!302007 () Bool)

(assert (=> b!287629 m!302007))

(declare-fun m!302009 () Bool)

(assert (=> start!28082 m!302009))

(declare-fun m!302011 () Bool)

(assert (=> start!28082 m!302011))

(declare-fun m!302013 () Bool)

(assert (=> b!287631 m!302013))

(assert (=> b!287631 m!302013))

(declare-fun m!302015 () Bool)

(assert (=> b!287631 m!302015))

(declare-fun m!302017 () Bool)

(assert (=> b!287630 m!302017))

(declare-fun m!302019 () Bool)

(assert (=> b!287634 m!302019))

(declare-fun m!302021 () Bool)

(assert (=> b!287633 m!302021))

(push 1)

