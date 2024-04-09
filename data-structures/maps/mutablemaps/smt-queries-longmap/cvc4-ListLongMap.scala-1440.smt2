; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27818 () Bool)

(assert start!27818)

(declare-datatypes ((SeekEntryResult!1958 0))(
  ( (MissingZero!1958 (index!10002 (_ BitVec 32))) (Found!1958 (index!10003 (_ BitVec 32))) (Intermediate!1958 (undefined!2770 Bool) (index!10004 (_ BitVec 32)) (x!28190 (_ BitVec 32))) (Undefined!1958) (MissingVacant!1958 (index!10005 (_ BitVec 32))) )
))
(declare-fun lt!141071 () SeekEntryResult!1958)

(declare-fun b!286230 () Bool)

(declare-fun e!181383 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14328 0))(
  ( (array!14329 (arr!6798 (Array (_ BitVec 32) (_ BitVec 64))) (size!7150 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14328)

(assert (=> b!286230 (= e!181383 (and (or (= lt!141071 (MissingZero!1958 i!1256)) (= lt!141071 (MissingVacant!1958 i!1256))) (bvsgt #b00000000000000000000000000000000 (size!7150 a!3312))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14328 (_ BitVec 32)) SeekEntryResult!1958)

(assert (=> b!286230 (= lt!141071 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286229 () Bool)

(declare-fun res!148419 () Bool)

(assert (=> b!286229 (=> (not res!148419) (not e!181383))))

(declare-fun arrayContainsKey!0 (array!14328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286229 (= res!148419 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148418 () Bool)

(assert (=> start!27818 (=> (not res!148418) (not e!181383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27818 (= res!148418 (validMask!0 mask!3809))))

(assert (=> start!27818 e!181383))

(assert (=> start!27818 true))

(declare-fun array_inv!4752 (array!14328) Bool)

(assert (=> start!27818 (array_inv!4752 a!3312)))

(declare-fun b!286227 () Bool)

(declare-fun res!148417 () Bool)

(assert (=> b!286227 (=> (not res!148417) (not e!181383))))

(assert (=> b!286227 (= res!148417 (and (= (size!7150 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7150 a!3312))))))

(declare-fun b!286228 () Bool)

(declare-fun res!148416 () Bool)

(assert (=> b!286228 (=> (not res!148416) (not e!181383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286228 (= res!148416 (validKeyInArray!0 k!2524))))

(assert (= (and start!27818 res!148418) b!286227))

(assert (= (and b!286227 res!148417) b!286228))

(assert (= (and b!286228 res!148416) b!286229))

(assert (= (and b!286229 res!148419) b!286230))

(declare-fun m!300993 () Bool)

(assert (=> b!286230 m!300993))

(declare-fun m!300995 () Bool)

(assert (=> b!286229 m!300995))

(declare-fun m!300997 () Bool)

(assert (=> start!27818 m!300997))

(declare-fun m!300999 () Bool)

(assert (=> start!27818 m!300999))

(declare-fun m!301001 () Bool)

(assert (=> b!286228 m!301001))

(push 1)

(assert (not b!286230))

(assert (not b!286229))

(assert (not start!27818))

(assert (not b!286228))

(check-sat)

(pop 1)

