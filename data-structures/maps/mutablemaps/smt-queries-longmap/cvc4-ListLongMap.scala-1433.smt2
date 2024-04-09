; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27776 () Bool)

(assert start!27776)

(declare-fun b!285966 () Bool)

(declare-fun res!148157 () Bool)

(declare-fun e!181257 () Bool)

(assert (=> b!285966 (=> (not res!148157) (not e!181257))))

(declare-datatypes ((array!14286 0))(
  ( (array!14287 (arr!6777 (Array (_ BitVec 32) (_ BitVec 64))) (size!7129 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14286)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285966 (= res!148157 (and (= (size!7129 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7129 a!3312))))))

(declare-fun b!285968 () Bool)

(declare-fun res!148155 () Bool)

(assert (=> b!285968 (=> (not res!148155) (not e!181257))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285968 (= res!148155 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285969 () Bool)

(assert (=> b!285969 (= e!181257 false)))

(declare-datatypes ((SeekEntryResult!1937 0))(
  ( (MissingZero!1937 (index!9918 (_ BitVec 32))) (Found!1937 (index!9919 (_ BitVec 32))) (Intermediate!1937 (undefined!2749 Bool) (index!9920 (_ BitVec 32)) (x!28113 (_ BitVec 32))) (Undefined!1937) (MissingVacant!1937 (index!9921 (_ BitVec 32))) )
))
(declare-fun lt!141017 () SeekEntryResult!1937)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14286 (_ BitVec 32)) SeekEntryResult!1937)

(assert (=> b!285969 (= lt!141017 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!285967 () Bool)

(declare-fun res!148156 () Bool)

(assert (=> b!285967 (=> (not res!148156) (not e!181257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285967 (= res!148156 (validKeyInArray!0 k!2524))))

(declare-fun res!148158 () Bool)

(assert (=> start!27776 (=> (not res!148158) (not e!181257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27776 (= res!148158 (validMask!0 mask!3809))))

(assert (=> start!27776 e!181257))

(assert (=> start!27776 true))

(declare-fun array_inv!4731 (array!14286) Bool)

(assert (=> start!27776 (array_inv!4731 a!3312)))

(assert (= (and start!27776 res!148158) b!285966))

(assert (= (and b!285966 res!148157) b!285967))

(assert (= (and b!285967 res!148156) b!285968))

(assert (= (and b!285968 res!148155) b!285969))

(declare-fun m!300783 () Bool)

(assert (=> b!285968 m!300783))

(declare-fun m!300785 () Bool)

(assert (=> b!285969 m!300785))

(declare-fun m!300787 () Bool)

(assert (=> b!285967 m!300787))

(declare-fun m!300789 () Bool)

(assert (=> start!27776 m!300789))

(declare-fun m!300791 () Bool)

(assert (=> start!27776 m!300791))

(push 1)

(assert (not b!285967))

(assert (not b!285968))

(assert (not start!27776))

(assert (not b!285969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

