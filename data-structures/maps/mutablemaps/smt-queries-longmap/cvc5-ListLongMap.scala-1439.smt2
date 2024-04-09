; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27808 () Bool)

(assert start!27808)

(declare-fun b!286167 () Bool)

(declare-fun res!148358 () Bool)

(declare-fun e!181353 () Bool)

(assert (=> b!286167 (=> (not res!148358) (not e!181353))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14318 0))(
  ( (array!14319 (arr!6793 (Array (_ BitVec 32) (_ BitVec 64))) (size!7145 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14318)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286167 (= res!148358 (and (= (size!7145 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7145 a!3312))))))

(declare-fun b!286169 () Bool)

(declare-fun res!148359 () Bool)

(assert (=> b!286169 (=> (not res!148359) (not e!181353))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286169 (= res!148359 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286168 () Bool)

(declare-fun res!148357 () Bool)

(assert (=> b!286168 (=> (not res!148357) (not e!181353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286168 (= res!148357 (validKeyInArray!0 k!2524))))

(declare-fun b!286170 () Bool)

(assert (=> b!286170 (= e!181353 false)))

(declare-datatypes ((SeekEntryResult!1953 0))(
  ( (MissingZero!1953 (index!9982 (_ BitVec 32))) (Found!1953 (index!9983 (_ BitVec 32))) (Intermediate!1953 (undefined!2765 Bool) (index!9984 (_ BitVec 32)) (x!28177 (_ BitVec 32))) (Undefined!1953) (MissingVacant!1953 (index!9985 (_ BitVec 32))) )
))
(declare-fun lt!141056 () SeekEntryResult!1953)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14318 (_ BitVec 32)) SeekEntryResult!1953)

(assert (=> b!286170 (= lt!141056 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148356 () Bool)

(assert (=> start!27808 (=> (not res!148356) (not e!181353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27808 (= res!148356 (validMask!0 mask!3809))))

(assert (=> start!27808 e!181353))

(assert (=> start!27808 true))

(declare-fun array_inv!4747 (array!14318) Bool)

(assert (=> start!27808 (array_inv!4747 a!3312)))

(assert (= (and start!27808 res!148356) b!286167))

(assert (= (and b!286167 res!148358) b!286168))

(assert (= (and b!286168 res!148357) b!286169))

(assert (= (and b!286169 res!148359) b!286170))

(declare-fun m!300943 () Bool)

(assert (=> b!286169 m!300943))

(declare-fun m!300945 () Bool)

(assert (=> b!286168 m!300945))

(declare-fun m!300947 () Bool)

(assert (=> b!286170 m!300947))

(declare-fun m!300949 () Bool)

(assert (=> start!27808 m!300949))

(declare-fun m!300951 () Bool)

(assert (=> start!27808 m!300951))

(push 1)

(assert (not b!286169))

(assert (not start!27808))

(assert (not b!286170))

(assert (not b!286168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

