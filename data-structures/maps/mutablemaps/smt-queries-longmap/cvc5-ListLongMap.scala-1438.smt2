; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27802 () Bool)

(assert start!27802)

(declare-fun b!286132 () Bool)

(declare-fun res!148321 () Bool)

(declare-fun e!181336 () Bool)

(assert (=> b!286132 (=> (not res!148321) (not e!181336))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286132 (= res!148321 (validKeyInArray!0 k!2524))))

(declare-fun b!286134 () Bool)

(assert (=> b!286134 (= e!181336 false)))

(declare-datatypes ((SeekEntryResult!1950 0))(
  ( (MissingZero!1950 (index!9970 (_ BitVec 32))) (Found!1950 (index!9971 (_ BitVec 32))) (Intermediate!1950 (undefined!2762 Bool) (index!9972 (_ BitVec 32)) (x!28166 (_ BitVec 32))) (Undefined!1950) (MissingVacant!1950 (index!9973 (_ BitVec 32))) )
))
(declare-fun lt!141047 () SeekEntryResult!1950)

(declare-datatypes ((array!14312 0))(
  ( (array!14313 (arr!6790 (Array (_ BitVec 32) (_ BitVec 64))) (size!7142 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14312)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14312 (_ BitVec 32)) SeekEntryResult!1950)

(assert (=> b!286134 (= lt!141047 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286131 () Bool)

(declare-fun res!148323 () Bool)

(assert (=> b!286131 (=> (not res!148323) (not e!181336))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286131 (= res!148323 (and (= (size!7142 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7142 a!3312))))))

(declare-fun res!148320 () Bool)

(assert (=> start!27802 (=> (not res!148320) (not e!181336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27802 (= res!148320 (validMask!0 mask!3809))))

(assert (=> start!27802 e!181336))

(assert (=> start!27802 true))

(declare-fun array_inv!4744 (array!14312) Bool)

(assert (=> start!27802 (array_inv!4744 a!3312)))

(declare-fun b!286133 () Bool)

(declare-fun res!148322 () Bool)

(assert (=> b!286133 (=> (not res!148322) (not e!181336))))

(declare-fun arrayContainsKey!0 (array!14312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286133 (= res!148322 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27802 res!148320) b!286131))

(assert (= (and b!286131 res!148323) b!286132))

(assert (= (and b!286132 res!148321) b!286133))

(assert (= (and b!286133 res!148322) b!286134))

(declare-fun m!300913 () Bool)

(assert (=> b!286132 m!300913))

(declare-fun m!300915 () Bool)

(assert (=> b!286134 m!300915))

(declare-fun m!300917 () Bool)

(assert (=> start!27802 m!300917))

(declare-fun m!300919 () Bool)

(assert (=> start!27802 m!300919))

(declare-fun m!300921 () Bool)

(assert (=> b!286133 m!300921))

(push 1)

(assert (not b!286132))

(assert (not b!286133))

(assert (not start!27802))

(assert (not b!286134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

