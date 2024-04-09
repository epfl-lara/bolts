; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28012 () Bool)

(assert start!28012)

(declare-fun b!287242 () Bool)

(declare-fun res!149172 () Bool)

(declare-fun e!181950 () Bool)

(assert (=> b!287242 (=> (not res!149172) (not e!181950))))

(declare-datatypes ((array!14405 0))(
  ( (array!14406 (arr!6832 (Array (_ BitVec 32) (_ BitVec 64))) (size!7184 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14405)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287242 (= res!149172 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287243 () Bool)

(declare-fun res!149171 () Bool)

(declare-fun e!181949 () Bool)

(assert (=> b!287243 (=> (not res!149171) (not e!181949))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14405 (_ BitVec 32)) Bool)

(assert (=> b!287243 (= res!149171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287244 () Bool)

(declare-fun res!149169 () Bool)

(assert (=> b!287244 (=> (not res!149169) (not e!181950))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287244 (= res!149169 (and (= (size!7184 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7184 a!3312))))))

(declare-fun res!149168 () Bool)

(assert (=> start!28012 (=> (not res!149168) (not e!181950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28012 (= res!149168 (validMask!0 mask!3809))))

(assert (=> start!28012 e!181950))

(assert (=> start!28012 true))

(declare-fun array_inv!4786 (array!14405) Bool)

(assert (=> start!28012 (array_inv!4786 a!3312)))

(declare-fun b!287245 () Bool)

(assert (=> b!287245 (= e!181949 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1992 0))(
  ( (MissingZero!1992 (index!10138 (_ BitVec 32))) (Found!1992 (index!10139 (_ BitVec 32))) (Intermediate!1992 (undefined!2804 Bool) (index!10140 (_ BitVec 32)) (x!28329 (_ BitVec 32))) (Undefined!1992) (MissingVacant!1992 (index!10141 (_ BitVec 32))) )
))
(declare-fun lt!141472 () SeekEntryResult!1992)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14405 (_ BitVec 32)) SeekEntryResult!1992)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287245 (= lt!141472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287246 () Bool)

(assert (=> b!287246 (= e!181950 e!181949)))

(declare-fun res!149167 () Bool)

(assert (=> b!287246 (=> (not res!149167) (not e!181949))))

(declare-fun lt!141473 () SeekEntryResult!1992)

(assert (=> b!287246 (= res!149167 (or (= lt!141473 (MissingZero!1992 i!1256)) (= lt!141473 (MissingVacant!1992 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14405 (_ BitVec 32)) SeekEntryResult!1992)

(assert (=> b!287246 (= lt!141473 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287247 () Bool)

(declare-fun res!149170 () Bool)

(assert (=> b!287247 (=> (not res!149170) (not e!181950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287247 (= res!149170 (validKeyInArray!0 k!2524))))

(assert (= (and start!28012 res!149168) b!287244))

(assert (= (and b!287244 res!149169) b!287247))

(assert (= (and b!287247 res!149170) b!287242))

(assert (= (and b!287242 res!149172) b!287246))

(assert (= (and b!287246 res!149167) b!287243))

(assert (= (and b!287243 res!149171) b!287245))

(declare-fun m!301729 () Bool)

(assert (=> b!287245 m!301729))

(assert (=> b!287245 m!301729))

(declare-fun m!301731 () Bool)

(assert (=> b!287245 m!301731))

(declare-fun m!301733 () Bool)

(assert (=> b!287243 m!301733))

(declare-fun m!301735 () Bool)

(assert (=> b!287242 m!301735))

(declare-fun m!301737 () Bool)

(assert (=> start!28012 m!301737))

(declare-fun m!301739 () Bool)

(assert (=> start!28012 m!301739))

(declare-fun m!301741 () Bool)

(assert (=> b!287246 m!301741))

(declare-fun m!301743 () Bool)

(assert (=> b!287247 m!301743))

(push 1)

(assert (not b!287245))

(assert (not b!287246))

(assert (not b!287243))

(assert (not start!28012))

(assert (not b!287247))

(assert (not b!287242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

