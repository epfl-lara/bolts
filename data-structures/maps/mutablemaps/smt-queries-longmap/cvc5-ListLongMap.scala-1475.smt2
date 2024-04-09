; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28246 () Bool)

(assert start!28246)

(declare-fun b!289145 () Bool)

(declare-fun res!150811 () Bool)

(declare-fun e!183075 () Bool)

(assert (=> b!289145 (=> (not res!150811) (not e!183075))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14549 0))(
  ( (array!14550 (arr!6901 (Array (_ BitVec 32) (_ BitVec 64))) (size!7253 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14549)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289145 (= res!150811 (and (= (size!7253 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7253 a!3312))))))

(declare-fun b!289146 () Bool)

(declare-fun res!150809 () Bool)

(declare-fun e!183078 () Bool)

(assert (=> b!289146 (=> (not res!150809) (not e!183078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14549 (_ BitVec 32)) Bool)

(assert (=> b!289146 (= res!150809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289147 () Bool)

(declare-fun e!183079 () Bool)

(assert (=> b!289147 (= e!183079 (not true))))

(declare-datatypes ((SeekEntryResult!2061 0))(
  ( (MissingZero!2061 (index!10414 (_ BitVec 32))) (Found!2061 (index!10415 (_ BitVec 32))) (Intermediate!2061 (undefined!2873 Bool) (index!10416 (_ BitVec 32)) (x!28594 (_ BitVec 32))) (Undefined!2061) (MissingVacant!2061 (index!10417 (_ BitVec 32))) )
))
(declare-fun lt!142666 () SeekEntryResult!2061)

(assert (=> b!289147 (and (= (select (arr!6901 a!3312) (index!10416 lt!142666)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10416 lt!142666) i!1256))))

(declare-fun res!150808 () Bool)

(assert (=> start!28246 (=> (not res!150808) (not e!183075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28246 (= res!150808 (validMask!0 mask!3809))))

(assert (=> start!28246 e!183075))

(assert (=> start!28246 true))

(declare-fun array_inv!4855 (array!14549) Bool)

(assert (=> start!28246 (array_inv!4855 a!3312)))

(declare-fun b!289148 () Bool)

(assert (=> b!289148 (= e!183075 e!183078)))

(declare-fun res!150810 () Bool)

(assert (=> b!289148 (=> (not res!150810) (not e!183078))))

(declare-fun lt!142667 () Bool)

(declare-fun lt!142670 () SeekEntryResult!2061)

(assert (=> b!289148 (= res!150810 (or lt!142667 (= lt!142670 (MissingVacant!2061 i!1256))))))

(assert (=> b!289148 (= lt!142667 (= lt!142670 (MissingZero!2061 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14549 (_ BitVec 32)) SeekEntryResult!2061)

(assert (=> b!289148 (= lt!142670 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289149 () Bool)

(declare-fun e!183077 () Bool)

(assert (=> b!289149 (= e!183077 e!183079)))

(declare-fun res!150812 () Bool)

(assert (=> b!289149 (=> (not res!150812) (not e!183079))))

(declare-fun lt!142668 () Bool)

(assert (=> b!289149 (= res!150812 (and (or lt!142668 (not (undefined!2873 lt!142666))) (or lt!142668 (not (= (select (arr!6901 a!3312) (index!10416 lt!142666)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142668 (not (= (select (arr!6901 a!3312) (index!10416 lt!142666)) k!2524))) (not lt!142668)))))

(assert (=> b!289149 (= lt!142668 (not (is-Intermediate!2061 lt!142666)))))

(declare-fun b!289150 () Bool)

(assert (=> b!289150 (= e!183078 e!183077)))

(declare-fun res!150813 () Bool)

(assert (=> b!289150 (=> (not res!150813) (not e!183077))))

(assert (=> b!289150 (= res!150813 lt!142667)))

(declare-fun lt!142669 () (_ BitVec 32))

(declare-fun lt!142665 () SeekEntryResult!2061)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14549 (_ BitVec 32)) SeekEntryResult!2061)

(assert (=> b!289150 (= lt!142665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142669 k!2524 (array!14550 (store (arr!6901 a!3312) i!1256 k!2524) (size!7253 a!3312)) mask!3809))))

(assert (=> b!289150 (= lt!142666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142669 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289150 (= lt!142669 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289151 () Bool)

(declare-fun res!150806 () Bool)

(assert (=> b!289151 (=> (not res!150806) (not e!183075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289151 (= res!150806 (validKeyInArray!0 k!2524))))

(declare-fun b!289152 () Bool)

(declare-fun res!150807 () Bool)

(assert (=> b!289152 (=> (not res!150807) (not e!183075))))

(declare-fun arrayContainsKey!0 (array!14549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289152 (= res!150807 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28246 res!150808) b!289145))

(assert (= (and b!289145 res!150811) b!289151))

(assert (= (and b!289151 res!150806) b!289152))

(assert (= (and b!289152 res!150807) b!289148))

(assert (= (and b!289148 res!150810) b!289146))

(assert (= (and b!289146 res!150809) b!289150))

(assert (= (and b!289150 res!150813) b!289149))

(assert (= (and b!289149 res!150812) b!289147))

(declare-fun m!303355 () Bool)

(assert (=> b!289151 m!303355))

(declare-fun m!303357 () Bool)

(assert (=> b!289147 m!303357))

(declare-fun m!303359 () Bool)

(assert (=> b!289150 m!303359))

(declare-fun m!303361 () Bool)

(assert (=> b!289150 m!303361))

(declare-fun m!303363 () Bool)

(assert (=> b!289150 m!303363))

(declare-fun m!303365 () Bool)

(assert (=> b!289150 m!303365))

(declare-fun m!303367 () Bool)

(assert (=> b!289148 m!303367))

(declare-fun m!303369 () Bool)

(assert (=> b!289146 m!303369))

(declare-fun m!303371 () Bool)

(assert (=> start!28246 m!303371))

(declare-fun m!303373 () Bool)

(assert (=> start!28246 m!303373))

(assert (=> b!289149 m!303357))

(declare-fun m!303375 () Bool)

(assert (=> b!289152 m!303375))

(push 1)

