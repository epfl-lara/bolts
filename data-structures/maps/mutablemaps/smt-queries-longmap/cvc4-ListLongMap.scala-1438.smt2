; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27806 () Bool)

(assert start!27806)

(declare-fun b!286158 () Bool)

(declare-fun e!181348 () Bool)

(assert (=> b!286158 (= e!181348 false)))

(declare-datatypes ((array!14316 0))(
  ( (array!14317 (arr!6792 (Array (_ BitVec 32) (_ BitVec 64))) (size!7144 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14316)

(declare-datatypes ((SeekEntryResult!1952 0))(
  ( (MissingZero!1952 (index!9978 (_ BitVec 32))) (Found!1952 (index!9979 (_ BitVec 32))) (Intermediate!1952 (undefined!2764 Bool) (index!9980 (_ BitVec 32)) (x!28168 (_ BitVec 32))) (Undefined!1952) (MissingVacant!1952 (index!9981 (_ BitVec 32))) )
))
(declare-fun lt!141053 () SeekEntryResult!1952)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14316 (_ BitVec 32)) SeekEntryResult!1952)

(assert (=> b!286158 (= lt!141053 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286156 () Bool)

(declare-fun res!148345 () Bool)

(assert (=> b!286156 (=> (not res!148345) (not e!181348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286156 (= res!148345 (validKeyInArray!0 k!2524))))

(declare-fun res!148346 () Bool)

(assert (=> start!27806 (=> (not res!148346) (not e!181348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27806 (= res!148346 (validMask!0 mask!3809))))

(assert (=> start!27806 e!181348))

(assert (=> start!27806 true))

(declare-fun array_inv!4746 (array!14316) Bool)

(assert (=> start!27806 (array_inv!4746 a!3312)))

(declare-fun b!286157 () Bool)

(declare-fun res!148344 () Bool)

(assert (=> b!286157 (=> (not res!148344) (not e!181348))))

(declare-fun arrayContainsKey!0 (array!14316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286157 (= res!148344 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286155 () Bool)

(declare-fun res!148347 () Bool)

(assert (=> b!286155 (=> (not res!148347) (not e!181348))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286155 (= res!148347 (and (= (size!7144 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7144 a!3312))))))

(assert (= (and start!27806 res!148346) b!286155))

(assert (= (and b!286155 res!148347) b!286156))

(assert (= (and b!286156 res!148345) b!286157))

(assert (= (and b!286157 res!148344) b!286158))

(declare-fun m!300933 () Bool)

(assert (=> b!286158 m!300933))

(declare-fun m!300935 () Bool)

(assert (=> b!286156 m!300935))

(declare-fun m!300937 () Bool)

(assert (=> start!27806 m!300937))

(declare-fun m!300939 () Bool)

(assert (=> start!27806 m!300939))

(declare-fun m!300941 () Bool)

(assert (=> b!286157 m!300941))

(push 1)

(assert (not b!286156))

(assert (not b!286157))

(assert (not start!27806))

(assert (not b!286158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

