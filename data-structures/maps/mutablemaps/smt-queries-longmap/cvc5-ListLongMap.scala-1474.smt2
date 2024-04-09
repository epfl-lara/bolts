; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28240 () Bool)

(assert start!28240)

(declare-fun b!289073 () Bool)

(declare-fun res!150739 () Bool)

(declare-fun e!183034 () Bool)

(assert (=> b!289073 (=> (not res!150739) (not e!183034))))

(declare-datatypes ((array!14543 0))(
  ( (array!14544 (arr!6898 (Array (_ BitVec 32) (_ BitVec 64))) (size!7250 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14543)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14543 (_ BitVec 32)) Bool)

(assert (=> b!289073 (= res!150739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289074 () Bool)

(declare-fun res!150740 () Bool)

(declare-fun e!183030 () Bool)

(assert (=> b!289074 (=> (not res!150740) (not e!183030))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289074 (= res!150740 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289075 () Bool)

(declare-fun e!183033 () Bool)

(assert (=> b!289075 (= e!183033 (not true))))

(declare-datatypes ((SeekEntryResult!2058 0))(
  ( (MissingZero!2058 (index!10402 (_ BitVec 32))) (Found!2058 (index!10403 (_ BitVec 32))) (Intermediate!2058 (undefined!2870 Bool) (index!10404 (_ BitVec 32)) (x!28583 (_ BitVec 32))) (Undefined!2058) (MissingVacant!2058 (index!10405 (_ BitVec 32))) )
))
(declare-fun lt!142612 () SeekEntryResult!2058)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289075 (and (= (select (arr!6898 a!3312) (index!10404 lt!142612)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10404 lt!142612) i!1256))))

(declare-fun b!289076 () Bool)

(assert (=> b!289076 (= e!183030 e!183034)))

(declare-fun res!150734 () Bool)

(assert (=> b!289076 (=> (not res!150734) (not e!183034))))

(declare-fun lt!142611 () Bool)

(declare-fun lt!142614 () SeekEntryResult!2058)

(assert (=> b!289076 (= res!150734 (or lt!142611 (= lt!142614 (MissingVacant!2058 i!1256))))))

(assert (=> b!289076 (= lt!142611 (= lt!142614 (MissingZero!2058 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14543 (_ BitVec 32)) SeekEntryResult!2058)

(assert (=> b!289076 (= lt!142614 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289078 () Bool)

(declare-fun e!183032 () Bool)

(assert (=> b!289078 (= e!183034 e!183032)))

(declare-fun res!150738 () Bool)

(assert (=> b!289078 (=> (not res!150738) (not e!183032))))

(assert (=> b!289078 (= res!150738 lt!142611)))

(declare-fun lt!142615 () (_ BitVec 32))

(declare-fun lt!142616 () SeekEntryResult!2058)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14543 (_ BitVec 32)) SeekEntryResult!2058)

(assert (=> b!289078 (= lt!142616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142615 k!2524 (array!14544 (store (arr!6898 a!3312) i!1256 k!2524) (size!7250 a!3312)) mask!3809))))

(assert (=> b!289078 (= lt!142612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142615 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289078 (= lt!142615 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289079 () Bool)

(declare-fun res!150736 () Bool)

(assert (=> b!289079 (=> (not res!150736) (not e!183030))))

(assert (=> b!289079 (= res!150736 (and (= (size!7250 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7250 a!3312))))))

(declare-fun b!289080 () Bool)

(declare-fun res!150741 () Bool)

(assert (=> b!289080 (=> (not res!150741) (not e!183030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289080 (= res!150741 (validKeyInArray!0 k!2524))))

(declare-fun res!150737 () Bool)

(assert (=> start!28240 (=> (not res!150737) (not e!183030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28240 (= res!150737 (validMask!0 mask!3809))))

(assert (=> start!28240 e!183030))

(assert (=> start!28240 true))

(declare-fun array_inv!4852 (array!14543) Bool)

(assert (=> start!28240 (array_inv!4852 a!3312)))

(declare-fun b!289077 () Bool)

(assert (=> b!289077 (= e!183032 e!183033)))

(declare-fun res!150735 () Bool)

(assert (=> b!289077 (=> (not res!150735) (not e!183033))))

(declare-fun lt!142613 () Bool)

(assert (=> b!289077 (= res!150735 (and (or lt!142613 (not (undefined!2870 lt!142612))) (or lt!142613 (not (= (select (arr!6898 a!3312) (index!10404 lt!142612)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142613 (not (= (select (arr!6898 a!3312) (index!10404 lt!142612)) k!2524))) (not lt!142613)))))

(assert (=> b!289077 (= lt!142613 (not (is-Intermediate!2058 lt!142612)))))

(assert (= (and start!28240 res!150737) b!289079))

(assert (= (and b!289079 res!150736) b!289080))

(assert (= (and b!289080 res!150741) b!289074))

(assert (= (and b!289074 res!150740) b!289076))

(assert (= (and b!289076 res!150734) b!289073))

(assert (= (and b!289073 res!150739) b!289078))

(assert (= (and b!289078 res!150738) b!289077))

(assert (= (and b!289077 res!150735) b!289075))

(declare-fun m!303289 () Bool)

(assert (=> b!289073 m!303289))

(declare-fun m!303291 () Bool)

(assert (=> b!289077 m!303291))

(declare-fun m!303293 () Bool)

(assert (=> b!289074 m!303293))

(declare-fun m!303295 () Bool)

(assert (=> start!28240 m!303295))

(declare-fun m!303297 () Bool)

(assert (=> start!28240 m!303297))

(declare-fun m!303299 () Bool)

(assert (=> b!289078 m!303299))

(declare-fun m!303301 () Bool)

(assert (=> b!289078 m!303301))

(declare-fun m!303303 () Bool)

(assert (=> b!289078 m!303303))

(declare-fun m!303305 () Bool)

(assert (=> b!289078 m!303305))

(declare-fun m!303307 () Bool)

(assert (=> b!289076 m!303307))

(declare-fun m!303309 () Bool)

(assert (=> b!289080 m!303309))

(assert (=> b!289075 m!303291))

(push 1)

