; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27878 () Bool)

(assert start!27878)

(declare-fun b!286549 () Bool)

(declare-fun res!148671 () Bool)

(declare-fun e!181563 () Bool)

(assert (=> b!286549 (=> (not res!148671) (not e!181563))))

(declare-datatypes ((array!14355 0))(
  ( (array!14356 (arr!6810 (Array (_ BitVec 32) (_ BitVec 64))) (size!7162 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14355)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286549 (= res!148671 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286550 () Bool)

(declare-fun e!181564 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286550 (= e!181564 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141178 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286550 (= lt!141178 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286551 () Bool)

(declare-fun res!148666 () Bool)

(assert (=> b!286551 (=> (not res!148666) (not e!181563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286551 (= res!148666 (validKeyInArray!0 k!2524))))

(declare-fun b!286552 () Bool)

(assert (=> b!286552 (= e!181563 e!181564)))

(declare-fun res!148668 () Bool)

(assert (=> b!286552 (=> (not res!148668) (not e!181564))))

(declare-datatypes ((SeekEntryResult!1970 0))(
  ( (MissingZero!1970 (index!10050 (_ BitVec 32))) (Found!1970 (index!10051 (_ BitVec 32))) (Intermediate!1970 (undefined!2782 Bool) (index!10052 (_ BitVec 32)) (x!28234 (_ BitVec 32))) (Undefined!1970) (MissingVacant!1970 (index!10053 (_ BitVec 32))) )
))
(declare-fun lt!141179 () SeekEntryResult!1970)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286552 (= res!148668 (or (= lt!141179 (MissingZero!1970 i!1256)) (= lt!141179 (MissingVacant!1970 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14355 (_ BitVec 32)) SeekEntryResult!1970)

(assert (=> b!286552 (= lt!141179 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286553 () Bool)

(declare-fun res!148670 () Bool)

(assert (=> b!286553 (=> (not res!148670) (not e!181564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14355 (_ BitVec 32)) Bool)

(assert (=> b!286553 (= res!148670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286554 () Bool)

(declare-fun res!148667 () Bool)

(assert (=> b!286554 (=> (not res!148667) (not e!181563))))

(assert (=> b!286554 (= res!148667 (and (= (size!7162 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7162 a!3312))))))

(declare-fun res!148669 () Bool)

(assert (=> start!27878 (=> (not res!148669) (not e!181563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27878 (= res!148669 (validMask!0 mask!3809))))

(assert (=> start!27878 e!181563))

(assert (=> start!27878 true))

(declare-fun array_inv!4764 (array!14355) Bool)

(assert (=> start!27878 (array_inv!4764 a!3312)))

(assert (= (and start!27878 res!148669) b!286554))

(assert (= (and b!286554 res!148667) b!286551))

(assert (= (and b!286551 res!148666) b!286549))

(assert (= (and b!286549 res!148671) b!286552))

(assert (= (and b!286552 res!148668) b!286553))

(assert (= (and b!286553 res!148670) b!286550))

(declare-fun m!301229 () Bool)

(assert (=> b!286550 m!301229))

(declare-fun m!301231 () Bool)

(assert (=> start!27878 m!301231))

(declare-fun m!301233 () Bool)

(assert (=> start!27878 m!301233))

(declare-fun m!301235 () Bool)

(assert (=> b!286551 m!301235))

(declare-fun m!301237 () Bool)

(assert (=> b!286552 m!301237))

(declare-fun m!301239 () Bool)

(assert (=> b!286553 m!301239))

(declare-fun m!301241 () Bool)

(assert (=> b!286549 m!301241))

(push 1)

(assert (not start!27878))

(assert (not b!286550))

(assert (not b!286549))

(assert (not b!286552))

(assert (not b!286553))

(assert (not b!286551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

