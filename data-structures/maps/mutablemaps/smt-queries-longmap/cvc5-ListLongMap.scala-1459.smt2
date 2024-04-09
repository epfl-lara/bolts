; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28102 () Bool)

(assert start!28102)

(declare-fun b!287809 () Bool)

(declare-fun res!149615 () Bool)

(declare-fun e!182256 () Bool)

(assert (=> b!287809 (=> (not res!149615) (not e!182256))))

(declare-datatypes ((array!14450 0))(
  ( (array!14451 (arr!6853 (Array (_ BitVec 32) (_ BitVec 64))) (size!7205 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14450)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287809 (= res!149615 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287810 () Bool)

(declare-fun e!182257 () Bool)

(assert (=> b!287810 (= e!182256 e!182257)))

(declare-fun res!149612 () Bool)

(assert (=> b!287810 (=> (not res!149612) (not e!182257))))

(declare-datatypes ((SeekEntryResult!2013 0))(
  ( (MissingZero!2013 (index!10222 (_ BitVec 32))) (Found!2013 (index!10223 (_ BitVec 32))) (Intermediate!2013 (undefined!2825 Bool) (index!10224 (_ BitVec 32)) (x!28412 (_ BitVec 32))) (Undefined!2013) (MissingVacant!2013 (index!10225 (_ BitVec 32))) )
))
(declare-fun lt!141738 () SeekEntryResult!2013)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287810 (= res!149612 (or (= lt!141738 (MissingZero!2013 i!1256)) (= lt!141738 (MissingVacant!2013 i!1256))))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14450 (_ BitVec 32)) SeekEntryResult!2013)

(assert (=> b!287810 (= lt!141738 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287811 () Bool)

(declare-fun res!149616 () Bool)

(assert (=> b!287811 (=> (not res!149616) (not e!182256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287811 (= res!149616 (validKeyInArray!0 k!2524))))

(declare-fun b!287812 () Bool)

(declare-fun res!149611 () Bool)

(assert (=> b!287812 (=> (not res!149611) (not e!182256))))

(assert (=> b!287812 (= res!149611 (and (= (size!7205 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7205 a!3312))))))

(declare-fun res!149614 () Bool)

(assert (=> start!28102 (=> (not res!149614) (not e!182256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28102 (= res!149614 (validMask!0 mask!3809))))

(assert (=> start!28102 e!182256))

(assert (=> start!28102 true))

(declare-fun array_inv!4807 (array!14450) Bool)

(assert (=> start!28102 (array_inv!4807 a!3312)))

(declare-fun b!287813 () Bool)

(assert (=> b!287813 (= e!182257 false)))

(declare-fun lt!141739 () SeekEntryResult!2013)

(declare-fun lt!141740 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14450 (_ BitVec 32)) SeekEntryResult!2013)

(assert (=> b!287813 (= lt!141739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141740 k!2524 (array!14451 (store (arr!6853 a!3312) i!1256 k!2524) (size!7205 a!3312)) mask!3809))))

(declare-fun lt!141737 () SeekEntryResult!2013)

(assert (=> b!287813 (= lt!141737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141740 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287813 (= lt!141740 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287814 () Bool)

(declare-fun res!149613 () Bool)

(assert (=> b!287814 (=> (not res!149613) (not e!182257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14450 (_ BitVec 32)) Bool)

(assert (=> b!287814 (= res!149613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28102 res!149614) b!287812))

(assert (= (and b!287812 res!149611) b!287811))

(assert (= (and b!287811 res!149616) b!287809))

(assert (= (and b!287809 res!149615) b!287810))

(assert (= (and b!287810 res!149612) b!287814))

(assert (= (and b!287814 res!149613) b!287813))

(declare-fun m!302191 () Bool)

(assert (=> b!287813 m!302191))

(declare-fun m!302193 () Bool)

(assert (=> b!287813 m!302193))

(declare-fun m!302195 () Bool)

(assert (=> b!287813 m!302195))

(declare-fun m!302197 () Bool)

(assert (=> b!287813 m!302197))

(declare-fun m!302199 () Bool)

(assert (=> start!28102 m!302199))

(declare-fun m!302201 () Bool)

(assert (=> start!28102 m!302201))

(declare-fun m!302203 () Bool)

(assert (=> b!287811 m!302203))

(declare-fun m!302205 () Bool)

(assert (=> b!287814 m!302205))

(declare-fun m!302207 () Bool)

(assert (=> b!287809 m!302207))

(declare-fun m!302209 () Bool)

(assert (=> b!287810 m!302209))

(push 1)

