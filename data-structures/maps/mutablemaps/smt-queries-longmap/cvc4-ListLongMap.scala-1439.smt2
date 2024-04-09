; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27812 () Bool)

(assert start!27812)

(declare-fun b!286194 () Bool)

(declare-fun e!181365 () Bool)

(assert (=> b!286194 (= e!181365 false)))

(declare-datatypes ((SeekEntryResult!1955 0))(
  ( (MissingZero!1955 (index!9990 (_ BitVec 32))) (Found!1955 (index!9991 (_ BitVec 32))) (Intermediate!1955 (undefined!2767 Bool) (index!9992 (_ BitVec 32)) (x!28179 (_ BitVec 32))) (Undefined!1955) (MissingVacant!1955 (index!9993 (_ BitVec 32))) )
))
(declare-fun lt!141062 () SeekEntryResult!1955)

(declare-datatypes ((array!14322 0))(
  ( (array!14323 (arr!6795 (Array (_ BitVec 32) (_ BitVec 64))) (size!7147 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14322)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14322 (_ BitVec 32)) SeekEntryResult!1955)

(assert (=> b!286194 (= lt!141062 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286193 () Bool)

(declare-fun res!148382 () Bool)

(assert (=> b!286193 (=> (not res!148382) (not e!181365))))

(declare-fun arrayContainsKey!0 (array!14322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286193 (= res!148382 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286192 () Bool)

(declare-fun res!148383 () Bool)

(assert (=> b!286192 (=> (not res!148383) (not e!181365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286192 (= res!148383 (validKeyInArray!0 k!2524))))

(declare-fun res!148380 () Bool)

(assert (=> start!27812 (=> (not res!148380) (not e!181365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27812 (= res!148380 (validMask!0 mask!3809))))

(assert (=> start!27812 e!181365))

(assert (=> start!27812 true))

(declare-fun array_inv!4749 (array!14322) Bool)

(assert (=> start!27812 (array_inv!4749 a!3312)))

(declare-fun b!286191 () Bool)

(declare-fun res!148381 () Bool)

(assert (=> b!286191 (=> (not res!148381) (not e!181365))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286191 (= res!148381 (and (= (size!7147 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7147 a!3312))))))

(assert (= (and start!27812 res!148380) b!286191))

(assert (= (and b!286191 res!148381) b!286192))

(assert (= (and b!286192 res!148383) b!286193))

(assert (= (and b!286193 res!148382) b!286194))

(declare-fun m!300963 () Bool)

(assert (=> b!286194 m!300963))

(declare-fun m!300965 () Bool)

(assert (=> b!286193 m!300965))

(declare-fun m!300967 () Bool)

(assert (=> b!286192 m!300967))

(declare-fun m!300969 () Bool)

(assert (=> start!27812 m!300969))

(declare-fun m!300971 () Bool)

(assert (=> start!27812 m!300971))

(push 1)

(assert (not b!286194))

(assert (not b!286193))

(assert (not start!27812))

(assert (not b!286192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

