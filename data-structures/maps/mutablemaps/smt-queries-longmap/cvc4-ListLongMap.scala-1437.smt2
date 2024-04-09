; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27800 () Bool)

(assert start!27800)

(declare-fun b!286121 () Bool)

(declare-fun res!148309 () Bool)

(declare-fun e!181329 () Bool)

(assert (=> b!286121 (=> (not res!148309) (not e!181329))))

(declare-datatypes ((array!14310 0))(
  ( (array!14311 (arr!6789 (Array (_ BitVec 32) (_ BitVec 64))) (size!7141 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14310)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286121 (= res!148309 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286120 () Bool)

(declare-fun res!148308 () Bool)

(assert (=> b!286120 (=> (not res!148308) (not e!181329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286120 (= res!148308 (validKeyInArray!0 k!2524))))

(declare-fun res!148310 () Bool)

(assert (=> start!27800 (=> (not res!148310) (not e!181329))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27800 (= res!148310 (validMask!0 mask!3809))))

(assert (=> start!27800 e!181329))

(assert (=> start!27800 true))

(declare-fun array_inv!4743 (array!14310) Bool)

(assert (=> start!27800 (array_inv!4743 a!3312)))

(declare-fun b!286122 () Bool)

(assert (=> b!286122 (= e!181329 false)))

(declare-datatypes ((SeekEntryResult!1949 0))(
  ( (MissingZero!1949 (index!9966 (_ BitVec 32))) (Found!1949 (index!9967 (_ BitVec 32))) (Intermediate!1949 (undefined!2761 Bool) (index!9968 (_ BitVec 32)) (x!28157 (_ BitVec 32))) (Undefined!1949) (MissingVacant!1949 (index!9969 (_ BitVec 32))) )
))
(declare-fun lt!141044 () SeekEntryResult!1949)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14310 (_ BitVec 32)) SeekEntryResult!1949)

(assert (=> b!286122 (= lt!141044 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286119 () Bool)

(declare-fun res!148311 () Bool)

(assert (=> b!286119 (=> (not res!148311) (not e!181329))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286119 (= res!148311 (and (= (size!7141 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7141 a!3312))))))

(assert (= (and start!27800 res!148310) b!286119))

(assert (= (and b!286119 res!148311) b!286120))

(assert (= (and b!286120 res!148308) b!286121))

(assert (= (and b!286121 res!148309) b!286122))

(declare-fun m!300903 () Bool)

(assert (=> b!286121 m!300903))

(declare-fun m!300905 () Bool)

(assert (=> b!286120 m!300905))

(declare-fun m!300907 () Bool)

(assert (=> start!27800 m!300907))

(declare-fun m!300909 () Bool)

(assert (=> start!27800 m!300909))

(declare-fun m!300911 () Bool)

(assert (=> b!286122 m!300911))

(push 1)

(assert (not b!286120))

(assert (not b!286121))

(assert (not start!27800))

(assert (not b!286122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

