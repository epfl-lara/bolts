; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28006 () Bool)

(assert start!28006)

(declare-fun b!287188 () Bool)

(declare-fun res!149118 () Bool)

(declare-fun e!181923 () Bool)

(assert (=> b!287188 (=> (not res!149118) (not e!181923))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287188 (= res!149118 (validKeyInArray!0 k!2524))))

(declare-fun b!287189 () Bool)

(declare-fun res!149116 () Bool)

(assert (=> b!287189 (=> (not res!149116) (not e!181923))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14399 0))(
  ( (array!14400 (arr!6829 (Array (_ BitVec 32) (_ BitVec 64))) (size!7181 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14399)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287189 (= res!149116 (and (= (size!7181 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7181 a!3312))))))

(declare-fun b!287190 () Bool)

(declare-fun res!149114 () Bool)

(declare-fun e!181924 () Bool)

(assert (=> b!287190 (=> (not res!149114) (not e!181924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14399 (_ BitVec 32)) Bool)

(assert (=> b!287190 (= res!149114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287191 () Bool)

(assert (=> b!287191 (= e!181923 e!181924)))

(declare-fun res!149117 () Bool)

(assert (=> b!287191 (=> (not res!149117) (not e!181924))))

(declare-datatypes ((SeekEntryResult!1989 0))(
  ( (MissingZero!1989 (index!10126 (_ BitVec 32))) (Found!1989 (index!10127 (_ BitVec 32))) (Intermediate!1989 (undefined!2801 Bool) (index!10128 (_ BitVec 32)) (x!28318 (_ BitVec 32))) (Undefined!1989) (MissingVacant!1989 (index!10129 (_ BitVec 32))) )
))
(declare-fun lt!141455 () SeekEntryResult!1989)

(assert (=> b!287191 (= res!149117 (or (= lt!141455 (MissingZero!1989 i!1256)) (= lt!141455 (MissingVacant!1989 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14399 (_ BitVec 32)) SeekEntryResult!1989)

(assert (=> b!287191 (= lt!141455 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!149115 () Bool)

(assert (=> start!28006 (=> (not res!149115) (not e!181923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28006 (= res!149115 (validMask!0 mask!3809))))

(assert (=> start!28006 e!181923))

(assert (=> start!28006 true))

(declare-fun array_inv!4783 (array!14399) Bool)

(assert (=> start!28006 (array_inv!4783 a!3312)))

(declare-fun b!287192 () Bool)

(declare-fun res!149113 () Bool)

(assert (=> b!287192 (=> (not res!149113) (not e!181923))))

(declare-fun arrayContainsKey!0 (array!14399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287192 (= res!149113 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287193 () Bool)

(assert (=> b!287193 (= e!181924 false)))

(declare-fun lt!141454 () SeekEntryResult!1989)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14399 (_ BitVec 32)) SeekEntryResult!1989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287193 (= lt!141454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and start!28006 res!149115) b!287189))

(assert (= (and b!287189 res!149116) b!287188))

(assert (= (and b!287188 res!149118) b!287192))

(assert (= (and b!287192 res!149113) b!287191))

(assert (= (and b!287191 res!149117) b!287190))

(assert (= (and b!287190 res!149114) b!287193))

(declare-fun m!301681 () Bool)

(assert (=> start!28006 m!301681))

(declare-fun m!301683 () Bool)

(assert (=> start!28006 m!301683))

(declare-fun m!301685 () Bool)

(assert (=> b!287190 m!301685))

(declare-fun m!301687 () Bool)

(assert (=> b!287191 m!301687))

(declare-fun m!301689 () Bool)

(assert (=> b!287193 m!301689))

(assert (=> b!287193 m!301689))

(declare-fun m!301691 () Bool)

(assert (=> b!287193 m!301691))

(declare-fun m!301693 () Bool)

(assert (=> b!287188 m!301693))

(declare-fun m!301695 () Bool)

(assert (=> b!287192 m!301695))

(push 1)

