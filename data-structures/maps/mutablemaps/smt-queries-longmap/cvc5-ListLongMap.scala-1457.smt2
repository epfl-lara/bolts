; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28090 () Bool)

(assert start!28090)

(declare-fun b!287701 () Bool)

(declare-fun res!149504 () Bool)

(declare-fun e!182203 () Bool)

(assert (=> b!287701 (=> (not res!149504) (not e!182203))))

(declare-datatypes ((array!14438 0))(
  ( (array!14439 (arr!6847 (Array (_ BitVec 32) (_ BitVec 64))) (size!7199 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14438)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287701 (= res!149504 (and (= (size!7199 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7199 a!3312))))))

(declare-fun b!287702 () Bool)

(declare-fun e!182202 () Bool)

(assert (=> b!287702 (= e!182203 e!182202)))

(declare-fun res!149506 () Bool)

(assert (=> b!287702 (=> (not res!149506) (not e!182202))))

(declare-datatypes ((SeekEntryResult!2007 0))(
  ( (MissingZero!2007 (index!10198 (_ BitVec 32))) (Found!2007 (index!10199 (_ BitVec 32))) (Intermediate!2007 (undefined!2819 Bool) (index!10200 (_ BitVec 32)) (x!28390 (_ BitVec 32))) (Undefined!2007) (MissingVacant!2007 (index!10201 (_ BitVec 32))) )
))
(declare-fun lt!141666 () SeekEntryResult!2007)

(assert (=> b!287702 (= res!149506 (or (= lt!141666 (MissingZero!2007 i!1256)) (= lt!141666 (MissingVacant!2007 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14438 (_ BitVec 32)) SeekEntryResult!2007)

(assert (=> b!287702 (= lt!141666 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287703 () Bool)

(declare-fun res!149507 () Bool)

(assert (=> b!287703 (=> (not res!149507) (not e!182203))))

(declare-fun arrayContainsKey!0 (array!14438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287703 (= res!149507 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287705 () Bool)

(assert (=> b!287705 (= e!182202 false)))

(declare-fun lt!141667 () SeekEntryResult!2007)

(declare-fun lt!141668 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14438 (_ BitVec 32)) SeekEntryResult!2007)

(assert (=> b!287705 (= lt!141667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141668 k!2524 (array!14439 (store (arr!6847 a!3312) i!1256 k!2524) (size!7199 a!3312)) mask!3809))))

(declare-fun lt!141665 () SeekEntryResult!2007)

(assert (=> b!287705 (= lt!141665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141668 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287705 (= lt!141668 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287706 () Bool)

(declare-fun res!149508 () Bool)

(assert (=> b!287706 (=> (not res!149508) (not e!182203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287706 (= res!149508 (validKeyInArray!0 k!2524))))

(declare-fun res!149503 () Bool)

(assert (=> start!28090 (=> (not res!149503) (not e!182203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28090 (= res!149503 (validMask!0 mask!3809))))

(assert (=> start!28090 e!182203))

(assert (=> start!28090 true))

(declare-fun array_inv!4801 (array!14438) Bool)

(assert (=> start!28090 (array_inv!4801 a!3312)))

(declare-fun b!287704 () Bool)

(declare-fun res!149505 () Bool)

(assert (=> b!287704 (=> (not res!149505) (not e!182202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14438 (_ BitVec 32)) Bool)

(assert (=> b!287704 (= res!149505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28090 res!149503) b!287701))

(assert (= (and b!287701 res!149504) b!287706))

(assert (= (and b!287706 res!149508) b!287703))

(assert (= (and b!287703 res!149507) b!287702))

(assert (= (and b!287702 res!149506) b!287704))

(assert (= (and b!287704 res!149505) b!287705))

(declare-fun m!302071 () Bool)

(assert (=> b!287702 m!302071))

(declare-fun m!302073 () Bool)

(assert (=> b!287703 m!302073))

(declare-fun m!302075 () Bool)

(assert (=> b!287705 m!302075))

(declare-fun m!302077 () Bool)

(assert (=> b!287705 m!302077))

(declare-fun m!302079 () Bool)

(assert (=> b!287705 m!302079))

(declare-fun m!302081 () Bool)

(assert (=> b!287705 m!302081))

(declare-fun m!302083 () Bool)

(assert (=> b!287706 m!302083))

(declare-fun m!302085 () Bool)

(assert (=> b!287704 m!302085))

(declare-fun m!302087 () Bool)

(assert (=> start!28090 m!302087))

(declare-fun m!302089 () Bool)

(assert (=> start!28090 m!302089))

(push 1)

